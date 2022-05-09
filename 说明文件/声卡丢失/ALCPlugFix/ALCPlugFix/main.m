//
//  main.m
//  ALCPlugFix
//
//  Created by Oleksandr Stoyevskyy on 11/3/16.
//  Copyright © 2016 Oleksandr Stoyevskyy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreAudio/CoreAudio.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol DaemonProtocol
- (void)performWork;
@end

@interface NSString (ShellExecution)
- (NSString*)runAsCommand;
@end

@implementation NSString (ShellExecution)

- (NSString*)runAsCommand {
    NSPipe* pipe = [NSPipe pipe];

    NSTask* task = [[NSTask alloc] init];
    [task setLaunchPath: @"/bin/sh"];
    [task setArguments:@[@"-c", [NSString stringWithFormat:@"%@", self]]];
    [task setStandardOutput:pipe];

    NSFileHandle* file = [pipe fileHandleForReading];
    [task launch];

    return [[NSString alloc] initWithData:[file readDataToEndOfFile] encoding:NSUTF8StringEncoding];
}

@end

# pragma mark ALCPlugFix Object Conforms to Protocol

@interface ALCPlugFix : NSObject <DaemonProtocol>
@end;
@implementation ALCPlugFix
- (id)init
{
    self = [super init];
    if (self) {
        // Do here what you needs to be done to start things
    }
    return self;
}


- (void)dealloc
{
    // Do here what needs to be done to shut things down
    //[super dealloc];
}

- (void)performWork
{
    // This method is called periodically to perform some routine work
    //NSLog(@"performing work ...");
}
@end

# pragma mark Setup the daemon

// Seconds runloop runs before performing work
#define kRunLoopWaitTime 30.0

BOOL keepRunning = TRUE;

void sigHandler(int signo)
{
    NSLog(@"sigHandler: Received signal %d", signo);

    switch (signo) {
        case SIGTERM: keepRunning = FALSE; break; // SIGTERM means we must quit
        default: break;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Headphones daemon running!");

        signal(SIGHUP, sigHandler);
        signal(SIGTERM, sigHandler);

        ALCPlugFix *task = [[ALCPlugFix alloc] init];

        AudioDeviceID defaultDevice = 0;
        UInt32 defaultSize = sizeof(AudioDeviceID);

        const AudioObjectPropertyAddress defaultAddr = {
            kAudioHardwarePropertyDefaultOutputDevice,
            kAudioObjectPropertyScopeGlobal,
            kAudioObjectPropertyElementMaster
        };

        AudioObjectGetPropertyData(kAudioObjectSystemObject, &defaultAddr, 0, NULL, &defaultSize, &defaultDevice);

        AudioObjectPropertyAddress sourceAddr;
        sourceAddr.mSelector = kAudioDevicePropertyDataSource;
        sourceAddr.mScope = kAudioDevicePropertyScopeOutput;
        sourceAddr.mElement = kAudioObjectPropertyElementMaster;

        NSString *output1 = [@"hda-verb 0x12 SET_PIN_WIDGET_CONTROL 0x20" runAsCommand];
        NSString *output2 = [@"hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x00" runAsCommand];

        AudioObjectAddPropertyListenerBlock(defaultDevice, &sourceAddr, dispatch_get_global_queue (DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(UInt32 inNumberAddresses, const AudioObjectPropertyAddress * inAddresses) {

            UInt32 bDataSourceId = 0;
            UInt32 bDataSourceIdSize = sizeof(UInt32);
            AudioObjectGetPropertyData(defaultDevice, inAddresses, 0, NULL, &bDataSourceIdSize, &bDataSourceId);
            if (bDataSourceId == 'ispk') {
                // 被认定为内置扬声器
                NSLog(@"Headphones removed! Fixing!");
                NSString *output1 = [@"hda-verb 0x12 SET_PIN_WIDGET_CONTROL 0x20" runAsCommand];
                NSString *output2 = [@"hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x00" runAsCommand];
            } else if (bDataSourceId == 'hdpn') {
                // 被认定为耳机
                NSLog(@"Headphones inserted! Fixing!");
                NSString *output1 = [@"hda-verb 0x12 SET_PIN_WIDGET_CONTROL 0x00" runAsCommand];
                NSString *output2 = [@"hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x24" runAsCommand];
            }
        });

        while (keepRunning) {
            [task performWork];
            CFRunLoopRunInMode(kCFRunLoopDefaultMode, kRunLoopWaitTime, false);
        }
//        [task release];

        NSLog(@"Daemon exiting");
    }
    return 0;
}

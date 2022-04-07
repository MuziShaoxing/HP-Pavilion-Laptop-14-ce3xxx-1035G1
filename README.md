# 博客更新: 

# https://shaoxing.netlify.app/6be582fe.html

## 系统检测

| **电脑型号** | **HP Pavilion Laptop 14-ce3xxx 笔记本电脑**                  |
| :----------- | :----------------------------------------------------------- |
| **CPU**      | **英特尔 Core i5-1035G1 @ 1.00GHz 四核**                     |
| **主板**     | **惠普 86E1 ( I/O - 3482 for Intel 495 Series 芯片组 Family On-Package Platform Controller Hub )** |
| **独显**     | **Nvidia GeForce MX250 ( 2 GB / 惠普 )**                     |
| **核显**     | **第十代智能英特尔® 酷睿™ 处理器的英特尔® 超核芯显卡**       |
| **内存**     | **8 GB ( DDR4 2667MHz )**                                    |
| **硬盘**     | **英特尔 SSDPEKNW010T8H ( 1024 GB / 固态硬盘 )**             |
| **屏幕**     | **LG LGD0613 ( 14 英寸  )**                                  |
| **声卡**     | **瑞昱 High Definition Audio @ 英特尔 英特尔智音技术音频控制器** |
| **无线**     | **博通 94360Z4**_2022-0401更换                               |
| **有线**     | **RTL8111/8168/8411 Gigabit Ethernet Controller**            |



## 功能检测

### 正常驱动硬件

| **功能**             | **依赖**                                      | **备注**                                                     |
| -------------------- | --------------------------------------------- | ------------------------------------------------------------ |
| **Wi-Fi**            | **免驱**                                      | **Bcm94360z4**                                               |
| **蓝牙**             | **免驱**                                      | **Bcm94360z4**                                               |
| **声卡**             | **AppleALC.kext**                             | **扬声器<br/>麦克风<br/>3.5mm接口**                          |
| **显卡**             | **WhateverGreen.kext**                        | **AAPL,ig-platform-id:0000528A**                             |
| **电池电量**         | **SMCBatteryManager.kext<br/>ECEnabler.kext** | **1:电池驱动，2:电池补丁**                                   |
| **CPU 电源管理**     | **SSDT-PLUG.aml**                             |                                                              |
| **SMBIOS**           | **MacBook Air 9,1**                           | **仿冒机型-三码请自我刷新**                                  |
| **休眠/睡眠**        | **SSDT-DWAK.aml**                             | **睡眠几乎不掉电**                                           |
| **USB 电源属性**     | **SSDT-EC-USBX-LAPTOP.aml**                   |                                                              |
| **USB 2.0, USB 3.0** | **USBPorts.kext**                             | **或“SSDT-UIAC.aml”<br/>请禁用“USBInjectAll.kext”**          |
| **亮度调节快捷键**   | **BrightnessKeys.kext<br/>SSDT-PNLF-CFL.aml** |                                                              |
| **键盘与触控板手势** | **VoodooPS2Controller.kext**                  | **全部手势都可用**                                           |
| **🔗安卓USB共享网络** | **HoRNDIS.kext**                              | **根据需求选择是否启用**                                     |
| **美化-白果鼠标**    | **FakeAppleUSBMouse.kext**                    | **需改ID- [点击查看教程](https://shaoxing.netlify.app/aa6b9ae8.html)** |
| **SATA磁盘识别**     | **CtlnaAHCIPort.kext**                        | **也许你会需要**                                             |
| **FN功能键**         | **免驱__修补:SSDT-PS2K.aml**                  | 部分按键异常&无效                                            |
| **SD读卡器**         | **USB端口X1占用**                             | **正常**                                                     |
| **文件保险箱**       | **勾选协议覆盖“Firmware Volume”**             | **正常**                                                     |
| **开机音duang**      | **设置信息**                                  | 正常                                                         |
| 唤醒                 | **HibernationFixup.kext**                     | 取消可能会唤醒黑屏                                           |

### 尚未测试及无法驱动的硬件

| 功能       | 依赖     | 备注                            |
| ---------- | -------- | ------------------------------- |
| 指纹       | 无       | 无法驱动                        |
| 独显-MX250 | 无       | 无法驱动                        |
| 随航投屏   | 无       | 尚未测试                        |
| 隔空投送   | 无       | 更换苹果拆机卡/博通网卡即可使用 |
| 散热风扇   | 设备参数 | 无完美驱动，已删除              |

### 已知故障

| 故障描述                     | 疑似相关                              |
| ---------------------------- | ------------------------------------- |
| Monterey「宗卷哈希值不匹配」 | BlueToolFixup.kext<br/>换免驱卡解决！ |
| 进入OpenCorePkg两秒黑屏切换  | 未知                                  |
| FN功能键                     | F4&F12无效                            |



> 上述检测信息实时更新，以最新版引导为校准



## BIOS设置

1. 禁用安全启动
1. 关闭传统模式



## 更新日志

## 置顶注意事项

- 由于有中文注释存在，故OC验证会报错！请忽略以下错误：
  - ACPI->Add[*]->**Comment contains illegal character!**
  - Kernel->Add[*]->**Comment contains illegal character!**
  - Misc->Tools[*]->**Comment contains illegal character!**
  - UEFI->Drivers[*]->**Comment contains illegal character!**
- 成功进入桌面后，请第一时间更新三码信息，
  - 测试三码会导致某些情况数据丢失！！！

## 2022年4月4日

- 修复FN+F5功能键「休眠/黑屏」
- 修复电源键无效「短按休眠-长按电源菜单」
- 增加仿冒新设备，使之更像白果

### 增加内容

1. 添加**ACPI**补丁
   1. SSDT-DMAC.aml——DMA控制器
   2. SSDT-MCHC.aml——内存控制器
   3. SSDT-MEM2.aml——仿冒 MEM2
   4. SSDT-PPMC.aml——仿冒PPMC
   5. SSDT-PS2K.aml——修复某些键盘异常问题-已知停用后FN+F5休眠
   6. SSDT-PMCR.aml——长按唤醒电源键菜单
   7. SSDT-LIDpatch.aml——盒盖睡眠
      - 重命名**_LID to XLID**

## 2022年4月4日

1. 移除引导参数，合并至显卡设备参数

   - ~~**-igfxdbeo igfxfw=2 watchdog=0 -igfxblr agdpmod=vit9696 igfxrpsc=1 igfxagdc=0**~~ 

2. 移除「**分离**」无线网卡驱动，主文件不再具有无线网卡驱动加载信息

   - 我换网卡啦，免驱卡！！！

   - 如果需要，请自行添加「[参考内容](https://shaoxing.vercel.app/f8cb7961.html)」

3. 移除「**黑屏补丁**」「**RTC唤醒**」「**睡眠补丁**」

4. 移除无关紧要的设备属性

5. 移除「启用语音辅助」选项

   - 不影响开机音，移除后没有了按键延迟

6. 移除「安全启动」，改回禁用「Disabled」

   - 目测没啥区别，没必要开

## 2022年3月27日

1. 睡眠唤醒黑屏修复调整
   - 增加**HibernationFixup.kext**实测唤醒正常
2. 修改核显卡名称为“**Nvidia GeForce MX250**”显存**2048MB**
   - **伪装**「独显」被**驱动**的**假象**！！！

## 2022年3月23日

1. 修复BUG
   - 电池维修:删除~~ACPIBatteryManager.kext~~，更换成**SMCBatteryManager.kext**
   - 注：如果换电池或其他情况下出现电池维修，换一次驱动即可。。
2. 开启开机音频支持“duang”
   - UEFI-Audio-AudioDevice:**PciRoot(0x0)/Pci(0x1F,0x3)**

### 2022年3月22日

1. 开机黑屏修复
2. 睡眠唤醒黑屏修复
3. SSDT补丁-精准定位
4. 中文注释填写
5. 改机型“MacBookAir9,1”

### 2022 年 3 月 20 日

- 创建EFI储存库-部署基础数据库

- 已驱动功能
  - Wi-Fi，蓝牙
  - 有线网卡
  - 显卡
  - 声卡
  - 休眠
  - Big Sur蓝牙修补
  - 电池电量信息修补
  - CPU变频
  - 亮度调节快捷键
  - 仿冒白果鼠标
  - 安卓共享USB网络
  - USB定制
  - 触摸板-全功能
  
  
  

## 下载地址聚合

- 教程合集
  - https://hackintool.vercel.app/
  - https://hackintool.netlify.app/
- 我的成品EFI：https://www.123pan.com/s/SztA-LsMmH
- 我的主题仓库: https://www.123pan.com/s/SztA-ZXMmH
- 驱动下载地址：
  - OC底层架构更新: [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg)
  - OC官方主题仓库: [OcBinaryData](https://github.com/acidanthera/OcBinaryData)
  - 核心驱动: [Lilu](https://github.com/acidanthera/Lilu)
  - SMC仿真器:[VirtualSMC](https://github.com/acidanthera/VirtualSMC/releases)
  - 显卡驱动: [WhateverGreen](https://github.com/bugprogrammer/WhateverGreen/releases)
  - 声卡驱动: [AppleALC](https://github.com/acidanthera/AppleALC)
  - 英特尔无线网卡: [itlwm](https://github.com/OpenIntelWireless/itlwm)
  - 英特尔蓝牙驱动: [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware)
  - 博通网卡Wi-Fi: [AirportBrcmFixup](https://github.com/acidanthera/AirportBrcmFixup/releases)
  - 博通网卡蓝牙: [BrcmPatchRAM/BlueToolFixup](https://github.com/acidanthera/BrcmPatchRAM/releases)
  - PS2键盘触控板驱动: [VoodooPS2](https://github.com/acidanthera/VoodooPS2/releases)
  - I2C触控板驱动: [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C/releases)
  - 亮度调节键: [BrightnessKeys](https://github.com/acidanthera/BrightnessKeys)
  - CPU频率定制: [CPUFriend](https://github.com/acidanthera/CPUFriend)
  - USB 端口识别: [USBInjectAll](https://github.com/daliansky/OS-X-USB-Inject-All)
  - 安卓USB共享网络: [HoRNDIS](https://github.com/jwise/HoRNDIS/releases)
  - 解除更新限制: [RestrictEvents.kext](https://github.com/acidanthera/RestrictEvents)
- ACPI补丁包：https://github.com/daliansky/OC-little

# 打赏作者

![12:37](https://cdn.jsdelivr.net/gh/muzishaoxing/picture@main/shaoxing/20220323/12:37.png)
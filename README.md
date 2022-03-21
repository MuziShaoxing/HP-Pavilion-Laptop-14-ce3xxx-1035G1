# 博客更新: https://shaoxing.netlify.app/6be582fe.html

## 系统检测

--------[ 鲁大师 ]--------------------------------------------------------------------------------

  软件:             鲁大师 5.1021.1300.108
  时间:             2022-03-20 11:23:23
  网站:             http://www.ludashi.com

--------[ 概览 ]----------------------------------------------------------------------------------

| **电脑型号**       | **HP Pavilion Laptop 14-ce3xxx 笔记本电脑**                  |
| :----------------- | :----------------------------------------------------------- |
| **处理器**         | **英特尔 Core i5-1035G1 @ 1.00GHz 四核**                     |
| **主板**           | **惠普 86E1 ( I/O - 3482 for Intel 495 Series 芯片组 Family On-Package Platform Controller Hub )** |
| **主显卡**         | **Nvidia GeForce MX250 ( 2 GB / 惠普 )**                     |
| **核显卡**         | **第十代智能英特尔® 酷睿™ 处理器的英特尔® 超核芯显卡**       |
| **内存**           | **8 GB ( DDR4 2667MHz )**                                    |
| **主硬盘**         | **英特尔 SSDPEKNW010T8H ( 1024 GB / 固态硬盘 )**             |
| **显示器**         | **LG LGD0613 ( 14 英寸  )**                                  |
| **声卡**           | **瑞昱 High Definition Audio @ 英特尔 英特尔智音技术音频控制器** |
| **网卡**           | **英特尔 Wireless-AC 9560**                                  |
| **黑苹果安装版本** | **正式版 Monterey 12.3**                                     |
| **报表更新日期**   | **2022-03-20**                                               |



## 功能检测

- 正常驱动硬件

| **功能**             | **依赖**                                                     | **备注**                                                     |
| -------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Wi-Fi**            | **AirportItlwm_Monterey.kext<br/>AirportItlwm_Big_Sur.kext<br/>itlwm.kext** | **AirportItlwm与itlwm不可共存使用<br/>ltlwm需要搭配软件[HeliPort.dmg](https://github.com/OpenIntelWireless/HeliPort/releases)** |
| **蓝牙**             | **IntelBluetoothFirmware.kext**                              | **Big Sur蓝牙识别:<br/>IntelBluetoothInjector.kext<br/>Monterey蓝牙识别:<br/>BlueToolFixup.kext** |
| **声卡**             | **AppleALC.kext**                                            | **扬声器<br/>麦克风<br/>3.5mm接口**                          |
| **显卡**             | **WhateverGreen.kext**                                       | **AAPL,ig-platform-id:0000528A**                             |
| **电池电量**         | **ACPIBatteryManager.kext<br/>ECEnabler.kext**               | **1:驱动，2:电池补丁**                                       |
| **CPU 电源管理**     | **SSDT-PLUG.aml**                                            |                                                              |
| **SMBIOS**           | **MacBookPro16,2**                                           | **仿冒机型-三码请自我刷新**                                  |
| **休眠/睡眠**        | **SSDT-DWAK.aml**|                                                               |
| **USB 电源属性**     | **SSDT-EC-USBX-LAPTOP.aml**                                  |                                                              |
| **USB 2.0, USB 3.0** | **USBPorts.kext**                                            | **或“SSDT-UIAC.aml”<br/>请禁用“USBInjectAll.kext”**          |
| **亮度调节快捷键**   | **BrightnessKeys.kext<br/>SSDT-PNLF-SKL_KBL.aml**            | **如遇蓝屏-请配合重命名PNLF更名XNLF**                        |
| **键盘与触控板手势** | **VoodooPS2Controller.kext**                                 | **全部手势都可用**                                           |
| **🔗安卓USB共享网络** | **HoRNDIS.kext**                                             | **根据需求选择是否启用**                                     |
| **美化-白果鼠标**    | **FakeAppleUSBMouse.kext**                                   | **需改ID- [点击查看教程](https://shaoxing.netlify.app/aa6b9ae8.html)** |
| **SATA磁盘识别**     | **CtlnaAHCIPort.kext**                                       | **也许你会需要**                                             |
| **FN功能键**         | **免驱**                                                     | **免驱**                                                     |
| **SD读卡器**         | **免驱**                                                     | **正常**                                                     |
| **文件保险箱**       | **勾选协议覆盖“Firmware Volume”**                            | **正常**                                                     |

- 尚未测试及无法驱动的硬件

| 功能       | 依赖 | 备注                            |
| ---------- | ---- | ------------------------------- |
| 指纹       | 无   | 无法驱动                        |
| 独显-MX250 | 无   | 无法驱动                        |
| 开机音频   | 无   | 原因不详                        |
| 随航投屏   | 无   | 尚未测试                        |
|            |      |                                 |
| 隔空投送   |      | 更换苹果拆机卡/博通网卡即可使用 |

> 上述检测信息实时更新，以最新版引导为校准



## 更新日志

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
  
### 2022年3月22日

1. 开机黑屏修复
2. 睡眠唤醒黑屏修复
3. SSDT补丁-精准定位
4. 中文注释填写
5. 改机型“MacBookAir9,1”

  

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
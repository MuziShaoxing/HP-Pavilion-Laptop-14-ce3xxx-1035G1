## 黄色三码备份

- **MacBookAir9,1**
  - FVFCPFYPMNHP
  - FVF019303QX00001F
  
- 我的UUID:39444335-3334-4638-3442-040E3C9F79A3

- DevirtualiseMmio
  - 部分硬件平台并不能很好的适应这个 Quirk，例如部分 Z390 和绝大部分的 X99 和 X299。它的工作方式是占用 MMIO 区域并删除运行时属性，使它们可用作存放内核的空间，注意这个 Quirk 在绝大部分的系统上并不要求一定要填写 MmioWhiteList，但在某些非常难安装的平台（例如：线程撕裂者 TRX40 19H 或 10300H），在启用此 Quirk 的同时还需设置 MmioWhiteList，使用 Debug 版 OpenCore 并开启 DevirtualiseMmio，你会在日志中找到类似以下内容：

```none
21:495 00:009 OCABC: MMIO devirt start
21:499 00:003 OCABC: MMIO devirt 0x60000000 (0x10000 pages, 0x8000000000000001) skip 0
21:503 00:003 OCABC: MMIO devirt 0xFE000000 (0x11 pages, 0x8000000000000001) skip 0
21:506 00:003 OCABC: MMIO devirt 0xFEC00000 (0x1 pages, 0x8000000000000001) skip 0
21:510 00:003 OCABC: MMIO devirt 0xFED00000 (0x1 pages, 0x8000000000000001) skip 0
21:513 00:003 OCABC: MMIO devirt 0xFEE00000 (0x1 pages, 0x800000000000100D) skip 0
21:516 00:003 OCABC: MMIO devirt 0xFF000000 (0x1000 pages, 0x800000000000100D) skip 0
21:520 00:003 OCABC: MMIO devirt end, saved 278608 KB
```

- 将 devirt 后面的 0x 60000000 等 6 组十六进制数字转换为十进制：
  - MMIO devirt 0x60000000 -> 1610612736
  - MMIO devirt 0xFE000000 -> 4261412864
  - MMIO devirt 0xFEC00000 -> 4273995776
  - MMIO devirt 0xFED00000 -> 4275044352
  - MMIO devirt 0xFEE00000 -> 4276092928
  - MMIO devirt 0xFF000000 -> 4278190080

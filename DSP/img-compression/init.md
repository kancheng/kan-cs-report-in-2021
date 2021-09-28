# DSP

## About

1. 將給定的程式碼進行編譯後，編碼一個 QCIF 測試序列，驗證編碼和解碼過程的正確性，並測試 4 個不同的碼率點畫出率失真曲線。


## Demo

結果如下

| 次數 | SNR Y(dB) | SNR U(dB) | SNR V(dB) |  加權 - PSNR(dB) | 碼率 (kbps) |
| :----: | :----: | :----: | :----: | :----: | :----: |
| 1 | 32.29 | 35.41 | 35.33 | 33.3166 | 3387.85 |
| 2 | 39.31 | 40.68 | 40.77 | 39.7816 | 7182.27 |
| 3 | 27.53 | 32.52 | 32.70 | 29.2233 | 1919.76 |
| 4 | 32.41 | 36.11 | 36.25 | 33.6666 | 4334.09 |


![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/16.png)


## Details

安裝 VS & VS C++ ，編譯指定程式碼

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/1.png)


將先前作業 1 ，所做的 YUV 檔案放入指定路徑

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/2.png)


找到 bin 目錄下的 encoder_ra.cfg 檔案

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/3.png)


設定路徑，改下面部分，要測四次，第一次。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/4.png)


在 bin 目錄下，執行指令

```
.\lencod -f encoder_ra.cfg
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/5.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/6.png)


第二次

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/7.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/8.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/9.png)


第三次

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/10.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/11.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/12.png)


第四次

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/13.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/14.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/15.png)


在此找這幾個結果，YUV 用 4:1:1 的加權權重來算出加權值。

>
> ((Yx4)+(Ux1)+(Vx1)/6
>

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/other.png)


![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/16.png)

```
import matplotlib.pyplot as plt

y1 = [ 32.29, 35.41, 35.33]
y2 = [ 39.31, 40.68, 40.77]
y3 = [ 27.53, 32.52, 32.70]
y4 = [ 32.41, 36.11, 36.25]
# yall = [ (y1[0]*4+y1[1]*1+y1[2]*1)/6, (y2[0]*4+y2[1]*1+y2[2]*1)/6, (y3[0]*4+y3[1]*1+y3[2]*1)/6, (y4[0]*4+y4[1]*1+y4[2]*1)/6]
b = [ 3387.85, 7182.27, 1919.76, 4334.09]
ytg_raw = [((y1[0]*4+y1[1]*1+y1[2]*1)/6, b[0]),( (y2[0]*4+y2[1]*1+y2[2]*1)/6, b[1]),(  (y3[0]*4+y3[1]*1+y3[2]*1)/6, b[2]),( (y4[0]*4+y4[1]*1+y4[2]*1)/6, b[3])]
n = sorted(ytg_raw, key = lambda s: s[0])
ny = [ n[0][0], n[1][0], n[2][0], n[3][0]]
nb = [ n[0][1], n[1][1], n[2][1], n[3][1]]
ny
nb

plt.figure(figsize=(15,10),dpi=100,linewidth = 2)
plt.plot( ny, nb)
plt.xlabel('PSNR(dB)')
plt.ylabel('Bitrate(kbps)')
plt.show()
```


> 有討論過加權應如此計算

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/img-compression/pic/17.png)





## Results

指令結果輸出如下


第一次

```

PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin> .\lencod -f encoder_ra.cfg
Parsing Configfile encoder_ra.cfg.................................................

-----------------------------------------------------------------------------
 Input YUV file                    : D:\USERDATA\Desktop\ITMTT\test\video.yuv
 Output IVC bitstream              : test.bit
 Output YUV file                   : test_rec.yuv
 Output log file                   : log.dat
 Output statistics file            : stat.dat
-----------------------------------------------------------------------------
 Frame   Bit/pic   QP   SnrY    SnrU    SnrV    Time(ms)  FRM/FLD  IntraMBs
Sequence Header
  0(I)    112048   34 36.1687 38.4127 34.0805  22197       FRM
  4(P)     83864   36 36.1662 32.3517 32.3571  14496       FRM     249
  1(B)     54080   39 32.2505 30.5055 31.8221  10939       FRM
  2(B)     36584   39 31.0770 34.5610 36.4451  14286       FRM
  3(B)     31360   39 32.0232 39.9502 30.1435  14963       FRM
  8(P)     89800   36 35.3864 32.3370 36.3110  20985       FRM     352
  5(B)     50600   39 31.0276 32.9686 38.2987  13622       FRM
  6(B)     45168   39 30.0083 41.7755 34.9496  21222       FRM
  7(B)     63624   39 31.1638 31.8573 30.7298  15164       FRM
 12(P)     81776   36 34.9622 36.1181 42.4833  33052       FRM     390
  9(B)     43408   39 30.3147 37.1964 43.1933  21876       FRM
 10(B)     70208   39 29.9606 35.2829 31.7070  23348       FRM
 11(B)     85664   39 31.0676 31.0696 32.5756  19623       FRM
 16(P)     79976   36 35.3295 43.6325 37.8856  35730       FRM     390
 13(B)     71016   39 29.9477 42.8281 32.6229  29008       FRM
 14(B)     89296   39 30.9261 31.3741 31.3243  20649       FRM
 15(B)     59152   39 30.8481 32.4213 39.4412  21497       FRM
 20(P)     86128   36 35.6489 39.6457 33.2631  25830       FRM     390
 17(B)     80760   39 30.6008 33.5026 30.4956  17795       FRM
 18(B)     57624   39 31.2784 32.0594 34.9957  16154       FRM
 19(B)     34672   39 31.0505 37.9685 42.4725  16526       FRM
 24(P)    126128   36 35.4127 32.1807 32.9836  26326       FRM     390
 21(B)     66768   39 32.3463 30.6920 33.2424  10079       FRM
 22(B)     43080   39 30.8729 33.6922 39.9081  18204       FRM
 23(B)     53832   39 29.9418 41.1379 33.0043  22632       FRM
 28(P)     85008   36 36.8056 33.1035 35.7940  21400       FRM     389
 25(B)     61216   39 30.2746 32.4371 35.7800  24619       FRM
 26(B)     54784   39 29.5627 39.0838 36.7598  30869       FRM
 27(B)     78512   39 30.4684 34.0803 31.7925  25420       FRM
 29(P)     56544   36 35.9083 38.1212 43.0596  28163       FRM     389
Sequence End
-----------------------------------------------------------------------------
 Freq. for encoded bitstream       : 50
 Hadamard transform                : Used
 Image (Encoding) format             : 416x240
 Image (Recon) format                : 416x240
 Error robustness                  : Off
 Fast Motion Estimation            : On
 Search range                      : 64
 Num of ref. frames used in P pred : 5
 Num of ref. frames used in B pred : 5
 Total encoding time for the seq.  : 636.674 sec
 Sequence type                     : RD-optimized mode decision        : used
------------------ Average data all frames  ---------------------------------
 SNR Y(dB)                         : 32.29
 SNR U(dB)                         : 35.41
 SNR V(dB)                         : 35.33
 Total bits                        : 2032712 (I 112048, P 689224, B 1231440)
 Bit rate (kbit/s)  @ 50.00 Hz     : 3387.85
 Bits to avoid Startcode Emulation : 0
 Bits for parameter sets           : 0
-----------------------------------------------------------------------------
Exit ITM 15.0 encoder ver 201606
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin>
```


第二次

```
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin> .\lencod -f encoder_ra.cfg
Parsing Configfile encoder_ra.cfg.................................................

-----------------------------------------------------------------------------
 Input YUV file                    : D:\USERDATA\Desktop\ITMTT\test\video.yuv
 Output IVC bitstream              : test.bit
 Output YUV file                   : test_rec.yuv
 Output log file                   : log.dat
 Output statistics file            : stat.dat
-----------------------------------------------------------------------------
 Frame   Bit/pic   QP   SnrY    SnrU    SnrV    Time(ms)  FRM/FLD  IntraMBs
Sequence Header
  0(I)    215448   24 42.3857 43.5170 39.9942  53482       FRM
  4(P)    177008   26 41.8371 38.4891 38.7254  43397       FRM     294
  1(B)    123456   29 38.6972 36.1025 37.5233  33929       FRM
  2(B)    102192   29 38.0307 40.3458 45.3548  49374       FRM
  3(B)     85696   29 37.7238 44.1407 35.7897  53020       FRM
  8(P)    180608   26 41.4803 38.7653 42.3164  55804       FRM     387
  5(B)    113824   29 38.4450 38.6372 42.5223  40487       FRM
  6(B)    113352   29 37.7010 45.2423 40.3107  54793       FRM
  7(B)    150584   29 38.0636 37.7366 36.6113  44157       FRM
 12(P)    154736   26 41.2941 41.9998 46.7683  82618       FRM     390
  9(B)    105720   29 37.8557 42.2532 46.1311  61072       FRM
 10(B)    156992   29 37.5959 40.4321 37.0751  62069       FRM
 11(B)    170952   29 38.3749 36.7693 38.4912  51401       FRM
 16(P)    144840   26 41.7139 47.2080 43.6406  85570       FRM     390
 13(B)    149176   29 37.5606 46.0656 38.1118  75932       FRM
 14(B)    180808   29 38.5397 37.1160 37.0598  63590       FRM
 15(B)    124432   29 38.8672 38.1394 43.7545  60318       FRM
 20(P)    163368   26 41.8111 45.2111 39.8291  65059       FRM     390
 17(B)    168128   29 38.4817 39.2047 36.4463  51469       FRM
 18(B)    123496   29 39.2796 37.4804 40.5365  45684       FRM
 19(B)     83064   29 38.6604 43.3098 46.8173  49953       FRM
 24(P)    234136   26 41.6256 39.0136 39.2392  58188       FRM     390
 21(B)    136696   29 39.2388 36.7324 38.5304  29083       FRM
 22(B)    106288   29 38.2906 39.1014 44.2524  51033       FRM
 23(B)    131400   29 37.7054 44.1414 39.0429  63922       FRM
 28(P)    160368   26 42.6041 39.2275 41.8084  41993       FRM     390
 25(B)    143760   29 38.0649 38.0668 41.0291  60750       FRM
 26(B)    128688   29 37.5666 43.1818 41.4080  77139       FRM
 27(B)    165872   29 37.9037 39.3121 37.5046  65488       FRM
 29(P)    114240   26 41.9963 43.5268 46.5306  59425       FRM     390
Sequence End
-----------------------------------------------------------------------------
 Freq. for encoded bitstream       : 50
 Hadamard transform                : Used
 Image (Encoding) format             : 416x240
 Image (Recon) format                : 416x240
 Error robustness                  : Off
 Fast Motion Estimation            : On
 Search range                      : 64
 Num of ref. frames used in P pred : 5
 Num of ref. frames used in B pred : 5
 Total encoding time for the seq.  : 1690.199 sec
 Sequence type                     : RD-optimized mode decision        : used
------------------ Average data all frames  ---------------------------------
 SNR Y(dB)                         : 39.31
 SNR U(dB)                         : 40.68
 SNR V(dB)                         : 40.77
 Total bits                        : 4309360 (I 215448, P 1329304, B 2764608)
 Bit rate (kbit/s)  @ 50.00 Hz     : 7182.27
 Bits to avoid Startcode Emulation : 0
 Bits for parameter sets           : 0
-----------------------------------------------------------------------------
Exit ITM 15.0 encoder ver 201606
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin>
```


第三次

```
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin> .\lencod -f encoder_ra.cfg
Parsing Configfile encoder_ra.cfg.................................................

-----------------------------------------------------------------------------
 Input YUV file                    : D:\USERDATA\Desktop\ITMTT\test\video.yuv
 Output IVC bitstream              : test.bit
 Output YUV file                   : test_rec.yuv
 Output log file                   : log.dat
 Output statistics file            : stat.dat
-----------------------------------------------------------------------------
 Frame   Bit/pic   QP   SnrY    SnrU    SnrV    Time(ms)  FRM/FLD  IntraMBs
Sequence Header
  0(I)    159104   29 39.3386 40.7981 36.7916  35100       FRM
  4(P)     23944   55 29.7453 26.3738 25.8190   2519       FRM     225
  1(B)     37776   44 28.5196 28.6593 29.8734   6292       FRM
  2(B)     23384   44 27.3775 32.3405 41.3267   8182       FRM
  3(B)     19992   44 31.2495 36.6974 27.9795   7734       FRM
  8(P)     25560   55 25.6460 25.8128 29.6493   5186       FRM     342
  5(B)     31928   44 27.7410 30.4216 36.0510   7152       FRM
  6(B)     26920   44 27.0109 40.6048 32.8842   9903       FRM
  7(B)     40944   44 28.1791 29.9607 28.5077   8206       FRM
 12(P)     20968   55 24.4746 29.1672 39.7652   6720       FRM     390
  9(B)     26440   44 26.9758 35.0071 41.9127  12171       FRM
 10(B)     45832   44 26.7153 33.3272 29.8517  12748       FRM
 11(B)     57992   44 27.6296 28.7376 29.8775  10836       FRM
 16(P)     19592   55 24.0654 41.5038 31.1997   8804       FRM     390
 13(B)     47176   44 26.5919 42.2883 30.3725  15898       FRM
 14(B)     61144   44 27.4543 29.0892 28.8891  11141       FRM
 15(B)     38672   44 27.3601 29.9336 37.1381  11526       FRM
 20(P)     23200   55 24.9418 32.7233 26.9246   7765       FRM     387
 17(B)     54600   44 27.3863 31.2636 28.1653   9279       FRM
 18(B)     38776   44 28.0920 29.7022 32.7422   8788       FRM
 19(B)     21512   44 27.9548 36.1877 41.6323   8482       FRM
 24(P)     36528   55 25.5175 25.9954 26.5608   7786       FRM     386
 21(B)     46088   44 29.0939 28.3258 30.8555   5881       FRM
 22(B)     28096   44 27.9814 31.6693 38.8613   9834       FRM
 23(B)     33040   44 26.7607 40.2068 30.8448  12465       FRM
 28(P)     26664   55 26.5768 26.6031 29.2252   7057       FRM     386
 25(B)     38096   44 27.0444 30.2145 33.8343  12567       FRM
 26(B)     35536   44 26.2711 38.0652 34.8041  15638       FRM
 27(B)     51328   44 26.7766 31.9526 29.5434  13416       FRM
 29(P)     10992   55 25.5478 31.9961 39.0223  10275       FRM     361
Sequence End
-----------------------------------------------------------------------------
 Freq. for encoded bitstream       : 50
 Hadamard transform                : Used
 Image (Encoding) format             : 416x240
 Image (Recon) format                : 416x240
 Error robustness                  : Off
 Fast Motion Estimation            : On
 Search range                      : 64
 Num of ref. frames used in P pred : 5
 Num of ref. frames used in B pred : 5
 Total encoding time for the seq.  : 309.351 sec
 Sequence type                     : RD-optimized mode decision        : used
------------------ Average data all frames  ---------------------------------
 SNR Y(dB)                         : 27.53
 SNR U(dB)                         : 32.52
 SNR V(dB)                         : 32.70
 Total bits                        : 1151856 (I 159104, P 187448, B 805304)
 Bit rate (kbit/s)  @ 50.00 Hz     : 1919.76
 Bits to avoid Startcode Emulation : 0
 Bits for parameter sets           : 0
-----------------------------------------------------------------------------
Exit ITM 15.0 encoder ver 201606
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin>
```


第四次

```
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin> .\lencod -f encoder_ra.cfg
Parsing Configfile encoder_ra.cfg.................................................

-----------------------------------------------------------------------------
 Input YUV file                    : D:\USERDATA\Desktop\ITMTT\test\video.yuv
 Output IVC bitstream              : test.bit
 Output YUV file                   : test_rec.yuv
 Output log file                   : log.dat
 Output statistics file            : stat.dat
-----------------------------------------------------------------------------
 Frame   Bit/pic   QP   SnrY    SnrU    SnrV    Time(ms)  FRM/FLD  IntraMBs
Sequence Header
  0(I)    121000   33 36.8414 38.8921 34.5916  23901       FRM
  4(P)    237840   22 44.3174 41.2300 41.6831  55874       FRM     360
  1(B)     38024   44 29.3693 28.3062 29.7367   6437       FRM
  2(B)     23384   44 27.3775 32.3405 41.3267   8208       FRM
  3(B)     20088   44 30.9464 36.9506 28.0502   7980       FRM
  8(P)    229400   22 44.1456 41.4806 44.6617  70519       FRM     389
  5(B)     32440   44 27.9648 30.3978 36.2203   7601       FRM
  6(B)     26920   44 27.0109 40.6048 32.8842  10104       FRM
  7(B)     41656   44 28.4069 29.6357 28.4846   8129       FRM
 12(P)    194616   22 44.0504 44.2786 48.5229  99796       FRM     390
  9(B)     26560   44 27.0660 35.0897 42.0287  12550       FRM
 10(B)     45928   44 26.7092 33.3677 29.8404  13030       FRM
 11(B)     55920   44 27.1490 28.5995 29.8534  10699       FRM
 16(P)    178192   22 44.3214 49.0778 45.9624  109805       FRM     390
 13(B)     47672   44 26.4701 40.2632 30.3998  20161       FRM
 14(B)     61512   44 27.5630 29.1230 28.8837  12089       FRM
 15(B)     39136   44 27.5608 29.9622 37.1620  12181       FRM
 20(P)    202976   22 44.3252 47.1656 42.4010  82956       FRM     390
 17(B)     55128   44 27.4785 31.3104 28.1453   9819       FRM
 18(B)     38776   44 28.0920 29.7022 32.7422   8951       FRM
 19(B)     21224   44 27.8217 36.1938 40.9681   8856       FRM
 24(P)    285560   22 44.1258 41.7070 41.6612  77051       FRM     390
 21(B)     46200   44 28.9718 28.3548 30.8392   6023       FRM
 22(B)     28096   44 27.9814 31.6693 38.8613  10524       FRM
 23(B)     31568   44 26.5841 40.0864 30.8111  12361       FRM
 28(P)    199672   22 45.0740 41.6788 44.1187  55816       FRM     390
 25(B)     38096   44 27.0444 30.2145 33.8343  12392       FRM
 26(B)     35536   44 26.2711 38.0652 34.8041  15779       FRM
 27(B)     51240   44 26.7138 31.9479 29.5203  13333       FRM
 29(P)    146064   22 44.5774 45.6822 48.4903  77328       FRM     390
Sequence End
-----------------------------------------------------------------------------
 Freq. for encoded bitstream       : 50
 Hadamard transform                : Used
 Image (Encoding) format             : 416x240
 Image (Recon) format                : 416x240
 Error robustness                  : Off
 Fast Motion Estimation            : On
 Search range                      : 64
 Num of ref. frames used in P pred : 5
 Num of ref. frames used in B pred : 5
 Total encoding time for the seq.  : 880.253 sec
 Sequence type                     : RD-optimized mode decision        : used
------------------ Average data all frames  ---------------------------------
 SNR Y(dB)                         : 32.41
 SNR U(dB)                         : 36.11
 SNR V(dB)                         : 36.25
 Total bits                        : 2600456 (I 121000, P 1674320, B 805136)
 Bit rate (kbit/s)  @ 50.00 Hz     : 4334.09
 Bits to avoid Startcode Emulation : 0
 Bits for parameter sets           : 0
-----------------------------------------------------------------------------
Exit ITM 15.0 encoder ver 201606
PS D:\USERDATA\Desktop\ITMTT\ITM15.0\bin>
```
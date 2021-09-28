# DSP

## About

1. 將攝像頭採集到的數據存成 YUV 文件

```
幀率 : 15fps

尺寸 : 320*240

色度格式 : 4:2:0;
```
2. 用 yuv viwer 等工具觀察正確性

> https://github.com/IENT/YUView



## Details

1. 下載 FFmpeg

FFmpeg Link

>
> https://www.ffmpeg.org/
>
> https://www.gyan.dev/ffmpeg/builds/
>

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/1.png)


2. 安裝 FFmpeg

放到指定目錄下，並設定好全域變數。全域變數路徑是 ffmpeg 中的 `bin` 目錄，在此的路徑為 `D:\ffmpeg\bin`。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/2.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/3.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/4.png)



3. 事先用手機錄下實驗用的測試影片，檔案副檔名為 `*.mp4`。


```
PS D:\USERDATA\Desktop\dsphw\test> ls


    目錄: D:\USERDATA\Desktop\dsphw\test


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----  2021/9/27/週一  下午 01:35        5540340 video.mp4


PS D:\USERDATA\Desktop\dsphw\test>
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/5.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/6.png)



4. 在工作目錄下開啟 PowerShell 等，指令介面。

> ffmpeg -i video.mp4 -s 320x240 -pix_fmt yuv420p -r 15 video.yuv

轉成 YUV 檔案

```
幀率 : 15fps

尺寸 : 320*240

色度格式 : 4:2:0;
```

過程如下

```
PS D:\USERDATA\Desktop\dsphw\test> ffmpeg -i video.mp4 -s 320x240 -pix_fmt yuv420p -r 15 video.yuv
ffmpeg version 2021-09-22-git-447cf53774-full_build-www.gyan.dev Copyright (c) 2000-2021 the FFmpeg developers
  built with gcc 10.3.0 (Rev5, Built by MSYS2 project)
  configuration: --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-fontconfig --enable-iconv --enable-gnutls --enable-libxml2 --enable-gmp --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-sdl2 --enable-libdav1d --enable-libzvbi --enable-librav1e --enable-libsvtav1 --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxvid --enable-libaom --enable-libopenjpeg --enable-libvpx --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-ffnvcodec --enable-nvdec --enable-nvenc --enable-d3d11va --enable-dxva2 --enable-libmfx --enable-libglslang --enable-vulkan --enable-opencl --enable-libcdio --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libilbc --enable-libgsm --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint
  libavutil      57.  6.100 / 57.  6.100
  libavcodec     59.  9.100 / 59.  9.100
  libavformat    59.  5.100 / 59.  5.100
  libavdevice    59.  0.101 / 59.  0.101
  libavfilter     8.  9.100 /  8.  9.100
  libswscale      6.  1.100 /  6.  1.100
  libswresample   4.  0.100 /  4.  0.100
  libpostproc    56.  0.100 / 56.  0.100
Input #0, mov,mp4,m4a,3gp,3g2,mj2, from 'video.mp4':
  Metadata:
    major_brand     : mp42
    minor_version   : 1
    compatible_brands: isommp41mp42
    creation_time   : 2021-09-27T05:34:52.000000Z
    copyright       :
    copyright-eng   :
  Duration: 00:00:17.37, start: 0.000000, bitrate: 2552 kb/s
  Stream #0:0[0x1](und): Video: h264 (High) (avc1 / 0x31637661), yuv420p(tv, bt709), 720x1280, 2501 kb/s, 30 fps, 30 tbr, 600 tbn (default)
    Metadata:
      creation_time   : 2021-09-27T05:34:53.000000Z
      handler_name    : Core Media Video
      vendor_id       : [0][0][0][0]
  Stream #0:1[0x2](und): Audio: aac (LC) (mp4a / 0x6134706D), 44100 Hz, mono, fltp, 47 kb/s (default)
    Metadata:
      creation_time   : 2021-09-27T05:34:53.000000Z
      handler_name    : Core Media Audio
      vendor_id       : [0][0][0][0]
Stream mapping:
  Stream #0:0 -> #0:0 (h264 (native) -> rawvideo (native))
Press [q] to stop, [?] for help
Output #0, rawvideo, to 'video.yuv':
  Metadata:
    major_brand     : mp42
    minor_version   : 1
    compatible_brands: isommp41mp42
    copyright-eng   :
    copyright       :
    encoder         : Lavf59.5.100
  Stream #0:0(und): Video: rawvideo (I420 / 0x30323449), yuv420p(tv, bt709, progressive), 320x240, q=2-31, 13824 kb/s, 15 fps, 15 tbn (default)
    Metadata:
      creation_time   : 2021-09-27T05:34:53.000000Z
      handler_name    : Core Media Video
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.9.100 rawvideo
frame=  262 fps=206 q=-0.0 Lsize=   29475kB time=00:00:17.46 bitrate=13824.0kbits/s dup=0 drop=259 speed=13.7x
video:29475kB audio:0kB subtitle:0kB other streams:0kB global headers:0kB muxing overhead: 0.000000%
PS D:\USERDATA\Desktop\dsphw\test>
```

結果如下，可以看到有 `video.yuv` 的檔案。

```
PS D:\USERDATA\Desktop\dsphw\test> ls


    目錄: D:\USERDATA\Desktop\dsphw\test


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----  2021/9/27/週一  下午 01:35        5540340 video.mp4
-a----  2021/9/28/週二  上午 09:04       30182400 video.yuv


PS D:\USERDATA\Desktop\dsphw\test>
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/7.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/8.png)


5. 播放

> ffplay -video_size 320x240 -i video.yuv

```
PS D:\USERDATA\Desktop\dsphw\test> ffplay -video_size 320x240 -i video.yuv
ffplay version 2021-09-22-git-447cf53774-full_build-www.gyan.dev Copyright (c) 2003-2021 the FFmpeg developers
  built with gcc 10.3.0 (Rev5, Built by MSYS2 project)
  configuration: --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-fontconfig --enable-iconv --enable-gnutls --enable-libxml2 --enable-gmp --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-sdl2 --enable-libdav1d --enable-libzvbi --enable-librav1e --enable-libsvtav1 --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxvid --enable-libaom --enable-libopenjpeg --enable-libvpx --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-ffnvcodec --enable-nvdec --enable-nvenc --enable-d3d11va --enable-dxva2 --enable-libmfx --enable-libglslang --enable-vulkan --enable-opencl --enable-libcdio --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libilbc --enable-libgsm --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint
  libavutil      57.  6.100 / 57.  6.100
  libavcodec     59.  9.100 / 59.  9.100
  libavformat    59.  5.100 / 59.  5.100
  libavdevice    59.  0.101 / 59.  0.101
  libavfilter     8.  9.100 /  8.  9.100
  libswscale      6.  1.100 /  6.  1.100
  libswresample   4.  0.100 /  4.  0.100
  libpostproc    56.  0.100 / 56.  0.100
[rawvideo @ 000002a47e92b040] Estimating duration from bitrate, this may be inaccurate
Input #0, rawvideo, from 'video.yuv':
  Duration: 00:00:10.48, start: 0.000000, bitrate: 23040 kb/s
  Stream #0:0: Video: rawvideo (I420 / 0x30323449), yuv420p, 320x240, 23040 kb/s, 25 tbr, 25 tbn
   9.65 M-V: -0.017 fd=  38 aq=    0KB vq= 1912KB sq=    0B f=0/0
PS D:\USERDATA\Desktop\dsphw\test>
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/9.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/yuv-camera-init/pic/10.png)
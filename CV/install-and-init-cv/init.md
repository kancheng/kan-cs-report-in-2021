# CV Homework

## 0. About
1. 安裝 Anaconda [HERE](#user-content-1-anaconda-install)

2. 建立與刪除虛擬環境 [HERE](#user-content-2-建立與刪除虛擬環境)

3. 安裝 OpenCV, Numpy, Matplotlib [HERE](#user-content-3-安裝-opencv-numpy-matplotlib)

4. 學習 Numpy 和 CV2 套件使用 [HERE](#user-content-4-學習-numpy-和-cv2-套件使用)

5. 使用 OpenCV 進行，檢測人臉 [HERE](#user-content-5-使用-opencv-進行檢測人臉)

&#8194;* 5-1. 讀取圖片 [HERE](#user-content-5-1-讀取圖片)

&#8194;* 5-2. 使用 opencv 的 cv2.CascadeClassifier 檢測人臉位置 [HERE](#user-content-5-2-使用-opencv-的-cv2cascadeclassifier-檢測人臉位置)

&#8194;* 5-3. 畫出方框，寫上文庫，顯示圖片 [HERE](#user-content-5-3-畫出方框寫上文庫顯示圖片)

## 1. Anaconda install

Link : https://www.anaconda.com/

### Windows

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/1.png)
![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/2.png)

### Mac

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/3.png)
![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/4.png)

### Ubuntu

複製連結，當然直接下載全用 GUI 介面也可。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/5.png)

指令安裝

```
$ wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
$ wegt https://repo.anaconda.com/archive/Anaconda3-[Anaconda 的版本 ]-Linux-x86_64.sh
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/6.png)


執行 `*.sh` 檔案，安裝 Anaconda

```
$ bash Anaconda3-2021.05-Linux-x86_64.sh -b
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/7.png)


因為是在家目錄，可以在家目錄裡面找到 Anaconda

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/10.png)

安裝 vim 套件
```
$ sudo apt-get install vim -y
```

用 vim 編輯 `.bashrc` ，kan 為家目錄名稱
```
$ sudo vim ~/.bashrc 
```

`.bashrc` 加入內容如下，順便註解
```
# Kan Horst Added Anaconda
export PATH="/home/kan/anaconda3/bin:$PATH"
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/9.png)


讓剛剛在 `.bashrc` 的設定生效，或者關掉原先的 Terminal，重開都行
```
$ source ~/.bashrc
```

看一下 Python 版本
```
$ python --version
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/8.png)


在家目錄建立一個工作目錄
```
$ mkdir pyw
$ cd pyw
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/11.png)


開啟 Anaconda 內的 jupyter，跑一段 Python
```
$ jupyter notebook
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/12.png)


查看 Anaconda 版本 

```
$ conda -V
```


## 2. 建立與刪除虛擬環境

> 建議 Windows 的 Anaconda 要用系統管理員權限
>
> 另外若在 `Windows` 用 PowerShell 要在系統管理員權限上先用在好 PowerShell ISE 的 get-executionpolicy 詳見 [HERE](docu/other-powershell-conda-error.md),當然若是在 `UNIX-like`  則沒有這個問題。 
>


圖型介面新增與操作

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/13.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/14.png)


创建环境 - 建立

```
conda create -n tcmd python=3.8 
```


删除环境 - 刪除

```
conda remove -n tcmd --all
```


激活环境 - 啟動

```
conda activate tcmd
```


退出环境 - 退出

```
conda deactivate 
```

檢視

```
conda info -e
```

### Demo command line - activate and deactivate

> 建議觀察指令的變化

建立

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/15.png)


啟動與退出

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/16.png)


可以看到圖形介面中的建立是成功的狀態

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/17.png)


移除

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/18.png)


移除成功

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/pic/19.png)



## 3. 安裝 OpenCV, Numpy, Matplotlib

## 4. 學習 Numpy 和 CV2 套件使用


## 5. 使用 OpenCV 進行，檢測人臉


### 5-1 讀取圖片

### 5-2 使用 opencv 的 cv2.CascadeClassifier 檢測人臉位置

### 5-3 畫出方框，寫上文庫，顯示圖片



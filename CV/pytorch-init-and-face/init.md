# CV Homework

> PKU 信息工程學院 2101212850 干皓丞


## 0. About

### Tasks

1. 安裝 PyTorch

2. 執行所有 ipynb 文件

3. 視頻人臉檢測

4. 輸出運行後的結果

> https://pytorch.org/tutorials/beginner/pytorch_with_examples.html


### Prepare

1. 建立好屬於 PyTorch 的虛擬環境並安裝。( Windows & Mac )


```
conda create -n pytorch-init python=3.8
```

```
conda activate pytorch-init
```

Reference

> https://pytorch.org/get-started/locally/



2. 下載所需要的人臉檢測實驗影片素材


(1) They Shall Not Grow Old – New Trailer – Now Playing In Theaters by Youtube Channel - Warner Bros. Pictures

https://www.youtube.com/watch?v=IrabKK9Bhds


(2) 1917 | The Battlefield Run in 4K HDR - by Youtube Channel - Universal Pictures

https://www.youtube.com/watch?v=WYCo-3pw52o


(3) DUNKIRK - OFFICIAL MAIN TRAILER [HD] by Youtube Channel - Warner Bros. Pictures

https://www.youtube.com/watch?v=T7O7BtBnsG4



## 1. Details


### 安裝 PyTorch

```
# windows
conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch

# mac
conda install pytorch torchvision torchaudio -c pytorch
```

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-init-and-face/pic/1.png)

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-init-and-face/pic/2.png)



### 執行所有 ipynb 文件

程式碼與匯出的檔案結果於專案的 `code` 目錄下，而為了課堂呈現匯出 PDF 於專案的 `pdf` 目錄下。在解釋各 `*.ipynb` 執行狀況。


![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-init-and-face/pic/3.png)


1. W2_Numpy.ipynb

為 CS 231n Python & NumPy Tutorial 的教程。


2. W2_OpenCV.ipynb

OpenCV 的呈現，當中的圖檔並沒有附上，所以自己額外再去 Google 下載， `House256rgb.png` 的圖檔，加入專案中，同時修改路徑。




3. W2_Python-Class.ipynb


4. W3_PyTorch_Basic.ipynb


5. W3_Regression_Python.ipynb


6. W3_Tensor_Tutorial.ipynb


### 視頻人臉檢測



### 輸出運行後的結果




# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## 0. About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 下的 math.ipynb。


### Tasks

矩陣求導，手推數學定義並完成程式碼實現。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/1.png)

## 1. Math

斜變函數、階躍函數的函數範圍與數學意義與函數圖形

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/5.png)


程式碼所表達的數學意義

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/6.png)


數學意義推導

下為矩陣求導，整體的思路可以想為微積分中全微分的概念，但要考量到矩陣的特性。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/7.png)


## 2. Code


Pytorch 矩陣

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/2.png)


Pytorch 直接導求

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/3.png)


Pytorch 根據之前數學推導來進行公式導求

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/pytorch-matrix-calculus/pic/4.png)

根據上述推導可看到直接導求與公式導求，兩者結果相同。
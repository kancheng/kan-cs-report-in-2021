# CV Homework

## About

建立名為 Tensorflow 的專屬環境時出現了問題。

```
> conda create --name tensorflow python=3.8
```

安裝完後的 > conda activate tensorflow

無法執行

過程中使用 PowerShell 出現問題，> activate 完全沒有反應，而 > conda info -e 也無效。

改變 PowerShell 又出現 Powershell 的 Restriced 機制上的錯誤。

```
# Anaconda 的 python 版本是 3.8
> conda create --name tensorflow python=3.8
# 執行 activate
> conda activate tensorflow
# conda 版本
> conda --version
# conda 的 powershell 設定
> conda init powershell

# PowerShell 進入 Restriced 模式
# 進入 PowerShell ISE 管理員權限執行，最後回以上皆是。
> get-executionpolicy
> set-executionpolicy remotesigned


# 切換模式 (已經可執行)
> conda info -e
# 執行 activate
> conda activate tensorflow
# 退出 deactivate
> conda deactivate
```

## Demo

activate 呈現無法運作的狀態

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/1.png)



使用 conda init powershell，開啟的 PowerShell。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/2.png)


PowerShell 出現新的錯誤訊息。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/3.png)


在 系統管理員的 PowerShell ISE 下解除模式

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/4.png)


全部皆是

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/5.png)


完成  !!!

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/CV/install-and-init-cv/docu/pic/6.png)

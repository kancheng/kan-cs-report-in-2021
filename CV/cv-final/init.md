# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 。


## Tasks

對之前的論文清單做延伸，內容包括但不限於：論文內容、程式碼復現、實驗創新等，形成一份報告。再對過往 8 篇論文復現的狀況，第 8 篇的 "Binary TTC: A Temporal Geofence for Autonomous Navigation" 相對穩定，但是由於原本研究者的環境是 Linux ，將原本執行的 Linux Shell 的 `*.sh` 檔案改寫成 PowerShell 的 `*.ps1` 的寫法。

### 文章和摘要和貢獻

Binary TTC：自主導航的時間地理圍欄

```
Abhishek Badki et al., 2021, "Binary TTC: A Temporal Geofence for Autonomous Navigation", CVPR.

 - 路徑規劃
```

接觸時間 (TTC)，即物體與觀察者平面碰撞的時間，是路徑規劃的強大工具：它可能比場景中物體的深度、速度和加速度提供更多信息——即使對於人類也是如此。而 TTC 具有多種優勢，包括只需要一個單目、未校準的相機。然而，要做到回歸每個像素的 TTC 並不簡單，大多數現有方法對場景做出了過度簡化的假設。研究者們通過一系列更簡單的二元分類估計 TTC 來解決這一挑戰，他們以低延遲預測觀察者是否會在特定時間內與障礙物發生碰撞，這通常比知道精確的每像素 TTC 更重要。

對於這種情況，該研究的方法在 6.4 毫秒內提供了時間地理圍欄 (temporal geofence)，此方法比現有方法快了 25 倍。當計算預算允許時，該研究的方法還可以通過任意精細的量化，包含連續值來估計每一個像素的 TTC。此方法是第一個以足夠高的幀速率提供 TTC 資訊 (binary or coarsely quantized) 以供實際使用的方法。


## Reference

1. Abhishek Badki, Orazio Gallo, Jan Kautz, Pradeep Sen, 2021, "Binary TTC: A Temporal Geofence for Autonomous Navigation", CVPR.


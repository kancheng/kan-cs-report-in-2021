# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 。


## Tasks

1. 尋找一篇 2020/2021 年風格遷移的文章

2. 翻譯其摘要和貢獻；對程式碼主體部分進行註釋，截圖

3. 配置環境，測試自己的圖片進行風格遷移的結果，截圖


### 文章

Sunnie S. Y. Kim, Nicholas Kolkin, Jason Salavon, Gregory Shakhnarovich, 2020, Deformable Style Transfer, (ECCV 2020).

### 摘要和貢獻

可變形風格轉移
Deformable Style Transfer
Sunnie S. Y. Kim, Nicholas Kolkin, Jason Salavon, Gregory Shakhnarovich ;
Both geometry and texture are fundamental aspects of visual style. Existing style transfer methods, however, primarily focus on texture, almost entirely ignoring geometry. We propose deformable style transfer (DST), an optimization-based approach that jointly stylizes the texture and geometry of a content image to better match a style image. Unlike previous geometry-aware stylization methods, our approach is neither restricted to a particular domain (such as human faces), nor does it require training sets of matching style/content pairs. 
We demonstrate our method on a diverse set of content and style images including portraits, animals, objects, scenes, and paintings. Code has been made publicly available at https://github.com/sunniesuhyoung/DST."

幾何和紋理都是視覺風格的基本基礎，然而當下的的風格轉移方法都關注在紋理上，幾乎忽略幾何的部分。研究者提出提出了可變形樣式轉移 (DST; Deformable Style Transfer)，此優化方法可聯合對內容圖像中的紋理和幾何形狀來進行樣式化，從而可以更好地匹配影像風格。於過往的幾何感知風格化方法不同，該研究的方法既不限於特定領域（例如人臉），也不需匹配樣式/內容到對的訓練資料集上。而研究者在一系列不同的內容和風格圖像上展示了我們的方法，包括肖像、動物、物體、場景和繪畫。 程式碼已在 https://github.com/sunniesuhyoung/DST 上公開。

研究者提出一個擴展風格遷移的方法，使之可更好地對應藝術家風格作品的幾何形狀上，而在過往樣式定義中並無明確包含幾何的樣式，其幾何的部份通過轉移方法後，再最後輸出的內容中是不變的。從而導致這些演算法的輸出會很容易被識別為內容圖像的更改或者是 "過濾" 版本，而非使用根據內容圖像作為參考，而創建的新圖像。而該篇研究的研究者們在這項工作中的專注部分為，於將形狀和幾何圖形去作為風格的重要標誌，並相互結合，同時放鬆對其內容的限制，使之作為一個可接收的 "畫布"。

該研究通過引入內容圖像的域不可知幾何變形來實現這一點，並與標準樣式轉移損失聯合優化(by introducing a domain-agnostic geometric deformation of the content image, optimized jointly with standard style transfer losses.)。而該研究提出的方法，可變形風格轉移 (DST;Deformable Style Transfer)，則是將做為內容圖像和風格圖像(a content image and a style image)的兩張圖像進行輸入。研究者假設這兩個圖像共享一個域並且有一些近似對齊，所謂的近似對齊類於都是坐著的動物的圖像，這在用於娛樂或藝術用途以及數據增強等風格轉移的工作中很普遍。而此問題會使學習遷移風格變得具有挑戰性，因為無法合理地假設在任何可行的訓練集中捕捉到不受約束的領域和風格的變化。

而跟其他風格遷移工作類似，研究者們基於此開發了一種優化的方法，利用 ImageNet 分類訓練的卷積網絡 (CNN) 做預訓練和固定特徵提取。在此研究者也將關於學習幾何風格的工作，使用地標星座的顯式模型或代表特定風格的變形模型等需要一組所選風格的圖像，並且僅適用於特定領域的方法與自己的結果進行比較，發現我們的方法產生了同樣美觀的結果，儘管更為通用。

此工作中，研究提出了第一個，據研究者所知，將幾何融入一次性、領域不可知風格轉移的方法，其 DST 的關鍵思想是找到內容圖像的平滑變形或空間扭曲部分，使其與樣式圖像在空間上對齊。這種變形會由一組匹配的關鍵點引導，選擇最大化在兩幅圖像配對關鍵點間的特徵相似性。


該研究貢獻如下

– 提出一個優化框架，此框架賦予風格遷移算法顯式的能力，能夠使內容圖像變形以匹配風格圖像的幾何形狀。而且可以讓使用者利用公式來進行權衡化的風格控制。

– 首次在 oneshot 場景中展示了幾何感知風格轉移。與之前僅限於人臉的工作相比，DST 適用於其他領域的圖像，假設它們共享一個域並具有一些近似對齊。

– 我們在一系列風格轉移實例上評估 DST，包括面部、動物、車輛和風景的圖像，並通過使用者研究證明我們的框架可以增強現有的風格轉移算法，用最低的成本來顯著提高感知內容。

To summarize the contributions of this work:

– We propose an optimization-based framework that endows style transfer algorithms with the explicit ability to deform a content image to match the geometry of a style image. Our flexible formulation also allows explicit user guidance and control of stylization tradeoffs.

– We demonstrate, for the first time, geometry-aware style transfer in a oneshot scenario.
In contrast to previous works that are limited to human faces, DST works for images in other domains, with the assumption that they share a domain and have some approximate alignment.

– We evaluate DST on a range of style transfer instances, with images of faces, animals, vehicles, and landscapes, and through a user study demonstrate that our framework can augment existing style transfer algorithms to dramatically improve the perceived stylization quality, at minimal cost to the percieved content preservation.

### 程式碼

其研究得專案內容程式碼為 `sunniesuhyoung/DST`，而自己實際測試該專案的範例程式碼在 `code` 目錄下的 `demo_DST_Kan.ipynb` 檔案。


## Note

1. https://github.com/neuralchen/ASMAGAN

2. https://sunniesuhyoung.github.io/DST-page/

3. https://arxiv.org/abs/2003.11038

4. https://www.youtube.com/watch?v=7qUzfcn6TPk&feature=youtu.be

5. https://www.youtube.com/watch?v=mVU5tSxS4is&feature=youtu.be

6. https://github.com/sunniesuhyoung/DST


## Reference

這回作業直接相關文章連結如下。

1. https://github.com/neuralchen/awesome_style_transfer



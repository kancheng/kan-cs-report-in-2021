# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 。


## Tasks

对之前的论文清单做延伸，内容包括但不限于：论文内容、代码复现、实验创新等，形成一份报告（原则上不多于4页）

### 文章和摘要和貢獻


1. 通過對抗仿射子空間嵌入保護隱私的圖像特徵

```
Mihai Dusmanu et al., 2021, "Privacy-Preserving Image Features via Adversarial Affine Subspace Embeddings", CVPR.

 - 個人隱私保護
```

許多計算機視覺系統需要將使用者的圖像特徵上傳到雲端進行處理和儲存，而該研究發現可以利用這些特徵來恢復有關場景或主題的敏感資訊，比如通過重建原始圖像的外觀。而研究者們為了解決這個隱私問題，提出了一種新的隱私保護特徵表示。他們工作的核心思想是通過將每個特徵描述符去嵌入到包含原始特徵和對抗性特徵樣本的仿射子空間中，而後再進行刪除每個特徵描述符的約束。基於子空間到子空間距離的概念到啟用隱私保護的特徵是相互匹配的呈現。而研究者通過實驗證明了自己的方法的有效性及其與視覺定位和映射，跟人臉認證應用的高度實際相關性。前者與原始特徵相比，該研究的方法使對手恢復私人資訊得更加困難，相同的概念可以應用於其他領域，例如用於生物特徵認證的面部特徵。

2. 通過多評估者協議建模學習校準的醫學圖像分割

```
Wei Ji et al., 2021, "Learning Calibrated Medical Image Segmentation via Multi-rater Agreement Modeling", CVPR.

 - 醫療
```

在醫學圖像分析領域中，通常會收集多個註釋，而每一個註釋都來自不同的臨床專家或評估者，以期望減少可能的診斷錯誤。而從計算機視覺的角度來看，採用通過多數票或來自首選評估者的簡單註釋來獲得的真實標籤已成為一種常見做法。當然此過程會忽略在原始多評估者註釋中根深蒂固的同意或不同意的等豐富資訊。研究者為了解決這個問題，他們建議對多評價者做一個名為 MR-Net 的 ex-plicitly model the multi-rater (dis-)agreement，此模型有兩個主要貢獻。首先，設計了一個專業知識推斷模塊或 EIM，將各個評分者的專業知識水平作為先驗知識嵌入，以形成高級語義的特徵。其次，研究者的方法能夠從粗略預測中重建多評分者的評分，並進一步利用多評分者中不一致的線索來提高分割性能，而此研究的工作是第一個進行在不同專業水平下為醫學圖像分割生成校準預測的研究，同時該研究在不同成像方式的五個醫學分割任務中進行了廣泛的實證實驗，證明 MRNet 對廣泛的醫學分割任務的有效性和適用性。

(1). 多評分者重建模塊 (MRM) 旨在根據專家先驗和模型的軟預測重建原始多評分者評分。通過利用融合軟標籤和原始多評級者註釋之間的內在相關性，這使得能夠估計反映評級者間可變性的不確定性圖。

(2). 為了更好地利用多評價者協議之間的豐富線索，我們進一步在我們的框架中加入了多評價者感知模塊(MPM)，這在經驗上導致顯著的性能提升。

(3). 為了更好地利用多評價者的文字，我們進一步在我們的框架中加入了多評價者模塊(MPM)，這在經驗上導致顯著的業績提升。


3. 用於 3D 點雲生成的擴散概率模型

```
Shitong Luo et al., 2021, "Diffusion Probabilistic Models for 3D Point Cloud Generation", CVPR.

 - 3D 形狀建模
```

研究者提出了一個用於點雲生成的概率模型，該模型是各種 3D 視覺任務的基礎，比如形狀完成、上採樣、合成和數據增強。而受非平衡熱力學中擴散過程的啟發，我們將點雲中的點視為與熱浴接觸的熱力學系統中的粒子，它們從原始分佈擴散到噪聲分佈。因此，點雲生成相當於學習將噪聲分佈轉換為所需形狀分佈的反向擴散過程。具體來說，我們建議將點雲的反向擴散過程建模為以特定形狀為條件的馬爾可夫鏈。該研究推導出封閉形式的變分界用於訓練並提供模型的實現，而實驗結果表明，我們的模型在點雲生成和自動編碼方面取得了有競爭力的性能。其研究者的主要貢獻包括三點如下 :

(1). 研究者提出了一種新的點雲概率生成模型，其靈感來自非平衡熱力學中的擴散過程。

(2). 從以某種潛在形狀為條件的點雲可能性的變分下界得出一個易於處理的訓練目標。

(3). 大量實驗表明，該模型在點雲生成和自動編碼方面取得了有競爭力的性能。


4. 任務編程：學習數據高效行為表徵

```
Jennifer J. Sun et al., 2021, "Task Programming: Learning Data Efficient Behavior Representations", CVPR.

 - 數據行為
```


5. PoseAug：用於 3D 人體姿勢估計的可微姿勢增強框架

```
Kehong Gong et al., 2021, "PoseAug: A Differentiable Pose Augmentation Framework for 3D Human Pose Estimation", CVPR.

 - 3D 人體姿勢
```


6. SCANimate: Skinned Clothing Avatar Networks 的弱監督學習

```
Shunsuke Saito et al., 2021, "SCANimate: Weakly Supervised Learning of Skinned Clothed Avatar Networks", CVPR.

 -  3D 掃描
```


7. 關於自我接觸和人體姿勢

```
Lea Müller et al., 2021, "On Self-Contact and Human Pose", CVPR.

 - 3D 人體姿勢
```


8. Binary TTC：自主導航的時間地理圍欄

```
Abhishek Badki et al., 2021, "Binary TTC: A Temporal Geofence for Autonomous Navigation", CVPR.

 - 路徑規劃
```



### 程式碼

其研究得專案內容程式碼為 `XX`，而自己實際測試該專案的範例程式碼在 `code` 目錄下的 `XX.ipynb` 檔案。


## Reference


1. Mihai Dusmanu, Johannes L. Schönberger, Sudipta N. Sinha, Marc Pollefeys, 2021, "Privacy-Preserving Image Features via Adversarial Affine Subspace Embeddings", CVPR.

2. Wei Ji, Shuang Yu, Junde Wu, Kai Ma, Cheng Bian, Qi Bi, Jingjing Li, Hanruo Liu, Li Cheng, Yefeng Zheng, 2021, "Learning Calibrated Medical Image Segmentation via Multi-rater Agreement Modeling", CVPR.

3. Shitong Luo, Wei Hu, 2021, "Diffusion Probabilistic Models for 3D Point Cloud Generation", CVPR.

4. Jennifer J. Sun, Ann Kennedy, Eric Zhan, David J. Anderson, Yisong Yue, Pietro Perona, 2021, "Task Programming: Learning Data Efficient Behavior Representations", CVPR.

5. Kehong Gong, Jianfeng Zhang, Jiashi Feng, 2021, "PoseAug: A Differentiable Pose Augmentation Framework for 3D Human Pose Estimation", CVPR.

6. Shunsuke Saito, Jinlong Yang, Qianli Ma, Michael J. Black, 2021, "SCANimate: Weakly Supervised Learning of Skinned Clothed Avatar Networks", CVPR.

7. Lea Müller, Ahmed A. A. Osman, Siyu Tang, Chun-Hao P. Huang, Michael J. Black, 2021, "On Self-Contact and Human Pose", CVPR.

8. Abhishek Badki, Orazio Gallo, Jan Kautz, Pradeep Sen, 2021, "Binary TTC: A Temporal Geofence for Autonomous Navigation", CVPR.


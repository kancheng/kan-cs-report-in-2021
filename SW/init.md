# kan-readpaper-homework

期刊閱讀筆記與作業


## 科技論文寫作 Scientific Writing

1. IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI) (SCI IF 16.389), 2021

2. IEEE Journal on Selected Areas in Communications (SCI IF 9.114), 2021


## Note

> IMRAD - Introduction, Methods, Results And Discussion


### Mine

這篇有趣的地方在於判別影像深度的遠近，我會想要加入不同的方法。


### Introduction

該篇研究者想要判斷視覺任務的影像遠近，研究者提出了一種針對 RGB-D 視覺任務的新方法，該方法是在對抗性學習和特權資訊框架內開發的。

研究者考慮從深度和 RGB 影像中學習表示的實際案例，而在測試時僅依賴於 RGB 資料。研究者報告了 NYUD 資料集上對象分類的最新結果，以及可用於此任務的最大多模式資料集 NTU RGB+D 
以及 Northwestern-UCLA 上的影像動作識別結果。

他們提出了一種訓練幻覺網絡的新方法，該方法通過對抗性學習來學習提取深度資訊，從而產生一種乾淨的方法，而不會出現一些平衡或超參數損失。

深度感知是對 3D 世界進行推理的能力，對許多捕食者的生存至關重要，也是人類理解周圍環境並與之互動的重要技能。


### Methods

研究者提出了一種在多模式流網絡架構中學習幻覺網絡的新方法，它包含一種對抗性學習策略，該策略在訓練時利用多種資料模態，而在測試時僅使用一種。

事實證明，它優於基於距離的方法，並且通過對距離度量、資料模態和幻覺特徵向量的大小，等組件不可知來增強其靈活性。

從技術上來說，該研究提出了一個時間感知的鑑別器網絡，並聯合解決了兩個問題，其一為經典的二元分類任務（真實/生成），其二為一個輔助任務，它固有地賦予了學習特徵以鑑別能力。

我們在特權資訊場景中報告了用於對象分類任務的 NYUD 資料集，以及用於執行以下任務的大規模 NTU RGB+D 和 Northwestern-UCLA 資料集的結果等動作識別。


### Results

在此工作中，研究者引入了一種新技術來利用額外資訊，在訓練時以深度圖像的形式，在測試時改進僅 RGB 模型。

該研究通過對抗性訓練幻覺網絡來完成的，該網絡從教師深度流中學習如何從 RGB 幀編碼單眼深度特徵。同時在三個不同資料集的對象分類和動作識別任務中，所提出的方法在特權資訊場景中優於以前的方法。此外，研究者幻覺框架在深度嘈雜的情況下非常有效。


### Discussion

RGB 和影像深度實際上是攜帶補充資訊。而實際上，雙流設置總是比單獨使用兩個流提供令人驚訝的更好的準確性。

其一、作為額外的證據，儘管其單流組件之一，深度或 RGB，取決於任務和資料集的準確性較低，但多模態集合（即雙流）的性能優於單模態集合。 

其二、 RGB 圖像中有（單目）深度資訊，從幻覺流經常恢復並且有時超過其基於深度的教師網絡的準確性這一事實中可以明顯看出這一點。此外，融合幻覺和 RGB 流總是帶來好處，如融合 RGB 和深度的部分。而研究者在 RGB 和深度上訓練的雙流模型的準確度值，並使用 RGB 和噪聲深度資料進行測試。

其三、標準監督學習在提取資訊方面存在局限性。而事實上，鑑於有證據表明 RGB 圖像中存在可利用的深度資訊，最小化交叉熵損失並不足以完全提取出資訊
為此，研究者需要一個學生-教師對抗框架。

其四、僅靠對抗訓練是不夠的。為二元任務（真實/生成）訓練的樸素判別器不足以迫使幻覺網絡產生判別特徵。輔助判別任務對於提取對給定任務也具有判別力的單眼深度線索是必要的（另一方面，僅輔助任務是不夠的，正如 RGB 集成的性能所暗示的那樣）。

其五、幻覺特定於任務的深度特徵比估計全深度圖像更有效。不僅估計的深度通常缺少分類所需的細節，而且其估計僅由重建目標驅動。相反，特徵幻覺解決了特定的分類任務，需要估計低維向量而不是圖像。


## About

Learning with Privileged Information via Adversarial Discriminative Modality Distillation

通過對抗性判別模態蒸餾(Adversarial Discriminative Modality Distillation) 學習特權資訊 (Privileged Information)

Nuno C. Garcia, Pietro Morerio, and Vittorio Murino, Senior Member, IEEE


https://arxiv.org/abs/1810.08437

Comments: Accepted to IEEE Transactions on Pattern Analysis and Machine Intelligence

Subjects:	Computer Vision and Pattern Recognition (cs.CV)


https://ieeexplore.ieee.org/document/8764498

Published in: IEEE Transactions on Pattern Analysis and Machine Intelligence ( Volume: 42, Issue: 10, Oct. 1 2020)

Page(s): 2581 - 2593

Date of Publication: 16 July 2019 

ISSN Information:

 - Print ISSN: 0162-8828

 - CD: 2160-9292

 - Electronic ISSN: 1939-3539

PubMed ID: 31331879

INSPEC Accession Number: 19931889

DOI: 10.1109/TPAMI.2019.2929038

Publisher: IEEE



## Code

Code is available at
https://github.com/pmorerio/admd


## Abstract 摘要

Heterogeneous data modalities can provide complementary cues for several tasks, usually leading to more robust algorithms and better performance. 

異構資料模式可以為多個任務提供補充線索，通常會導致更強大的演算法和更好的性能。

However, while training data can be accurately collected to include a variety of sensory modalities, it is often the case that not all of them are available in real life (testing) scenarios, where a model has to be deployed. 

然而，雖然可以準確地收集訓練資料以包括各種感官模式，但在現實生活（測試）場景中，通常情況下並非所有這些都可用，在這些場景中必須部署模型。

This raises the challenge of how to extract information from multimodal data in the training stage, in a form that can be exploited at test time, considering limitations such as noisy or missing modalities. 

這對來自訓練階段的多模態資料中如何提出訊息提出了挑戰，以一種可以在測試時利用的形式，考慮到諸如嘈雜或缺失模態等限制。

This paper presents a new approach in this direction for RGB-D vision tasks, developed within the adversarial learning and privileged information frameworks. 

本文提出了一種針對 RGB-D 視覺任務的新方法，該方法是在對抗性學習和特權資訊框架內開發的。

We consider the practical case of learning representations from depth and RGB videos, while relying only on RGB data at test time. 

我們考慮從深度和 RGB 影像中學習表示的實際案例，而在測試時僅依賴於 RGB 資料。

We propose a new approach to train a hallucination network that learns to distill depth information via adversarial learning, resulting in a clean approach without several losses to balance or hyperparameters. 

我們提出了一種訓練幻覺網絡的新方法，該方法通過對抗性學習來學習提取深度資訊，從而產生一種乾淨的方法，而不會出現一些平衡或超參數損失。

We report state-of-the-art results for object classification on the NYUD dataset, and video action recognition on the largest multimodal dataset available for this task, the NTU RGB+D, as well as on the Northwestern-UCLA.

我們報告了 NYUD 資料集上對象分類的最新結果，以及可用於此任務的最大多模式資料集 NTU RGB+D 以及 Northwestern-UCLA 上的影像動作識別結果。

Index Terms—Multimodal deep learning, adversarial learning, privileged information, network distillation, modality hallucination.

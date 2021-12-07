# AI - 人工智慧

> 2101212850 干皓丞

PKU 2021 個人實驗報告作業

## About

Transformer 模型根據 Attention Is All You Need 進行實現，閱讀論文與心得。


## Note

> IMRAD - Introduction, Methods, Results And Discussion


### Introduction

該篇研究根據過往研究成果進行研究，將其發展成新的方法與架構，該方法在各個領域上具有顯著的效果，研究者發現循環神經網絡(Recurrent neural networks)，特別是 Sepp Hochreiter et al. 的長短期記憶(long short-term memory) 和 Junyoung Chung et al. 的門控循環 (gated recurrent) 神經網絡，已成為序列建模和轉導問題，並且是語言建模和機器翻譯中的最先進方法。

此後許多研究者們的努力如 Yonghui Wu et al.、Minh-Thang Luong et al.、Rafal Jozefowicz et al. 繼續推動循環語言模型和編碼器-解碼器架構的界限，而循環模型 (Recurrent models) 通常沿輸入和輸出序列的符號位置因子計算。將位置與計算時間中的步驟對齊，它們生成一系列隱藏狀態 ht，作為先前隱藏狀態 ht1 和位置 t 的輸入的函數。此固有的順序性質排除了訓練示例中的並行化，這在更長的序列長度時變得至關重要，因為記憶體限制了跨示例的批處理，近來的工作通過分解技巧 Oleksii Kuchaiev et al. 和條件計算 Noam Shazeer et al. 顯著提高了計算效率，同時在後者的情況下也提高了模型性能。然而順序計算的基本約束仍然存在，而且注意機制已成為各種任務中引人注目的序列建模和轉導模型的組成部分，允許對依賴項進行建模，而無需考慮它們在輸入或輸出序列中的距離 Dzmitry Bahdanau et al. 、Yoon Kim et al.，然而除了少數情況如 Ankur Parikh et al.，在所有情況下該注意力機制都與循環網絡結合使用。在這項工作中，我們提出了名為 Transformer 的一種避免重複的模型架構，而是完全依靠注意力機制來繪製輸入和輸出之間的全局依賴關係，而 Transformer 允許顯著更多的並行化，並且在八個 P100 GPU 上進行了短短 12 小時的訓練後，可以在翻譯質量方面達到新的水平。


### Methods

該研究的模型架構，其大多數具有競爭力的神經序列轉導模型都具有編碼器-解碼器結構，在此研究者編碼器將符號表示的輸入序列 x 映射到連續表示的序列 z 。 同時給定 z 解碼器，然後生成一個符號的輸出序列 y 後，輸出一次一個元素。在每一步過程中，模型都是自回歸的 Alex Graves et al.，且在生成下一個時，將先前生成的符號作為額外的輸入使用。Transformer 遵循這一整體架構，使用堆疊的自註意力和逐點、完全連接的編碼器和解碼器層。

該章節分別分為編碼器和解碼器堆棧 (Encoder and Decoder Stacks)部分，而注意力 (Attention) 的部分則包含縮放點積注意力 (Scaled Dot-Product Attention) 、多頭注意力(Multi-Head Attention) 跟注意力在該研究模型中的應用，同時說明該研究的位置前饋網絡 (Position-wise Feed-Forward Networks)、位置前饋網絡(Position-wise Feed-Forward Networks)、嵌入和 Softmax (Embeddings and Softmax) 與位置編碼 (Positional Encoding)。


### Results


在此研究者說明何謂自我注意 (Self-Attention)與訓練機制，研究者將自注意力層的各個方面與通常用於將一個可變長度的符號表示序列 x 映射到另一個等長序列 z，例如典型序列轉導編碼器或解碼器中的隱藏層。

過程中考慮了三個需求，首先是每層的總計算複雜度，另一個則是可以並行化的計算量，通過所需的最小順序操作數來衡量，第三個是網絡中遠程依賴之間的路徑長度，而且當中學習遠程依賴是許多序列轉導任務中的關鍵挑戰，另外影響學習這種依賴性能力的一個關鍵因素是前向和後向信號必須在網絡中穿越的路徑長度，當中輸入和輸出序列中任意位置組合之間的這些路徑越短，而學習遠程依賴關係就越容易 Sepp Hochreiter et al.。同時研究者還比較了由不同層類型組成的網絡中任意兩個輸入和輸出位置之間的最大路徑長度，另外個人注意力不僅清楚地學習執行不同的任務，而且許多人似乎表現出與句子的句法和語義結構相關的行為。

而訓練的部分則描述了模型的訓練機制並對硬體和優化器 (Optimizer) 與正則化 (Regularization) 進行說明，同時在研究者的訓練數據和批處理 (Training Data and Batching)，研究者在包含約 450 萬個句子對的標準 WMT 2014 英德數據集上進行了訓練，同時對句子使用字節對編碼進行編碼，使它具有大約 37000 個標記的共享源目標詞彙表。對於英法轉換，研究者使用了明顯更大的 WMT 2014 英法數據集，該數據集由 3600 萬個句子組成，並將標記拆分為 32000 個單詞詞表，而句子對按近似序列長度分批在一起，此外每個訓練批次包含一組句子對，其中包含大約 25000 個源標記和 25000 個目標標記。


### Discussion

根據整個研究的工作，該研究者們提出了 Transformer，這是第一個完全基於注意力的序列轉換模型，使用多頭自註意力取代了編碼器-解碼器架構中最常用的循環層。而面對翻譯任務，當中 Transformer 的訓練速度明顯快於基於循環或卷積層的架構。另外在 WMT 2014 English-to-German 和 WMT 2014 English-to-French 翻譯任務過程中，研究者達到了最先進的水平。


## Code

The code we used to train and evaluate our models is available at https://github.com/tensorflow/tensor2tensor.


## About

Attention Is All You Need

Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Lukasz Kaiser, Illia Polosukhin

https://arxiv.org/abs/1706.03762

Comments: 15 pages, 5 figures
Subjects: Computation and Language (cs.CL); Machine Learning (cs.LG)
Cite as: arXiv:1706.03762 [cs.CL] (or arXiv:1706.03762v5 [cs.CL] for this version)



## Abstract 摘要

The dominant sequence transduction models are based on complex recurrent or convolutional neural networks that include an encoder and a decoder. 
主導序列轉導模型基於復雜的循環或卷積神經網絡，包括編碼器和解碼器。

The best performing models also connect the encoder and decoder through an attention mechanism. 
性能最好的模型還通過注意力機制連接編碼器和解碼器。

We propose a new simple network architecture, the Transformer, based solely on attention mechanisms, dispensing with recurrence and convolutions entirely. 
我們提出了一種新的簡單網絡架構，即 Transformer，它完全基於注意力機制，完全消除了遞歸和卷積。

Experiments on two machine translation tasks show these models to be superior in quality while being more parallelizable and requiring significantly less time to train. 
在兩個機器翻譯任務上的實驗表明，這些模型在質量上更勝一籌，同時更可並行化並且需要更少的訓練時間。

Our model achieves 28.4 BLEU on the WMT 2014 Englishto-German translation task, improving over the existing best results, including ensembles, by over 2 BLEU. 
我們的模型在 WMT 2014 英德翻譯任務上達到了 28.4 BLEU，比現有的最佳結果（包括集成）提高了 2 BLEU。

On the WMT 2014 English-to-French translation task, our model establishes a new single-model state-of-the-art BLEU score of 41.8 after training for 3.5 days on eight GPUs, a small fraction of the training costs of the best models from the literature. 
在 WMT 2014 英語到法語翻譯任務中，我們的模型在 8 個 GPU 上訓練 3.5 天后建立了一個新的單模型最先進的 BLEU 分數 41.8，這是最好的訓練成本的一小部分 文獻中的模型。

We show that the Transformer generalizes well to other tasks by applying it successfully to English constituency parsing both with large and limited training data.
我們表明，通過將 Transformer 成功應用於具有大量和有限訓練數據的英語選區解析，可以很好地推廣到其他任務。


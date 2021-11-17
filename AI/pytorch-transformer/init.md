# AI - 人工智慧

> 2101212850 干皓丞

PKU 2021 個人實驗報告作業

## About

Transformer 模型根據 Attention Is All You Need 進行實現。

## 實現 Code

該作業其專案為 kancheng/kan-cs-report-in-2021 ，程式碼則可於 kan-cs-report-in-2021/AI/pytorch-transformer/code 找到，實驗設備為 MacBook Pro (Retina, 15-inch, Mid 2014) 和 Acer Aspire R7。同時參考的技術文章與論文連結皆於該專案的 init.md 文件中條列呈現。該專案根據 HarvardNLP 的 The Annotated Transformer 與名為 fawazsammani/chatbot-transformer 的 GitHub 專案，該專案使用 Cornell Movie Dialog Corpus 資料，進行 Chatbot using Transformers 的實作。作業結果為前者為 transformer-harvard-demo.ipynb ，而後者為 transformer-chatbot-demo.ipynb 檔案。

在處理過程中大多遇到 Pytorch 套件不相容、版本過舊的問題，這類問題來源大多是  Pytorch 早期開發功能變動所造成，但可以從 HarvardNLP 與 Chatbot using Transformers 的過程中看出整個 Transformer 的設計概念與運作，程式碼的版本進行查錯與修正後執行，而後續兩個範例的 Epoch 等訓練結果，則放於附件 1 與 附件 2 進行呈現。


## Reference

1. Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Lukasz Kaiser, Illia Polosukhin, Attention Is All You Need, https://arxiv.org/abs/1706.03762

2. https://github.com/tensorflow/tensor2tensor

3. https://paperswithcode.com/paper/attention-is-all-you-need

4. https://zhuanlan.zhihu.com/p/339207092

5. https://github.com/tensorflow/models/tree/master/official/nlp/transformer

6. https://github.com/graykode/nlp-tutorial

7. https://towardsdatascience.com/how-to-code-the-transformer-in-pytorch-24db27c8f9ec

8. https://github.com/SamLynnEvans/Transformer

9. http://nlp.seas.harvard.edu/2018/04/03/attention.html

10. https://zhuanlan.zhihu.com/p/411311520

11. https://zhuanlan.zhihu.com/p/420820453

12. https://www.youtube.com/watch?v=n9TlOhRjYoc

13. https://www.youtube.com/watch?v=N6aRv06iv2g

14. https://github.com/huggingface/transformers

15. https://github.com/harvardnlp/annotated-transformer

16. https://medium.com/analytics-vidhya/bert-implementation-multi-head-attention-4a10142636fe

17. https://github.com/fawazsammani/chatbot-transformer

18. https://wmathor.com/index.php/archives/1455/

19. https://zhuanlan.zhihu.com/p/48731949



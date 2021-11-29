# AI - 人工智慧

> 2101212850 干皓丞

PKU 2021 個人實驗報告作業

## About

Transformer 模型根據 Attention Is All You Need 進行實現，閱讀論文、說明並理解論文內容，同時完成哈佛 NLP 文件，若行有餘力，對其實現與改進。


## Task

Assignment 2: Code for transformers(25p)

Goal: To familiarize the framework of transformer and its code implementation. On top of this, you can try to modify the variant of the transformer to improve the existing method.

Due Date: January 5, 2022 at 08:00am. Note that it is a DEADLINE. You will grade as zero if you return your writeup and code after the deadline unless you have good reasons and let me now in advance.

1. Instructions

- You should work on this assignment by yourself.

- Writeups should be submitted as PDF.

2. Transformer

The transformer[1] is a de facto standard language modeling architecture in the NLP community.

Recently, a pioneering object detection model DETR[2] starts to formulate the object detection task as a set prediction problem and use an end-to-end Transformer structure to achieve state-ofthe-art performance. 

Due to its end-to-end nature, DETR regains the CV community attention about the Transformer, and a mass of vision Transformer models have been proposed for different vision understanding tasks, such as image classification[3], object detection[2][4], tracking[5][6], person re-id[7], image generation[8], super-resolution[9], and video relation detection[10].

The specific steps you need to complete are as follows:

Step 1: Read the paperվAttention is all you needտand write a reading report. (5pt)

Step 2: Read and run Transformer-related code https://nlp.seas.harvard.edu/2018/04/03/attention.html. 

Recording the operation result and your understanding in the experimental report. (5pt)

Step 3: You can choose a specific area (No restriction on direction), and apply the transformer to this area. 

It is necessary to find a published paper and successfully reproduce the corresponding result in the paper. 

Recording the related paper, experimental steps, and your results vs results in the paper to the experimental report. (10pt)

Step 4: The reading report & source code & the related paper & experimental report will be organized and submitted. (5pt)

3. Bonus

On top of reproducing the corresponding result in the paper, you can try to modify the variant of the transformer to improve the existing method.

You can create a new document named Bonus which records the motivation, framework of the variant of the transformer, experimental details and the result for your new model.

And pack the related code and Bonus document in one package, using the file name AI_homework_2_X_Y_bonus. 

And Send an email with the title AI_homework_2_X_Y_bonus.

Note: We will add no more than 10 points to the people who finish this link.

4. Writeups

- Code. The code use python language.

- The reading report about "Attention is all you need"

- The experimental report, curves and experimental analysis are suggested to include in report.

- Your code should be bug free. You would get zero point if there are bugs and we can not run your code to get the results.

5. How to submit

Send an email , with the title AI_homework_2_X_Y:

where AI is the abbreviation for Artificial Intelligence;

X is your name in Chinese; Such as: 張三

Y is your student ID;

We are sorry that we do not provide file server for you to upload your homework.

If you have any questions about this course or assignment, please use a separate email.

Do not ask any questions in this assignment-return email.

Pack your code and writeup in one package, using the file name AI_homework_2_X_Y instead of AI or something like that.

Writeup is not suggested to put in the email.

You are suggested to pack code and writeup in one package with the title: Writeup_AI_homework_2_X_Y

The default package might be in “.zip” format. If not, please show your format and how we can unpack it (i.e., software).

Attach your package which includes the code and report you have created.

Note. If you have questions about the project, please contact with (Yalu Cheng or Runyi Yu) as early as possible, two days or more before the deadline are preferred.

6. Honor code

- The honor code applies to all work turned in for this course.

- You must write and debug your own code.

- In particular, all code and documentation should be entirely your own work. You may consult with other students about high-level design strategies related to programming assignments, but you may not copy code or use the structure or organization of another student’s program.

- If you use any code or functions found from the internet, please tell us the reference link and how do you use it. Direct code copy from the internet would be considered violation of this policy.

If we find there are two returned assignments same in large proportional code, both of the assignments would be considered violation of this policy.

7. Reference

[1] Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N Gomez, Lukasz Kaiser, and Illia Polosukhin. 2017. Attention is all you need. In NeurIPS

[2] Nicolas Carion, Francisco Massa, Gabriel Synnaeve, Nicolas Usunier, Alexander Kirillov, and Sergey Zagoruyko. 2020. End-to-end object detection with transformers. In ECCV, pages 213–229.

[3] Dosovitskiy A, Beyer L, Kolesnikov A, et al. An image is worth 16x16 words: Transformers for image recognition at scale[J]. arXiv preprint arXiv:2010.11929, 2020.

[4] Zhu X, Su W, Lu L, et al. Deformable detr: Deformable transformers for end-to-end object detection[J]. arXiv preprint arXiv:2010.04159, 2020.

[5] Tim Meinhardt, Alexander Kirillov, Laura Leal-Taixe, and Christoph Feichtenhofer. 2021. Trackformer: Multi-object tracking with transformers. arXiv.

[6] Peize Sun, Yi Jiang, Rufeng Zhang, Enze Xie, Jinkun Cao, Xinting Hu, Tao Kong, Zehuan Yuan, Changhu Wang, and Ping Luo. 2020. Transtrack: Multipleobject tracking with transformer. arXiv.

[7] Shuting He, Hao Luo, Pichao Wang, Fan Wang, Hao Li, and Wei Jiang. 2021. Transreid: Transformer-based object re-identification. arXiv.

[8] Yifan Jiang, Shiyu Chang, and Zhangyang Wang. 2021. Transgan: Two transformers can make one strong gan. arXiv.

[9] Fuzhi Yang, Huan Yang, Jianlong Fu, Hongtao Lu, and Baining Guo. 2020. Learning texture transformer network for image super-resolution. In CVPR, pages 5791–5800

[10] Kaifeng Gao, Long Chen, Yifeng Huang, and Jun Xiao. 2021. Video relation detection via tracklet based visual transformer. In ACM MM.


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



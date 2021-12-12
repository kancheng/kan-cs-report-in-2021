# About

End-to-End Object Detection with Transformers (ECCV 2020)

https://github.com/facebookresearch/detr

https://www.ecva.net/papers/eccv_2020/papers_ECCV/html/832_ECCV_2020_paper.php


# Summary

研究者提出了一种将对象检测视为直接集预测问题的新方法，該方法简化了检测管道，並且有效地消除了对许多手工设计组件的需求，例如非最大抑制程序或锚生成，这些组件明确地编码了我们关于任务的先验知识。在此新框架的主要成分称为 DEtection TRansformer 或 DETR，其原理是基于集合的全局损失，通过二部匹配强制进行唯一预测，以及转换器编码器-解码器架构。其流程是给定一组固定的学习对象查询集，DETR 会推理对象和全局图像上下文之间的关系，以直接并行输出最终的预测集。本研究的成果与许多其他现代探测器不同，該研究的新模型在概念上很简单，不需要专门的库。而 DETR 在具有挑战性的 COCO 对象检测数据集上展示了与完善且高度优化的 Faster RCNN 基线相当的准确性和运行时性能。同時 DETR 可以很容易地推广到以统一的方式产生全景分割。

研究者先是說明对象检测的目标是为每个感兴趣的对象预测一组边界框和类别标签，而现代检测器(Modern detectors)通过在大量建议、锚点或窗口中心上定义代理回归和分类问题，以间接方式解决此集合预测任务。這些檢測器的性能受到后处理步骤的显着影响，基本上會以折叠近似重复的预测锚集的设计以及将目标框進行分配。而为了简化这些流程，我们提出了一种直接集预测方法来绕过代理任务。此類端到端的理念在复杂的结构化预测任务在如机器翻译或语音识别等方面取得了重大进展，但尚未在对象检测領域上取得重大进展與成功，而之前的尝试要么添加其他形式的先验知识 ，或者没有被证明在具有挑战性的基准上具有强大的基线竞争力。而本研究的目標就是想要弥合这一個差距，其研究者通过将对象检测视为直接集预测问题来简化训练管道。他們采用基于转换器 的编码器-解码器架构，这是一种流行的序列预测架构。

转换器的自注意力机制显式地对序列中元素之间的所有成对交互进行建模，使这些架构特别适用于集合预测的特定约束，例如删除重复预测。該研究的检测变换器 DETR  會一次预测所有对象，并使用一组损失函数进行端到端训练，该函数在预测对象和真实对象之间执行二分匹配。而所謂的 DETR 會通过将常见的 CNN 与变压器架构相结合，直接预测（并行）最终检测集，在模型進行训练期间，二分匹配使用真实值框唯一地進行分配预测，而没有匹配的预测应产生“无对象”（∅）类的预测。DETR 通过删除多个手工设计的编码先验知识的组件来简化检测管道，如空间锚点或非最大抑制。而 DETR 与大多数现有检测方法不同，DETR 本身不需要任何自定义层，因此可以在包含标准 ResNet 和 Transformer 类的任何框架中轻松重现。該模型与之前关于直接集预测的大多数工作相比，DETR 的主要特征是二部匹配损失和变换器与非自回归的并行解码的结合。跟過往的研究相較之下，其工作侧重于使用 RNN 进行自回归解码。而研究者的匹配损失函数唯一地将预测分配给真实对象，并且对预测对象的排列是不变的，因此該研究可以并行发出它们。

最後研究團隊在最流行的对象检测数据集 COCO 上评估 DETR，將 DETR 與非常有竞争力的 Faster R-CNN 基线相比，Faster RCNN 经历了多次设计迭代，其性能自最初发布以来得到了极大的提升。研究的实验表明，其研究的新模型实现了可比的性能，DETR 在大型对象上表现出明显更好的性能，这一结果可能是由转换器的非本地计算实现的。然而 DETR 在小物体上的性能较低，研究者预计未来的工作将以与 FPN 为 Faster R-CNN 所做的开发相同的方式改进这方面，同時 DETR 的训练设置与标准物体检测器有多种不同。而新模型需要超长的训练计划，并受益于变压器中的辅助解码损失，同時該研究也徹底探索了哪些组件对展示的性能是至关重要部分，而且 DETR 的设计理念很容易扩展到更复杂的任务。=在研究者的实验中表明在预训练的 DETR 之上训练的简单分割头优于全景分割的竞争基线，这是一项近期具有挑战性的像素级识别任务。

# Abstract. 

We present a new method that views object detection as a direct set prediction problem. 

我们提出了一种将对象检测视为直接集预测问题的新方法。

Our approach streamlines the detection pipeline, effectively removing the need for many hand-designed components like a non-maximum suppression procedure or anchor generation that explicitly encode our prior knowledge about the task. 

我们的方法简化了检测管道，有效地消除了对许多手工设计组件的需求，例如非最大抑制程序或锚生成，这些组件明确地编码了我们关于任务的先验知识。

The main ingredients of the new framework, called DEtection TRansformer or DETR, are a set-based global loss that forces unique predictions via bipartite matching, and a transformer encoder-decoder architecture. 

新框架的主要成分称为 DEtection TRansformer 或 DETR，是基于集合的全局损失，通过二部匹配强制进行唯一预测，以及转换器编码器-解码器架构。

Given a fixed small set of learned object queries, DETR reasons about the relations of the objects and the global image context to directly output the final set of predictions in parallel. 

给定一组固定的学习对象查询集，DETR 会推理对象和全局图像上下文之间的关系，以直接并行输出最终的预测集。

The new model is conceptually simple and does not require a specialized library, unlike many other modern detectors. 

与许多其他现代探测器不同，新模型在概念上很简单，不需要专门的库。

DETR demonstrates accuracy and run-time performance on par with the well-established and highly-optimized Faster RCNN baseline on the challenging COCO object detection dataset. 

DETR 在具有挑战性的 COCO 对象检测数据集上展示了与完善且高度优化的 Faster RCNN 基线相当的准确性和运行时性能。

Moreover, DETR can be easily generalized to produce panoptic segmentation in a unified manner. We show that it significantly outperforms competitive baselines.

此外，DETR 可以很容易地推广到以统一的方式产生全景分割。我们表明它显着优于竞争基准。

Training code and pretrained models are available at https://github.com/facebookresearch/detr.

训练代码和预训练模型可在 https://github.com/facebookresearch/detr 获得。


# Introduction

The goal of object detection is to predict a set of bounding boxes and category labels for each object of interest. 

对象检测的目标是为每个感兴趣的对象预测一组边界框和类别标签。

Modern detectors address this set prediction task in an indirect way, by defining surrogate regression and classification problems on a large set of proposals, anchors , or window centers.

现代检测器通过在大量建议、锚点或窗口中心上定义代理回归和分类问题，以间接方式解决此集合预测任务。

Their performances are significantly influenced by postprocessing steps to collapse near-duplicate predictions, by the design of the anchor sets and by the heuristics that assign target boxes to anchors. 

它们的性能受到后处理步骤的显着影响，以折叠近似重复的预测，锚集的设计以及将目标框分配给锚的启发式。

To simplify these pipelines, we propose a direct set prediction approach to bypass the surrogate tasks.

为了简化这些管道，我们提出了一种直接集预测方法来绕过代理任务。

This end-to-end philosophy has led to significant advances in complex structured prediction tasks such as machine translation or speech recognition, but not yet in object detection: previous attempts either add other forms of prior knowledge, or have not proven to be competitive with strong baselines on challenging benchmarks. 

这种端到端的理念在复杂的结构化预测任务（例如机器翻译或语音识别）方面取得了重大进展，但尚未在对象检测方面取得重大进展：之前的尝试要么添加其他形式的先验知识 ，或者没有被证明在具有挑战性的基准上具有强大的基线竞争力。

This paper aims to bridge this gap.

本文旨在弥合这一差距。

We streamline the training pipeline by viewing object detection as a direct set prediction problem. 

我们通过将对象检测视为直接集预测问题来简化训练管道。

We adopt an encoder-decoder architecture based on transformers, a popular architecture for sequence prediction.

我们采用基于转换器 的编码器-解码器架构，这是一种流行的序列预测架构。

The self-attention mechanisms of transformers, which explicitly model all pairwise interactions between elements in a sequence, make these architectures particularly suitable for specific constraints of set prediction such as removing duplicate predictions.

转换器的自注意力机制显式地对序列中元素之间的所有成对交互进行建模，使这些架构特别适用于集合预测的特定约束，例如删除重复预测。


Our DEtection TRansformer (DETR, see Figure 1) predicts all objects at once, and is trained end-to-end with a set loss function which performs bipartite matching between predicted and ground-truth objects. 

我们的检测变换器（DETR，参见图 1）一次预测所有对象，并使用一组损失函数进行端到端训练，该函数在预测对象和真实对象之间执行二分匹配。

DETR simplifies the detection pipeline by dropping multiple hand-designed components that encode prior knowledge, like spatial anchors or non-maximal suppression. 

DETR 通过删除多个手工设计的编码先验知识的组件来简化检测管道，如空间锚点或非最大抑制。

Unlike most existing detection methods, DETR doesn’t require any customized layers, and thus can be reproduced easily in any framework that contains standard ResNet and Transformer classes.

与大多数现有检测方法不同，DETR 不需要任何自定义层，因此可以在包含标准 ResNet 和 Transformer 类的任何框架中轻松重现。

Compared to most previous work on direct set prediction, the main features of DETR are the conjunction of the bipartite matching loss and transformers with (non-autoregressive) parallel decoding. 

与之前关于直接集预测的大多数工作相比，DETR 的主要特征是二部匹配损失和变换器与（非自回归）并行解码的结合。

In contrast, previous work focused on autoregressive decoding with RNNs. 

相比之下，之前的工作侧重于使用 RNN 进行自回归解码。

Our matching loss function uniquely assigns a prediction to a ground truth object, and is invariant to a permutation of predicted objects, so we can emit them in parallel.

我们的匹配损失函数唯一地将预测分配给真实对象，并且对预测对象的排列是不变的，因此我们可以并行发出它们。

We evaluate DETR on one of the most popular object detection datasets, COCO, against a very competitive Faster R-CNN baseline. 

我们在最流行的对象检测数据集 COCO 上评估 DETR，与非常有竞争力的 Faster R-CNN 基线相比。

Faster RCNN has undergone many design iterations and its performance was greatly improved since the original publication.

Faster RCNN 经历了多次设计迭代，其性能自最初发布以来得到了极大的提升。

Our experiments show that our new model achieves comparable performances. 

我们的实验表明，我们的新模型实现了可比的性能。

More precisely, DETR demonstrates significantly better performance on large objects, a result likely enabled by the non-local computations of the transformer. 

更准确地说，DETR 在大型对象上表现出明显更好的性能，这一结果可能是由转换器的非本地计算实现的。

It obtains, however, lower performances on small objects. 

然而，它在小物体上的性能较低。

We expect that future work will improve this aspect in the same way the development of FPN did for Faster R-CNN.

我们预计未来的工作将以与 FPN 为 Faster R-CNN 所做的开发相同的方式改进这方面。

Training settings for DETR differ from standard object detectors in multiple ways. 

DETR 的训练设置与标准物体检测器有多种不同。

The new model requires extra-long training schedule and benefits from auxiliary decoding losses in the transformer. 

新模型需要超长的训练计划，并受益于变压器中的辅助解码损失。

We thoroughly explore what components are crucial for the demonstrated performance.

我们彻底探索了哪些组件对展示的性能至关重要。

The design ethos of DETR easily extend to more complex tasks. 

DETR 的设计理念很容易扩展到更复杂的任务。

In our experiments, we show that a simple segmentation head trained on top of a pretrained DETR outperfoms competitive baselines on Panoptic Segmentation, a challenging pixel-level recognition task that has recently gained popularity.

在我们的实验中，我们表明在预训练的 DETR 之上训练的简单分割头优于全景分割的竞争基线，这是一项最近流行的具有挑战性的像素级识别任务。

Fig. 1: DETR directly predicts (in parallel) the final set of detections by combining a common CNN with a transformer architecture. 

图 1：DETR 通过将常见的 CNN 与变压器架构相结合，直接预测（并行）最终检测集。

During training, bipartite matching uniquely assigns predictions with ground truth boxes. 

在训练期间，二分匹配使用真实值框唯一地分配预测。

Prediction with no match should yield a “no object” (∅) class prediction.

没有匹配的预测应该产生“无对象”（∅）类预测。
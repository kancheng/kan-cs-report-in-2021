# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 。


## Tasks

1. 下載運行 YOLOv4 and YOLOv5 的 Python 程式碼，測試 5 幅圖。

2. 文檔中說明跟之前版本的具體改進和不同。

### YOLOv4 & YOLOv3

跟據 `tranleanh/darkeras-yolov4` 範例進行測試，而由於 YOLO 的發展原因，此版本為 TensorFlow 版本，程式碼於 code 目錄中可以找到。


### YOLOv5

根據 `ultralytics/yolov5` 的專案執行，同時執行 Pytorch 的 YOLOV5 官方範例，程式碼於 code 目錄中可以找到。

```
conda create -n test-volo python=3.8

conda activate test-volo

git clone https://github.com/ultralytics/yolov5.git

conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch

pip install -r requirements.txt

pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

python detect.py --weights yolov5s.pt

python detect.py --weights yolov5m.pt

python detect.py --weights yolov5s6.pt

python detect.py --weights yolov5m6.pt

python detect.py --source data/images --weights yolov5s.pt --conf 0.25
```


## Note

1. https://blog.superannotate.com/yolo-object-detection/

2. https://curiousily.com/posts/object-detection-on-custom-dataset-with-yolo-v5-using-pytorch-and-python/

3. https://www.youtube.com/watch?v=b59xfUZZqJE

4. https://www.pyimagesearch.com/2018/11/12/yolo-object-detection-with-opencv/

5. https://makerpro.cc/2020/12/how-to-use-yolov5/

6. https://blog.csdn.net/weixin_41929524/article/details/118915489

7. https://medium.com/deelvin-machine-learning/yolov4-vs-yolov5-db1e0ac7962b

8. https://towardsdatascience.com/yolo-v4-or-yolo-v5-or-pp-yolo-dad8e40f7109

9. https://towardsdatascience.com/yolov4-5d-an-enhancement-of-yolov4-for-autonomous-driving-2827a566be4a

10. https://towardsdatascience.com/darkeras-execute-yolov3-yolov4-object-detection-on-keras-with-darknet-pre-trained-weights-5e8428b959e2

11. https://cloudxlab.com/blog/video-processing-with-yolov4-and-tensorflow/

12. https://blog.roboflow.com/yolov5-is-here/

13. https://blog.roboflow.com/yolov4-versus-yolov5/

14. https://zhuanlan.zhihu.com/p/399104828



## Reference

1. https://pytorch.org/hub/ultralytics_yolov5/

2. https://github.com/ultralytics/yolov5

3. https://github.com/WongKinYiu/PyTorch_YOLOv4

4. https://github.com/NVIDIA/nvidia-docker

5. https://blog.csdn.net/SUNbrightness/article/details/116783604

6. https://github.com/tranleanh/darkeras-yolov4

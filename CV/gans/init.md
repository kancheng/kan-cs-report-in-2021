# CV Homework

> PKU 信息工程學院 2101212850 干皓丞

## About

此作業以 LaTeX 版本為主，詳見專案目錄下的 report.pdf，並使用騰訊文檔進行 Demo。而程式碼則詳見專案目錄 code 。

## Skills

將終端機指令結果匯出。

### Linux (UNIX-like)

1. 匯出結果，若已經有該檔案則直接覆蓋檔案內容。

```
$ [要記錄的指令] > 檔名
$ ls -al > test.txt
```

2. 增加內容至該檔案。

```
$ [要記錄的指令] >> 檔名
$ history > test.txt
```

3. 輸出整個終端機操作的過程紀錄。

```
$ script test.txt
...
$ exit
```


### Windows (PowerShell)

1. 匯出結果，若已經有該檔案則直接覆蓋檔案內容。

```
$ [要記錄的指令] > 檔名
$ ls > test.txt
```

2. 增加內容至該檔案。

```
$ [要記錄的指令] >> 檔名
$ ipconfig > test.txt
```

3. 輸出操作紀錄

建立 `*.ps1` 的檔案，並匯出。

test.ps1

```
[指令 1]
[指令 2]
[指令 3]
```
```
ls
ipconfig
python -V
```

輸出後覆蓋或輸出後添加。

```
> .\test.ps1 > output.txt
```
```
> .\test.ps1 >> output.txt
```



## Tasks

https://github.com/eriklindernoren/PyTorch-GAN

在 GitHub 的 `eriklindernoren/PyTorch-GAN` 專案中選一個感興趣的 GAN 程式，下載並運行，寫出閱讀總結，並對應程式碼標註出公式以及網路所對應的程式碼。(阐述清楚且不超过两页)


## Note

在此蒐集 `InfoGAN` 、 `Cluster GAN`、 `GAN` 的技術文章與教學連結說明如下。

1. https://zhuanlan.zhihu.com/p/97333146

2. https://github.com/sudiptodip15/ClusterGAN

3. https://www.jianshu.com/p/fa892c81df60

4. https://blog.csdn.net/u011699990/article/details/71599067

5. https://www.jianshu.com/p/1b84adec15e7

6. https://flashgene.com/archives/30400.html

7. https://www.jiqizhixin.com/articles/2018-10-29-21


## Reference

這回作業直接相關文章連結如下。

1. https://www.jiqizhixin.com/articles/2019-01-23-20

2. https://zhuanlan.zhihu.com/p/383550870

3. https://github.com/hindupuravinash/the-gan-zoo

4. https://github.com/eriklindernoren/PyTorch-GAN

5. https://arxiv.org/abs/2001.06937

6. https://arxiv.org/abs/1606.03657


## Toys

作業過程中所蒐集來相關文章與知識連結如下。

1. https://ieeexplore.ieee.org/abstract/document/9312188

2. https://zhuanlan.zhihu.com/p/163065584

3. https://www.youtube.com/watch?v=BbzOZ9THriY

4. https://www.hindawi.com/journals/complexity/2021/5541134/

5. https://towardsdatascience.com/auto-regressive-generative-models-pixelrnn-pixelcnn-32d192911173

6. https://github.com/shaniceC/Pokemon-CNN

7. https://becominghuman.ai/generating-new-pokemons-using-gans-ceba1c6dc676

8. https://towardsdatascience.com/how-to-create-unique-pok%C3%A9mon-using-gans-ea1cb6b6a5c2

9. https://zhuanlan.zhihu.com/p/26514298

10. https://www.jiqizhixin.com/articles/2020-03-03-12



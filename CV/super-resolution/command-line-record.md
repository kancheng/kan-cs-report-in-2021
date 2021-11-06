# Code Record

## About

將程式碼執行的指令結果放置於此。

### pytorch-srcnn

Epoch = 100， 執行訓練結果。

```
(pytorch-init) HaoyeMacBookPro:src kancheng$ python train.py
Training samples:  16368
Validation samples:  5456
Computation device:  cpu
SRCNN(
  (conv1): Conv2d(1, 64, kernel_size=(9, 9), stride=(1, 1), padding=(2, 2), padding_mode=replicate)
  (conv2): Conv2d(64, 32, kernel_size=(1, 1), stride=(1, 1), padding=(2, 2), padding_mode=replicate)
  (conv3): Conv2d(32, 1, kernel_size=(5, 5), stride=(1, 1), padding=(2, 2), padding_mode=replicate)
)
Epoch 1 of 100
256it [00:49,  5.17it/s]                                                                                                                                                                                                                      
86it [00:05, 17.01it/s]                                                                                                                                                                                                                       
Train PSNR: 24.338
Val PSNR: 26.421
Epoch 2 of 100
256it [00:49,  5.17it/s]                                                                                                                                                                                                                      
86it [00:05, 15.52it/s]                                                                                                                                                                                                                       
Train PSNR: 26.745
Val PSNR: 26.971
Epoch 3 of 100
256it [00:49,  5.18it/s]                                                                                                                                                                                                                      
86it [00:05, 15.58it/s]                                                                                                                                                                                                                       
Train PSNR: 27.017
Val PSNR: 27.119
Epoch 4 of 100
256it [00:49,  5.20it/s]                                                                                                                                                                                                                      
86it [00:05, 15.62it/s]                                                                                                                                                                                                                       
Train PSNR: 27.124
Val PSNR: 27.217
Epoch 5 of 100
256it [00:49,  5.18it/s]                                                                                                                                                                                                                      
86it [00:05, 15.63it/s]                                                                                                                                                                                                                       
Train PSNR: 27.198
Val PSNR: 27.310
Epoch 6 of 100
256it [00:49,  5.18it/s]                                                                                                                                                                                                                      
86it [00:05, 15.68it/s]                                                                                                                                                                                                                       
Train PSNR: 27.260
Val PSNR: 27.344
Epoch 7 of 100
256it [00:49,  5.19it/s]                                                                                                                                                                                                                      
86it [00:05, 15.69it/s]                                                                                                                                                                                                                       
Train PSNR: 27.296
Val PSNR: 27.374
Epoch 8 of 100
256it [00:49,  5.19it/s]                                                                                                                                                                                                                      
86it [00:05, 15.71it/s]                                                                                                                                                                                                                       
Train PSNR: 27.313
Val PSNR: 27.396
Epoch 9 of 100
256it [00:49,  5.17it/s]                                                                                                                                                                                                                      
86it [00:05, 15.70it/s]                                                                                                                                                                                                                       
Train PSNR: 27.329
Val PSNR: 27.397
Epoch 10 of 100
256it [00:49,  5.18it/s]                                                                                                                                                                                                                      
86it [00:05, 15.67it/s]                                                                                                                                                                                                                       
Train PSNR: 27.343
Val PSNR: 27.413
Epoch 11 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.56it/s]                                                                                                                                                                                                                       
Train PSNR: 27.359
Val PSNR: 27.426
Epoch 12 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.66it/s]                                                                                                                                                                                                                       
Train PSNR: 27.374
Val PSNR: 27.472
Epoch 13 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.77it/s]                                                                                                                                                                                                                       
Train PSNR: 27.383
Val PSNR: 27.487
Epoch 14 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.402
Val PSNR: 27.503
Epoch 15 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.84it/s]                                                                                                                                                                                                                       
Train PSNR: 27.422
Val PSNR: 27.503
Epoch 16 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.83it/s]                                                                                                                                                                                                                       
Train PSNR: 27.424
Val PSNR: 27.539
Epoch 17 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.84it/s]                                                                                                                                                                                                                       
Train PSNR: 27.448
Val PSNR: 27.533
Epoch 18 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.80it/s]                                                                                                                                                                                                                       
Train PSNR: 27.453
Val PSNR: 27.567
Epoch 19 of 100
256it [00:48,  5.24it/s]                                                                                                                                                                                                                      
86it [00:05, 15.80it/s]                                                                                                                                                                                                                       
Train PSNR: 27.472
Val PSNR: 27.580
Epoch 20 of 100
256it [00:48,  5.24it/s]                                                                                                                                                                                                                      
86it [00:05, 15.69it/s]                                                                                                                                                                                                                       
Train PSNR: 27.489
Val PSNR: 27.572
Epoch 21 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.81it/s]                                                                                                                                                                                                                       
Train PSNR: 27.493
Val PSNR: 27.604
Epoch 22 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.517
Val PSNR: 27.587
Epoch 23 of 100
256it [00:48,  5.25it/s]                                                                                                                                                                                                                      
86it [00:05, 15.84it/s]                                                                                                                                                                                                                       
Train PSNR: 27.528
Val PSNR: 27.599
Epoch 24 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.80it/s]                                                                                                                                                                                                                       
Train PSNR: 27.539
Val PSNR: 27.619
Epoch 25 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.78it/s]                                                                                                                                                                                                                       
Train PSNR: 27.544
Val PSNR: 27.636
Epoch 26 of 100
256it [00:48,  5.25it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.563
Val PSNR: 27.656
Epoch 27 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.575
Val PSNR: 27.684
Epoch 28 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.74it/s]                                                                                                                                                                                                                       
Train PSNR: 27.588
Val PSNR: 27.693
Epoch 29 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.84it/s]                                                                                                                                                                                                                       
Train PSNR: 27.597
Val PSNR: 27.686
Epoch 30 of 100
256it [00:48,  5.25it/s]                                                                                                                                                                                                                      
86it [00:05, 15.77it/s]                                                                                                                                                                                                                       
Train PSNR: 27.622
Val PSNR: 27.723
Epoch 31 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 15.70it/s]                                                                                                                                                                                                                       
Train PSNR: 27.623
Val PSNR: 27.721
Epoch 32 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.71it/s]                                                                                                                                                                                                                       
Train PSNR: 27.641
Val PSNR: 27.736
Epoch 33 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.78it/s]                                                                                                                                                                                                                       
Train PSNR: 27.650
Val PSNR: 27.739
Epoch 34 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.81it/s]                                                                                                                                                                                                                       
Train PSNR: 27.659
Val PSNR: 27.744
Epoch 35 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.88it/s]                                                                                                                                                                                                                       
Train PSNR: 27.655
Val PSNR: 27.769
Epoch 36 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.86it/s]                                                                                                                                                                                                                       
Train PSNR: 27.701
Val PSNR: 27.789
Epoch 37 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.86it/s]                                                                                                                                                                                                                       
Train PSNR: 27.681
Val PSNR: 27.800
Epoch 38 of 100
256it [00:48,  5.27it/s]                                                                                                                                                                                                                      
86it [00:05, 15.83it/s]                                                                                                                                                                                                                       
Train PSNR: 27.726
Val PSNR: 27.824
Epoch 39 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.89it/s]                                                                                                                                                                                                                       
Train PSNR: 27.724
Val PSNR: 27.810
Epoch 40 of 100
256it [00:48,  5.29it/s]                                                                                                                                                                                                                      
86it [00:05, 15.85it/s]                                                                                                                                                                                                                       
Train PSNR: 27.734
Val PSNR: 27.832
Epoch 41 of 100
256it [00:48,  5.25it/s]                                                                                                                                                                                                                      
86it [00:05, 15.83it/s]                                                                                                                                                                                                                       
Train PSNR: 27.745
Val PSNR: 27.785
Epoch 42 of 100
256it [00:49,  5.20it/s]                                                                                                                                                                                                                      
86it [00:05, 15.79it/s]                                                                                                                                                                                                                       
Train PSNR: 27.761
Val PSNR: 27.755
Epoch 43 of 100
256it [00:48,  5.25it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.765
Val PSNR: 27.653
Epoch 44 of 100
256it [00:50,  5.05it/s]                                                                                                                                                                                                                      
86it [00:05, 14.58it/s]                                                                                                                                                                                                                       
Train PSNR: 27.780
Val PSNR: 27.847
Epoch 45 of 100
256it [00:48,  5.26it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 27.800
Val PSNR: 27.852
Epoch 46 of 100
256it [00:48,  5.29it/s]                                                                                                                                                                                                                      
86it [00:05, 16.04it/s]                                                                                                                                                                                                                       
Train PSNR: 27.809
Val PSNR: 27.842
Epoch 47 of 100
256it [00:48,  5.29it/s]                                                                                                                                                                                                                      
86it [00:05, 15.99it/s]                                                                                                                                                                                                                       
Train PSNR: 27.811
Val PSNR: 27.784
Epoch 48 of 100
256it [00:48,  5.29it/s]                                                                                                                                                                                                                      
86it [00:05, 16.02it/s]                                                                                                                                                                                                                       
Train PSNR: 27.816
Val PSNR: 27.836
Epoch 49 of 100
256it [00:48,  5.28it/s]                                                                                                                                                                                                                      
86it [00:05, 15.99it/s]                                                                                                                                                                                                                       
Train PSNR: 27.852
Val PSNR: 27.792
Epoch 50 of 100
256it [00:48,  5.29it/s]                                                                                                                                                                                                                      
86it [00:05, 15.98it/s]                                                                                                                                                                                                                       
Train PSNR: 27.854
Val PSNR: 27.963
Epoch 51 of 100
256it [00:49,  5.14it/s]                                                                                                                                                                                                                      
86it [00:05, 15.28it/s]                                                                                                                                                                                                                       
Train PSNR: 27.849
Val PSNR: 27.897
Epoch 52 of 100
256it [00:51,  4.97it/s]                                                                                                                                                                                                                      
86it [00:05, 15.72it/s]                                                                                                                                                                                                                       
Train PSNR: 27.857
Val PSNR: 27.977
Epoch 53 of 100
256it [00:50,  5.07it/s]                                                                                                                                                                                                                      
86it [00:05, 15.99it/s]                                                                                                                                                                                                                       
Train PSNR: 27.871
Val PSNR: 27.741
Epoch 54 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.02it/s]                                                                                                                                                                                                                       
Train PSNR: 27.883
Val PSNR: 27.959
Epoch 55 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.11it/s]                                                                                                                                                                                                                       
Train PSNR: 27.894
Val PSNR: 28.024
Epoch 56 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.00it/s]                                                                                                                                                                                                                       
Train PSNR: 27.909
Val PSNR: 28.010
Epoch 57 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.08it/s]                                                                                                                                                                                                                       
Train PSNR: 27.885
Val PSNR: 27.979
Epoch 58 of 100
256it [00:49,  5.18it/s]                                                                                                                                                                                                                      
86it [00:05, 16.20it/s]                                                                                                                                                                                                                       
Train PSNR: 27.917
Val PSNR: 27.980
Epoch 59 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.87it/s]                                                                                                                                                                                                                       
Train PSNR: 27.912
Val PSNR: 27.943
Epoch 60 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.09it/s]                                                                                                                                                                                                                       
Train PSNR: 27.945
Val PSNR: 28.022
Epoch 61 of 100
256it [00:48,  5.24it/s]                                                                                                                                                                                                                      
86it [00:05, 16.02it/s]                                                                                                                                                                                                                       
Train PSNR: 27.942
Val PSNR: 28.053
Epoch 62 of 100
256it [00:48,  5.24it/s]                                                                                                                                                                                                                      
86it [00:05, 15.98it/s]                                                                                                                                                                                                                       
Train PSNR: 27.948
Val PSNR: 28.028
Epoch 63 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.93it/s]                                                                                                                                                                                                                       
Train PSNR: 27.899
Val PSNR: 27.877
Epoch 64 of 100
256it [00:49,  5.20it/s]                                                                                                                                                                                                                      
86it [00:05, 15.99it/s]                                                                                                                                                                                                                       
Train PSNR: 27.945
Val PSNR: 27.889
Epoch 65 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.02it/s]                                                                                                                                                                                                                       
Train PSNR: 27.951
Val PSNR: 28.012
Epoch 66 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 15.97it/s]                                                                                                                                                                                                                       
Train PSNR: 27.954
Val PSNR: 28.038
Epoch 67 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.00it/s]                                                                                                                                                                                                                       
Train PSNR: 27.989
Val PSNR: 28.085
Epoch 68 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 15.96it/s]                                                                                                                                                                                                                       
Train PSNR: 27.970
Val PSNR: 28.060
Epoch 69 of 100
256it [00:49,  5.21it/s]                                                                                                                                                                                                                      
86it [00:05, 15.97it/s]                                                                                                                                                                                                                       
Train PSNR: 27.963
Val PSNR: 28.054
Epoch 70 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.91it/s]                                                                                                                                                                                                                       
Train PSNR: 27.974
Val PSNR: 27.945
Epoch 71 of 100
256it [00:49,  5.22it/s]                                                                                                                                                                                                                      
86it [00:05, 15.96it/s]                                                                                                                                                                                                                       
Train PSNR: 27.991
Val PSNR: 27.868
Epoch 72 of 100
256it [00:48,  5.23it/s]                                                                                                                                                                                                                      
86it [00:05, 16.00it/s]                                                                                                                                                                                                                       
Train PSNR: 28.017
Val PSNR: 28.053
Epoch 73 of 100
256it [00:49,  5.15it/s]                                                                                                                                                                                                                      
86it [00:06, 13.41it/s]                                                                                                                                                                                                                       
Train PSNR: 27.951
Val PSNR: 27.597
Epoch 74 of 100
256it [00:51,  4.94it/s]                                                                                                                                                                                                                      
86it [00:05, 15.25it/s]                                                                                                                                                                                                                       
Train PSNR: 27.977
Val PSNR: 28.102
Epoch 75 of 100
256it [00:54,  4.73it/s]                                                                                                                                                                                                                      
86it [00:05, 15.44it/s]                                                                                                                                                                                                                       
Train PSNR: 28.004
Val PSNR: 27.984
Epoch 76 of 100
256it [00:49,  5.15it/s]                                                                                                                                                                                                                      
86it [00:06, 13.66it/s]                                                                                                                                                                                                                       
Train PSNR: 28.000
Val PSNR: 28.060
Epoch 77 of 100
256it [00:51,  4.93it/s]                                                                                                                                                                                                                      
86it [00:05, 15.18it/s]                                                                                                                                                                                                                       
Train PSNR: 28.020
Val PSNR: 28.107
Epoch 78 of 100
256it [00:52,  4.86it/s]                                                                                                                                                                                                                      
86it [00:05, 15.35it/s]                                                                                                                                                                                                                       
Train PSNR: 28.042
Val PSNR: 28.068
Epoch 79 of 100
256it [00:52,  4.90it/s]                                                                                                                                                                                                                      
86it [00:05, 15.64it/s]                                                                                                                                                                                                                       
Train PSNR: 28.011
Val PSNR: 28.083
Epoch 80 of 100
256it [00:52,  4.86it/s]                                                                                                                                                                                                                      
86it [00:06, 14.17it/s]                                                                                                                                                                                                                       
Train PSNR: 28.032
Val PSNR: 28.139
Epoch 81 of 100
256it [00:52,  4.86it/s]                                                                                                                                                                                                                      
86it [00:05, 15.87it/s]                                                                                                                                                                                                                       
Train PSNR: 28.011
Val PSNR: 27.894
Epoch 82 of 100
256it [00:52,  4.86it/s]                                                                                                                                                                                                                      
86it [00:06, 14.14it/s]                                                                                                                                                                                                                       
Train PSNR: 28.025
Val PSNR: 28.127
Epoch 83 of 100
256it [00:53,  4.77it/s]                                                                                                                                                                                                                      
86it [00:05, 14.35it/s]                                                                                                                                                                                                                       
Train PSNR: 28.004
Val PSNR: 27.879
Epoch 84 of 100
256it [00:53,  4.79it/s]                                                                                                                                                                                                                      
86it [00:05, 14.92it/s]                                                                                                                                                                                                                       
Train PSNR: 28.050
Val PSNR: 27.962
Epoch 85 of 100
256it [00:52,  4.90it/s]                                                                                                                                                                                                                      
86it [00:05, 15.81it/s]                                                                                                                                                                                                                       
Train PSNR: 28.024
Val PSNR: 28.125
Epoch 86 of 100
256it [00:53,  4.79it/s]                                                                                                                                                                                                                      
86it [00:06, 14.08it/s]                                                                                                                                                                                                                       
Train PSNR: 28.040
Val PSNR: 27.976
Epoch 87 of 100
256it [00:55,  4.63it/s]                                                                                                                                                                                                                      
86it [00:05, 14.86it/s]                                                                                                                                                                                                                       
Train PSNR: 28.043
Val PSNR: 28.019
Epoch 88 of 100
256it [00:54,  4.71it/s]                                                                                                                                                                                                                      
86it [00:06, 14.14it/s]                                                                                                                                                                                                                       
Train PSNR: 28.027
Val PSNR: 28.082
Epoch 89 of 100
256it [00:52,  4.90it/s]                                                                                                                                                                                                                      
86it [00:05, 15.72it/s]                                                                                                                                                                                                                       
Train PSNR: 28.041
Val PSNR: 28.034
Epoch 90 of 100
256it [00:50,  5.10it/s]                                                                                                                                                                                                                      
86it [00:05, 15.62it/s]                                                                                                                                                                                                                       
Train PSNR: 28.043
Val PSNR: 28.068
Epoch 91 of 100
256it [00:51,  5.00it/s]                                                                                                                                                                                                                      
86it [00:05, 14.58it/s]                                                                                                                                                                                                                       
Train PSNR: 28.070
Val PSNR: 28.027
Epoch 92 of 100
256it [00:52,  4.89it/s]                                                                                                                                                                                                                      
86it [00:06, 14.08it/s]                                                                                                                                                                                                                       
Train PSNR: 28.046
Val PSNR: 28.008
Epoch 93 of 100
256it [00:54,  4.68it/s]                                                                                                                                                                                                                      
86it [00:05, 15.82it/s]                                                                                                                                                                                                                       
Train PSNR: 28.057
Val PSNR: 28.013
Epoch 94 of 100
256it [00:51,  4.92it/s]                                                                                                                                                                                                                      
86it [00:06, 14.10it/s]                                                                                                                                                                                                                       
Train PSNR: 28.034
Val PSNR: 27.965
Epoch 95 of 100
256it [00:54,  4.66it/s]                                                                                                                                                                                                                      
86it [00:06, 14.10it/s]                                                                                                                                                                                                                       
Train PSNR: 28.060
Val PSNR: 28.122
Epoch 96 of 100
256it [00:55,  4.64it/s]                                                                                                                                                                                                                      
86it [00:06, 14.28it/s]                                                                                                                                                                                                                       
Train PSNR: 28.097
Val PSNR: 28.183
Epoch 97 of 100
256it [00:52,  4.86it/s]                                                                                                                                                                                                                      
86it [00:05, 15.25it/s]                                                                                                                                                                                                                       
Train PSNR: 28.079
Val PSNR: 28.205
Epoch 98 of 100
256it [00:53,  4.77it/s]                                                                                                                                                                                                                      
86it [00:06, 14.28it/s]                                                                                                                                                                                                                       
Train PSNR: 28.077
Val PSNR: 28.146
Epoch 99 of 100
256it [00:55,  4.65it/s]                                                                                                                                                                                                                      
86it [00:06, 14.14it/s]                                                                                                                                                                                                                       
Train PSNR: 28.083
Val PSNR: 28.158
Epoch 100 of 100
256it [00:54,  4.68it/s]                                                                                                                                                                                                                      
86it [00:05, 15.23it/s]                                                                                                                                                                                                                       
Train PSNR: 28.097
Val PSNR: 28.149
Finished training in: 92.724 minutes


Saving model...

```


執行測試結果

```
(pytorch-init) HaoyeMacBookPro:src kancheng$ python test.py

(336, 228, 1)
(252, 252, 1)
(288, 288, 1)
(276, 276, 1)
(504, 504, 1)
(pytorch-init) HaoyeMacBookPro:src kancheng$ 

```

### tensorflow-srcnn


1. Training SRCNN

```
# Quick training
python main.py

# Example usage
python main.py --use_pretrained=False \
    --epoch=1000 \
    --scale=4 \
```


2. Testing SRCNN

```
# Quick testing
python main.py --is_training=False \
    --use_pretrained=True

# Example usage
python main.py --is_training=False \
    --use_pretrained=True \
    --test_dataset=YOUR_DATASET \
    --scale=4
```

Test 為執行測試目錄的名稱

```
python main.py --is_training=False \
    --use_pretrained=True \
    --test_dataset=Test \
    --scale=4

```

Mac 的 `.DS_Store` 會影響，可以執行此指令。

```
sudo find /Users/[ Path ]/ -name ".DS_Store" -depth -exec rm {} \;
```

Epoch = 100， 執行訓練結果。

```

(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ python main.py --use_pretrained=False \
>     --epoch=100 \
>     --scale=4 \
> 
2021-11-06 15:14:09.971397: I tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
[*] SRCNN training will be started ! 
[*] Successfully load train data ! 
[*] Generating dataset ... : 100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 5/5 [00:00<00:00, 65.53it/s]
[*] Successfully prepared 5 valid images !
[*] No checkpoint to load ... 
[*] Start training ... Please be patient !
[*] Keep going ! :   0%|                                                                                                                                                                                              | 0/100 [00:00<?, ?it/s][*] Epoch: [1], psnr: [bicubic: 28.39, srcnn: 24.12], loss: [0.14219929]
[*] Keep going ! :   1%|█▊                                                                                                                                                                                    | 1/100 [00:16<27:30, 16.67s/it][*] Epoch: [2], psnr: [bicubic: 28.39, srcnn: 24.90], loss: [0.00490702]
[*] Keep going ! :   2%|███▋                                                                                                                                                                                  | 2/100 [00:34<28:35, 17.51s/it][*] Epoch: [3], psnr: [bicubic: 28.39, srcnn: 26.39], loss: [0.00400970]
[*] Keep going ! :   3%|█████▍                                                                                                                                                                                | 3/100 [00:56<31:35, 19.54s/it][*] Epoch: [4], psnr: [bicubic: 28.39, srcnn: 27.47], loss: [0.00300050]
[*] Keep going ! :   4%|███████▎                                                                                                                                                                              | 4/100 [01:16<31:28, 19.67s/it][*] Epoch: [5], psnr: [bicubic: 28.39, srcnn: 27.98], loss: [0.00253594]
[*] Keep going ! :   5%|█████████                                                                                                                                                                             | 5/100 [01:34<30:22, 19.18s/it][*] Epoch: [6], psnr: [bicubic: 28.39, srcnn: 28.11], loss: [0.00236584]
[*] Keep going ! :   6%|██████████▉                                                                                                                                                                           | 6/100 [01:52<29:20, 18.73s/it][*] Epoch: [7], psnr: [bicubic: 28.39, srcnn: 28.13], loss: [0.00231903]
[*] Keep going ! :   7%|████████████▋                                                                                                                                                                         | 7/100 [02:11<29:13, 18.86s/it][*] Epoch: [8], psnr: [bicubic: 28.39, srcnn: 28.16], loss: [0.00229540]
[*] Keep going ! :   8%|██████████████▌                                                                                                                                                                       | 8/100 [02:30<28:59, 18.91s/it][*] Epoch: [9], psnr: [bicubic: 28.39, srcnn: 28.18], loss: [0.00227574]
[*] Keep going ! :   9%|████████████████▍                                                                                                                                                                     | 9/100 [02:49<28:21, 18.70s/it][*] Epoch: [10], psnr: [bicubic: 28.39, srcnn: 28.21], loss: [0.00225721]
[*] Keep going ! :  10%|██████████████████                                                                                                                                                                   | 10/100 [03:07<27:58, 18.65s/it][*] Epoch: [11], psnr: [bicubic: 28.39, srcnn: 28.23], loss: [0.00223906]
[*] Keep going ! :  11%|███████████████████▉                                                                                                                                                                 | 11/100 [03:25<27:24, 18.48s/it][*] Epoch: [12], psnr: [bicubic: 28.39, srcnn: 28.26], loss: [0.00222093]
[*] Keep going ! :  12%|█████████████████████▋                                                                                                                                                               | 12/100 [03:44<27:09, 18.52s/it][*] Epoch: [13], psnr: [bicubic: 28.39, srcnn: 28.28], loss: [0.00220265]
[*] Keep going ! :  13%|███████████████████████▌                                                                                                                                                             | 13/100 [04:03<27:16, 18.81s/it][*] Epoch: [14], psnr: [bicubic: 28.39, srcnn: 28.31], loss: [0.00218409]
[*] Keep going ! :  14%|█████████████████████████▎                                                                                                                                                           | 14/100 [04:23<27:31, 19.21s/it][*] Epoch: [15], psnr: [bicubic: 28.39, srcnn: 28.34], loss: [0.00216516]
[*] Keep going ! :  15%|███████████████████████████▏                                                                                                                                                         | 15/100 [04:44<27:53, 19.68s/it][*] Epoch: [16], psnr: [bicubic: 28.39, srcnn: 28.36], loss: [0.00214581]
[*] Keep going ! :  16%|████████████████████████████▉                                                                                                                                                        | 16/100 [05:06<28:20, 20.24s/it][*] Epoch: [17], psnr: [bicubic: 28.39, srcnn: 28.39], loss: [0.00212596]
[*] Keep going ! :  17%|██████████████████████████████▊                                                                                                                                                      | 17/100 [05:28<28:36, 20.68s/it][*] Epoch: [18], psnr: [bicubic: 28.39, srcnn: 28.42], loss: [0.00210558]
[*] Keep going ! :  18%|████████████████████████████████▌                                                                                                                                                    | 18/100 [05:50<28:55, 21.16s/it][*] Epoch: [19], psnr: [bicubic: 28.39, srcnn: 28.45], loss: [0.00208465]
[*] Keep going ! :  19%|██████████████████████████████████▍                                                                                                                                                  | 19/100 [06:10<28:18, 20.96s/it][*] Epoch: [20], psnr: [bicubic: 28.39, srcnn: 28.49], loss: [0.00206320]
[*] Keep going ! :  20%|████████████████████████████████████▏                                                                                                                                                | 20/100 [06:30<27:37, 20.71s/it][*] Epoch: [21], psnr: [bicubic: 28.39, srcnn: 28.52], loss: [0.00204126]
[*] Keep going ! :  21%|██████████████████████████████████████                                                                                                                                               | 21/100 [06:51<27:23, 20.81s/it][*] Epoch: [22], psnr: [bicubic: 28.39, srcnn: 28.55], loss: [0.00201891]
[*] Keep going ! :  22%|███████████████████████████████████████▊                                                                                                                                             | 22/100 [07:12<26:48, 20.62s/it][*] Epoch: [23], psnr: [bicubic: 28.39, srcnn: 28.58], loss: [0.00199622]
[*] Keep going ! :  23%|█████████████████████████████████████████▋                                                                                                                                           | 23/100 [07:33<26:36, 20.74s/it][*] Epoch: [24], psnr: [bicubic: 28.39, srcnn: 28.61], loss: [0.00197325]
[*] Keep going ! :  24%|███████████████████████████████████████████▍                                                                                                                                         | 24/100 [07:54<26:19, 20.78s/it][*] Epoch: [25], psnr: [bicubic: 28.39, srcnn: 28.64], loss: [0.00195003]
[*] Keep going ! :  25%|█████████████████████████████████████████████▎                                                                                                                                       | 25/100 [08:14<25:50, 20.68s/it][*] Epoch: [26], psnr: [bicubic: 28.39, srcnn: 28.67], loss: [0.00192664]
[*] Keep going ! :  26%|███████████████████████████████████████████████                                                                                                                                      | 26/100 [08:36<25:51, 20.96s/it][*] Epoch: [27], psnr: [bicubic: 28.39, srcnn: 28.70], loss: [0.00190320]
[*] Keep going ! :  27%|████████████████████████████████████████████████▊                                                                                                                                    | 27/100 [08:56<25:21, 20.85s/it][*] Epoch: [28], psnr: [bicubic: 28.39, srcnn: 28.73], loss: [0.00187986]
[*] Keep going ! :  28%|██████████████████████████████████████████████████▋                                                                                                                                  | 28/100 [09:17<24:53, 20.74s/it][*] Epoch: [29], psnr: [bicubic: 28.39, srcnn: 28.76], loss: [0.00185682]
[*] Keep going ! :  29%|████████████████████████████████████████████████████▍                                                                                                                                | 29/100 [09:38<24:51, 21.00s/it][*] Epoch: [30], psnr: [bicubic: 28.39, srcnn: 28.78], loss: [0.00183421]
[*] Keep going ! :  30%|██████████████████████████████████████████████████████▎                                                                                                                              | 30/100 [10:01<25:16, 21.67s/it][*] Epoch: [31], psnr: [bicubic: 28.39, srcnn: 28.80], loss: [0.00181215]
[*] Keep going ! :  31%|████████████████████████████████████████████████████████                                                                                                                             | 31/100 [10:24<25:07, 21.85s/it][*] Epoch: [32], psnr: [bicubic: 28.39, srcnn: 28.82], loss: [0.00179074]
[*] Keep going ! :  32%|█████████████████████████████████████████████████████████▉                                                                                                                           | 32/100 [10:47<25:13, 22.25s/it][*] Epoch: [33], psnr: [bicubic: 28.39, srcnn: 28.84], loss: [0.00177007]
[*] Keep going ! :  33%|███████████████████████████████████████████████████████████▋                                                                                                                         | 33/100 [11:09<24:41, 22.11s/it][*] Epoch: [34], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00175022]
[*] Keep going ! :  34%|█████████████████████████████████████████████████████████████▌                                                                                                                       | 34/100 [11:32<24:37, 22.39s/it][*] Epoch: [35], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00173129]
[*] Keep going ! :  35%|███████████████████████████████████████████████████████████████▎                                                                                                                     | 35/100 [11:53<23:56, 22.11s/it][*] Epoch: [36], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00171338]
[*] Keep going ! :  36%|█████████████████████████████████████████████████████████████████▏                                                                                                                   | 36/100 [12:15<23:29, 22.02s/it][*] Epoch: [37], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00169658]
[*] Keep going ! :  37%|██████████████████████████████████████████████████████████████████▉                                                                                                                  | 37/100 [12:40<23:58, 22.83s/it][*] Epoch: [38], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00168101]
[*] Keep going ! :  38%|████████████████████████████████████████████████████████████████████▊                                                                                                                | 38/100 [13:01<23:10, 22.43s/it][*] Epoch: [39], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00166674]
[*] Keep going ! :  39%|██████████████████████████████████████████████████████████████████████▌                                                                                                              | 39/100 [13:22<22:11, 21.83s/it][*] Epoch: [40], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00165385]
[*] Keep going ! :  40%|████████████████████████████████████████████████████████████████████████▍                                                                                                            | 40/100 [13:42<21:18, 21.31s/it][*] Epoch: [41], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00164240]
[*] Keep going ! :  41%|██████████████████████████████████████████████████████████████████████████▏                                                                                                          | 41/100 [14:02<20:46, 21.12s/it][*] Epoch: [42], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00163238]
[*] Keep going ! :  42%|████████████████████████████████████████████████████████████████████████████                                                                                                         | 42/100 [14:23<20:21, 21.05s/it][*] Epoch: [43], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00162376]
[*] Keep going ! :  43%|█████████████████████████████████████████████████████████████████████████████▊                                                                                                       | 43/100 [14:43<19:43, 20.76s/it][*] Epoch: [44], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00161644]
[*] Keep going ! :  44%|███████████████████████████████████████████████████████████████████████████████▋                                                                                                     | 44/100 [15:05<19:29, 20.88s/it][*] Epoch: [45], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00161026]
[*] Keep going ! :  45%|█████████████████████████████████████████████████████████████████████████████████▍                                                                                                   | 45/100 [15:28<19:44, 21.54s/it][*] Epoch: [46], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00160503]
[*] Keep going ! :  46%|███████████████████████████████████████████████████████████████████████████████████▎                                                                                                 | 46/100 [15:49<19:23, 21.55s/it][*] Epoch: [47], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00160054]
[*] Keep going ! :  47%|█████████████████████████████████████████████████████████████████████████████████████                                                                                                | 47/100 [16:12<19:14, 21.78s/it][*] Epoch: [48], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00159662]
[*] Keep going ! :  48%|██████████████████████████████████████████████████████████████████████████████████████▉                                                                                              | 48/100 [16:33<18:48, 21.71s/it][*] Epoch: [49], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00159310]
[*] Keep going ! :  49%|████████████████████████████████████████████████████████████████████████████████████████▋                                                                                            | 49/100 [16:54<18:20, 21.59s/it][*] Epoch: [50], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00158986]
[*] Save checkpoint at 50 epoch
[*] Keep going ! :  50%|██████████████████████████████████████████████████████████████████████████████████████████▌                                                                                          | 50/100 [17:15<17:51, 21.43s/it][*] Epoch: [51], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00158682]
[*] Keep going ! :  51%|████████████████████████████████████████████████████████████████████████████████████████████▎                                                                                        | 51/100 [17:37<17:35, 21.53s/it][*] Epoch: [52], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00158392]
[*] Keep going ! :  52%|██████████████████████████████████████████████████████████████████████████████████████████████                                                                                       | 52/100 [17:58<16:57, 21.20s/it][*] Epoch: [53], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00158113]
[*] Keep going ! :  53%|███████████████████████████████████████████████████████████████████████████████████████████████▉                                                                                     | 53/100 [18:18<16:28, 21.04s/it][*] Epoch: [54], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00157842]
[*] Keep going ! :  54%|█████████████████████████████████████████████████████████████████████████████████████████████████▋                                                                                   | 54/100 [18:39<16:04, 20.96s/it][*] Epoch: [55], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00157578]
[*] Keep going ! :  55%|███████████████████████████████████████████████████████████████████████████████████████████████████▌                                                                                 | 55/100 [19:00<15:42, 20.94s/it][*] Epoch: [56], psnr: [bicubic: 28.39, srcnn: 28.85], loss: [0.00157319]
[*] Keep going ! :  56%|█████████████████████████████████████████████████████████████████████████████████████████████████████▎                                                                               | 56/100 [19:21<15:18, 20.87s/it][*] Epoch: [57], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00157065]
[*] Keep going ! :  57%|███████████████████████████████████████████████████████████████████████████████████████████████████████▏                                                                             | 57/100 [19:42<14:57, 20.86s/it][*] Epoch: [58], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00156815]
[*] Keep going ! :  58%|████████████████████████████████████████████████████████████████████████████████████████████████████████▉                                                                            | 58/100 [20:02<14:28, 20.67s/it][*] Epoch: [59], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00156569]
[*] Keep going ! :  59%|██████████████████████████████████████████████████████████████████████████████████████████████████████████▊                                                                          | 59/100 [20:22<13:57, 20.43s/it][*] Epoch: [60], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00156327]
[*] Keep going ! :  60%|████████████████████████████████████████████████████████████████████████████████████████████████████████████▌                                                                        | 60/100 [20:42<13:38, 20.46s/it][*] Epoch: [61], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00156089]
[*] Keep going ! :  61%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████▍                                                                      | 61/100 [21:03<13:22, 20.58s/it][*] Epoch: [62], psnr: [bicubic: 28.39, srcnn: 28.86], loss: [0.00155857]
[*] Keep going ! :  62%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏                                                                    | 62/100 [21:24<13:05, 20.68s/it][*] Epoch: [63], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00155630]
[*] Keep going ! :  63%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████                                                                   | 63/100 [21:45<12:47, 20.75s/it][*] Epoch: [64], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00155407]
[*] Keep going ! :  64%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                                                                 | 64/100 [22:05<12:25, 20.70s/it][*] Epoch: [65], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00155190]
[*] Keep going ! :  65%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▋                                                               | 65/100 [22:26<12:05, 20.73s/it][*] Epoch: [66], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00154977]
[*] Keep going ! :  66%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▍                                                             | 66/100 [22:47<11:49, 20.87s/it][*] Epoch: [67], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00154769]
[*] Keep going ! :  67%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                                                           | 67/100 [23:09<11:32, 20.98s/it][*] Epoch: [68], psnr: [bicubic: 28.39, srcnn: 28.87], loss: [0.00154567]
[*] Keep going ! :  68%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████                                                          | 68/100 [23:29<11:01, 20.67s/it][*] Epoch: [69], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00154369]
[*] Keep going ! :  69%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▉                                                        | 69/100 [23:50<10:45, 20.81s/it][*] Epoch: [70], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00154177]
[*] Keep going ! :  70%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▋                                                      | 70/100 [24:11<10:25, 20.84s/it][*] Epoch: [71], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153990]
[*] Keep going ! :  71%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌                                                    | 71/100 [24:32<10:07, 20.96s/it][*] Epoch: [72], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153809]
[*] Keep going ! :  72%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                                                  | 72/100 [24:52<09:39, 20.71s/it][*] Epoch: [73], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153633]
[*] Keep going ! :  73%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏                                                | 73/100 [25:12<09:09, 20.36s/it][*] Epoch: [74], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153463]
[*] Keep going ! :  74%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▉                                               | 74/100 [25:33<09:00, 20.78s/it][*] Epoch: [75], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153299]
[*] Keep going ! :  75%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                                             | 75/100 [25:55<08:45, 21.03s/it][*] Epoch: [76], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00153140]
[*] Keep going ! :  76%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌                                           | 76/100 [26:17<08:31, 21.31s/it][*] Epoch: [77], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00152987]
[*] Keep going ! :  77%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                                         | 77/100 [26:37<07:58, 20.80s/it][*] Epoch: [78], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00152839]
[*] Keep going ! :  78%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏                                       | 78/100 [26:57<07:34, 20.67s/it][*] Epoch: [79], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00152698]
[*] Keep going ! :  79%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▉                                      | 79/100 [27:16<07:05, 20.28s/it][*] Epoch: [80], psnr: [bicubic: 28.39, srcnn: 28.88], loss: [0.00152562]
[*] Keep going ! :  80%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                                    | 80/100 [27:35<06:39, 19.97s/it][*] Epoch: [81], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00152431]
[*] Keep going ! :  81%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌                                  | 81/100 [27:54<06:12, 19.61s/it][*] Epoch: [82], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00152306]
[*] Keep going ! :  82%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▍                                | 82/100 [28:13<05:49, 19.43s/it][*] Epoch: [83], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00152186]
[*] Keep going ! :  83%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏                              | 83/100 [28:32<05:26, 19.22s/it][*] Epoch: [84], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00152072]
[*] Keep going ! :  84%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████                             | 84/100 [28:51<05:06, 19.17s/it][*] Epoch: [85], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151962]
[*] Keep going ! :  85%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊                           | 85/100 [29:10<04:45, 19.06s/it][*] Epoch: [86], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151858]
[*] Keep going ! :  86%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▋                         | 86/100 [29:29<04:25, 18.97s/it][*] Epoch: [87], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151759]
[*] Keep going ! :  87%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▍                       | 87/100 [29:47<04:05, 18.92s/it][*] Epoch: [88], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151664]
[*] Keep going ! :  88%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎                     | 88/100 [30:06<03:46, 18.85s/it][*] Epoch: [89], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151575]
[*] Keep going ! :  89%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████                    | 89/100 [30:25<03:27, 18.82s/it][*] Epoch: [90], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151489]
[*] Keep going ! :  90%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▉                  | 90/100 [30:44<03:08, 18.82s/it][*] Epoch: [91], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151408]
[*] Keep going ! :  91%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▋                | 91/100 [31:02<02:49, 18.79s/it][*] Epoch: [92], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151331]
[*] Keep going ! :  92%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌              | 92/100 [31:21<02:29, 18.73s/it][*] Epoch: [93], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151258]
[*] Keep going ! :  93%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▎            | 93/100 [31:40<02:11, 18.73s/it][*] Epoch: [94], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151188]
[*] Keep going ! :  94%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏          | 94/100 [31:58<01:52, 18.72s/it][*] Epoch: [95], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151123]
[*] Keep going ! :  95%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▉         | 95/100 [32:17<01:33, 18.71s/it][*] Epoch: [96], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151061]
[*] Keep going ! :  96%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▊       | 96/100 [32:36<01:14, 18.69s/it][*] Epoch: [97], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00151004]
[*] Keep going ! :  97%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▌     | 97/100 [32:54<00:56, 18.68s/it][*] Epoch: [98], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00150949]
[*] Keep going ! :  98%|█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▍   | 98/100 [33:13<00:37, 18.67s/it][*] Epoch: [99], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00150897]
[*] Keep going ! :  99%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████▏ | 99/100 [33:32<00:18, 18.68s/it][*] Epoch: [100], psnr: [bicubic: 28.39, srcnn: 28.89], loss: [0.00150848]
[*] Save checkpoint at 100 epoch
[*] Keep going ! : 100%|████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 100/100 [33:51<00:00, 20.31s/it]
[*] Training done ! Congrats :) 
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ 


```

使用內建的資料進行測試

```
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ python main.py --is_training=False \
>     --use_pretrained=True

2021-11-06 15:49:55.882468: I tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
[*] SRCNN testing will be started ! 
[*] Generating dataset ... : 100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 5/5 [00:00<00:00, 65.73it/s]
[*] Successfully prepared 5 test images !
[*] Start testing !
INFO:tensorflow:Restoring parameters from checkpoint/SRCNN_pretrained/srcnn-12500
I1106 15:49:56.094453 4417887744 saver.py:1298] Restoring parameters from checkpoint/SRCNN_pretrained/srcnn-12500
[*] Load checkpoint: checkpoint/SRCNN_pretrained/srcnn-12500
100%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 5/5 [00:00<00:00,  6.17it/s]
[*] PSNR of ground truth and bicubic : 30.38
[*] PSNR of ground truth and SRCNN   : 32.39
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ 

```


使用自己的資料進行測試，需要在 Test 目錄下額外建立檔案，同時 Mac 的 `.DS_Store` 也有影響程式執行，所以用指令暫時清掉暫存檔。 `/Users/kancheng/py-work/sr/SRCNN/tensorflow-srcnn` 則為測試時的目錄。


```
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ sudo find /Users/kancheng/py-work/sr/SRCNN/tensorflow-srcnn -name ".DS_Store" -depth -exec rm {} \;
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ python main.py --is_training=False \
>     --use_pretrained=True \
>     --test_dataset=Test \
>     --scale=4
2021-11-06 16:06:41.152610: I tensorflow/core/platform/cpu_feature_guard.cc:142] This TensorFlow binary is optimized with oneAPI Deep Neural Network Library (oneDNN) to use the following CPU instructions in performance-critical operations:  AVX2 FMA
To enable them in other operations, rebuild TensorFlow with the appropriate compiler flags.
[*] SRCNN testing will be started ! 
[*] Generating dataset ... : 100%|██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 1/1 [00:00<00:00, 26.93it/s]
[*] Successfully prepared 1 test images !
[*] Start testing !
INFO:tensorflow:Restoring parameters from checkpoint/SRCNN_pretrained/srcnn-12500
I1106 16:06:41.282853 4616220160 saver.py:1298] Restoring parameters from checkpoint/SRCNN_pretrained/srcnn-12500
[*] Load checkpoint: checkpoint/SRCNN_pretrained/srcnn-12500
100%|███████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████| 1/1 [00:00<00:00,  5.45it/s]
[*] PSNR of ground truth and bicubic : 21.69
[*] PSNR of ground truth and SRCNN   : 22.11
(pytorch-init) HaoyeMacBookPro:tensorflow-srcnn kancheng$ 


```




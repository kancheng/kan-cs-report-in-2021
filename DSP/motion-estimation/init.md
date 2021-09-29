# DSP

> 2101212850 - 干皓丞

## About

1. 找出 ITM 軟件中的整像素運動估計模塊代碼，並對搜索過程做出簡要分析。 [HERE](#user-content-itm)

2. 分析 OpenCV 中的全局運動估計代碼，並描述其過程。 [HERE](#user-content-opencv)

Reference

>
> https://github.com/opencv/opencv
> 
> https://docs.opencv.org/3.4.15/d4/d2c/group__videostab__motion.html
>
> https://www.zybuluo.com/snuffles/note/192075
>
> http://blog.sina.com.cn/s/blog_9b74cfb701018upj.html
>


## Details

### ITM 

> 版本 : 15.0
> 目標 : 找出 ITM 軟件中的整像素運動估計模塊代碼，並對搜索過程做出簡要分析。

檔案在 `ITM15.0\lencod\src` 的目錄下 `fast_me.c`，可以看到整像素運動估計的函數定義。其包含了整像素估計和分像素估計算法（Fast integer pel motion estimation and fractional pel motion estimation）。

![](https://github.com/kancheng/kan-cs-report-in-2021/blob/main/DSP/motion-estimation/pic/1.png)


該檔案主要有 `get_mem_FME()` 、 `free_mem_FME()` 、 `FME_BlockMotionSearch()` 、 `DefineThreshold()` 四個函數，也就是如該檔案開頭的註解一致。

```
* File name: 
* Function: 
Fast integer pel motion estimation and fractional pel motion estimation algorithms are described in this file.

1. get_mem_FME() and free_mem_FME() are functions for allocation and release of memories about motion estimation

2. FME_BlockMotionSearch() is the function for fast integer pel motion estimation and fractional pel motion estimation

3. DefineThreshold() defined thresholds for early termination
```

>
> Fast integer pel motion estimation and fractional pel motion estimation algorithms are described in this file.
> 此文件中描述了快速整數像素運動估計和分數像素運動估計算法。
>
> 1. get_mem_FME() and free_mem_FME() are functions for allocation and release of memories about motion estimation
> 1. get_mem_FME() 和 free_mem_FME() 是運動估計內存分配和釋放的函數。
>
> 2. FME_BlockMotionSearch() is the function for fast integer pel motion estimation and fractional pel motion estimation
> 2. FME_BlockMotionSearch() 是用於快速整數像素運動估計和分數像素運動估計的函數。
>
> 3. DefineThreshold() defined thresholds for early termination
> 3. DefineThreshold() 定義提前終止的閾值。
>

其中整像素估計的演算法是 UMHexagonS 算法。可細分為 4 個步驟。

1. 步驟一：起始搜索點的預測，用五種預測模式求預測運動矢量。

```
(1) 中值預測:利用空間相關性，取已求出的、當前幀的左、上、右上鄰塊的運動矢量的中間值；

(2) 原點預測：取原點處；

(3) 上層預測：採用從模式1（16*16）到模式7（4*4）的分級搜索順序，將已求出的當前位置的上一級模式運動向量的作為當前模式的運動向量的預測值。

(4) 對應塊預測：將前一幀相應位置的運動向量作為當前塊的運動向量的預測值。

(5) 相鄰參考幀預測：利用時間相關性，將前面參考幀的運動向量按時間進行縮放。
```

2. 步驟二：不甚滿意區塊搜索（ 對應代碼裡面 `first_step` )

```
(1) 以最佳起始搜索點為中心，用非對稱十字型搜索模板進行搜索，獲得當前最佳點，判斷此處是否屬於滿意或者很滿意區，跳到相應的步驟三或步驟四，或者繼續進行搜索。

(2) 以當前最佳點為中心，在 [-2,2] 的方形區域（5*5）中進行全搜索，獲得當前最佳點，判斷是否屬於滿意或很滿意區，跳到相應的步驟三或步驟四，或者繼續進行搜索。

(3) 用大六邊形模板（ 16 點）進行搜索，直至搜索到能符合相應閾值而進入步驟三或步驟四的點為止，否則也結束步驟二的搜索而進入步驟三。
```


3. 步驟三：滿意區的塊搜索（ 對應代碼裡面 `sec_step` ） 以當前最佳點為中心進行六邊形搜索，直至最佳點為六邊形中心。

4. 步驟四：很滿意區的搜索（ 對應代碼裡面 `third_step` ）以當前最佳點為中心進行菱形搜索，直至最佳點為菱形中心。


```
/*
*************************************************************************
* Function: FastIntegerPelBlockMotionSearch: 
fast pixel block motion search this algrithm is called UMHexagonS which includes four steps with different kinds of search patterns

快速像素塊運動搜索這個算法被稱為 UMHexagonS ，它包括四個不同類型的搜索模式的步驟

* Input:
pel_t**   orig_pic,     // <--  original picture
// 原圖
int       ref,          // <--  reference frame (0... or -1 (backward))
// 參考 frame （0...或-1（向後））
int       pic_pix_x,    // <--  absolute x-coordinate of regarded AxB block
// 被視為 AxB 塊的絕對 x 坐標
int       pic_pix_y,    // <--  absolute y-coordinate of regarded AxB block
// 被視為 AxB 塊的絕對 y 坐標
int       blocktype,    // <--  block type (1-16x16 ... 7-4x4)
// 塊類型 (1-16x16 ... 7-4x4)
int       pred_mv_x,    // <--  motion vector predictor (x) in sub-pel units
// 子像素單元中的運動矢量預測器 (x)
int       pred_mv_y,    // <--  motion vector predictor (y) in sub-pel units
// 子像素單位中的運動矢量預測器 (y)
int*      mv_x,         //  --> motion vector (x) - in pel units
// 運動矢量 (x) - 以像素為單位
int*      mv_y,         //  --> motion vector (y) - in pel units
// 運動矢量 (y) - 像素單位
int       search_range, // <--  1-d search range in pel units
// 像素單位的一維搜索範圍
int       min_mcost,    // <--  minimum motion cost (cost for center or huge value)
// 最小運動成本（中心或巨大值的成本）
double    lambda        // <--  lagrangian parameter for determining motion cost
// 用於確定運動成本的拉格朗日參數
* Output:
* Return: 
* Attention: in this function, three macro definitions is gives,
SEARCH_ONE_PIXEL: search one pixel in search range
在搜索範圍內搜索一個像素
SEARCH_ONE_PIXEL1(value_iAbort): search one pixel in search range,
在搜索範圍內搜索一個像素，
but give a parameter to show if mincost refeshed
但給出一個參數來顯示 mincost 是否刷新
*************************************************************************
*/
```

程式碼如下，描述由註解所示。

```
int                                     //  ==> minimum motion cost after search
// 搜索後的最小運動成本
FastIntegerPelBlockMotionSearch  (pel_t**   orig_pic,     // <--  not used
									// 未使用
                                  int       ref,          // <--  reference frame (0... or -1 (backward))
                                  // 參考 frame （0...或-1（向後））
                                  int       pic_pix_x,    // <--  absolute x-coordinate of regarded AxB block
                                  // 被視為 AxB 塊的絕對 x 坐標
                                  int       pic_pix_y,    // <--  absolute y-coordinate of regarded AxB block
                                  // 被視為 AxB 塊的絕對 y 坐標
                                  int       blocktype,    // <--  block type (1-16x16 ... 7-4x4)
                                  // 塊類型 (1-16x16 ... 7-4x4)
                                  int       pred_mv_x,    // <--  motion vector predictor (x) in sub-pel units
                                  // 子像素單元中的運動矢量預測器 (x)
                                  int       pred_mv_y,    // <--  motion vector predictor (y) in sub-pel units
                                  // 子像素單位中的運動矢量預測器 (y)
                                  int*      mv_x,         //  --> motion vector (x) - in pel units
                                  // 運動矢量 (x) - 以像素為單位
                                  int*      mv_y,         //  --> motion vector (y) - in pel units
                                  // 運動矢量 (y) - 像素單位
                                  int       search_range, // <--  1-d search range in pel units
                                  // 像素單位的一維搜索範圍
                                  int       min_mcost,    // <--  minimum motion cost (cost for center or huge value)
                                  // 最小運動成本（中心或巨大值的成本）
                                  double    lambda)       // <--  lagrangian parameter for determining motion cost
                                  // 用於確定運動成本的拉格朗日參數
{
	static int Diamond_x[4] = { -1, 0, 1, 0 };
	static int Diamond_y[4] = { 0, 1, 0, -1 };
	static int Hexagon_x[6] = { 2, 1, -1, -2, -1, 1 };
	static int Hexagon_y[6] = { 0, -2, -2, 0, 2, 2 };
	static int Big_Hexagon_x[16] = { 0, -2, -4, -4, -4, -4, -4, -2, 0, 2, 4, 4, 4, 4, 4, 2 };
	static int Big_Hexagon_y[16] = { 4, 3, 2, 1, 0, -1, -2, -3, -4, -3, -2, -1, 0, 1, 2, 3 };

	int   pos, cand_x, cand_y, mcost;
	pel_t *(*get_ref_line)(int, pel_t*, int, int);
	pel_t*  ref_pic = img->type == B_IMG ? Refbuf11[ref + 1] : Refbuf11[ref];
	int   best_pos = 0;                                        // position with minimum motion cost
// 具有最小運動成本的位置

	int   max_pos = (2 * search_range + 1)*(2 * search_range + 1);    // number of search positions
// 搜索位置的數量

	int   lambda_factor = LAMBDA_FACTOR(lambda);                   // factor for determining lagragian motion cost
// 確定拉格拉格運動成本的因素

	int   mvshift = 2;                  // motion vector shift for getting sub-pel units
// 用於獲取子像素單位的運動矢量偏移

	int   blocksize_y = input->blc_size[blocktype][1];            // vertical block size
// 垂直塊大小

	int   blocksize_x = input->blc_size[blocktype][0];            // horizontal block size
// 水平塊大小

	int   blocksize_x4 = blocksize_x >> 2;                         // horizontal block size in 4-pel units
// 以 4 像素為單位的水平塊大小

	int   pred_x = (pic_pix_x << mvshift) + pred_mv_x;       // predicted position x (in sub-pel units)
// 預測位置 x（以子像素為單位）

	int   pred_y = (pic_pix_y << mvshift) + pred_mv_y;       // predicted position y (in sub-pel units)
// 預測位置 y（以子像素為單位）

	int   center_x = pic_pix_x + *mv_x;                        // center position x (in pel units)
// 中心位置 x（以像素為單位）

	int   center_y = pic_pix_y + *mv_y;                        // center position y (in pel units)
// 中心位置 y（以像素為單位）

	int    best_x, best_y;
	int   check_for_00 = (blocktype == 1 && !input->rdopt && img->type != B_IMG && ref == 0);
	int   search_step, iYMinNow, iXMinNow;
	int   i, m, iSADLayer;
	int   iAbort;
	float betaSec, betaThird;

	int   height = img->height;

	// == 設置獲取參考圖片線的函數 ==
	//===== set function for getting reference picture lines =====

	if ((center_x > search_range) && (center_x < img->width - 1 - search_range - blocksize_x) &&
		(center_y > search_range) && (center_y < height - 1 - search_range - blocksize_y))
	{
		get_ref_line = FastLineX;
	}
	else
	{
		get_ref_line = UMVLineX;
	}


	// allocate memory for search state
	// 初始化搜尋標記
	memset(McostState[0], 0, (2 * search_range + 1)*(2 * search_range + 1) * 4);
	// Threshold defined for early termination

	///////////////////////////////////////////////////////////////	
	if (img->type == B_IMG && ref > 0)
	{
		if (pred_SAD_ref != 0)
		{
			betaSec = Bsize[blocktype] / (pred_SAD_ref*pred_SAD_ref) - AlphaSec[blocktype];
			betaThird = Bsize[blocktype] / (pred_SAD_ref*pred_SAD_ref) - AlphaThird[blocktype];
		}
		else
		{
			betaSec = 0;
			betaThird = 0;
		}
	}
	else
	{
		if (blocktype == 1)
		{
			if (pred_SAD_space != 0)
			{
				betaSec = Bsize[blocktype] / (pred_SAD_space*pred_SAD_space) - AlphaSec[blocktype];
				betaThird = Bsize[blocktype] / (pred_SAD_space*pred_SAD_space) - AlphaThird[blocktype];
			}
			else
			{
				betaSec = 0;
				betaThird = 0;
			}
		}
		else
		{
			if (pred_SAD_uplayer != 0)
			{
				betaSec = Bsize[blocktype] / (pred_SAD_uplayer*pred_SAD_uplayer) - AlphaSec[blocktype];
				betaThird = Bsize[blocktype] / (pred_SAD_uplayer*pred_SAD_uplayer) - AlphaThird[blocktype];
			}
			else
			{
				betaSec = 0;
				betaThird = 0;
			}
		}
	}
	/*****************************/

	////////////search around the predictor and (0,0) - 搜索預測器和（0,0）
	//check the center median predictor - 檢查中心中值預測器
	// 中值預測
	cand_x = center_x;
	cand_y = center_y;
	mcost = MV_COST(lambda_factor, mvshift, cand_x, cand_y, pred_x, pred_y);
	if (ref != -1) {
		mcost += REF_COST(lambda_factor, ref);
	}

	mcost = PartCalMad(ref_pic, orig_pic, get_ref_line, blocksize_y, blocksize_x, blocksize_x4, mcost, min_mcost, cand_x, cand_y);
	McostState[search_range][search_range] = mcost;

	// Mv_COST 是運動矢量代價，但是此不包含前面的 SAD ，只有後面欄目大那部分。
	// PartCalMad 應該是用於計算 SAD 的 裡面的 byte_abs 儲存絕對值，應用於計算 SAD 部分。
	// McostState 對整像素搜索過程進行標記處理，其初始化就是上面的 memset() 部分。
	if (mcost < min_mcost)
	{
		min_mcost = mcost;
		best_x = cand_x;
		best_y = cand_y;
	}

	iXMinNow = best_x;
	iYMinNow = best_y;
	for (m = 0; m < 4; m++)
	{
		cand_x = iXMinNow + Diamond_x[m];
		cand_y = iYMinNow + Diamond_y[m];
		SEARCH_ONE_PIXEL
		// 
		// 把這個像素作為預測中心時，運動矢量的開銷和像素預測殘差開銷進行計算。
		// 循環中每次都會計算其 cost 最後都會比較，當循環結束也就找到 cost 最小的點。
		// 
	}

	// 原點預測
	if (center_x != pic_pix_x || center_y != pic_pix_y)
	{
		cand_x = pic_pix_x;
		cand_y = pic_pix_y;
		SEARCH_ONE_PIXEL

			iXMinNow = best_x;
		iYMinNow = best_y;
		for (m = 0; m < 4; m++)
		{
			cand_x = iXMinNow + Diamond_x[m];
			cand_y = iYMinNow + Diamond_y[m];
			SEARCH_ONE_PIXEL
		}
	}

	// 上層預測，只有在 blocktype > 1 時才可以，即非 16*16 者，需在此進行一次判斷。
	if (blocktype>1)
	{
		cand_x = pic_pix_x + (pred_MV_uplayer[0] / 4);
		cand_y = pic_pix_y + (pred_MV_uplayer[1] / 4);
		SEARCH_ONE_PIXEL
		if ((min_mcost - pred_SAD_uplayer)<pred_SAD_uplayer*betaThird)
			goto third_step;
		else if ((min_mcost - pred_SAD_uplayer)<pred_SAD_uplayer*betaSec)
			goto sec_step;
	}

	// 前幀同位置塊預測
	// coordinate position prediction
	// 坐標位置預測
	if ((img->number > 1 + ref && ref != -1) || (ref == -1 && Bframe_ctr > 1))
	{
		cand_x = pic_pix_x + pred_MV_time[0] / 4;
		cand_y = pic_pix_y + pred_MV_time[1] / 4;
		SEARCH_ONE_PIXEL
	}

	// 相鄰參考幀預測
	// prediciton using mV of last ref moiton vector
	// 使用最後一個參考運動向量的 mV 進行預測
	if ((ref > 0) || (img->type == B_IMG && ref == 0))
	{
		cand_x = pic_pix_x + pred_MV_ref[0] / 4;
		cand_y = pic_pix_y + pred_MV_ref[1] / 4;
		SEARCH_ONE_PIXEL
	}

	// strengthen local search
	// 加強本地搜尋

	iXMinNow = best_x;
	iYMinNow = best_y;
	for (m = 0; m < 4; m++)
	{
		cand_x = iXMinNow + Diamond_x[m];
		cand_y = iYMinNow + Diamond_y[m];
		SEARCH_ONE_PIXEL
	}

	EARLY_TERMINATION

	if (blocktype>6)
		goto sec_step;
	else
		goto first_step;

// 非對稱交叉搜尋
first_step: // Unsymmetrical-cross search 
	iXMinNow = best_x;
	iYMinNow = best_y;

// 水平方向搜尋
	for (i = 1; i <= search_range / 2; i++)
	{
		search_step = 2 * i - 1;
		cand_x = iXMinNow + search_step;
		cand_y = iYMinNow;
		SEARCH_ONE_PIXEL
			cand_x = iXMinNow - search_step;
		cand_y = iYMinNow;
		SEARCH_ONE_PIXEL
	}

// 垂直方向搜尋，但是點比水平方向要少，相當然水平方向運動會更劇烈。
	for (i = 1; i <= search_range / 4; i++)
	{
		search_step = 2 * i - 1;
		cand_x = iXMinNow;
		cand_y = iYMinNow + search_step;
		SEARCH_ONE_PIXEL
			cand_x = iXMinNow;
		cand_y = iYMinNow - search_step;
		SEARCH_ONE_PIXEL
	}
	EARLY_TERMINATION

		iXMinNow = best_x;
	iYMinNow = best_y;

	// 不均勻多六邊形網格搜索
	// Uneven Multi-Hexagon-grid Search	
	for (pos = 1; pos < 25; pos++)
	{
		cand_x = iXMinNow + spiral_search_x[pos];
		cand_y = iYMinNow + spiral_search_y[pos];
		SEARCH_ONE_PIXEL
	}
	EARLY_TERMINATION

	// 大六邊形模板搜尋，雙層迴圈。
	for (i = 1; i <= search_range / 4; i++)
	{
		iAbort = 0;
		for (m = 0; m < 16; m++)
		{
			cand_x = iXMinNow + Big_Hexagon_x[m] * i;
			cand_y = iYMinNow + Big_Hexagon_y[m] * i;
			SEARCH_ONE_PIXEL1(1)
		}
		if (iAbort)
		{

			EARLY_TERMINATION
		}
	}

	// 六邊形模板搜尋
	// 擴展六邊形搜尋
sec_step:  // Extended Hexagon-based Search
	iXMinNow = best_x;
	iYMinNow = best_y;
	for (i = 0; i < search_range; i++)
	{
		iAbort = 1;
		for (m = 0; m < 6; m++)
		{
			cand_x = iXMinNow + Hexagon_x[m];
			cand_y = iYMinNow + Hexagon_y[m];
			SEARCH_ONE_PIXEL1(0)

// iAbort 是標誌位 若從 1 變為 0，則說明最小點變了。
// 而下面的 iXMinNow = best_x; iYMinNow = best_y;
// 若保持為 1 ，則說明最小點沒變不用再更新值，會直接跳出到 third_step

		}
		if (iAbort)
			break;
		iXMinNow = best_x;
		iYMinNow = best_y;
	}

	// 第三步用一個小的搜索模式
third_step: // the third step with a small search pattern
	iXMinNow = best_x;
	iYMinNow = best_y;
	for (i = 0; i < search_range; i++)
	{
		iSADLayer = 65536;
		iAbort = 1;
		for (m = 0; m < 4; m++)
		{
			cand_x = iXMinNow + Diamond_x[m];
			cand_y = iYMinNow + Diamond_y[m];
			SEARCH_ONE_PIXEL1(0)
		}
		if (iAbort)
			break;
		iXMinNow = best_x;
		iYMinNow = best_y;
	}

	*mv_x = best_x - pic_pix_x;
	*mv_y = best_y - pic_pix_y;
	return min_mcost;
}
```


### OpenCV


1. 說明

全局運動估計；全域移動向量的偵測 (Global Motion estimation)

>
> 全局運動是指在視頻序列中佔有較大比例的像素運動，一般主要是由攝像機的運動所造成。
> 
> 通常視頻圖像由前景和背景構成，如果在拍攝過程中攝像機是運動的，同時前景物體也有其自身的運動，那麼又分為。
> 
> 1. 背景的運動是由攝像機運動造成的，稱為全局運動
> 
> 2. 而前景物體所表現出來的運動是前景物體相對於攝像機的運動，稱為局部運動。
>
> 全局運動估計的目的就是要從視頻序列中找出造成全局運動的攝像機運動的規律。
>

2. 下載專案

> https://github.com/opencv/opencv
> 
> Releases: OpenCV 4.5.3
>

#### 官方說明文件


> 文件版本 4.5.3

1. Classes

```
class  	cv::videostab::FromFileMotionReader
 
class  	cv::videostab::GaussianMotionFilter
 
class  	cv::videostab::ImageMotionEstimatorBase

Base class for global 2D motion estimation methods which take frames as input.
以幀作為輸入的全局 2D 運動估計方法的基類。

class  	cv::videostab::IMotionStabilizer
 
class  	cv::videostab::KeypointBasedMotionEstimator

Describes a global 2D motion estimation method which uses keypoints detection and optical flow for matching.
描述了一種使用關鍵點檢測和光流進行匹配的全局 2D 運動估計方法。

class  	cv::videostab::LpMotionStabilizer
 
class  	cv::videostab::MotionEstimatorBase

Base class for all global motion estimation methods.
所有全局運動估計方法的基類。

class  	cv::videostab::MotionEstimatorL1

Describes a global 2D motion estimation method which minimizes L1 error.
描述了一種全局 2D 運動估計方法，可最大限度地減少 L1 誤差。

class  	cv::videostab::MotionEstimatorRansacL2

Describes a robust RANSAC-based global 2D motion estimation method which minimizes L2 error.
描述了一種穩健的基於 RANSAC 的全局 2D 運動估計方法，該方法可最大限度地減少 L2 誤差。

class  	cv::videostab::MotionFilterBase
 
class  	cv::videostab::MotionStabilizationPipeline
 
struct  	cv::videostab::RansacParams

Describes RANSAC method parameters.
描述 RANSAC 方法參數。

class  	cv::videostab::ToFileMotionWriter
 ```


2. Enumerations

```

enum  	cv::videostab::MotionModel {
  cv::videostab::MM_TRANSLATION = 0,
  cv::videostab::MM_TRANSLATION_AND_SCALE = 1,
  cv::videostab::MM_ROTATION = 2,
  cv::videostab::MM_RIGID = 3,
  cv::videostab::MM_SIMILARITY = 4,
  cv::videostab::MM_AFFINE = 5,
  cv::videostab::MM_HOMOGRAPHY = 6,
  cv::videostab::MM_UNKNOWN = 7
}
```
Describes motion model between two point clouds.
描述兩個點雲之間的運動模型。

3. Functions
```
cv::videostab::GaussianMotionFilter::GaussianMotionFilter (int radius=15, float stdev=-1.f)
 
cv::videostab::RansacParams::RansacParams (int size, float thresh, float eps, float prob)
Constructor. More...
 
Mat 	cv::videostab::ensureInclusionConstraint (const Mat &M, Size size, float trimRatio)
 
Mat 	cv::videostab::estimateGlobalMotionLeastSquares (InputOutputArray points0, InputOutputArray points1, int model=MM_AFFINE, float *rmse=0)
 	Estimates best global motion between two 2D point clouds in the least-squares sense.
 
Mat 	cv::videostab::estimateGlobalMotionRansac (InputArray points0, InputArray points1, int model=MM_AFFINE, const RansacParams &params=RansacParams::default2dMotion(MM_AFFINE), float *rmse=0, int *ninliers=0)
 	Estimates best global motion between two 2D point clouds robustly (using RANSAC method).
 
float 	cv::videostab::estimateOptimalTrimRatio (const Mat &M, Size size)
 
Mat 	cv::videostab::getMotion (int from, int to, const std::vector< Mat > &motions)
 	Computes motion between two frames assuming that all the intermediate motions are known.

```

4. Detailed Description - 詳細說明

視頻穩定模塊包含一組函數和類，用於點雲之間或圖像之間的全局運動估計。
The video stabilization module contains a set of functions and classes for global motion estimation between point clouds or between images. 
在最後一種情況下，特徵是在內部提取和匹配的。
In the last case features are extracted and matched internally. 
為了方便起見，運動估計函數被包裝成類。 函數和類都可用。
For the sake of convenience the motion estimation functions are wrapped into classes. Both the functions and the classes are available.








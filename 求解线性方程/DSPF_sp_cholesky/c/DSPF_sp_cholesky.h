#ifndef DSPF_SP_CHOLESKY_H_
#define DSPF_SP_CHOLESKY_H_

#include <stdlib.h>

#include "M7002.h"
#include "c6x-c.h" 
#include <vsip.h>
#include <math.h>

#define VPE_NUM 16
#define OFF_FLOAT_PTR(base,off)(*((vector float*)( ((float*)base)+(off) )) )

/**
 * 对A矩阵进行cholesky分解，将分解得到的上三角矩阵存储在L矩阵上。
 * 注意：分解得到的矩阵是上三角矩阵。不会对A矩阵是否是正定矩阵进行检查。
 * 注意：L矩阵的大小必须是16的倍数，否则会影响L矩阵后面的数据。
 * order：A矩阵的规模
 * A_am：A矩阵在AM空间上的起始地址
 * L_am: L矩阵在AM空间上的起始地址
**/  
void DSPF_sp_cholesky(int order,vector float* A_am,vector float* L_am);

#endif 
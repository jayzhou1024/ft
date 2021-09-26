#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

#define NY (128)
#define NH (16)
#define AR (0.001)

float ptr_y_vc[NY];
float ptr_y_cn[NY];
float ptr_h_vc[NH];
float ptr_h_cn[NH];
float ptr_h_ideal[NH];

float ptr_x[NY + NH];
float ptr_y_ideal[NY];
float error_vc = 0;
float error_cn = 0;

float DSPF_sp_lms_cn (const float *x, float *h, const float *y_i,
    float *y_o, const float ar, float error, const int nh, const int nx);
float DSPF_sp_lms_asm(
    vector float *x, vector float *h,
    const float *y_i, float *y_o,const float ar, float error,const int nh,const int nx
);
unsigned long get_time_cn(const int nh, const int nx);
unsigned long get_time_vc(vector float *x, vector float *h,float *y_i,float *y_o,const int nh,const int nx);


void UTIL_fillRandSP(float *ptr_x, int N, float factor);
void UTIL_fillRandFilterSP(float *ptr_h, int N);
void fir(float *x, float *h, float *y, int nh, int ny);

void main(){
	int i, j=1, ny, nh, form_error = 0;
    float pct_diff, max_pct_diff = 0;
	/*变量初始化*/
	error_vc = 0;
	error_cn = 0;
    int  *cache=0x040140004;   /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;

    memset(ptr_x, 0, NH * sizeof(float));
    UTIL_fillRandSP(ptr_x + NH, NY, 10.0);
    UTIL_fillRandFilterSP(ptr_h_ideal, NH);
    fir(ptr_x + 1, ptr_h_ideal, ptr_y_ideal, NH, NY);
    for (i = 0; i < NH; i++)
    {
        ptr_h_vc[i] = 1.0 / NH;
        ptr_h_cn[i] = 1.0 / NH;
    }

    /*测试样例变量声明*/
    vector float* xAddr, *hAddr;
    float* y_ideal_vc = (float*)0x040100000;
    float* y_output_vc = y_ideal_vc + (NY)*4;
    int vecx_len = (NH+NY+15)/16;
    int vech_len = (NH+15)/16;
    xAddr = (vector float*)vmalloc(vecx_len*sizeof(vector float));
    hAddr = (vector float*)vmalloc(vech_len*sizeof(vector float));
    /* 通过DMA方式将源数据从DDR中搬移到AM空间中*/
    M7002_datatrans(ptr_x, xAddr, (NY + NH)*4);
    M7002_datatrans(ptr_h_vc, hAddr, (NH)*4);
    M7002_datatrans(ptr_y_ideal, y_ideal_vc, (NY)*4);
    /* 计时器初始化 */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*计算访问寄存器用时*/
    unsigned long time_cn,time_vc; 
    unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);

    for(ny = 32; ny <= NY; ny += 8) {
        for(nh = 4; nh <= NH; nh += 4) {

            memset(ptr_y_vc, 0, sizeof(ptr_y_vc));
            memset(ptr_y_cn, 0, sizeof(ptr_y_cn));
            M7002_datatrans(ptr_y_vc, y_output_vc, (NY)*4);

            time_cn=get_time_cn(nh,ny);
            time_vc=get_time_vc(xAddr,hAddr,y_ideal_vc,y_output_vc,nh,ny);
            M7002_datatrans(y_output_vc,ptr_y_vc, (NY)*4);
            
            /*结果判断与输出*/
            for (i = 0; i < ny; i++) {           
                pct_diff = (ptr_y_cn[i] - ptr_y_vc[i]) / ptr_y_cn[i] * 100.0;
                if (pct_diff < 0) pct_diff *= -1;
                if (pct_diff > max_pct_diff) max_pct_diff = pct_diff;
            }    
            if (max_pct_diff > 0.04)
                printf("Result Failure, max_pct_diff=%f \t", max_pct_diff);
            else
                printf("Result Successful, max_pct_diff=%f \t", max_pct_diff);
            
            printf("NY = %d \t\tNH = %d \t\tnatC: %d \t\tvecC: %d \t\n", ny, nh, time_cn-c_time, time_vc-c_time);
        }
    }
    vfree(xAddr);
    vfree(hAddr);
}


/*测量未优化C语言版本函数执行时间 */
unsigned long get_time_cn(int nh,int ny){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	error_cn = DSPF_sp_lms_cn(ptr_x + 1, ptr_h_cn, ptr_y_ideal, ptr_y_cn, AR, error_cn, nh, ny);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*测量向量C版本函数执行时间 */
unsigned long get_time_vc(vector float *xAddr,vector float *hAddr,float* y_i,float* y_o,int nh, int ny){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
    error_vc = DSPF_sp_lms_asm(xAddr, hAddr, y_i, y_o, AR, error_vc, nh, ny);
    time2 = GetTimerCount(0);
    return time2-time1;
}

void fir(float *x, float *h, float *y, int nh, int ny)
{
    int i, j;
    float sum;

    for(j = 0; j < ny; j++)
    {
        sum = 0;
        for(i = 0; i < nh; i++)
            sum += x[i + j] * h[i];

        y[j] = sum;
    }
}

void UTIL_fillRandSP(float *ptr_x, int N, float factor)
{
    float rand_midpoint = RAND_MAX / 2.0;
    int i;

    for (i = 0; i < N; i++)
        ptr_x[i] = ((rand() - rand_midpoint) / rand_midpoint) * factor;
}

void UTIL_fillRandFilterSP(float *ptr_h, int N)
{
    float frand_max = RAND_MAX, pair_sum = 2.0 / N;
    int i;

    for (i = 0; i < N / 2; i++)
    {
        ptr_h[i] = (rand() / frand_max) * pair_sum;
        ptr_h[N - 1 - i] = pair_sum - ptr_h[i];
    }
}
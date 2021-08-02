#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

#define NH  (32)
#define NR (128)
#define NX (160)    /* NX = NH + NR */
#define PAD (16)
void DSP_fir_r8_h16_cn (const short  *x,const short * h,short* r,int nr);
void DSP_fir_r8_h16_sa (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short  *r,
    int nr
);
unsigned long get_time_vc(hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
	);
unsigned long get_time_cn(
    const short  *x,
    const short * h,    
    short       * r,    
    int nh,                     
    int nr                     
);
/* 测试数据x */ 
const short x[NX + 2*PAD] =
{
     0x032C, -0x544D, -0x6A9D,  0x09C4,  0x5226,  0x6A85,  0x6EDE,  0x1463,     // Beginning
    -0x158A,  0x75BC,  0x7407,  0x160B, -0x0E16, -0x3F82,  0x5F6D, -0x567B,     // PAD

     0x453E, -0x321D,  0x2DBB,  0x77C7, -0x57B9, -0x4ADD,  0x10B7, -0x113F,
    -0x1A92,  0x7CA7,  0x4A14,  0x719D,  0x3E61,  0x1858, -0x0D4C,  0x3D94,
    -0x32B8, -0x14B2,  0x1B6A,  0x7A1D,  0x0D5B,  0x1D2C,  0x55D8, -0x5459,
     0x5030, -0x5CBD,  0x0180,  0x059B,  0x4D97,  0x49E3,  0x68A4, -0x3629,
    -0x7AA5, -0x582E,  0x1D05,  0x3A65, -0x4734,  0x3D6B, -0x6CE3,  0x4A99,
     0x1D54, -0x50B4,  0x62F5, -0x75A7, -0x6AFA,  0x5D26,  0x3C1A, -0x793D,
    -0x6493,  0x4282, -0x0020,  0x1BE0,  0x1A7F,  0x621B, -0x1C86, -0x254E,
    -0x12FB, -0x4E5B,  0x3409,  0x223E,  0x3856, -0x4179, -0x60C9, -0x102C,
     0x5EB6, -0x097B,  0x7A6E,  0x1450, -0x41CD, -0x133A,  0x0358, -0x2677,
    -0x0BA0,  0x6732,  0x19A5, -0x4961, -0x1E47, -0x6657,  0x57C6,  0x1E70,
     0x1F12,  0x59F9,  0x13A4,  0x16D9,  0x26E6, -0x4FE0,  0x39FA, -0x6AF4,
    -0x2829, -0x673F,  0x7460,  0x57A6, -0x5BB4,  0x424C, -0x6068,  0x2CC9,
     0x0F61, -0x4030, -0x00AD,  0x6AE1, -0x4FD3,  0x56ED,  0x2FDA, -0x759C,
    -0x726F,  0x78E3,  0x42DF, -0x63D3, -0x1F88, -0x71D0,  0x07E8, -0x6D4A,
     0x21E5, -0x6C4D, -0x0072,  0x0EEE,  0x749D, -0x4622, -0x2AF7, -0x3A2B,
     0x3DC4,  0x05D0, -0x00C7,  0x059F,  0x1C52,  0x36EE,  0x58B6, -0x7864,
    -0x145A, -0x3F1F,  0x4107,  0x1B89,  0x2024,  0x4771,  0x3F8F,  0x4298,
     0x231F,  0x6C44, -0x79AD,  0x58DA, -0x1706,  0x37E1,  0x6B2A,  0x6447,
    -0x7C33,  0x080C,  0x426E,  0x1F1C, -0x2095,  0x64D2, -0x7634,  0x4BC4,
     0x6720,  0x6260, -0x12BD,  0x040C, -0x3F04,  0x2FFF,  0x14F4,  0x00CC,

    -0x01CC, -0x1F8D, -0x35A1,  0x432A, -0x35C6, -0x0E0F, -0x7FEF,  0x3D0B,     // Ending
     0x3D0B,  0x2B67, -0x7BC7,  0x48D5, -0x1FE3,  0x0ADA,  0x4F02, -0x69DF      // PAD
};
/* 测试数据h */
const short h[NH + 2*PAD] =
{
    -0x6226,  0x4E99,  0x52AC, -0x322F, -0x4CF2,  0x34FE, -0x26B0,  0x512C,     // Beginning
    -0x7CE4,  0x59F0, -0x4137, -0x7CBE, -0x7F4B, -0x5471, -0x1A85, -0x0F38,     // PAD

    -0x0007,  0x002A, -0x0006,  0x0027, -0x0016,  0x001E,  0x0047,  0x005B,
     0x0064, -0x0017, -0x001F,  0x0039, -0x0015, -0x0063, -0x0009, -0x0016,
    -0x0007,  0x002A, -0x0006,  0x0027, -0x0016,  0x001E,  0x0047,  0x005B,
     0x0064, -0x0017, -0x001F,  0x0039, -0x0015, -0x0063, -0x0009, -0x0016,

     0x524B, -0x71B5,  0x5C6E,  0x4C92,  0x6100,  0x4ED3,  0x7244, -0x5594,     // Ending
    -0x12C8, -0x6F88,  0x6EDB,  0x3284, -0x36A5,  0x33E6,  0x05AC, -0x1E10      // PAD
};
volatile short rAddr_DDR_cn[NR + 2*PAD];
volatile short rAddr_DDR_vc[NR*8];

const short * xAddr_DDR = x + PAD;
const short * hAddr_DDR = h + PAD ;
short *const ptr_r_cn = rAddr_DDR_cn + PAD;
short *const ptr_r_vc = rAddr_DDR_vc + PAD;
void main(){
    int  *cache=0x040140004;   /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;
	/*测试样例变量声明*/
	hvector signed short* xAddr,*rAddr;
    /* 计时器初始化 */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*计算访问寄存器用时*/
    unsigned long time_cn,time_vc; 
    unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
    int i, j, nh, nr, k;
     /* 测试 */
    nh = 16;
	for(nr = 4; nr <= NR; nr += 4) {
        int vecx_len = (nh+nr-1+15)/16;  /*申请Addr空间时，保证16字对齐 这里会有越界读(再加1就不会出现)*/
        int vecr_len = (nr+15)/16;
        /* 初始化 xAddr、hAddr和rAddr */
        xAddr = (hvector signed short*)vmalloc(vecx_len*sizeof(hvector signed short));
        /*
            由于short*short得到的结果为int,若不在计算函数内额外申请内存时，
            需在计算前在AM内额外申请一倍的内存空间
        */
        rAddr = (hvector signed short*)vmalloc(2*vecr_len*sizeof(hvector signed short));
        short *hAddr = (short *)0x040100000;
        /* 初始化r，计算过程都是乘累加，需要保证r初值为0 */
        memset(rAddr_DDR_cn, 0x0000, sizeof(rAddr_DDR_cn));
        memset(rAddr_DDR_vc, 0x0000, sizeof(rAddr_DDR_vc));
        /* 通过DMA方式将源数据从DDR中搬移到AM空间中，调用M7002_datatrans函数实现DMA数据搬移 */ 
        M7002_datatrans(xAddr_DDR, xAddr, vecx_len*sizeof(hvector signed short));
        M7002_datatrans(ptr_r_vc, rAddr, 2*vecr_len*sizeof(hvector signed short));
        M7002_datatrans(hAddr_DDR, hAddr, NH*2);
        /* 函数时间测量 */
        time_cn=get_time_cn(xAddr_DDR,hAddr_DDR,ptr_r_cn,nh,nr);
        time_vc=get_time_vc(xAddr,hAddr,rAddr,nh,nr);
        /* 通过DMA方式将rAddr数据从AM中搬移到DDR空间中 */
        M7002_datatrans(rAddr, ptr_r_vc,nr*2);
        /* 精度测试 */
        if (memcmp(ptr_r_vc, ptr_r_cn, nr*2)){
            printf("Result Failure (r_i)  ");
        }     
        else
            printf("Result Successful (r_i)  ");
        printf("\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n", nr, nh,time_cn,time_vc);
        vfree(xAddr);
        vfree(rAddr);
	}
}
/*测量未优化C语言版本函数 */
unsigned long get_time_cn(const short* x,const short* h,short* r, int nh,int nr){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSP_fir_r8_h16_cn(x,h,r,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*测量向量C版本函数 */
unsigned long get_time_vc(hvector signed short *x,signed short *h,hvector signed short  *r,int nh, int nr){
        unsigned long time1,time2;
        time1 = GetTimerCount(0);
        DSP_fir_r8_h16_sa(x,h,r,nr);
        time2 = GetTimerCount(0);
        return time2-time1;
}
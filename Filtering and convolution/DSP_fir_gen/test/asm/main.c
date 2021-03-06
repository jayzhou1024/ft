#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#define NH  (16)
#define NR  (64)
#define NX  (80)  /* NX = NH + NR */
#define PAD (16)
void DSP_fir_gen_cn (const short  *x, const short * h, short* r, int nh, int nr);
void DSP_fir_gen_asm (hvector signed short *x, signed short *h, hvector signed short *r, int nh, int nr);
unsigned long get_time_vc(hvector signed short *x, signed short *h, hvector signed short *r, int nh, int nr );
unsigned long get_time_cn(const short *x, const short *h, short *r, int nh, int nr);
const short x[NX + 2 * PAD] =
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

    -0x01CC, -0x1F8D, -0x35A1,  0x432A, -0x35C6, -0x0E0F, -0x7FEF,  0x3D0B,     // Ending
     0x3D0B,  0x2B67, -0x7BC7,  0x48D5, -0x1FE3,  0x0ADA,  0x4F02, -0x69DF      // PAD
};
const short h[NH + 2 * PAD] =
{
    -0x6226,  0x4E99,  0x52AC, -0x322F, -0x4CF2,  0x34FE, -0x26B0,  0x512C,     // Beginning
    -0x7CE4,  0x59F0, -0x4137, -0x7CBE, -0x7F4B, -0x5471, -0x1A85, -0x0F38,     // PAD

    -0x0007,  0x002A, -0x0006,  0x0027, -0x0016,  0x001E,  0x0047,  0x005B,
     0x0064, -0x0017, -0x001F,  0x0039, -0x0015, -0x0063, -0x0009, -0x0016,

    -0x0063, -0x0009, -0x0016,  0x524B, -0x71B5,  0x5C6E,  0x4C92,  0x6100,     // Ending
     0x4ED3,  0x7244, -0x5594, -0x12C8, -0x6F88,  0x6EDB,  0x3284, -0x36A5      // PAD
};
short rAddr_DDR_cn[NR + 2 * PAD];
short rAddr_DDR_vc[NR * 8];

const short * xAddr_DDR = x + PAD;
const short * hAddr_DDR = h + PAD ;
short *const ptr_r_cn = rAddr_DDR_cn + PAD;
short *const ptr_r_vc = rAddr_DDR_vc + PAD;
void main(){
    int *cache = 0x040140004;   /* ???SM?????????SRAM???????????? */
    int *cache1 = 0x040140000;
	volatile int cache_ok;
	*cache = 0x1;
	*cache1 = 0x1;
    cache_ok = *cache1 ;
    while( cache_ok != 0 )
    cache_ok = *cache1 ;
	/* ???????????????????????? */
	hvector signed short* xAddr,*rAddr;
    /* ?????????????????? */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /* ??????????????????????????? */
    unsigned long time_cn, time_vc; 
    unsigned long c_time = GetTimerCount(0) - GetTimerCount(0);
    int i, j, nh, nr;
     /* ?????? */
	for (nr = 4; nr <= NR; nr += 4) {
        for (nh = 4; nh <= NH; nh += 4) {
            int vecx_len = (nh + nr - 1 + 15) >> 4;  /*??????Addr??????????????????16??????????????????????????????????????1????????????????*/
            int vecr_len = (nr + 15) >> 4;
            /* ?????????xAddr???hAddr???rAddr */
            xAddr = (hvector signed short*)vmalloc(vecx_len * sizeof(hvector signed short));
            /*
                ??????short*short??????????????????int,????????????????????????????????????????????????
                ????????????AM????????????????????????????????????
            */
            rAddr = (hvector signed short*)vmalloc(2 * vecr_len * sizeof(hvector signed short));
            short *hAddr = (short *)0x040100000;
            /* ?????????r */
			memset(rAddr_DDR_cn, 0x0000, sizeof(rAddr_DDR_cn));
            memset(rAddr_DDR_vc, 0x0000, sizeof(rAddr_DDR_vc));
            /* ??????DMA?????????????????????DDR????????????AM??????????????????M7002_datatrans????????????DMA???????????? */ 
            M7002_datatrans(xAddr_DDR, xAddr, vecx_len * sizeof(hvector signed short));
            M7002_datatrans(ptr_r_vc, rAddr, 2 * vecr_len * sizeof(hvector signed short));
            M7002_datatrans(hAddr_DDR, hAddr, NH * 2);
            /* ?????????????????? */
			time_cn = get_time_cn(xAddr_DDR, hAddr_DDR, ptr_r_cn, nh, nr);
			time_vc = get_time_vc(xAddr, hAddr, rAddr, nh, nr);
		    /* ??????DMA?????????rAddr?????????AM????????????DDR?????? */
            M7002_datatrans(rAddr, ptr_r_vc,nr * 2);
            /* ???????????? */
            if (memcmp(ptr_r_vc, ptr_r_cn, nr * 2)) {
                printf("Result Failure (r_i)  ");
            }     
            else
                printf("Result Successful (r_i)  ");
            printf("\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n", nr, nh, time_cn, time_vc);
            vfree(xAddr);
            vfree(rAddr);
		}
	}
}
/* ???????????????C?????????????????? */
unsigned long get_time_cn(const short* x, const short* h, short* r, int nh,int nr)
{
    unsigned long time1, time2;
    time1 = GetTimerCount(0);
	DSP_fir_gen_cn(x, h, r, nh, nr);
    time2 = GetTimerCount(0);
    return time2 - time1;
}
/* ????????????C???????????? */
unsigned long get_time_vc(hvector signed short *x, signed short *h, hvector signed short *r, int nh, int nr)
{
        unsigned long time1, time2;
        time1 = GetTimerCount(0);
        DSP_fir_gen_asm(x, h, r, nh, nr);
        time2 = GetTimerCount(0);
        return time2 - time1;
}
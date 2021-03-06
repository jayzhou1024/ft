
#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>

#define NH  (16)
#define NR  (32)
#define NX  (50)      /* NX = 2*NH + NR + 2 */
#define PAD (16)
#define TEST_S   (0)
void DSP_fir_sym_cn (
    const short * x,const short *h,short *r, int nh,int nr,int s                       
);
 
void DSP_fir_sym_asm (
    hvector signed short *x,signed short *h,hvector signed short *r,int nh,int nr,int s
);
unsigned long get_time_cn(const short* x,const short* h,short* r, int nh,int nr,int s);
unsigned long get_time_vc(hvector signed short *x,signed short *h,hvector signed short  *r,int nh, int nr,int s);
const short x[NX+16] =
{
    0xFF94,   0x000A,  0x236F,  0xFE45,  0xF9B1,  0x00E3,  0x001F,   0xD5E4,
    0x03EE,   0xF9F2,  0x001A,  0xFFFC,  0xFFD6,  0xFFFD,  0x0000,   0x0000,
    0xFFFF,   0xE82B,  0xABCD,  0xBCDE,  0xCDEF,  0xDEFA,  0xEFAB,   0xFAB1,
    0xAB12,   0xB123,  0x1234,  0x2345,  0x3456,  0x4567,  0x5678,   0x6789,
    0x789A,   0x89AB,  0x9ABC,  0xABCD,  0xADDA,  0xEFFE,  0xBCCA,   0xDEAD,
    0x7FF7,   0x7FFF,  0xFDCA,  0x4823,  0x2567,  0x4EEA,  0x8000,   0x7ACE,
    0x2A3E,   0x4096,   0x02AC,   0xFFFF,  0x3F6B,  0x3D15,0x02AC,   0xFFFF,  0x3F6B,
    0x2A3E,   0x4096,   0x02AC,   0xFFFF,  0x3F6B,  0x3D15,0x02AC,   0xFFFF,
    
};

const short h[NH + 2*PAD] =
{
    0x02AC,   0xFFFF,  0x3F6B,  0x3D15,  0xFFDE,  0xFFFB,  0x0003,  0xFFE5,
    0xFFEA,   0x0032,  0x2411,  0xFC54,  0x0072,  0xFF6A,  0xFFE5,  0xFFFA,
    0xDBC7,   0xFFF8,  0x0002,  0x0000,  0x3FCC,  0xE8AA,  0x019E,  0x0009,
    0xFF26,   0x0005,  0x0023,  0x0009,  0xEA26,  0x07F0,  0xF3CD,  0x001B,
    0xF07B,   0x007B,  0x0001,  0x0372,  0xFFFE,  0xFFF6,  0x0016,  0xFFD2,
    0x185F,   0x00FF,  0xFAAF,  0xDADE,  0xDEAD,  0xCEAD,  0xABBA,  0x7FFF
};
short rAddr_DDR_cn[NR + 2*PAD];
short rAddr_DDR_vc[NR*8];
const short * xAddr_DDR = x;
const short * hAddr_DDR = h + PAD ;
short *const ptr_r_cn = rAddr_DDR_cn + PAD;
short *const ptr_r_vc = rAddr_DDR_vc + PAD;

void main(){
	int  *cache=(int *)0x040140004;   /*???SM?????????SRAM????????????*/
    int  *cache1=(int *)0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;
	hvector signed short* xAddr,*rAddr;
    /* ?????????????????? */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*???????????????????????????*/
    unsigned long time_cn,time_vc; 
    unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
    int i, j, nh, nr;
	for(nr = 4; nr <= NR+4; nr += 4) {
        for(nh = 4; nh <= NH; nh += 4) {
			int vecx_len = (2*nh+nr+2+15)/16;  /*??????Addr??????????????????16????????? ?????????????????????(??????1???????????????)*/
            int vecr_len = (nr+15)/16;
			/* ????????? xAddr???hAddr???rAddr */
            xAddr = (hvector signed short*)vmalloc(vecx_len*sizeof(hvector signed short));
            rAddr = (hvector signed short*)vmalloc(2*vecr_len*sizeof(hvector signed short));
			short *hAddr = (short *)0x040100000;
			memset(rAddr_DDR_cn, 0x0000, sizeof(rAddr_DDR_cn));
            memset(rAddr_DDR_vc, 0x0000, sizeof(rAddr_DDR_vc));
            /* ??????DMA?????????????????????DDR????????????AM??????????????????M7002_datatrans????????????DMA???????????? */ 
            M7002_datatrans(xAddr_DDR, xAddr, vecx_len*sizeof(hvector signed short));
            M7002_datatrans(ptr_r_vc, rAddr, 2*vecr_len*sizeof(hvector signed short));
            M7002_datatrans(hAddr_DDR, hAddr, (NH+2)*2);/*DMA??????????????????*/
			 /* ???????????????????????? */
			time_cn=get_time_cn(xAddr_DDR,hAddr_DDR,ptr_r_cn,nh,nr,TEST_S);
			time_vc=get_time_vc(xAddr,hAddr,rAddr,nh,nr,TEST_S);
		    /* ??????DMA?????????rAddr?????????AM????????????DDR????????? */
            M7002_datatrans(rAddr, ptr_r_vc,nr*2);
            /* ???????????? */
			if (memcmp(ptr_r_vc, ptr_r_cn, 2*nr)) {
                printf("Result Failure ");
            }
            else
                printf("Result Successful ");
            printf("   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n", nr, nh,time_cn,time_vc);
			vfree(xAddr);
            vfree(rAddr);
		}
	}
}
/*???????????????C?????????????????????????????? */
unsigned long get_time_cn(const short* x,const short* h,short* r, int nh,int nr,int s){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSP_fir_sym_cn(x,h,r,nh,nr,s);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*????????????C???????????????????????? */
unsigned long get_time_vc(hvector signed short *x,signed short *h,hvector signed short  *r,int nh, int nr,int s){
        unsigned long time1,time2;
        time1 = GetTimerCount(0);
        DSP_fir_sym_asm(x,h,r,nh,nr,s);
        time2 = GetTimerCount(0);
        return time2-time1;
}
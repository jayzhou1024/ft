#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define PAD (8)
#define SFB (16383.5)
#define NOUTPUTSAMPS (64)
#define T (NOUTPUTSAMPS + PAD)
#define N (NOUTPUTSAMPS * 10)

short ptr_State[N + PAD];

short ptr_Input[N + 2 * PAD];

/* Extra parameters For ZTE requirements */
short ptr_r1_output_used_c[N + PAD + 4];
short ptr_r2_output_used_c[N + PAD];

//给定测试用的滤波系数
short ptr_Coefs_h2[5] =
{
    (short)( 0.25*SFB), (short)(1.00*SFB),
    (short)( 1.50*SFB), (short)(1.00*SFB),
    (short)( 0.25*SFB)
};

short ptr_Coefs_h1[5] =
{
    (short)( 0.25*SFB), (short)(1.00*SFB),
    (short)( 1.50*SFB), (short)(1.00*SFB),
    (short)( 0.25*SFB)  
};

void DSP_iir_cn (
    short *r1,        /* Pointer to real output data used/stored */ 
    const short *x,   /* Pointer to real input data */
    short *r2,        /* Pointer to real output data stored */
    const short *h2,  /* Pointer to 5 Moving-average real filter coefficients */
    const short *h1,  /* Pointer to 4 Autoregressive real filter coefficients */
    int nr            /* Holds the value of number of real output samples */
)
{
    int j, i;
    int sum;

    for (i = 0; i < nr; i++)
    {
        sum = h2[0] * x[4+i];

        for (j = 1; j <= 4; j++)
        {
            sum += h2[j] * x[4+i-j] - h1[j] * r1[4+i-j];
        }

        r1[4+i] = (sum >> 15);
        r2[i] = r1[4+i];
    }
    for (int k = 0; k < nr;k++)
    {
        printf("%d  ",r2[k]);   //用于显示真实输出结果
    }
    printf("\n\n");
}

int main()
{
    int i, nOutSamps;

    for (i=0; i < N + 2 * PAD; i++) {
            ptr_Input[i] = 0;
    }
    ptr_Input[10] = 0xCCC;  //输入序列

    for(nOutSamps = 8, i = 1; nOutSamps <= NOUTPUTSAMPS; i++, nOutSamps += 4) {
        /* ---------------------------------------------------------------- */
        /*  Fill output buffers with fixed values.                          */
        /* ---------------------------------------------------------------- */
        memset(ptr_r1_output_used_c, 0x5A, sizeof(ptr_r1_output_used_c));
        memset(ptr_r2_output_used_c, 0x5A, sizeof(ptr_r2_output_used_c));

        printf("第%d次运算结果:\n", i);
        DSP_iir_cn (
            ptr_r1_output_used_c, (const short*) ptr_Input, 
            ptr_r2_output_used_c, ptr_Coefs_h2, ptr_Coefs_h1, nOutSamps
        );
        //滤波到最后观察到的现象是数据近乎恒定，没有起伏
    }
    return 0;
}

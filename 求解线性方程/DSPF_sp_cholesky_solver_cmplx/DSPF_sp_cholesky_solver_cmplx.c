#include <stdio.h>
#include <string.h>
#include <math.h>
#include "M7002.h"
#include "c6x-c.h"
#include "vsip.h"
#include "DSPF_sp_cholesky_solver_cmplx.h"

/*定义cholesky_solver_cmplx函数，一共包含5个参数：计算长度Nrows，下三角矩阵L，中间向量y，常数项向量b，解向量x。*/
int DSPF_sp_cholesky_solver_cmplx(const int Nrows, lvector double *L, lvector double *y, lvector double *b, lvector double *x)
{
    int i, j, k, l;
    float sum_r, sum_i;
    int Li_r_i, Li_i_i, bi_r_i, bi_i_i, yi_r_i, yi_i_i;
    float Li_r, Li_i, bi_r, bi_i, yi_r, yi_i;
    float buf_r, buf_i;
    int VPE_Setting;
    float x_mag, y_mag, z_mag;
    float x_angle, y_angle, z_angle;

    int cols16 = (Nrows + 15) / VPE_NUM;

    vector float vf_temp1_r;
    vector float vf_temp1_i;
    vector float vf_temp2_r;
    vector float vf_temp2_i;
    vector float vf_temp3_r;
    vector float vf_temp3_i;
    vector float vf_temp4_r;
    vector float vf_temp4_i;
    lvector double *startOfRow;

    //配置SMR寄存器
    int *shuf_addr = 0x040160000;
    //mode0:提取奇数项
    *(shuf_addr + 0) = 0x06040200;
    *(shuf_addr + 1) = 0x0e0c0a08;
    *(shuf_addr + 2) = 0x16141210;
    *(shuf_addr + 3) = 0x1e1c1a18;
    //mode1:提取偶数项
    *(shuf_addr + 4) = 0x07050301;
    *(shuf_addr + 5) = 0x0f0d0b09;
    *(shuf_addr + 6) = 0x17151311;
    *(shuf_addr + 7) = 0x1f1d1b19;
    //mode2:取对应float型变量组成单精度复数1
    *(shuf_addr + 8) = 0x11011000;
    *(shuf_addr + 9) = 0x13031202;
    *(shuf_addr + 10) = 0x15051404;
    *(shuf_addr + 11) = 0x17071606;
    //mode3:取对应float型变量组成单精度复数2
    *(shuf_addr + 12) = 0x19091808;
    *(shuf_addr + 13) = 0x1b0b1a0a;
    *(shuf_addr + 14) = 0x1d0d1c0c;
    *(shuf_addr + 15) = 0x1f0f1e0e;

    //计算y0
    mov_to_svr_v16sf(*(vector float *)L);
    Li_r_i = mov_from_svr0();
    Li_i_i = mov_from_svr1();
    Li_r = *((float *)&Li_r_i);
    Li_i = *((float *)&Li_i_i);
    //printf("Li_r = %f\n", Li_r);
    //printf("Li_i = %f\n", Li_i);
    mov_to_svr_v16sf(*(vector float *)b);
    bi_r_i = mov_from_svr0();
    bi_i_i = mov_from_svr1();
    bi_r = *((float *)&bi_r_i);
    bi_i = *((float *)&bi_i_i);
    //printf("bi_r = %f\n", bi_r);
    //printf("bi_i = %f\n", bi_i);
    yi_r = (bi_r * Li_r + bi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
    yi_i = (bi_i * Li_r - bi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
    /*
    x_mag = sqrt(bi_r * bi_r + bi_i * bi_i);
    y_mag = sqrt(Li_r * Li_r + Li_i * Li_i);
    z_mag = x_mag / y_mag;
    x_angle = atan2(bi_i, bi_r);
    y_angle = atan2(Li_i, Li_r);
    z_angle = x_angle - y_angle;
    yi_r = cos(z_angle) * z_mag;
    yi_i = sin(z_angle) * z_mag;
    */
    
    //printf("yi_r = %f, yi_i = %f\n", yi_r, yi_i);
    mov_to_svr_v16sf(*(vector float *)y);
    mov_to_svr0(*((int *)&yi_r));
    mov_to_svr1(*((int *)&yi_i));
    *(vector float *)y = mov_from_svr_v16sf();
    //*(OFF_FLOAT_PTR(y, 0)) = mov_from_svr_v16sf();

    //求解L * y = b中的y向量，y向量为中间向量
    for (i = 1; i < Nrows; i++)
    {
        startOfRow = (lvector double *)(OFF_FLOAT_PTR(L, 2 * i * Nrows));

        //初始化vf_temp1, buf
        vf_temp1_r = vec_svbcast(0.0f);
        vf_temp1_i = vec_svbcast(0.0f);
        buf_r = 0;
        buf_i = 0;
        sum_r = 0;
        sum_i = 0;

        //计算yi
        for (j = 0; j < cols16; j++)
        {
            shuff_mode(0);
            vf_temp2_r = vec_shufw(0, *OFF_FLOAT_PTR(y, j * 2 * VPE_NUM), *OFF_FLOAT_PTR(y, j * 2 * VPE_NUM + VPE_NUM));
            vf_temp3_r = vec_shufw(0, *OFF_FLOAT_PTR(startOfRow, j * 2 * VPE_NUM), *OFF_FLOAT_PTR(startOfRow, j * 2 * VPE_NUM + VPE_NUM));
            shuff_mode(1);
            vf_temp2_i = vec_shufw(1, *OFF_FLOAT_PTR(y, j * 2 * VPE_NUM), *OFF_FLOAT_PTR(y, j * 2 * VPE_NUM + VPE_NUM));
            vf_temp3_i = vec_shufw(1, *OFF_FLOAT_PTR(startOfRow, j * 2 * VPE_NUM), *OFF_FLOAT_PTR(startOfRow, j * 2 * VPE_NUM + VPE_NUM));

            vf_temp4_r = vec_sub(vec_muli(vf_temp2_i, vf_temp3_i), vec_muli(vf_temp2_r, vf_temp3_r));
            vf_temp4_i = vec_add(vec_muli(vf_temp2_r, vf_temp3_i), vec_muli(vf_temp3_r, vf_temp2_i));

            if ((j == cols16 - 1) && (Nrows % VPE_NUM))
            {
                VPE_Setting = 0xFFFF;
                VPE_Setting = VPE_Setting >> (VPE_NUM - Nrows % VPE_NUM);
                //printf("VPE_Setting = %x\n", VPE_Setting);
                mov_to_vlr(VPE_Setting);
                vf_temp1_r = vec_add(vf_temp1_r, vf_temp4_r);
                vf_temp1_i = vec_add(vf_temp1_i, vf_temp4_i);
                mov_to_vlr(0xFFFF);
                break;
            }
            vf_temp1_r = vec_add(vf_temp1_r, vf_temp4_r);
            vf_temp1_i = vec_add(vf_temp1_i, vf_temp4_i);
        }
        mov_to_svr_v16sf(vf_temp1_r);
        *(int *)(&buf_r) = mov_from_svr0();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr1();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr2();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr3();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr4();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr5();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr6();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr7();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr8();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr9();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr10();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr11();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr12();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr13();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr14();
        sum_r += buf_r;
        *(int *)(&buf_r) = mov_from_svr15();
        sum_r += buf_r;
        mov_to_svr_v16sf(vf_temp1_i);
        *(int *)(&buf_i) = mov_from_svr0();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr1();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr2();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr3();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr4();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr5();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr6();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr7();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr8();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr9();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr10();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr11();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr12();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr13();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr14();
        sum_i += buf_i;
        *(int *)(&buf_i) = mov_from_svr15();
        sum_i += buf_i;
        mov_to_svr_v16sf(*OFF_FLOAT_PTR(L, (i * Nrows + i) * 2));
        Li_r_i = mov_from_svr0();
        Li_i_i = mov_from_svr1();
        Li_r = *((float *)&Li_r_i);
        Li_i = *((float *)&Li_i_i);
        //printf("Li_r = %f, Li_i = %f\n", Li_r, Li_i);
        mov_to_svr_v16sf(*OFF_FLOAT_PTR(b, i * 2));
        bi_r_i = mov_from_svr0();
        bi_i_i = mov_from_svr1();
        bi_r = *((float *)&bi_r_i);
        bi_i = *((float *)&bi_i_i);
        //printf("bi_r = %f, bi_i = %f\n", bi_r, bi_i);
        //printf("sum_r = %f, sum_i = %f\n", sum_r, sum_i);
        bi_r -= sum_r;
        bi_i -= sum_i;
        //printf("bi_r = %f, bi_i = %f\n", bi_r, bi_i);
        yi_r = (bi_r * Li_r + bi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        yi_i = (bi_i * Li_r - bi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        
        /*
        x_mag = sqrt(bi_r * bi_r + bi_i * bi_i);
        y_mag = sqrt(Li_r * Li_r + Li_i * Li_i);
        z_mag = x_mag / y_mag;
        x_angle = atan2(bi_i, bi_r);
        y_angle = atan2(Li_i, Li_r);
        z_angle = x_angle - y_angle;
        yi_r = cos(z_angle) * z_mag;
        yi_i = sin(z_angle) * z_mag;
        */
        
        yi_r_i = *((int *)&yi_r);
        yi_i_i = *((int *)&yi_i);
        //printf("yi_r = %f, yi_i = %f\n", yi_r, yi_i);
        mov_to_svr_v16sf(*(OFF_FLOAT_PTR(y, 2 * i)));
        mov_to_svr0(yi_r_i);
        mov_to_svr1(yi_i_i);
        *(OFF_FLOAT_PTR(y, 2 * i)) = mov_from_svr_v16sf();
    }

    //求解U * x = y中的x向量，x向量即为解向量
    k = 0, l = 1;
    for (i = Nrows - 1; i >= 0; i--)
    {
        //求解xi
        mov_to_svr_v16sf(*OFF_FLOAT_PTR(L, 2 * i * Nrows + 2 * i));
        Li_r_i = mov_from_svr0();
        Li_i_i = mov_from_svr1();
        Li_r = *((float *)&Li_r_i);
        Li_i = *((float *)&Li_i_i);
        Li_i = -Li_i;
        mov_to_svr_v16sf(*OFF_FLOAT_PTR(y, 2 * i));
        yi_r_i = mov_from_svr0();
        yi_i_i = mov_from_svr1();
        yi_r = *((float *)&yi_r_i);
        yi_i = *((float *)&yi_i_i);
        buf_r = (yi_r * Li_r + yi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        buf_i = (yi_i * Li_r - yi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        
        /*
        x_mag = sqrt(yi_r * yi_r + yi_i * yi_i);
        y_mag = sqrt(Li_r * Li_r + Li_i * Li_i);
        z_mag = x_mag / y_mag;
        x_angle = atan2(yi_i, yi_r);
        y_angle = atan2(Li_i, Li_r);
        z_angle = x_angle - y_angle;
        buf_r = cos(z_angle) * z_mag;
        buf_i = sin(z_angle) * z_mag;
        */
        

        vf_temp3_r = vec_svbcast(buf_r);
        vf_temp3_i = vec_svbcast(buf_i);

        mov_to_svr_v16sf(*OFF_FLOAT_PTR(x, 2 * i));
        mov_to_svr0(*(int *)(&buf_r));
        mov_to_svr1(*(int *)(&buf_i));
        *OFF_FLOAT_PTR(x, 2 * i) = mov_from_svr_v16sf();

        //更新y
        startOfRow = (lvector double *)OFF_FLOAT_PTR(L, 2 * i * Nrows);
        for (j = 0; j < i; j += VPE_NUM)
        {
            shuff_mode(0);
            vf_temp2_r = vec_shufw(0, *(vector float *)(&startOfRow[j / VPE_NUM]), *OFF_FLOAT_PTR(&startOfRow[j / VPE_NUM], VPE_NUM));
            vf_temp4_r = vec_shufw(0, *(vector float *)(&y[j / VPE_NUM]), *OFF_FLOAT_PTR(&y[j / VPE_NUM], VPE_NUM));
            shuff_mode(1);
            vf_temp2_i = vec_shufw(1, *(vector float *)(&startOfRow[j / VPE_NUM]), *OFF_FLOAT_PTR(&startOfRow[j / VPE_NUM], VPE_NUM));
            vf_temp2_i = vec_neg(vf_temp2_i);
            vf_temp4_i = vec_shufw(1, *(vector float *)(&y[j / VPE_NUM]), *OFF_FLOAT_PTR(&y[j / VPE_NUM], VPE_NUM));

            if (((j + VPE_NUM) > i) && ((i + 1) % VPE_NUM))
            {
                VPE_Setting = 0xFFFF;
                VPE_Setting >> (VPE_NUM - (i + 1) % VPE_NUM);
                mov_to_vlr(VPE_Setting);
                vf_temp1_r = vec_sub(vec_muli(vf_temp2_i, vf_temp3_i), vec_muli(vf_temp2_r, vf_temp3_r));
                vf_temp1_i = vec_add(vec_muli(vf_temp2_r, vf_temp3_i), vec_muli(vf_temp2_i, vf_temp3_r));

                vf_temp4_r = vec_sub(vf_temp1_r, vf_temp4_r);
                vf_temp4_i = vec_sub(vf_temp1_i, vf_temp4_i);

                mov_to_vlr(0xFFFF);

                shuff_mode(2);
                *(vector float *)(&y[j / VPE_NUM]) = vec_shufw(2, vf_temp4_r, vf_temp4_i);
                shuff_mode(3);
                *OFF_FLOAT_PTR(&y[j / VPE_NUM], VPE_NUM) = vec_shufw(3, vf_temp4_r, vf_temp4_i);
                break;
            }

            vf_temp1_r = vec_sub(vec_muli(vf_temp2_i, vf_temp3_i), vec_muli(vf_temp2_r, vf_temp3_r));
            vf_temp1_i = vec_add(vec_muli(vf_temp2_r, vf_temp3_i), vec_muli(vf_temp2_i, vf_temp3_r));

            vf_temp4_r = vec_sub(vf_temp1_r, vf_temp4_r);
            vf_temp4_i = vec_sub(vf_temp1_i, vf_temp4_i);

            shuff_mode(2);
            *(vector float *)(&y[j / VPE_NUM]) = vec_shufw(2, vf_temp4_r, vf_temp4_i);
            shuff_mode(3);
            *OFF_FLOAT_PTR(&y[j / VPE_NUM], VPE_NUM) = vec_shufw(3, vf_temp4_r, vf_temp4_i);
        }
    }
    return 0;
}
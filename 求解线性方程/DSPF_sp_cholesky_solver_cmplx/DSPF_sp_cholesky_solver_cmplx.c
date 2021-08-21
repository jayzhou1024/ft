#include <stdio.h>
#include <string.h>
#include "M7002.h"
#include "c6x-c.h"
#include "vsip.h"
#include "DSPF_sp_cholesky_solver_cmplx.h"

/*定义cholesky_solver_cmplx函数，一共包含5个参数：计算长度Nrows，下三角矩阵L，中间向量y，常数项向量b，解向量x。*/
int DSPF_sp_cholesky_solver_cmplx(const int Nrows, lvector double *L, lvector double *y, lvector double *b, lvector double *x)
{
    int i, j, k, l;
    float sum_r, sum_i;
    float Li_r, Li_i, bi_r, bi_i, yi_r, yi_i;
    float buf_r[16], buf_i[16];
    int VPE_Setting;

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
    Li_r = *((float *)L);
    Li_i = *((float *)OFF_FLOAT_PTR(L, 1));
    bi_r = *((float *)b);
    bi_i = *((float *)OFF_FLOAT_PTR(b, 1));
    yi_r = (bi_r * Li_r + bi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
    yi_i = (bi_i * Li_r - bi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
    *((float *)y) = yi_r;
    *((float *)OFF_FLOAT_PTR(y, 1)) = yi_i;

    //求解L * y = b中的y向量，y向量为中间向量
    for (i = 1; i < Nrows; i++)
    {
        //初始化vf_temp1, vf_temp2
        vf_temp1_r = vec_svbcast(0.0f);
        vf_temp1_i = vec_svbcast(0.0f);
        vf_temp2_r = vec_svbcast(0.0f);
        vf_temp2_i = vec_svbcast(0.0f);

        startOfRow = (lvector double *)OFF_FLOAT_PTR(L, 2 * i * Nrows);

        //计算yi
        for (j = 0; j < cols16; j++)
        {
            if (j == cols16 - 1 && Nrows % VPE_NUM)
            {
                VPE_Setting = 0xFFFF;
                VPE_Setting >> (VPE_NUM - Nrows % VPE_NUM);
                mov_to_vlr(VPE_Setting);
                vf_temp2_r = vec_fcreal32(y[j], startOfRow[j]);
                vf_temp2_i = vec_fcimag32(y[j], startOfRow[j]);
                vf_temp1_r = vec_add(vf_temp1_r, vf_temp2_r);
                vf_temp1_i = vec_add(vf_temp1_i, vf_temp2_i);
                mov_to_vlr(0xFFFF);
                break;
            }
            vf_temp2_r = vec_fcreal32(y[j], startOfRow[j]);
            vf_temp2_i = vec_fcimag32(y[j], startOfRow[j]);
            vf_temp1_r = vec_add(vf_temp1_r, vf_temp2_r);
            vf_temp1_i = vec_add(vf_temp1_i, vf_temp2_i);
        }
        mov_to_svr_v16sf(vf_temp1_r);
        *(int *)buf_r = mov_from_svr0();
        *(int *)(buf_r + 1) = mov_from_svr1();
        *(int *)(buf_r + 2) = mov_from_svr2();
        *(int *)(buf_r + 3) = mov_from_svr3();
        *(int *)(buf_r + 4) = mov_from_svr4();
        *(int *)(buf_r + 5) = mov_from_svr5();
        *(int *)(buf_r + 6) = mov_from_svr6();
        *(int *)(buf_r + 7) = mov_from_svr7();
        *(int *)(buf_r + 8) = mov_from_svr8();
        *(int *)(buf_r + 9) = mov_from_svr9();
        *(int *)(buf_r + 10) = mov_from_svr10();
        *(int *)(buf_r + 11) = mov_from_svr11();
        *(int *)(buf_r + 12) = mov_from_svr12();
        *(int *)(buf_r + 13) = mov_from_svr13();
        *(int *)(buf_r + 14) = mov_from_svr14();
        *(int *)(buf_r + 15) = mov_from_svr15();
        sum_r = buf_r[0] + buf_r[1] + buf_r[2] + buf_r[3] + buf_r[4] + buf_r[5] + buf_r[6] + buf_r[7] + buf_r[8] + buf_r[9] + buf_r[10] + buf_r[11] + buf_r[12] + buf_r[13] + buf_r[14] + buf_r[15];
        mov_to_svr_v16sf(vf_temp1_i);
        *(int *)buf_i = mov_from_svr0();
        *(int *)(buf_i + 1) = mov_from_svr1();
        *(int *)(buf_i + 2) = mov_from_svr2();
        *(int *)(buf_i + 3) = mov_from_svr3();
        *(int *)(buf_i + 4) = mov_from_svr4();
        *(int *)(buf_i + 5) = mov_from_svr5();
        *(int *)(buf_i + 6) = mov_from_svr6();
        *(int *)(buf_i + 7) = mov_from_svr7();
        *(int *)(buf_i + 8) = mov_from_svr8();
        *(int *)(buf_i + 9) = mov_from_svr9();
        *(int *)(buf_i + 10) = mov_from_svr10();
        *(int *)(buf_i + 11) = mov_from_svr11();
        *(int *)(buf_i + 12) = mov_from_svr12();
        *(int *)(buf_i + 13) = mov_from_svr13();
        *(int *)(buf_i + 14) = mov_from_svr14();
        *(int *)(buf_i + 15) = mov_from_svr15();
        sum_i = buf_i[0] + buf_i[1] + buf_i[2] + buf_i[3] + buf_i[4] + buf_i[5] + buf_i[6] + buf_i[7] + buf_i[8] + buf_i[9] + buf_i[10] + buf_i[11] + buf_i[12] + buf_i[13] + buf_i[14] + buf_i[15];
        Li_r = *((float *)OFF_FLOAT_PTR(L, (i * Nrows + i) * 2));
        Li_i = *((float *)OFF_FLOAT_PTR(L, (i * Nrows + i) * 2 + 1));
        bi_r = *((float *)OFF_FLOAT_PTR(b, i * 2));
        bi_i = *((float *)OFF_FLOAT_PTR(b, i * 2 + 1));
        bi_r -= sum_r;
        bi_i -= sum_i;
        yi_r = (bi_r * Li_r + bi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        yi_i = (bi_i * Li_r - bi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        *((float *)OFF_FLOAT_PTR(y, 2 * i)) = yi_r;
        *((float *)OFF_FLOAT_PTR(y, 2 * i + 1)) = yi_i;
    }

    //求解U * x = y中的x向量，x向量即为解向量
    k = 0, l = 0;
    for (i = Nrows - 1; i >= 0; i--)
    {
        //求解xi
        Li_r = *(float *)OFF_FLOAT_PTR(L, 2 * i * Nrows + 2 * i);
        Li_i = *(float *)OFF_FLOAT_PTR(L, 2 * i * Nrows + 2 * i + 1);
        yi_r = *(float *)OFF_FLOAT_PTR(y, 2 * i);
        yi_i = *(float *)OFF_FLOAT_PTR(y, 2 * i + 1);
        buf_r[k] = (yi_r * Li_r + yi_i * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        buf_i[k] = (yi_i * Li_r - yi_r * Li_i) / (Li_r * Li_r + Li_i * Li_i);
        vf_temp3_r = vec_svbcast(buf_r[k]);
        vf_temp3_i = vec_svbcast(buf_i[k]);
        k++;
        if (k == VPE_NUM / 2)
        {
            mov_to_svr0(*(int *)buf_r);
            mov_to_svr1(*(int *)buf_i);
            mov_to_svr2(*(int *)(buf_r + 1));
            mov_to_svr3(*(int *)(buf_i + 1));
            mov_to_svr4(*(int *)(buf_r + 2));
            mov_to_svr5(*(int *)(buf_i + 2));
            mov_to_svr6(*(int *)(buf_r + 3));
            mov_to_svr7(*(int *)(buf_i + 3));
            mov_to_svr8(*(int *)(buf_r + 4));
            mov_to_svr9(*(int *)(buf_i + 4));
            mov_to_svr10(*(int *)(buf_r + 5));
            mov_to_svr11(*(int *)(buf_i + 5));
            mov_to_svr12(*(int *)(buf_r + 6));
            mov_to_svr13(*(int *)(buf_i + 6));
            mov_to_svr14(*(int *)(buf_r + 7));
            mov_to_svr15(*(int *)(buf_i + 7));
            *OFF_FLOAT_PTR(x, l) = mov_from_svr_v16sf();
            l++;
            k = 0;
        }

        //更新y
        startOfRow = (lvector double *)OFF_FLOAT_PTR(L, 2 * i * Nrows);
        for (j = 0; j < i; j += VPE_NUM / 2)
        {
            shuff_mode(0);
            vf_temp2_r = vec_shufw(0, *(vector float *)(&startOfRow[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&startOfRow[j / (VPE_NUM / 2)], 1));
            vf_temp4_r = vec_shufw(0, *(vector float *)(&y[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1));
            shuff_mode(1);
            vf_temp2_i = vec_shufw(1, *(vector float *)(&startOfRow[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&startOfRow[j / (VPE_NUM / 2)], 1));
            vf_temp4_i = vec_shufw(1, *(vector float *)(&y[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1));

            vf_temp1_r = vec_sub(vec_muli(vf_temp2_r, vf_temp3_r), vec_muli(vf_temp2_i, vf_temp3_i));
            vf_temp1_i = vec_add(vec_muli(vf_temp2_r, vf_temp3_i), vec_muli(vf_temp2_i, vf_temp3_r));
            
            vf_temp4_r = vec_sub(vf_temp1_r, vf_temp4_r);
            vf_temp4_i = vec_sub(vf_temp1_i, vf_temp4_i);

            shuff_mode(2);
            *(vector float *)(&y[j / (VPE_NUM / 2)]) = vec_shufw(2, vf_temp4_r, vf_temp4_i);
            shuff_mode(3);
            *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1) = vec_shufw(3, vf_temp4_r, vf_temp4_i);
        }
        if ((i + 1) % (VPE_NUM / 2))
        {
            VPE_Setting = 0xFFFF;
            VPE_Setting >> (VPE_NUM - (i + 1) % (VPE_NUM / 2));
            mov_to_vlr(VPE_Setting);
            j += VPE_NUM;
            shuff_mode(0);
            vf_temp2_r = vec_shufw(0, *(vector float *)(&startOfRow[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&startOfRow[j / (VPE_NUM / 2)], 1));
            vf_temp4_r = vec_shufw(0, *(vector float *)(&y[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1));
            shuff_mode(1);
            vf_temp2_i = vec_shufw(1, *(vector float *)(&startOfRow[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&startOfRow[j / (VPE_NUM / 2)], 1));
            vf_temp4_i = vec_shufw(1, *(vector float *)(&y[j / (VPE_NUM / 2)]), *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1));

            vf_temp1_r = vec_sub(vec_muli(vf_temp2_r, vf_temp3_r), vec_muli(vf_temp2_i, vf_temp3_i));
            vf_temp1_i = vec_add(vec_muli(vf_temp2_r, vf_temp3_i), vec_muli(vf_temp2_i, vf_temp3_r));
            
            vf_temp4_r = vec_sub(vf_temp1_r, vf_temp4_r);
            vf_temp4_i = vec_sub(vf_temp1_i, vf_temp4_i);

            shuff_mode(2);
            *(vector float *)(&y[j / (VPE_NUM / 2)]) = vec_shufw(2, vf_temp4_r, vf_temp4_i);
            shuff_mode(3);
            *OFF_FLOAT_PTR(&y[j / (VPE_NUM / 2)], 1) = vec_shufw(3, vf_temp4_r, vf_temp4_i);
            mov_to_vlr(0xFFFF);
        }
    }
    if (k)
    {
        j = 0;
        while (j != k)
        {
            mov_to_svr0(*(int *)(buf_r + j));
            mov_to_svr1(*(int *)(buf_i + j));
            *(OFF_FLOAT_PTR(x, j + l)) = mov_from_svr_v16sf();
            j++;
        }
    }
    return 0;
}
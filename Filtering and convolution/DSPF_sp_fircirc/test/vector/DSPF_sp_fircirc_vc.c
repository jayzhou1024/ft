
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include "c6x-c.h" 
#include "M7002.h"

void DSPF_sp_fircirc_vc4(
    vector float *x,
    float * h,
    vector float *r,
    int index,
    int csize,
    int nh,
    int nr
){
     int i,j,k;
    /* csize == 1 || csize == 2 时，记录x */
    /* x相关参数 */
    float* ptr_x = (float*)x;
    vector float* x_addr;
    vector float temp_vx_0_15, temp_vx_1_16, temp_vx_2_17, temp_vx_3_18, temp_vx;
    /* h相关参数 */
    vector float temp_vh_0, temp_vh_1, temp_vh_2, temp_vh_3, temp_h_x_0, temp_h_x_1;
    vector float *x0_offset, *x1_offset;

    int h0_x_offset, h1_x_offset;
    vector float temp_vr, temp_vr_index_1, temp_vr_index_0;
    /* 在栈开一个32 *4的空间 */
    lvector double db_space;
    vector float *temp_vx_0_15_db = (vector float *)(&db_space);
    vector float *temp_vx_16_31_db = temp_vx_0_15_db + 1;
    float* f_space = (float*)(&db_space);
    temp_vx_16_31_db[0] = vec_svbcast((float)0);

    int block_length = 1 << (csize - 1);
    int mod = block_length - 1;

    if (csize == 1) {      /* csize = 1   buffer = 1 index不影响x取值*/
        float x_0;
        mov_to_svr_v16sf(x[0]);    /*取x[0]并广播*/
        *(int *)(&x_0) = mov_from_svr0(); 
        temp_vx = vec_svbcast(x_0);
        for ( i = 0; i < nh; i += 2) {
            temp_vh_0 = vec_svbcast(h[i]);
            temp_vh_1 = vec_svbcast(h[i + 1]);
            for (j = 0; j < nr;j += 32) {
                temp_vr = vec_ld(j, r);
                if (!i) {
                    temp_vr = vec_svbcast((float)0);
                }
                temp_vr = vec_mula(temp_vh_0, temp_vx, temp_vr);
                temp_vr = vec_mula(temp_vh_1, temp_vx, temp_vr);
                vec_st(temp_vr, j, r);
            }
        }
    } else if (csize == 2) {    /* csize = 2   buffer = 2 index只分奇偶*/
        double x_0_1;
        lvector double vx_0_1;
        mov_to_svr_v16sf(x[0]);   
        if (!(index & 1)) {
            *(int *)(&x_0_1) = mov_from_svr0();
            *((int *)(&x_0_1) + 1) = mov_from_svr1();
        } else {
            *(int *)(&x_0_1) = mov_from_svr1();
            *((int *)(&x_0_1) + 1) = mov_from_svr0();
        }
        vx_0_1 = vec_svbcast2(x_0_1);
        vec_stm16(vx_0_1, 0, &vx_0_1);
        temp_vx_0_15 = vec_ld(0, (vector float*)(&vx_0_1));
        temp_vx_1_16 = vec_ld(1, (vector float*)(&vx_0_1));
        for ( i = 0; i < nh; i += 2) {
            temp_vh_0 = vec_svbcast(h[i]);
            temp_vh_1 = vec_svbcast(h[i + 1]);
            for (j = 0; j < nr;j += 16) {
                temp_vr = vec_ld(j,r);
                if (!i) {
                    temp_vr = vec_svbcast((float)0);
                }
                temp_vr = vec_mula(temp_vh_0, temp_vx_0_15, temp_vr);
                temp_vr = vec_mula(temp_vh_1, temp_vx_1_16, temp_vr);
  				vec_st(temp_vr, j, r);
            }
        }
    } else if (csize == 3) {   /* csize = 3   buffer = 4 */
    	temp_vx = x[0];
        vec_st(temp_vx, 0, temp_vx_0_15_db);  /* 这段可以软流水 */
        vec_st(temp_vx, 4, temp_vx_0_15_db);
        vec_st(temp_vx, 8, temp_vx_0_15_db);
        vec_st(temp_vx, 12, temp_vx_0_15_db);
        vec_st(temp_vx, 16, temp_vx_0_15_db);
        temp_vx_0_15 = vec_ld((index & mod), temp_vx_0_15_db);
        temp_vx_1_16 = vec_ld((index + 1) & mod, temp_vx_0_15_db);
        temp_vx_2_17 = vec_ld((index + 2) & mod, temp_vx_0_15_db);
        temp_vx_3_18 = vec_ld((index + 3) & mod, temp_vx_0_15_db);
        /* 根据index */
        int flag = 0;
        for ( i = 0; i < nh; i += 4) {
            temp_vh_0 = vec_svbcast(h[i]);
            temp_vh_1 = vec_svbcast(h[i + 1]);
            if (nh - i > 2) {
                temp_vh_2 = vec_svbcast(h[i + 2]);
                temp_vh_3 = vec_svbcast(h[i + 3]);
                flag = 1;
            } else {
                flag = 0;
            }
            for (j = 0; j < nr;j += 16) {
                temp_vr = vec_ld(j,r);
                if (!i) {
                    temp_vr = vec_svbcast((float)0);
                }
                temp_vr = vec_mula(temp_vh_0, temp_vx_0_15, temp_vr);
                temp_vr = vec_mula(temp_vh_1, temp_vx_1_16, temp_vr);
                if (flag) {
                    temp_vr = vec_mula(temp_vh_2, temp_vx_2_17, temp_vr);
                    temp_vr = vec_mula(temp_vh_3, temp_vx_3_18, temp_vr);
                }
                vec_st(temp_vr, j, r);
            }
        }
    } else if (csize == 4) {  /* csize = 4   buffer = 8 */
        temp_vx = x[0];
        vec_st(temp_vx, 0, temp_vx_0_15_db);  
        vec_st(temp_vx, 8, temp_vx_0_15_db);
        vec_st(temp_vx, 16, temp_vx_0_15_db);
        for (i = 0; i < nh; i += 2) {
            h0_x_offset = (index + i) & mod;
            h1_x_offset = (index + i + 1) & mod;
            temp_vh_0 = vec_svbcast(h[i]);
            temp_vh_1 = vec_svbcast(h[i + 1]);
            temp_vx_0_15 = vec_ld(h0_x_offset, temp_vx_0_15_db);
            temp_vx_1_16 = vec_ld(h1_x_offset, temp_vx_0_15_db);
            temp_vx_0_15 = vec_muli(temp_vh_0, temp_vx_0_15);
            temp_vx_1_16 = vec_muli(temp_vh_1, temp_vx_1_16);
            for (j = 0; j < nr; j += 16) {
                temp_vr = vec_ld(j, r);
                if (!i) {
                    temp_vr = vec_svbcast((float)0);
                }
                temp_vr = vec_add(temp_vx_0_15, temp_vr);
                temp_vr = vec_add(temp_vx_1_16, temp_vr);
                vec_st(temp_vr, j, r);
            }
        }
    }
      /* block_len > 16的方案：不足16的倍数补齐再计算 */
     else if (csize > 4) {
         int diff_hoff_bl;
         vector float* ptr_temp_x;
         for ( i = 0; i < nh;i += 2) {
            temp_vh_0 = vec_svbcast(h[i]);
            temp_vh_1 = vec_svbcast(h[i + 1]);
            h0_x_offset = (i + index)&mod;
            for ( j = 0; j < nr; j += 16) {
                /* h_0 */
                x_addr = (vector float*)(ptr_x + h0_x_offset);
                diff_hoff_bl = block_length - h0_x_offset;
                if (diff_hoff_bl > 16) { /* 直接取vx计算 */
                    temp_vx_0_15 = vec_ld(0, x_addr);
                    temp_vx_1_16 = vec_ld(1, x_addr);
                    h0_x_offset += 16;
                } else if (diff_hoff_bl == 16) {  /* h_0到达边界，h_1需要额外取x[0] */
                    temp_vx_0_15 = vec_ld(0, x_addr);
                    temp_vx_0_15_db[0] = vec_ld(1, x_addr);
                    ptr_temp_x = (vector float*)((float*)temp_vx_0_15_db + 15);
                    ptr_temp_x[0] = vec_ld(0, x);
                    temp_vx_1_16 = temp_vx_0_15_db[0];
                    h0_x_offset = 0;
                } else { /* h_0越界补齐，h_1是否越界无所谓，取temp_vx_0_15_db的1_16 */
                    temp_vx_0_15_db[0] = vec_ld(0,(vector float*)(ptr_x + h0_x_offset));
                    ptr_temp_x = (vector float*)((float*)temp_vx_0_15_db + diff_hoff_bl);
                    ptr_temp_x[0] = vec_ld(0, x);
                    temp_vx_0_15 = temp_vx_0_15_db[0];
                    temp_vx_1_16 = vec_ld(1, temp_vx_0_15_db);
                    h0_x_offset = 16 - (diff_hoff_bl);
                }
                    temp_vr = vec_ld(j, r);
                    if (!i) {
                        temp_vr = vec_svbcast((float)0); 
                    }
                    temp_vr = vec_mula(temp_vh_0, temp_vx_0_15, temp_vr);
                    temp_vr = vec_mula(temp_vh_1, temp_vx_1_16, temp_vr);
                    vec_st(temp_vr, j, r);
            }
         }
    }
}
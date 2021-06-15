#include <math.h>
#include <string.h>

#include "DSPF_sp_qrd_cn.h"

/*
version6
重构代码 不传转置 与论文中的方法对应
*/

//更新uv、R主对角元?
void update_uv_R(vector float *v, float *u, float alpha) {
  vector float vtmp;
  vtmp = vec_svbcast(alpha);
  // update uv u[col] = R[col + col * Ncols] + alpha
  u[0] = u[0] + alpha;

  mov_to_vlr(0x0001);
  // update R   R[col + col * Ncols] = -alpha;
  v[0] = vec_sub(vtmp, v[0]);
  mov_to_vlr(0xFFFF);
}

float reduce_16(vector float *v) {
  float array[16];
  M7002_datatrans(v, array, 64);
  float res = 0;
  res = array[0] + array[1] + array[2] + array[3] + array[4] + array[5] +
        array[6] + array[7] + array[8] + array[9] + array[10] + array[11] +
        array[12] + array[13] + array[14] + array[15];

  return res;
}

//计算第col列的模长，顺便将处理列的值存入u中，随后将处理列清0
float norm2(vector float *v, float *u, int rows, int Ncols) {
  int i;

  volatile vector float vzero;
  volatile vector float sum;
  volatile float res;
  vzero = vec_svbcast(0.0f);
  sum = vzero;

  vector float *vtmp = v;

  M7002_datatrans_index(v, u, rows, 1, (Ncols - 1) * 4);

  mov_to_vlr(0x0001);
  for (i = 0; i < rows; i++) {
    sum = vec_mula(vtmp[0], vtmp[0], sum);
    vtmp = (vector float *)((float *)vtmp + Ncols);
  }
  vtmp = v;
  for (i = 0; i < rows; i++) {
    vtmp[0] = vec_muli(vtmp[0], vzero);
    vtmp = (vector float *)((float *)vtmp + Ncols);
  }
  mov_to_vlr(0xffff);
  vmemcpy(&res, sum, 4);
  return res;
}

// update_r(tmpp,sum_v, u, Nvecs_r, shift_r, Nrows - col, Ncols, scale);
void update_r(vector float *v1, vector float *sum, float *u, int vBlocks,
              int shift, int rows, int Ncols, float scale) {
  int i, j;
  int len = 16 - shift;
  
  volatile vector float sum1_1, sum1_2, sum1_3;
  volatile vector float cast;
  volatile vector float v_scale;
  v_scale = vec_svbcast(scale);

  sum1_1 = vec_svbcast(0.0f);
  for (i = 0; i < vBlocks; i++)
    sum[i] = sum1_1;

  shift = 0xffff >> shift;

  vector float *v = v1;
  //算sum
  for (i = 0; i < rows; i++) {
    //下一行
    cast = vec_svbcast(u[i]);
    for (j=0; j < vBlocks - 1; j++) {
      sum[j] = vec_mula(v1[j], cast, sum[j]);
    }
    mov_to_vlr(shift);
    sum[j] = vec_mula(v1[j], cast, sum[j]);
    mov_to_vlr(0xFFFF);

    v1 = (vector float *)((float *)v1 + Ncols);
  }

  //print_sum(sum, len);
  // sum*scale
  for (j=0; j < vBlocks - 1; j++) {
    sum[j] = vec_muli(v_scale, sum[j]);
  }
  mov_to_vlr(shift);
  sum[j] = vec_muli(v_scale, sum[j]);
  mov_to_vlr(0xFFFF);

  //更新r
  v1 = v;
  mov_to_vlr(0xFFFF);  //bug fix 超级坑 O2会优化掉
  for (i = 0; i < rows; i++) {
    //下一行
    cast = vec_svbcast(u[i]);
    for (j=0; j < vBlocks - 1; j++) {
      v1[j] = vec_mulb(cast, sum[j], v1[j]);
      //printf("\npre:");
      //print_vec(&v1[j], 16);
      v1[j] = vec_neg(v1[j]);
      //printf("\naft:");
      //print_vec(&v1[j], 16);
    }
    mov_to_vlr(shift);
    v1[j] = vec_mulb(cast, sum[j], v1[j]);
    v1[j] = vec_neg(v1[j]);
    mov_to_vlr(0xFFFF);
    //print_sum(&v1[j], len);

    v1 = (vector float *)((float *)v1 + Ncols);
  }
}
void update_q(vector float *v1, vector float *v2, int vBlocks, int shift,
              int rows, int Nrows, float scale) {
  int i, j, in_loop, index, b1, b2, b3;
  volatile vector float sum1_1, sum1_2, sum1_3;

  volatile vector float tmp1_1, tmp1_2, tmp1_3; // r

  volatile vector float tmpu1, tmpu2, tmpu3, vzero; // u
  vzero = vec_svbcast(0.0f);
  volatile float res1, res2, res3, res4, res5, res6;

  in_loop = (vBlocks - 1) % 3;
  in_loop = vBlocks - 1 - in_loop;
  shift = 0xffff >> shift;

  for (i = 0; i < rows; i++) {
    sum1_1 = vzero;
    sum1_2 = vzero;
    sum1_3 = vzero;
    //下一行
    j = 0;
    for (; j < in_loop; j++) {
      b1 = j++;
      b2 = j++;
      b3 = j;
      tmpu1 = v2[b1];
      tmpu2 = v2[b2];
      tmpu3 = v2[b3];

      tmp1_1 = v1[b1];
      tmp1_2 = v1[b2];
      tmp1_3 = v1[b3];
      sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
      sum1_2 = vec_mula(tmp1_2, tmpu2, sum1_2);
      sum1_3 = vec_mula(tmp1_3, tmpu3, sum1_3);
    }
    for (; j < vBlocks - 1; j++) {
      sum1_1 = vec_mula(v1[j], v2[j], sum1_1);
    }
    mov_to_vlr(shift);
    sum1_1 = vec_mula(v1[j], v2[j], sum1_1);
    mov_to_vlr(0xFFFF);

    sum1_1 = vec_add(sum1_1, sum1_2);
    sum1_1 = vec_add(sum1_1, sum1_3);
    res1 = reduce_16(&sum1_1);
    // printf("%f \t ", res1);

    res1 *= scale;
    sum1_1 = vec_svbcast(res1);
    j = 0;
    for (; j < in_loop; j++) {

      b1 = j++;
      b2 = j++;
      b3 = j;
      tmpu1 = v2[b1];
      tmpu2 = v2[b2];
      tmpu3 = v2[b3];

      tmp1_1 = v1[b1];
      tmp1_2 = v1[b2];
      tmp1_3 = v1[b3];

      tmp1_1 = vec_mulb(tmpu1, sum1_1, tmp1_1);
      tmp1_2 = vec_mulb(tmpu2, sum1_1, tmp1_2);
      tmp1_3 = vec_mulb(tmpu3, sum1_1, tmp1_3);
      v1[b1] = vec_neg(tmp1_1);
      v1[b2] = vec_neg(tmp1_2);
      v1[b3] = vec_neg(tmp1_3);
    }
    for (; j < vBlocks - 1; j++) {
      v1[j] = vec_mulb(v2[j], sum1_1, v1[j]);
      v1[j] = vec_neg(v1[j]);
    }
    mov_to_vlr(shift);
    v1[j] = vec_mulb(v2[j], sum1_1, v1[j]);
    v1[j] = vec_neg(v1[j]);
    mov_to_vlr(0xFFFF);

    v1 = (vector float *)((float *)v1 + Nrows);
  }
}
int DSPF_sp_qrd(const int Nrows, const int Ncols, vector float *r,
                vector float *q, vector float *uv, vector float *sum_v) {

  volatile int row, col;
  int loop_count, shift_q, shift_r, vBlocks;
  float alpha, scale, scale_tmp, sum, diag;
  int Nvecs_q, Nvecs_r; // 处理的向量数
  float *u = (float *)calloc(Nrows, 4);
  vector float *tmpp;
  printf("\n op_sum:  ");
  if (Nrows <= Ncols) {
    loop_count = Nrows - 2;
  } else {
    loop_count = Ncols - 1;
  }
  for (col = 0; col <= loop_count; col++) {
    Nvecs_q = (Nrows + 15 - col) / 16;
    Nvecs_r = (Ncols + 15 - col - 1) / 16; //超坑bug 忘记减一
    shift_q = (16 - (Nrows - col) % 16) % 16;
    shift_r = (16 - (Ncols - col - 1) % 16) % 16;
    sum = norm2((vector float *)((float *)r + Ncols * col + col), u,
                Nrows - col, Ncols);
    printf("%f\t ", sum);
    //printf("\n round:%d>", col);
    if (sum != 0) {
      diag = u[0];
      alpha = sqrt(sum);
      if (diag >= 0) {
        alpha = -alpha;
      }
      update_uv_R((vector float *)((float *)r + Ncols * col + col), u, alpha);
      M7002_datatrans(u, uv, 4 * (Nrows - col));
      scale_tmp = alpha * (diag + alpha);

      if (scale_tmp != 0.0) {
        scale = 1 / scale_tmp;
        // printf("<<<scale %f>>>>> \t ", scale);

        tmpp = (vector float *)((float *)r + Ncols * col + col + 1);
        update_r(tmpp, sum_v, u, Nvecs_r, shift_r, Nrows - col, Ncols, scale);
        tmpp = (vector float *)((float *)q + col);
        update_q(tmpp, uv, Nvecs_q, shift_q, Nrows, Nrows, scale);
      } /* if (norm_sqr!=0) */
      // printf("\n");
    } /* if (sum!=0) */

  } /* for (col=0;col<=loop_count;col++) */
  free(u);
  return 0;
}

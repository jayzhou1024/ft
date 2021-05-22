#include <math.h>
#include <string.h>

#include "DSPF_sp_qrd_cn.h"

/*
version2
此时发现O2优化的问题，发现动态、静态地址分配的问题
循环展开，每6行一展开，每行内再按3个向量展开
*/
void part_op(int vBlock_index) {
  switch (vBlock_index) {
  case 0: {
    mov_to_vlr(0xFFFF);
    break;
  }
  case 1: {
    mov_to_vlr(0xFFFE);
    break;
  }
  case 2: {
    mov_to_vlr(0xFFFC);
    break;
  }
  case 3: {
    mov_to_vlr(0xFFF8);
    break;
  }
  case 4: {
    mov_to_vlr(0xFFF0);
    break;
  }
  case 5: {
    mov_to_vlr(0xFFE0);
    break;
  }
  case 6: {
    mov_to_vlr(0xFFC0);
    break;
  }
  case 7: {
    mov_to_vlr(0xFF80);
    break;
  }
  case 8: {
    mov_to_vlr(0xFF00);
    break;
  }
  case 9: {
    mov_to_vlr(0xFE00);
    break;
  }
  case 10: {
    mov_to_vlr(0xFC00);
    break;
  }
  case 11: {
    mov_to_vlr(0xF800);
    break;
  }
  case 12: {
    mov_to_vlr(0xF000);
    break;
  }
  case 13: {
    mov_to_vlr(0xE000);
    break;
  }
  case 14: {
    mov_to_vlr(0xC000);
    break;
  }
  case 15: {
    mov_to_vlr(0x8000);
    break;
  }
  }
}
void part_op_uv(int vBlock_index) {
  switch (vBlock_index) {
  case 15: {
    mov_to_vlr(0x8000);
    break;
  }
  case 14: {
    mov_to_vlr(0x4000);
    break;
  }
  case 13: {
    mov_to_vlr(0x2000);
    break;
  }
  case 12: {
    mov_to_vlr(0x1000);
    break;
  }
  case 11: {
    mov_to_vlr(0x0800);
    break;
  }
  case 10: {
    mov_to_vlr(0x0400);
    break;
  }
  case 9: {
    mov_to_vlr(0x0200);
    break;
  }
  case 8: {
    mov_to_vlr(0x0100);
    break;
  }
  case 7: {
    mov_to_vlr(0x0080);
    break;
  }
  case 6: {
    mov_to_vlr(0x0040);
    break;
  }
  case 5: {
    mov_to_vlr(0x0020);
    break;
  }
  case 4: {
    mov_to_vlr(0x0010);
    break;
  }
  case 3: {
    mov_to_vlr(0x0008);
    break;
  }
  case 2: {
    mov_to_vlr(0x0004);
    break;
  }
  case 1: {
    mov_to_vlr(0x0002);
    break;
  }
  case 0: {
    mov_to_vlr(0x0001);
    break;
  }
  }
}
//更新uv、R主对角元?  也可尝试用svr更新
void update_uv_R(vector float *v, vector float *uv, int vBlock_index,
                 float alpha) {
  vector float vtmp;
  vtmp = vec_svbcast(alpha);
  part_op_uv(vBlock_index);

  // update uv u[col] = R[col + col * Ncols] + alpha
  uv[0] = vec_add(uv[0], vtmp);

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

//计算第col列的模长，顺便更新一部分uv和R的�?
float norm2(vector float *v, vector float *uv, int vBlocks, int vBlock_index) {
  int i, loop, b1, b2;
  float res;

  volatile vector float vtmp, vzero, vtmp1, vtmp2;
  vtmp = vec_svbcast(0.0f);
  vzero = vtmp;
  vtmp1 = vtmp;
  vtmp2 = vtmp;

  part_op(vBlock_index);
  uv[0] = vec_muli(uv[0], vzero);
  uv[0] = vec_add(uv[0], v[0]);

  vtmp = vec_mula(v[0], v[0], vtmp);
  v[0] = vec_muli(v[0], vzero);
  mov_to_vlr(0xFFFF);

  loop = (vBlocks - 1) % 3;
  loop = vBlocks - loop;
  i = 1;
  for (; i < loop; i++) {
    //fixed
    b1 = i++;
    b2 = i++;

    vtmp = vec_mula(v[i], v[i], vtmp);
    vtmp1 = vec_mula(v[b1], v[b1], vtmp1);
    vtmp2 = vec_mula(v[b2], v[b2], vtmp2);

    uv[i] = v[i];
    uv[b1] = v[b1];
    uv[b2] = v[b2];

    v[i] = vzero;
    v[b1] = vzero;
    v[b2] = vzero;
  }
  for (; i < vBlocks; i++) {

    vtmp = vec_mula(v[i], v[i], vtmp);
    uv[i] = v[i];
    v[i] = vzero;
  }
  vtmp = vec_add(vtmp, vtmp1);
  vtmp = vec_add(vtmp, vtmp2);
  res = reduce_16(&vtmp);
  return res;
}

void update_qr(vector float *v1, vector float *v2, int vBlocks,
               int vBlock_index, int rows, int Nvecs, float scale) {
  int i, j, loop, in_loop, index;
  volatile vector float sum1_1, sum1_2, sum1_3;
  volatile vector float sum2_1, sum2_2, sum2_3;
  volatile vector float sum3_1, sum3_2, sum3_3;
  volatile vector float sum4_1, sum4_2, sum4_3;
  volatile vector float sum5_1, sum5_2, sum5_3;
  volatile vector float sum6_1, sum6_2, sum6_3;

  volatile vector float tmp1_1, tmp1_2, tmp1_3; // r
  volatile vector float tmp2_1, tmp2_2, tmp2_3;
  volatile vector float tmp3_1, tmp3_2, tmp3_3;
  volatile vector float tmp4_1, tmp4_2, tmp4_3;
  volatile vector float tmp5_1, tmp5_2, tmp5_3;
  volatile vector float tmp6_1, tmp6_2, tmp6_3;

  volatile vector float tmpu1, tmpu2, tmpu3, vzero; // u
  vzero = vec_svbcast(0.0f);
  volatile float res1, res2, res3, res4, res5, res6;

  loop = rows - rows % 6;
  //bug fixed
  in_loop = (vBlocks - 1) % 3;
  in_loop = vBlocks - in_loop;
  i = 0;
  for (; i < loop; i += 6) {
    sum1_1 = vzero;
    sum1_2 = vzero;
    sum1_3 = vzero;
    sum2_1 = vzero;
    sum2_2 = vzero;
    sum2_3 = vzero;
    sum3_1 = vzero;
    sum3_2 = vzero;
    sum3_3 = vzero;
    sum4_1 = vzero;
    sum4_2 = vzero;
    sum4_3 = vzero;
    sum5_1 = vzero;
    sum5_2 = vzero;
    sum5_3 = vzero;
    sum6_1 = vzero;
    sum6_2 = vzero;
    sum6_3 = vzero;
    tmpu1 = v2[0];

    index = i * Nvecs;
    tmp1_1 = v1[index];
    index += Nvecs;
    tmp2_1 = v1[index];
    index += Nvecs;
    tmp3_1 = v1[index];

    index += Nvecs;
    tmp4_1 = v1[index];
    index += Nvecs;
    tmp5_1 = v1[index];
    index += Nvecs;
    tmp6_1 = v1[index];
    
    part_op(vBlock_index);
    sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
    sum2_1 = vec_mula(tmp2_1, tmpu1, sum2_1);
    sum3_1 = vec_mula(tmp3_1, tmpu1, sum3_1);

    sum4_1 = vec_mula(tmp4_1, tmpu1, sum4_1);
    sum5_1 = vec_mula(tmp5_1, tmpu1, sum5_1);
    sum6_1 = vec_mula(tmp6_1, tmpu1, sum6_1);
    mov_to_vlr(0xFFFF);

    for (j = 1; j < in_loop; j++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j++];
      tmpu2 = v2[j++];
      tmpu3 = v2[j];

      tmp1_1 = v1[index];
      tmp1_2 = v1[index + 1];
      tmp1_3 = v1[index + 2];

      index += Nvecs;
      tmp2_1 = v1[index];
      tmp2_2 = v1[index + 1];
      tmp2_3 = v1[index + 2];

      index += Nvecs;
      tmp3_1 = v1[index];
      tmp3_2 = v1[index + 1];
      tmp3_3 = v1[index + 2];

      index += Nvecs;
      tmp4_1 = v1[index];
      tmp4_2 = v1[index + 1];
      tmp4_3 = v1[index + 2];

      index += Nvecs;
      tmp5_1 = v1[index];
      tmp5_2 = v1[index + 1];
      tmp5_3 = v1[index + 2];

      index += Nvecs;
      tmp6_1 = v1[index];
      tmp6_2 = v1[index + 1];
      tmp6_3 = v1[index + 2];

      sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
      sum1_2 = vec_mula(tmp1_2, tmpu2, sum1_2);
      sum1_3 = vec_mula(tmp1_3, tmpu3, sum1_3);

      sum2_1 = vec_mula(tmp2_1, tmpu1, sum2_1);
      sum2_2 = vec_mula(tmp2_2, tmpu2, sum2_2);
      sum2_3 = vec_mula(tmp2_3, tmpu3, sum2_3);

      sum3_1 = vec_mula(tmp3_1, tmpu1, sum3_1);
      sum3_2 = vec_mula(tmp3_2, tmpu2, sum3_2);
      sum3_3 = vec_mula(tmp3_3, tmpu3, sum3_3);

      sum4_1 = vec_mula(tmp4_1, tmpu1, sum4_1);
      sum4_2 = vec_mula(tmp4_2, tmpu2, sum4_2);
      sum4_3 = vec_mula(tmp4_3, tmpu3, sum4_3);

      sum5_1 = vec_mula(tmp5_1, tmpu1, sum5_1);
      sum5_2 = vec_mula(tmp5_2, tmpu2, sum5_2);
      sum5_3 = vec_mula(tmp5_3, tmpu3, sum5_3);

      sum6_1 = vec_mula(tmp6_1, tmpu1, sum6_1);
      sum6_2 = vec_mula(tmp6_2, tmpu2, sum6_2);
      sum6_3 = vec_mula(tmp6_3, tmpu3, sum6_3);
    }
    for (; j < vBlocks; j++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j];

      tmp1_1 = v1[index];
      index += Nvecs;
      tmp2_1 = v1[index];
      index += Nvecs;
      tmp3_1 = v1[index];

      index += Nvecs;
      tmp4_1 = v1[index];
      index += Nvecs;
      tmp5_1 = v1[index];
      index += Nvecs;
      tmp6_1 = v1[index];

      sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
      sum2_1 = vec_mula(tmp2_1, tmpu1, sum2_1);
      sum3_1 = vec_mula(tmp3_1, tmpu1, sum3_1);

      sum4_1 = vec_mula(tmp4_1, tmpu1, sum4_1);
      sum5_1 = vec_mula(tmp5_1, tmpu1, sum5_1);
      sum6_1 = vec_mula(tmp6_1, tmpu1, sum6_1);
    }
    sum1_1 = vec_add(sum1_1, sum1_2);
    sum1_1 = vec_add(sum1_1, sum1_3);
    res1 = reduce_16(&sum1_1);
    //printf("%f \t ",res1);

    sum2_1 = vec_add(sum2_1, sum2_2);
    sum2_1 = vec_add(sum2_1, sum2_3);
    res2 = reduce_16(&sum2_1);
    //printf("%f \t ",res2);

    sum3_1 = vec_add(sum3_1, sum3_2);
    sum3_1 = vec_add(sum3_1, sum3_3);
    res3 = reduce_16(&sum3_1);
    //printf("%f \t ",res3);

    sum4_1 = vec_add(sum4_1, sum4_2);
    sum4_1 = vec_add(sum4_1, sum4_3);
    res4 = reduce_16(&sum4_1);
    //printf("%f \t ",res4);

    sum5_1 = vec_add(sum5_1, sum5_2);
    sum5_1 = vec_add(sum5_1, sum5_3);
    res5 = reduce_16(&sum5_1);
    //printf("%f \t ",res5);

    sum6_1 = vec_add(sum6_1, sum6_2);
    sum6_1 = vec_add(sum6_1, sum6_3);
    res6 = reduce_16(&sum6_1);
    //printf("%f \t ",res6);

    res1 *= scale;
    sum1_1 = vec_svbcast(res1);
    res2 *= scale;
    sum2_1 = vec_svbcast(res2);
    res3 *= scale;
    sum3_1 = vec_svbcast(res3);
    res4 *= scale;
    sum4_1 = vec_svbcast(res4);
    res5 *= scale;
    sum5_1 = vec_svbcast(res5);
    res6 *= scale;
    sum6_1 = vec_svbcast(res6);

    index = i * Nvecs;
    part_op(vBlock_index);
    tmpu1 = v2[0];
    tmp1_1 = v1[index];
    tmp2_1 = v1[index + Nvecs];
    tmp3_1 = v1[index + Nvecs * 2];
    tmp1_1 = vec_mulb(tmpu1, sum1_1, tmp1_1);
    tmp2_1 = vec_mulb(tmpu1, sum2_1, tmp2_1);
    tmp3_1 = vec_mulb(tmpu1, sum3_1, tmp3_1);
    v1[index] = vec_neg(tmp1_1);
    index += Nvecs;
    v1[index] = vec_neg(tmp2_1);
    index += Nvecs;
    v1[index] = vec_neg(tmp3_1);
    index += Nvecs;

    tmp4_1 = v1[index];
    tmp5_1 = v1[index + Nvecs];
    tmp6_1 = v1[index + Nvecs * 2];
    tmp4_1 = vec_mulb(tmpu1, sum4_1, tmp4_1);
    tmp5_1 = vec_mulb(tmpu1, sum5_1, tmp5_1);
    tmp6_1 = vec_mulb(tmpu1, sum6_1, tmp6_1);
    v1[index] = vec_neg(tmp4_1);
    index += Nvecs;
    v1[index] = vec_neg(tmp5_1);
    index += Nvecs;
    v1[index] = vec_neg(tmp6_1);
    mov_to_vlr(0xFFFF);

    for (j = 1; j < in_loop; j ++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j++];
      tmpu2 = v2[j++];
      tmpu3 = v2[j];

      tmp1_1 = v1[index];
      tmp1_2 = v1[index + 1];
      tmp1_3 = v1[index + 2];
      tmp1_1 = vec_mulb(tmpu1, sum1_1, tmp1_1);
      tmp1_2 = vec_mulb(tmpu2, sum1_1, tmp1_2);
      tmp1_3 = vec_mulb(tmpu3, sum1_1, tmp1_3);
      v1[index] = vec_neg(tmp1_1);
      v1[index + 1] = vec_neg(tmp1_2);
      v1[index + 2] = vec_neg(tmp1_3);

      index += Nvecs;
      tmp2_1 = v1[index];
      tmp2_2 = v1[index + 1];
      tmp2_3 = v1[index + 2];
      tmp2_1 = vec_mulb(tmpu1, sum2_1, tmp2_1);
      tmp2_2 = vec_mulb(tmpu2, sum2_1, tmp2_2);
      tmp2_3 = vec_mulb(tmpu3, sum2_1, tmp2_3);
      v1[index] = vec_neg(tmp2_1);
      v1[index + 1] = vec_neg(tmp2_2);
      v1[index + 2] = vec_neg(tmp2_3);

      index += Nvecs;
      tmp3_1 = v1[index];
      tmp3_2 = v1[index + 1];
      tmp3_3 = v1[index + 2];
      tmp3_1 = vec_mulb(tmpu1, sum3_1, tmp3_1);
      tmp3_2 = vec_mulb(tmpu2, sum3_1, tmp3_2);
      tmp3_3 = vec_mulb(tmpu3, sum3_1, tmp3_3);
      v1[index] = vec_neg(tmp3_1);
      v1[index + 1] = vec_neg(tmp3_2);
      v1[index + 2] = vec_neg(tmp3_3);

      index += Nvecs;
      tmp4_1 = v1[index];
      tmp4_2 = v1[index + 1];
      tmp4_3 = v1[index + 2];
      tmp4_1 = vec_mulb(tmpu1, sum4_1, tmp4_1);
      tmp4_2 = vec_mulb(tmpu2, sum4_1, tmp4_2);
      tmp4_3 = vec_mulb(tmpu3, sum4_1, tmp4_3);
      v1[index] = vec_neg(tmp4_1);
      v1[index + 1] = vec_neg(tmp4_2);
      v1[index + 2] = vec_neg(tmp4_3);

      index += Nvecs;
      tmp5_1 = v1[index];
      tmp5_2 = v1[index + 1];
      tmp5_3 = v1[index + 2];
      tmp5_1 = vec_mulb(tmpu1, sum5_1, tmp5_1);
      tmp5_2 = vec_mulb(tmpu2, sum5_1, tmp5_2);
      tmp5_3 = vec_mulb(tmpu3, sum5_1, tmp5_3);
      v1[index] = vec_neg(tmp5_1);
      v1[index + 1] = vec_neg(tmp5_2);
      v1[index + 2] = vec_neg(tmp5_3);

      index += Nvecs;
      tmp6_1 = v1[index];
      tmp6_2 = v1[index + 1];
      tmp6_3 = v1[index + 2];
      tmp6_1 = vec_mulb(tmpu1, sum6_1, tmp6_1);
      tmp6_2 = vec_mulb(tmpu2, sum6_1, tmp6_2);
      tmp6_3 = vec_mulb(tmpu3, sum6_1, tmp6_3);
      v1[index] = vec_neg(tmp6_1);
      v1[index + 1] = vec_neg(tmp6_2);
      v1[index + 2] = vec_neg(tmp6_3);
    }
    for (; j < vBlocks; j++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j];

      tmp1_1 = v1[index];
      tmp2_1 = v1[index + Nvecs];
      tmp3_1 = v1[index + Nvecs * 2];
      tmp1_1 = vec_mulb(tmpu1, sum1_1, tmp1_1);
      tmp2_1 = vec_mulb(tmpu1, sum2_1, tmp2_1);
      tmp3_1 = vec_mulb(tmpu1, sum3_1, tmp3_1);
      v1[index] = vec_neg(tmp1_1);
      v1[index + Nvecs] = vec_neg(tmp2_1);
      v1[index + Nvecs * 2] = vec_neg(tmp3_1);
      index = index + 3 * Nvecs;

      tmp4_1 = v1[index];
      tmp5_1 = v1[index + Nvecs];
      tmp6_1 = v1[index + Nvecs * 2];
      tmp4_1 = vec_mulb(tmpu1, sum4_1, tmp4_1);
      tmp5_1 = vec_mulb(tmpu1, sum5_1, tmp5_1);
      tmp6_1 = vec_mulb(tmpu1, sum6_1, tmp6_1);
      v1[index] = vec_neg(tmp4_1);
      v1[index + Nvecs] = vec_neg(tmp5_1);
      v1[index + Nvecs * 2] = vec_neg(tmp6_1);
    }
  }
  //余下不能6行操作部分
  for (; i < rows; i++) {
    sum1_1 = vzero;
    sum1_2 = vzero;
    sum1_3 = vzero;
    index = i * Nvecs;
    tmp1_1=v1[index];
    tmpu1=v2[0];
    part_op(vBlock_index);
    sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
    mov_to_vlr(0xFFFF);

    for (j = 1; j < in_loop; j++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j++];
      tmpu2 = v2[j++];
      tmpu3 = v2[j];
      tmp1_1 = v1[index];
      tmp1_2 = v1[index + 1];
      tmp1_3 = v1[index + 2];
      sum1_1 = vec_mula(tmp1_1, tmpu1, sum1_1);
      sum1_2 = vec_mula(tmp1_2, tmpu2, sum1_2);
      sum1_3 = vec_mula(tmp1_3, tmpu3, sum1_3);
    }
    index = j + i * Nvecs;
    for (; j < vBlocks; j++) {
      sum1_1 = vec_mula(v1[index++], v2[j], sum1_1);
    }
    sum1_1 = vec_add(sum1_1, sum1_2);
    sum1_1 = vec_add(sum1_1, sum1_3);
    res1 = reduce_16(&sum1_1);
    //printf("%f \t ",res1);
    
    res1 *= scale;
    sum1_1 = vec_svbcast(res1);
    sum2_1=sum1_1;
    sum3_1=sum1_1;

    index = i * Nvecs;
    part_op(vBlock_index);
    v1[index] = vec_mulb(v2[0], sum1_1, v1[index]);
    v1[index] = vec_neg(v1[index]);
    mov_to_vlr(0xFFFF);
    for (j = 1; j < in_loop; j ++) {
      index = j + i * Nvecs;
      tmpu1 = v2[j++];
      tmpu2 = v2[j++];
      tmpu3 = v2[j];
      tmp1_1 = v1[index];
      tmp1_2 = v1[index + 1];
      tmp1_3 = v1[index + 2];

      tmp1_1 = vec_mulb(tmpu1, sum1_1, tmp1_1);
      tmp1_2 = vec_mulb(tmpu2, sum2_1, tmp1_2);
      tmp1_3 = vec_mulb(tmpu3, sum3_1, tmp1_3);
      v1[index] = vec_neg(tmp1_1);
      v1[index + 1] = vec_neg(tmp1_2);
      v1[index + 2] = vec_neg(tmp1_3);
    }

    for (; j < vBlocks; j++) {
      index = j + i * Nvecs;
      v1[index] = vec_mulb(v2[j], sum1_1, v1[index]);
      v1[index] = vec_neg(v1[index]);
    }
  }
}
int DSPF_sp_qrd(const int Nrows, const int Ncols, vector float *r,
                vector float *q, vector float *uv) {

  int row, col, i, loop_count, num, vBlock_index, vBlocks,rows;
  volatile float alpha, scale, scale_tmp, sum, diag;
  num = Nrows * Ncols;
  int Nvecs = Nrows / 16; // R的向量数
  int Ri = -1;            // Vec matrix_index

  //printf("\n op_sum:  ");
  if (Nrows <= Ncols) {
    loop_count = Nrows - 2;
  } else {
    loop_count = Ncols - 1;
  }
  for (col = 0; col <= loop_count; col++) {

    Ri = (int)col * 0.0625;
    sum = 0;
    vBlock_index = col % 16;
    sum = norm2(&r[col * Nvecs + Ri], &uv[Ri], Nvecs - Ri, vBlock_index);
    //printf("round:%d> %f\t ",col, sum);
    if (sum != 0) {
      vmemcpy(&diag, (float *)(&uv[Ri]) + vBlock_index, 4);

      alpha = sqrt(sum);
      if (diag >= 0) {
        alpha = -alpha;
      }
      update_uv_R(&r[col * Nvecs + Ri], &uv[Ri], vBlock_index, alpha);
      scale_tmp = alpha * (diag + alpha);

      if (scale_tmp != 0.0) {
        scale = 1 / scale_tmp;
        update_qr(&r[(col + 1) * Nvecs + Ri], &uv[Ri], Nvecs - Ri, vBlock_index,
                  Ncols - col - 1, Nvecs, scale);
        update_qr(&q[Ri], &uv[Ri], Nvecs - Ri, vBlock_index, Nrows, Nvecs,
                  scale);

      } /* if (norm_sqr!=0) */   
      //printf("\n"); 
    }   /* if (sum!=0) */

  } /* for (col=0;col<=loop_count;col++) */

  return 0;
}

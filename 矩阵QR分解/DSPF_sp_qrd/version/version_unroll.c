#include <math.h>
#include <string.h>

#include "DSPF_sp_qrd_cn.h"

/*
version3
循环展开,计算访存解耦 完全展开，问题较多
*/
//将下标小于vBlock_index的VPE关闭
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
//关闭vBlock_index以外的VPE
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

//计算R第col列的模长，顺便更新一部分uv和R的?
float norm2(vector float *v, vector float *uv, int vBlocks, int vBlock_index) {
  int i, loop, b1, b2;
  float res;

  vector float vtmp, vzero, vtmp1, vtmp2;
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
    b1 = ++i;
    b2 = ++i;

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
//更新Q 、R矩阵 /* R=Q1*R */  /* Q=A*Q1 */
void update_QR(vector float *r, vector float *uv, vector float *q, int col,
               int Ncols, int Nrows, float scale, int Nvecs, int Ri,
               int vBlock_index) {
  int i, j, k, index;
  int vBlocks = Nvecs - Ri;
  float res;
  vector float sum1, sum2, sum3, vzero;
  vzero = vec_svbcast(0.0f);
  sum1 = vzero;
  sum2 = vzero;
  sum3 = vzero;

  if (vBlocks <= 3) {
    if (vBlocks == 3) {
      vector float tmp1_0, tmp1_1, tmp1_2;
      vector float tmp2_0, tmp2_1, tmp2_2;
      tmp2_0 = uv[0];
      tmp2_1 = uv[1];
      tmp2_2 = uv[2];

      j = 0; /* R=Q1*R */
      for (i = col + 1; i < Ncols; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(r[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);

        tmp1_1 = r[j + 1];
        tmp1_2 = r[j + 2];

        sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
        sum2 = vec_mula(tmp1_2, tmp2_2, sum2);

        sum1 = vec_add(sum1, sum2);
        res = reduce_16(&sum1);
        res *= scale;

        sum1 = vec_svbcast(res);
        sum2 = sum1;
        part_op(vBlock_index);
        r[j] = vec_mulb(tmp2_0, sum1, r[j]);
        r[j] = vec_neg(r[j]);
        mov_to_vlr(0xFFFF);
        tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
        tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);

        r[j + 1] = vec_neg(tmp1_1);
        r[j + 2] = vec_neg(tmp1_2);

        j += Nvecs;
        sum1 = vzero;
        sum2 = vzero;
      }
      j = 0; /* Q=A*Q1 */
      for (i = 0; i < Nrows; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(q[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);

        tmp1_1 = q[j + 1];
        tmp1_2 = q[j + 2];

        sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
        sum2 = vec_mula(tmp1_2, tmp2_2, sum2);

        sum1 = vec_add(sum1, sum2);
        res = reduce_16(&sum1);
        res *= scale;

        sum1 = vec_svbcast(res);
        sum2 = sum1;

        part_op(vBlock_index);
        q[j] = vec_mulb(tmp2_0, sum1, q[j]);
        q[j] = vec_neg(q[j]);
        mov_to_vlr(0xFFFF);

        tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
        tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);

        q[j + 1] = vec_neg(tmp1_1);
        q[j + 2] = vec_neg(tmp1_2);

        j += Nvecs;
        sum1 = vzero;
        sum2 = vzero;
      }
    } else if (vBlocks == 2) {
      vector float tmp1_0, tmp1_1;
      vector float tmp2_0, tmp2_1;
      tmp2_0 = uv[0];
      tmp2_1 = uv[1];

      j = 0; /* R=Q1*R */
      for (i = col + 1; i < Ncols; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(r[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);

        sum1 = vec_mula(r[j + 1], tmp2_1, sum1);
        res = reduce_16(&sum1);
        res *= scale;
        sum1 = vec_svbcast(res);

        part_op(vBlock_index);
        tmp1_0 = vec_mulb(tmp2_0, sum1, r[j]);
        r[j] = vec_neg(tmp1_0);
        mov_to_vlr(0xFFFF);

        tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
        r[j + 1] = vec_neg(tmp1_1);

        j += Nvecs;
        sum1 = vzero;
      }
      j = 0; /* Q=A*Q1 */
      for (i = 0; i < Nrows; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(q[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);

        sum1 = vec_mula(q[j + 1], tmp2_1, sum1);
        res = reduce_16(&sum1);
        res *= scale;

        sum1 = vec_svbcast(res);

        part_op(vBlock_index);
        tmp1_0 = vec_mulb(tmp2_0, sum1, q[j]);
        q[j] = vec_neg(tmp1_0);
        mov_to_vlr(0xFFFF);

        tmp1_1 = vec_mulb(tmp2_1, sum1, q[j + 1]);
        q[j + 1] = vec_neg(tmp1_1);

        j += Nvecs;
        sum1 = vzero;
      }

    } else {
      vector float tmp2_0, tmp1_0;
      tmp2_0 = uv[0];
      for (i = col + 1; i < Ncols; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(r[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);
        res = reduce_16(&sum1);
        res *= scale;

        sum1 = vec_svbcast(res);

        part_op(vBlock_index);
        tmp1_0 = vec_mulb(tmp2_0, sum1, r[j]);
        r[j] = vec_neg(tmp1_0);
        mov_to_vlr(0xFFFF);

        j += Nvecs;
        sum1 = vzero;
      }
      for (i = 0; i < Nrows; i++) {
        part_op(vBlock_index);
        sum1 = vec_mula(q[j], tmp2_0, sum1);
        mov_to_vlr(0xFFFF);
        res = reduce_16(&sum1);
        res *= scale;

        sum1 = vec_svbcast(res);

        part_op(vBlock_index);
        tmp1_0 = vec_mulb(tmp2_0, sum1, q[j]);
        q[j] = vec_neg(tmp1_0);
        mov_to_vlr(0xFFFF);

        j += Nvecs;
        sum1 = vzero;
      }
    }
  } else if (vBlocks <= 6) {
    vector float tmp1_0, tmp1_1, tmp1_2, tmp1_3;
    vector float tmp2_0, tmp2_1, tmp2_2, tmp2_3;
    tmp2_0 = uv[0];
    tmp2_1 = uv[1];
    tmp2_2 = uv[2];
    tmp2_3 = uv[3];

    j = 0;
    tmp1_1 = r[j + 1];
    tmp1_2 = r[j + 2];
    tmp1_3 = r[j + 3];
    for (i = col + 1; i < Ncols; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(r[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      for (k = 4; i < vBlocks; i++) {
        sum1 = vec_mula(r[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);
      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      r[j] = vec_mulb(tmp2_0, sum1, r[j]);
      r[j] = vec_neg(r[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum1, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum1, tmp1_3);

      /*尝试软流水*/
      for (k = 4; i < vBlocks; i++) {
        index = j + k;
        r[index] = vec_mulb(uv[k], sum1, r[index]);
        r[index] = vec_neg(r[index]);
      }

      j += Nvecs;
      r[j + 1] = vec_neg(tmp1_1);
      sum1 = vzero;
      r[j + 2] = vec_neg(tmp1_2);
      sum2 = vzero;
      r[j + 3] = vec_neg(tmp1_3);
      sum3 = vzero;
      tmp1_1 = r[j + 1];
      tmp1_2 = r[j + 2];
      tmp1_3 = r[j + 3];
    }
    j = 0;
    tmp1_1 = q[j + 1];
    tmp1_2 = q[j + 2];
    tmp1_3 = q[j + 3];
    for (i = 0; i < Nrows; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(q[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      for (k = 4; i < vBlocks; i++) {
        sum1 = vec_mula(q[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);
      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);

      part_op(vBlock_index);
      q[j] = vec_mulb(tmp2_0, sum1, q[j]);
      q[j] = vec_neg(q[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum1, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum1, tmp1_3);

      for (k = 4; i < vBlocks; i++) {
        index = j + k;
        q[index] = vec_mulb(uv[k], sum1, q[index]);
        q[index] = vec_neg(q[index]);
      }

      j += Nvecs;
      q[j + 1] = vec_neg(tmp1_1);
      sum1 = vzero;
      q[j + 2] = vec_neg(tmp1_2);
      sum2 = vzero;
      q[j + 3] = vec_neg(tmp1_3);
      sum3 = vzero;
      tmp1_1 = q[j + 1];
      tmp1_2 = q[j + 2];
      tmp1_3 = q[j + 3];
    }
  } else if (vBlocks <= 9) {
    vector float tmp1_0, tmp1_1, tmp1_2, tmp1_3, tmp1_4, tmp1_5, tmp1_6;
    vector float tmp2_0, tmp2_1, tmp2_2, tmp2_3, tmp2_4, tmp2_5, tmp2_6;
    tmp2_0 = uv[0];
    tmp2_1 = uv[1];
    tmp2_2 = uv[2];
    tmp2_3 = uv[3];
    tmp2_4 = uv[4];
    tmp2_5 = uv[5];
    tmp2_6 = uv[6];

    tmp1_1 = r[j + 1];
    tmp1_2 = r[j + 2];
    tmp1_3 = r[j + 3];
    tmp1_4 = r[j + 4];
    tmp1_5 = r[j + 5];
    tmp1_6 = r[j + 6];
    j = 0; /* R=Q1*R */
    for (i = col + 1; i < Ncols; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(r[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      for (k = 7; i < vBlocks; i++) {
        sum1 = vec_mula(r[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);

      part_op(vBlock_index);
      r[j] = vec_mulb(tmp2_0, sum1, r[j]);
      r[j] = vec_neg(r[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum1, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum1, tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum1, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum1, tmp1_6);
      r[j + 1] = vec_neg(tmp1_1);
      r[j + 2] = vec_neg(tmp1_2);
      r[j + 3] = vec_neg(tmp1_3);
      r[j + 4] = vec_neg(tmp1_4);
      r[j + 5] = vec_neg(tmp1_5);
      r[j + 6] = vec_neg(tmp1_6);

      for (k = 7; i < vBlocks; i++) {
        index = j + k;
        r[index] = vec_mulb(uv[k], sum1, r[index]);
        r[index] = vec_neg(r[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
    j = 0; /* Q=A*Q1 */
    for (i = 0; i < Nrows; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(q[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      tmp1_1 = q[j + 1];
      tmp1_2 = q[j + 2];
      tmp1_3 = q[j + 3];
      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      tmp1_4 = q[j + 4];
      tmp1_5 = q[j + 5];
      tmp1_6 = q[j + 6];
      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      for (k = 7; i < vBlocks; i++) {
        sum1 = vec_mula(q[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      q[j] = vec_mulb(tmp2_0, sum1, q[j]);
      q[j] = vec_neg(q[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum3, tmp1_3);
      q[j + 1] = vec_neg(tmp1_1);
      q[j + 2] = vec_neg(tmp1_2);
      q[j + 3] = vec_neg(tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum2, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum3, tmp1_6);
      q[j + 4] = vec_neg(tmp1_4);
      q[j + 5] = vec_neg(tmp1_5);
      q[j + 6] = vec_neg(tmp1_6);

      for (k = 7; i < vBlocks; i++) {
        index = j + k;
        q[index] = vec_mulb(uv[k], sum1, q[index]);
        q[index] = vec_neg(q[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
  } else if (vBlocks <= 12) {
    vector float tmp1_0, tmp1_1, tmp1_2, tmp1_3, tmp1_4, tmp1_5, tmp1_6, tmp1_7,
        tmp1_8, tmp1_9;
    vector float tmp2_0, tmp2_1, tmp2_2, tmp2_3, tmp2_4, tmp2_5, tmp2_6, tmp2_7,
        tmp2_8, tmp2_9;
    tmp2_0 = uv[0];
    tmp2_1 = uv[1];
    tmp2_2 = uv[2];
    tmp2_3 = uv[3];
    tmp2_4 = uv[4];
    tmp2_5 = uv[5];
    tmp2_6 = uv[6];
    tmp2_7 = uv[7];
    tmp2_8 = uv[8];
    tmp2_9 = uv[9];

    j = 0; /* R=Q1*R */
    for (i = col + 1; i < Ncols; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(r[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      tmp1_1 = r[j + 1];
      tmp1_2 = r[j + 2];
      tmp1_3 = r[j + 3];
      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      tmp1_4 = r[j + 4];
      tmp1_5 = r[j + 5];
      tmp1_6 = r[j + 6];
      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      tmp1_7 = r[j + 7];
      tmp1_8 = r[j + 8];
      tmp1_9 = r[j + 9];
      sum1 = vec_mula(tmp1_7, tmp2_7, sum1);
      sum2 = vec_mula(tmp1_8, tmp2_8, sum2);
      sum3 = vec_mula(tmp1_9, tmp2_9, sum3);

      for (k = 10; i < vBlocks; i++) {
        sum1 = vec_mula(r[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      r[j] = vec_mulb(tmp2_0, sum1, r[j]);
      r[j] = vec_neg(r[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum3, tmp1_3);
      r[j + 1] = vec_neg(tmp1_1);
      r[j + 2] = vec_neg(tmp1_2);
      r[j + 3] = vec_neg(tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum2, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum3, tmp1_6);
      r[j + 4] = vec_neg(tmp1_4);
      r[j + 5] = vec_neg(tmp1_5);
      r[j + 6] = vec_neg(tmp1_6);

      tmp1_7 = vec_mulb(tmp2_7, sum1, tmp1_7);
      tmp1_8 = vec_mulb(tmp2_8, sum2, tmp1_8);
      tmp1_9 = vec_mulb(tmp2_9, sum3, tmp1_9);
      r[j + 7] = vec_neg(tmp1_7);
      r[j + 8] = vec_neg(tmp1_8);
      r[j + 9] = vec_neg(tmp1_9);

      for (k = 10; i < vBlocks; i++) {
        index = j + k;
        r[index] = vec_mulb(uv[k], sum1, r[index]);
        r[index] = vec_neg(r[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
    j = 0; /* Q=A*Q1 */
    for (i = 0; i < Nrows; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(q[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      tmp1_1 = q[j + 1];
      tmp1_2 = q[j + 2];
      tmp1_3 = q[j + 3];

      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      tmp1_4 = q[j + 4];
      tmp1_5 = q[j + 5];
      tmp1_6 = q[j + 6];
      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      tmp1_7 = q[j + 7];
      tmp1_8 = q[j + 8];
      tmp1_9 = q[j + 9];
      sum1 = vec_mula(tmp1_7, tmp2_7, sum1);
      sum2 = vec_mula(tmp1_8, tmp2_8, sum2);
      sum3 = vec_mula(tmp1_9, tmp2_9, sum3);

      for (k = 10; i < vBlocks; i++) {
        sum1 = vec_mula(q[k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      q[j] = vec_mulb(tmp2_0, sum1, r[j]);
      q[j] = vec_neg(q[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum3, tmp1_3);
      q[j + 1] = vec_neg(tmp1_1);
      q[j + 2] = vec_neg(tmp1_2);
      q[j + 3] = vec_neg(tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum2, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum3, tmp1_6);
      q[j + 4] = vec_neg(tmp1_4);
      q[j + 5] = vec_neg(tmp1_5);
      q[j + 6] = vec_neg(tmp1_6);

      tmp1_7 = vec_mulb(tmp2_7, sum1, tmp1_7);
      tmp1_8 = vec_mulb(tmp2_8, sum2, tmp1_8);
      tmp1_9 = vec_mulb(tmp2_9, sum3, tmp1_9);
      q[j + 7] = vec_neg(tmp1_7);
      q[j + 8] = vec_neg(tmp1_8);
      q[j + 9] = vec_neg(tmp1_9);

      for (k = 10; i < vBlocks; i++) {
        index = j + k;
        q[index] = vec_mulb(uv[k], sum1, q[index]);
        q[index] = vec_neg(q[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
  } else if (vBlocks <= 15) {
    vector float tmp1_0, tmp1_1, tmp1_2, tmp1_3, tmp1_4, tmp1_5, tmp1_6, tmp1_7,
        tmp1_8, tmp1_9, tmp1_10, tmp1_11, tmp1_12;
    vector float tmp2_0, tmp2_1, tmp2_2, tmp2_3, tmp2_4, tmp2_5, tmp2_6, tmp2_7,
        tmp2_8, tmp2_9, tmp2_10, tmp2_11, tmp2_12;
    tmp2_0 = uv[0];
    tmp2_1 = uv[1];
    tmp2_2 = uv[2];
    tmp2_3 = uv[3];
    tmp2_4 = uv[4];
    tmp2_5 = uv[5];
    tmp2_6 = uv[6];
    tmp2_7 = uv[7];
    tmp2_8 = uv[8];
    tmp2_9 = uv[9];
    tmp2_10 = uv[10];
    tmp2_11 = uv[11];
    tmp2_12 = uv[12];

    j = 0; /* R=Q1*R */
    for (i = col + 1; i < Ncols; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(r[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      tmp1_1 = r[j + 1];
      tmp1_2 = r[j + 2];
      tmp1_3 = r[j + 3];
      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      tmp1_4 = r[j + 4];
      tmp1_5 = r[j + 5];
      tmp1_6 = r[j + 6];
      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      tmp1_7 = r[j + 7];
      tmp1_8 = r[j + 8];
      tmp1_9 = r[j + 9];
      sum1 = vec_mula(tmp1_7, tmp2_7, sum1);
      sum2 = vec_mula(tmp1_8, tmp2_8, sum2);
      sum3 = vec_mula(tmp1_9, tmp2_9, sum3);

      tmp1_10 = r[j + 10];
      tmp1_11 = r[j + 11];
      tmp1_12 = r[j + 12];
      sum1 = vec_mula(tmp1_10, tmp2_10, sum1);
      sum2 = vec_mula(tmp1_11, tmp2_11, sum2);
      sum3 = vec_mula(tmp1_12, tmp2_12, sum3);

      for (k = 13; i < vBlocks; i++) {
        sum1 = vec_mula(r[j + k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      r[j] = vec_mulb(tmp2_0, sum1, r[j]);
      r[j] = vec_neg(r[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum3, tmp1_3);
      r[j + 1] = vec_neg(tmp1_1);
      r[j + 2] = vec_neg(tmp1_2);
      r[j + 3] = vec_neg(tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum2, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum3, tmp1_6);
      r[j + 4] = vec_neg(tmp1_4);
      r[j + 5] = vec_neg(tmp1_5);
      r[j + 6] = vec_neg(tmp1_6);

      tmp1_7 = vec_mulb(tmp2_7, sum1, tmp1_7);
      tmp1_8 = vec_mulb(tmp2_8, sum2, tmp1_8);
      tmp1_9 = vec_mulb(tmp2_9, sum3, tmp1_9);
      r[j + 7] = vec_neg(tmp1_7);
      r[j + 8] = vec_neg(tmp1_8);
      r[j + 9] = vec_neg(tmp1_9);

      tmp1_10 = vec_mulb(tmp2_10, sum1, tmp1_10);
      tmp1_11 = vec_mulb(tmp2_11, sum2, tmp1_11);
      tmp1_12 = vec_mulb(tmp2_12, sum3, tmp1_12);
      r[j + 10] = vec_neg(tmp1_10);
      r[j + 11] = vec_neg(tmp1_11);
      r[j + 12] = vec_neg(tmp1_12);

      for (k = 13; i < vBlocks; i++) {
        index = j + k;
        r[index] = vec_mulb(uv[k], sum1, r[index]);
        r[index] = vec_neg(r[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
    j = 0; /* Q=A*Q1 */
    for (i = 0; i < Nrows; i++) {
      part_op(vBlock_index);
      sum1 = vec_mula(q[j], tmp2_0, sum1);
      mov_to_vlr(0xFFFF);

      tmp1_1 = q[j + 1];
      tmp1_2 = q[j + 2];
      tmp1_3 = q[j + 3];
      sum1 = vec_mula(tmp1_1, tmp2_1, sum1);
      sum2 = vec_mula(tmp1_2, tmp2_2, sum2);
      sum3 = vec_mula(tmp1_3, tmp2_3, sum3);

      tmp1_4 = q[j + 4];
      tmp1_5 = q[j + 5];
      tmp1_6 = q[j + 6];
      sum1 = vec_mula(tmp1_4, tmp2_4, sum1);
      sum2 = vec_mula(tmp1_5, tmp2_5, sum2);
      sum3 = vec_mula(tmp1_6, tmp2_6, sum3);

      tmp1_7 = q[j + 7];
      tmp1_8 = q[j + 8];
      tmp1_9 = q[j + 9];
      sum1 = vec_mula(tmp1_7, tmp2_7, sum1);
      sum2 = vec_mula(tmp1_8, tmp2_8, sum2);
      sum3 = vec_mula(tmp1_9, tmp2_9, sum3);

      tmp1_10 = q[j + 10];
      tmp1_11 = q[j + 11];
      tmp1_12 = q[j + 12];
      sum1 = vec_mula(tmp1_10, tmp2_10, sum1);
      sum2 = vec_mula(tmp1_11, tmp2_11, sum2);
      sum3 = vec_mula(tmp1_12, tmp2_12, sum3);

      for (k = 13; i < vBlocks; i++) {
        sum1 = vec_mula(q[k], uv[k], sum1);
      }

      sum1 = vec_add(sum1, sum2);
      sum1 = vec_add(sum1, sum3);

      res = reduce_16(&sum1);
      res *= scale;

      sum1 = vec_svbcast(res);
      sum2 = sum1;
      sum3 = sum1;

      part_op(vBlock_index);
      q[j] = vec_mulb(tmp2_0, sum1, r[j]);
      q[j] = vec_neg(q[j]);
      mov_to_vlr(0xFFFF);

      tmp1_1 = vec_mulb(tmp2_1, sum1, tmp1_1);
      tmp1_2 = vec_mulb(tmp2_2, sum2, tmp1_2);
      tmp1_3 = vec_mulb(tmp2_3, sum3, tmp1_3);
      q[j + 1] = vec_neg(tmp1_1);
      q[j + 2] = vec_neg(tmp1_2);
      q[j + 3] = vec_neg(tmp1_3);

      tmp1_4 = vec_mulb(tmp2_4, sum1, tmp1_4);
      tmp1_5 = vec_mulb(tmp2_5, sum2, tmp1_5);
      tmp1_6 = vec_mulb(tmp2_6, sum3, tmp1_6);
      q[j + 4] = vec_neg(tmp1_4);
      q[j + 5] = vec_neg(tmp1_5);
      q[j + 6] = vec_neg(tmp1_6);

      tmp1_7 = vec_mulb(tmp2_7, sum1, tmp1_7);
      tmp1_8 = vec_mulb(tmp2_8, sum2, tmp1_8);
      tmp1_9 = vec_mulb(tmp2_9, sum3, tmp1_9);
      q[j + 7] = vec_neg(tmp1_7);
      q[j + 8] = vec_neg(tmp1_8);
      q[j + 9] = vec_neg(tmp1_9);

      tmp1_10 = vec_mulb(tmp2_10, sum1, tmp1_10);
      tmp1_11 = vec_mulb(tmp2_11, sum2, tmp1_11);
      tmp1_12 = vec_mulb(tmp2_12, sum3, tmp1_12);
      q[j + 10] = vec_neg(tmp1_10);
      q[j + 11] = vec_neg(tmp1_11);
      q[j + 12] = vec_neg(tmp1_12);

      for (k = 13; i < vBlocks; i++) {
        index = j + k;
        q[index] = vec_mulb(uv[k], sum1, q[index]);
        q[index] = vec_neg(q[index]);
      }

      j += Nvecs;
      sum1 = vzero;
      sum2 = vzero;
      sum3 = vzero;
    }
  }
}
//处理16对齐
int DSPF_sp_qrd(const int Nrows, const int Ncols, vector float *r,
                vector float *q, vector float *uv) {

  int row, col, i, loop_count, num, vBlock_index;
  float alpha, scale, scale_tmp, sum, diag;
  num = Nrows * Ncols;

  int Nvecs = Nrows / 16; // R的向量数
  int Ri = -1;            // Vec matrix_index

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
    if (sum != 0) {
      vmemcpy(&diag, (float *)(&uv[Ri]) + vBlock_index, 4);
      alpha = sqrt(sum);
      if (diag >= 0) {
        alpha = -alpha;
      }

      update_uv_R(&r[col * Nvecs + Ri], &uv[Ri], vBlock_index, alpha);
      // norm_sqr = com_norm_sqr(uv + Ri, uv + Ri, Nvecs - Ri, vBlock_index);

      // if (alpha * u[col] != 0.0)
      scale_tmp = alpha * (diag + alpha);

      if (scale_tmp != 0.0) {
        scale = 1 / scale_tmp;
        update_QR(&r[(col + 1) * Nvecs + Ri], &uv[Ri], &q[Ri], col, Ncols,
                  Nrows, scale, Nvecs, Ri, vBlock_index);

      } /* if (norm_sqr!=0) */
    }   /* if (sum!=0) */

  } /* for (col=0;col<=loop_count;col++) */
  return 0;
}

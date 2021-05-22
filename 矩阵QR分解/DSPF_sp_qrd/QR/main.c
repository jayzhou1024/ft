
/**
 *  最新任意参数 QR
 */

#include "M7002.h"
#include "Timer.h"
#include "c6x-c.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ======================================================================= */
/* Interface header files for the natural C and optimized C code           */
/* ======================================================================= */
#include "DSPF_sp_qrd_cn.h"

/* ======================================================================= */
/* define size constants                                                   */
/* ======================================================================= */

#define MAX_MATRIX_NROWS 266 /* max is 277 */
#define MAX_MATRIX_NCOLS 266 /* max is 277 */
#define MAX_MATRIX_SIZE (MAX_MATRIX_NROWS * MAX_MATRIX_NCOLS)

/* ======================================================================= */
/* formula arrays                                                          */
/* ======================================================================= */
#define CYCLE_FORMULA_ORDER_PT0 32
#define CYCLE_FORMULA_ORDER_PT1 48
#define CYCLE_FORMULA_ORDER_PT2 64
#define CYCLE_FORMULA_ORDER_PT3 80
#define CYCLE_FORMULA_ORDER_PT4 96
#define CYCLE_FORMULA_ORDER_PT5 112
#define CYCLE_FORMULA_ORDER_PT6 128
#define CYCLE_FORMULA_ORDER_PT7 144
#define FORMULA_SIZE 2
long long form_cycles[FORMULA_SIZE];

/* ======================================================================= */
/* float word alignment of arrays                                         */
/* ======================================================================= */
#pragma DATA_SECTION(A, ".far:matrix")
#pragma DATA_ALIGN(A, 8)
float A[MAX_MATRIX_SIZE];

#pragma DATA_SECTION(Q, ".far:matrix")
#pragma DATA_ALIGN(Q, 8)
float Q[MAX_MATRIX_SIZE];

#pragma DATA_SECTION(R, ".far:matrix")
#pragma DATA_ALIGN(R, 8)
float R[MAX_MATRIX_SIZE];

#pragma DATA_SECTION(u, ".far:matrix")
#pragma DATA_ALIGN(u, 8)
float u[MAX_MATRIX_NROWS];

#pragma DATA_SECTION(b, ".far:matrix")
#pragma DATA_ALIGN(b, 8)
float b[MAX_MATRIX_NROWS];

#pragma DATA_SECTION(inv_A, ".far:matrix")
#pragma DATA_ALIGN(inv_A, 8)
float inv_A[MAX_MATRIX_SIZE];

#pragma DATA_SECTION(b, ".far:matrix")
#pragma DATA_ALIGN(b, 8)
float b[MAX_MATRIX_NROWS];

#pragma DATA_SECTION(x, ".far:matrix")
#pragma DATA_ALIGN(x, 8)
float x[MAX_MATRIX_NROWS];

#pragma DATA_SECTION(y, ".far:matrix")
#pragma DATA_ALIGN(y, 8)
float y[MAX_MATRIX_NROWS];

/* ======================================================================= */
/* Main -- Top level driver for testing the algorithm                      */
/* ======================================================================= */
void main(void) {

  int test, pass, Nrows, Ncols;
  float sum, error;
  int row, col, k, status, invertible;
  long long t_overhead, t_start, t_stop;
  long long QRD_t_cn, QRD_t, QRD_t_48, QRD_t_unroll;
  float tolerance_invertible = 0.00001;
  float tolerance_decomp = 0.0001;
  float tolerance_solver = 0.0004;
  float tolerance_inverse = 0.0004;

  int *cache = 0x040140004; /*将SM 配置成L1DCache/SRAM 存储模式*/
  int *cache1 = 0x040140000;
  volatile int cache_ok;
  *cache = 0x1;
  *cache1 = 0x1;
  cache_ok = *cache1;
  while (cache_ok != 0)
    cache_ok = *cache1;
  /* --------------------------------------------------------------------- */
  /* Compute the overhead of calling clock twice to get timing info        */
  /* --------------------------------------------------------------------- */
  SetTimerPeriod(0, 0xffffffff);
  TimerStart(0);

  t_start = GetTimerCount(0);
  t_stop = GetTimerCount(0);
  t_overhead = t_stop - t_start;

  /* --------------------------------------------------------------------- */
  /* process test cases                                                    */
  /* --------------------------------------------------------------------- */
  pass = 1;
  for (test = 7; test <= 14; test++) {
    printf("DSPF_sp_qrd\tIter#: %d\t", test);

    switch (test) {
    case 1: {
      Nrows = 4;
      Ncols = 2; // 4x2
      A[0] = 1;
      A[1] = 2;
      A[2] = 3;
      A[3] = 4;
      A[4] = 5;
      A[5] = 6;
      A[6] = 7;
      A[7] = 8;
      b[0] = 1;
      b[1] = 2;
      b[2] = 3;
      b[3] = 4;
      break;
    }
    case 2: {
      Nrows = 4;
      Ncols = 3; // 4x3
      A[0] = 1;
      A[1] = 5;
      A[2] = 9;
      A[3] = 2;
      A[4] = 6;
      A[5] = 10;
      A[6] = 3;
      A[7] = 7;
      A[8] = 1;
      A[9] = 4;
      A[10] = 8;
      A[11] = 2;
      b[0] = 1;
      b[1] = 2;
      b[2] = 3;
      b[3] = 4;
      break;
    }
    case 3: {
      Nrows = 3;
      Ncols = 3; // 3x3
      A[0] = 12;
      A[1] = -51;
      A[2] = 4;
      A[3] = 6;
      A[4] = 167;
      A[5] = -68;
      A[6] = -4;
      A[7] = 24;
      A[8] = -41;
      b[0] = 1;
      b[1] = 2;
      b[2] = 3;
      break;
    }
    case 4: {
      Nrows = 3;
      Ncols = 3; // 3x3 singular non invertible
      A[0] = 1;
      A[1] = 2;
      A[2] = 3;
      A[3] = 4;
      A[4] = 5;
      A[5] = 6;
      A[6] = 7;
      A[7] = 8;
      A[8] = 9;
      b[0] = 1;
      b[1] = 2;
      b[2] = 3;
      break;
    }
    case 5: {
      Nrows = 3;
      Ncols = 4; // 3x4
      A[0] = 1;
      A[1] = 2;
      A[2] = 3;
      A[3] = 4;
      A[4] = 5;
      A[5] = 6;
      A[6] = 7;
      A[7] = 8;
      A[8] = 9;
      A[9] = 10;
      A[10] = 1;
      A[11] = 2;
      b[0] = 1;
      b[1] = 2;
      b[2] = 3;
      break;
    }
    case 6: {
      Nrows = 2;
      Ncols = 4; // 2x4
      A[0] = 1;
      A[1] = 2;
      A[2] = 3;
      A[3] = 4;
      A[4] = 5;
      A[5] = 6;
      A[6] = 7;
      A[7] = 8;
      b[0] = 1;
      b[1] = 2;
      break;
    }
    case 7: {
      Nrows = CYCLE_FORMULA_ORDER_PT0;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 8: {
      Nrows = CYCLE_FORMULA_ORDER_PT1;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 9: {
      Nrows = CYCLE_FORMULA_ORDER_PT2;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 10: {
      Nrows = CYCLE_FORMULA_ORDER_PT3;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 11: {
      Nrows = CYCLE_FORMULA_ORDER_PT4;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 12: {
      Nrows = CYCLE_FORMULA_ORDER_PT5;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 13: {
      Nrows = CYCLE_FORMULA_ORDER_PT6;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    case 14: {
      Nrows = CYCLE_FORMULA_ORDER_PT7;
      Ncols = Nrows;
      srand(1);
      for (row = 0; row < Nrows; row++) {
        for (col = 0; col < Ncols; col++) {
          A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
        }
        b[row] = (float)row + 1.0;
      }
      break;
    }
    }

    /* ------------------------------------------------------------------- */
    /* decompose A into Q and R where A=Q_cn*R_cn                          */
    /* ------------------------------------------------------------------- */
    t_start = GetTimerCount(0);
    status = DSPF_sp_qrd_cn(Nrows, Ncols, A, Q, R, u);
    t_stop = GetTimerCount(0);
    QRD_t_cn = t_stop - t_start - t_overhead;
    if (status == -1) {
      printf("QR decomposition failed!\n");
    }

    /* ------------------------------------------------------------------- */
    /* check decomposition: Q*R=A                                          */
    /* ------------------------------------------------------------------- */
    for (row = 0; row < Nrows; row++) {
      for (col = 0; col < Ncols; col++) {
        sum = 0;
        for (k = 0; k < Nrows; k++) {
          sum += Q[k + row * Nrows] * R[col + k * Ncols];
        }
        error = fabs(A[col + row * Ncols] - sum);
        if (error > tolerance_decomp) {
          pass = 0;
          printf("natural decomposition fails error=%e\n", error);
        }
      }
    }

    /* ------------------------------------------------------------------- */
    /* decompose A into Q and R where A=Q*R                                */
    /* ------------------------------------------------------------------- */
    int num = Nrows * Ncols;
    //  vector float *r = (vector float *)vmalloc((num + 16) * 4);
    //  vector float *q = (vector float *)vmalloc(Nrows * Nrows * 4 );
    //  vector float *uv = (vector float *)vmalloc((Nrows + 16) * 4);
    vector float *r = (vector float*)0x040000000;
    vector float *q = (vector float*)0x040031000;
    vector float *uv = (vector float*)0x040062000;//最大支持224*224
    int trans_index = Ncols * 4 - 4;

    memset(Q, 0.0, sizeof(float) * Nrows * Nrows);
    for (row = 0; row < Nrows; row++) {
      Q[row + row * Nrows] = 1.0;
    }
    M7002_datatrans(Q, q, Nrows * Nrows * 4);

    for (col = 0; col < Ncols; col++) {
      M7002_datatrans_index(&A[col], (vector float *)((float *)r + Nrows * col),
                            Nrows, 1, trans_index);
    }

    t_start = GetTimerCount(0);
    status = DSPF_sp_qrd(Nrows, Ncols, r, q, uv);
    t_stop = GetTimerCount(0);
    
    vfree(r);
    vfree(q);
    vfree(uv);
    if (status == -1) {
      printf("QR decomposition failed!\n");
    }
    QRD_t_48 = t_stop - t_start - t_overhead;

    trans_index = trans_index << 16;
    for (col = 0; col < Ncols; col++) {
      M7002_datatrans_index((vector float *)((float *)r + Nrows * col), &R[col],
                            Nrows, 1, trans_index);
    }
    M7002_datatrans(q, Q, Nrows * Nrows * 4);

    /* ------------------------------------------------------------------- */
    /* check decomposition: Q*R=A                                          */
    /* ------------------------------------------------------------------- */
    for (row = 0; row < Nrows; row++) {
      for (col = 0; col < Ncols; col++) {
        sum = 0;
        for (k = 0; k < Nrows; k++) {
          sum += Q[k + row * Nrows] * R[col + k * Ncols];
        }
        error = fabs(A[col + row * Ncols] - sum);
        if (error > tolerance_decomp) {
          pass = 0;
          printf("optimized decomposition check fails error=%e\n", error);
        }
      }
    }

    if (pass) {
      printf("Result Successful");
      printf("\torder=%2dx%2d\t natC: %lld\t optC_v1: %lld\n", Nrows, Ncols,
             QRD_t_cn, QRD_t_48);
    } else {
      printf("Result Failure\torder=%2dx%2d\n", Nrows, Ncols);
    }

    if (Nrows == CYCLE_FORMULA_ORDER_PT1) {
      form_cycles[0] = QRD_t_48;
    } else if (Nrows == CYCLE_FORMULA_ORDER_PT2) {
      form_cycles[1] = QRD_t_48;
    }
  } /* for (test=1;test<=7;test++) */

  /* ------------------------------------------------------------------- */
  /* provide memory and cycles information                               */
  /* ------------------------------------------------------------------- */
#ifdef __TI_COMPILER_VERSION__ // for TI compiler only
  printf("Memory:  %d bytes\n", &kernel_size);
#endif

  printf("Cycles:  %lld (order=%d)  %lld (order=%d)\n", form_cycles[0],
         CYCLE_FORMULA_ORDER_PT1, form_cycles[1], CYCLE_FORMULA_ORDER_PT2);
}

/* ======================================================================= */
/*  End of file:  DSPF_sp_qrd_d.c                                     */
/* ------------------------------------------------------------------------*/
/*            Copyright (c) 2013 Texas Instruments, Incorporated.          */
/*                           All Rights Reserved.                          */
/* ======================================================================= */

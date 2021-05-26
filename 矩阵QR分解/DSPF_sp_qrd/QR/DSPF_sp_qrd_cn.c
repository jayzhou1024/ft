/* ======================================================================= */
/* DSPF_sp_qrd_cn.c -- QR decomposition single precision                   */
/*                 Natural C Implementation                                */
/*                                                                         */
/* Rev 1.0.0                                                               */
/*                                                                         */
/* Copyright (C) 2013 Texas Instruments Incorporated - http://www.ti.com/  */
/*                                                                         */
/*                                                                         */
/*  Redistribution and use in source and binary forms, with or without     */
/*  modification, are permitted provided that the following conditions     */
/*  are met:                                                               */
/*                                                                         */
/*    Redistributions of source code must retain the above copyright       */
/*    notice, this list of conditions and the following disclaimer.        */
/*                                                                         */
/*    Redistributions in binary form must reproduce the above copyright    */
/*    notice, this list of conditions and the following disclaimer in the  */
/*    documentation and/or other materials provided with the               */
/*    distribution.                                                        */
/*                                                                         */
/*    Neither the name of Texas Instruments Incorporated nor the names of  */
/*    its contributors may be used to endorse or promote products derived  */
/*    from this software without specific prior written permission.        */
/*                                                                         */
/*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    */
/*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,  */
/*  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  */
/*  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   */
/*                                                                         */
/* ======================================================================= */
#include <math.h>
#include <string.h>

#include "DSPF_sp_qrd_cn.h"

int DSPF_sp_qrd_cn(const int Nrows, const int Ncols, float *A, float *Q,
                   float *R, float *u) {
  int row, col, i, k, loop_count;
  float alpha, scale, sum, norm_sqr;

  /* ------------------------------------------------------------------- */
  /* generate identify matrix and copy A to R                            */
  /* ------------------------------------------------------------------- */
  //printf("\n cn_sum:  ");
  memcpy(R, A, sizeof(float) * Nrows * Ncols);
  memset(Q, 0.0, sizeof(float) * Nrows * Nrows);
  for (row = 0; row < Nrows; row++) {
    Q[row + row * Nrows] = 1.0;
  }

  if (Nrows <= Ncols) {
    loop_count = Nrows - 2;
  } else {
    loop_count = Ncols - 1;
  }
  for (col = 0; col <= loop_count; col++) {
    sum = 0;
    for (row = col; row < Nrows; row++) {
      sum += R[col + row * Ncols] * R[col + row * Ncols];
    }
    //printf("%f\t ", sum);
    //if (col == 0 || col == 1)
    //printf("\n round:%d>", col);
    if (sum != 0) {
      alpha = sqrt(sum);
      if (R[col + col * Ncols] >= 0) {
        alpha = -alpha;
      }
      u[col] = R[col + col * Ncols] + alpha;
      R[col + col * Ncols] = -alpha;
      norm_sqr = u[col] * u[col];
      for (row = col + 1; row < Nrows; row++) {
        u[row] = R[col + row * Ncols];
        R[col + row * Ncols] = 0;
        norm_sqr += u[row] * u[row];
      }
      if (alpha * u[col] != 0.0) {
        scale = 1 / (alpha * u[col]);
        //printf("<<<scale %f>>>>> \t ", scale);
        /* R=Q1*R */
        for (i = col + 1; i < Ncols; i++) {
          sum = 0;
          for (k = col; k < Nrows; k++) {
            sum += u[k] * R[i + k * Ncols];
          }
          //if (col == 0 || col == 1)
          //printf("%f \t ", sum);
          sum *= scale;
          //printf("<<%f>> \t ", sum);
          for (k = col; k < Nrows; k++) {
            R[i + k * Ncols] -= u[k] * sum;
            //if(col==0||col==1)
            //  printf("%f \t ", R[i + k * Ncols]);
          }
          //printf("\n");
        }
        /* Q=A*Q1 */
        for (i = 0; i < Nrows; i++) {
          sum = 0;
          for (k = col; k < Nrows; k++) {
            sum += u[k] * Q[k + i * Nrows];
          }
          //if (col == 0 || col == 1)
          // printf("%f \t ", sum);
          sum *= scale;
          for (k = col; k < Nrows; k++) {
            Q[k + i * Nrows] -= u[k] * sum;
          }
        }
      } /* if (norm_sqr!=0) */
      //if (col == 0 || col == 1)
      //printf("\n");
    } /* if (sum!=0) */
  }   /* for (col=0;col<=loop_count;col++) */
  return 0;
}

/* ======================================================================= */
/*  End of file:  DSPF_sp_qrd_cn.c                                         */
/* ----------------------------------------------------------------------- */
/*            Copyright (c) 2013 Texas Instruments, Incorporated.          */
/*                           All Rights Reserved.                          */
/* ======================================================================= */

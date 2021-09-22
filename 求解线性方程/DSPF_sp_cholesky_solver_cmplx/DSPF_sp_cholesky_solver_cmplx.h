#ifndef DSPF_SP_CHOLESKY_SOLVER_CMPLX_H_INCLUDE
#define DSPF_SP_CHOLESKY_SOLVER_CMPLX_H_INCLUDE

#include "M7002.h"
#include "c6x-c.h"
#include "vsip.h"
#include <math.h>

#define VPE_NUM 16
#define VPE_NUM_HALF 8
#define OFF_FLOAT_PTR(base, off) ((vector float *)(((float *)base) + off))

int DSPF_sp_cholesky_solver_cmplx(const int Nrows, lvector double *L, lvector double *y, lvector double *b, lvector double *x);
void complex_sp_div_cn(float x_real, float x_imag, float y_real, float y_imag, float *z_real, float *z_imag);

#endif
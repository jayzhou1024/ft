
#ifndef DSPF_DP_QRD_CN_H_
#define DSPF_DP_QRD_CN_H_
#include "M7002.h"
#include "c6x-c.h"

int DSPF_sp_qrd_cn(const int Nrows, const int Ncols, float *A, float *Q_cn,
                   float *R_cn, float *u);

int DSPF_sp_qrd(const int Nrows, const int Ncols, vector float *r,
                vector float *q, vector float *uv,vector float *sum_v);

// int DSPF_sp_qrd(const int Nrows,const int Ncols,float *A,float *Q_cn,float
// *R_cn,float *u); int DSPF_sp_qrd_inverse(const int Nrows,const int Ncols,float
// *Q_cn,float *R,float *inv_A); int DSPF_sp_qrd_solver(const int Nrows,const int
// Ncols,float *Q_cn,float *R_cn,float *b,float *y,float *x);

#endif /* DSPF_DP_QRD_CN_H_ */

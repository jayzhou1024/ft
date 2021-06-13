#include "M7002.h"

int DSPF_sp_qrd_cmplx_cn(
    const int Nrows, const int Ncols,
    float * A, float * Q, float * R, float * u
);

int DSPF_sp_qrd_inverse_cmplx_cn(
    const int Nrows, const int Ncols,
    float * Q, float * R, float * inv_A
);

int DSPF_sp_qrd_solver_cmplx_cn(
    const int Nrows, const int Ncols,
    float * Q, float * R, float * b,
    float * y, float * x
);

int DSPF_sp_qrd_solver_cmplx_v1(
    const int Nrows, const int Ncols, 
    lvector double *Q, lvector double  *R, lvector double *b, 
    lvector double *y, lvector double *x
);



#include "M7002.h"

int DSPF_dp_qrd_cmplx_cn(
    const int Nrows, const int Ncols,
    double * A, double * Q, double * R, double * u
);

int DSPF_dp_qrd_inverse_cmplx_cn(
    const int Nrows, const int Ncols,
    double * Q, double * R, double * inv_A
);

int DSPF_dp_qrd_solver_cmplx_cn(
    const int Nrows, const int Ncols,
    double * Q, double * R, double * b,
    double * y, double * x
);

int DSPF_dp_qrd_solver_cmplx_v1(
    const int Nrows, const int Ncols, 
    lvector double *Q, lvector double  *R, lvector double *b, 
    lvector double *y, lvector double *x
);

int DSPF_dp_qrd_solver_cmplx_vasm1(
    const int Nrows, const int Ncols, 
    lvector double *Q, lvector double *R, lvector double *b, 
    lvector double *y, lvector double *x
);


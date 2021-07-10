#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "version.h"
#include "M7002.h"


static void complex_dp_div(double x_real, double x_imag, double y_real, double y_imag, double *z_real, double *z_imag);

int DSPF_dp_qrd_solver_cmplx_v1(
    const int Nrows, const int Ncols, 
    lvector double *Q, lvector double *R, lvector double *b, 
    lvector double *y, lvector double *x)
{
    short row, col, loop_cnt, i, j;
    float xreal, ximag, yreal, yimag, zreal, zimag, sum_real, sum_imag;
    float temp_cplx[2];

    return 0;
}


void complex_dp_div(double x_real, double x_imag, double y_real, double y_imag, double *z_real, double *z_imag)
{
    float x_mag, y_mag, z_mag;
    float x_angle, y_angle, z_angle;

    /* magnitude */
    x_mag = sqrt(x_real * x_real + x_imag * x_imag);
    y_mag = sqrt(y_real * y_real + y_imag * y_imag);
    z_mag = x_mag / y_mag;

    /* angle */
    x_angle = atan2(x_imag, x_real);
    y_angle = atan2(y_imag, y_real);
    z_angle = x_angle - y_angle;

    /* results */
    *z_real = cos(z_angle) * z_mag;
    *z_imag = sin(z_angle) * z_mag;
}


#include <math.h>
#include <string.h>

#include "M7002.h"

static void complex_sp_inv_cn(float y_real, float y_imag, float *z_real, float *z_imag);
static void complex_sp_div_cn(float x_real, float x_imag, float y_real, float y_imag, float *z_real, float *z_imag);
static void complex_sp_sqrt_cn(float x_real, float x_imag, float *z_real, float *z_imag);

int DSPF_sp_qrd_cmplx_cn(const int Nrows, const int Ncols, float *A, float *Q, float *R, float *u)
{
    int row, col, i, k, loop_count, Nrows2, Ncols2;
    float sum_real, sum_imag, xreal, ximag, yreal, yimag, zreal, zimag;
    float scale_real, scale_imag;
    float sum, alpha;

    /* ------------------------------------------------------------------- */
    /* generate identify matrix and copy A to R                            */
    /* ------------------------------------------------------------------- */
    memcpy(R, A, sizeof(float) * Nrows * 2 * Ncols);
    memset(Q, 0.0, sizeof(float) * Nrows * 2 * Nrows);
    for (row = 0; row < Nrows; row++)
    {
        Q[2 * row + row * 2 * Nrows] = 1.0;
    }

    if (Nrows <= Ncols)
    {
        loop_count = Nrows - 2;
    }
    else
    {
        loop_count = Ncols - 1;
    }
    Ncols2 = 2 * Ncols;
    Nrows2 = 2 * Nrows;
    for (col = 0; col <= loop_count; col++)
    {
        sum = 0;
        for (row = col; row < Nrows; row++)
        {
            xreal = R[2 * col + row * Ncols2];
            ximag = R[2 * col + 1 + row * Ncols2];
            sum += xreal * xreal + ximag * ximag;
        }
        if (sum != 0)
        {
            alpha = -sqrt(sum);
            if (R[2 * col + col * Ncols2] >= 0)
            {
                alpha = -alpha;
            }
            u[2 * col] = R[2 * col + col * Ncols2] + alpha;
            u[2 * col + 1] = R[2 * col + 1 + col * Ncols2];
            R[2 * col + col * Ncols2] = -alpha;
            R[2 * col + 1 + col * Ncols2] = 0;
            xreal = u[2 * col];
            ximag = u[2 * col + 1];
            for (row = col + 1; row < Nrows; row++)
            {
                u[2 * row] = R[2 * col + row * Ncols2];
                u[2 * row + 1] = R[2 * col + 1 + row * Ncols2];
                R[2 * col + row * Ncols2] = 0;
                R[2 * col + 1 + row * Ncols2] = 0;
                xreal = u[2 * row];
                ximag = u[2 * row + 1];
            }
            zreal = alpha * u[2 * col];
            zimag = alpha * u[2 * col + 1];
            if ((zreal != 0) || (zimag != 0))
            {
                complex_sp_inv_cn(zreal, zimag, &scale_real, &scale_imag);
                /* R=Q1*R */
                for (i = col + 1; i < Ncols; i++)
                {
                    sum_real = 0;
                    sum_imag = 0;
                    for (k = col; k < Nrows; k++)
                    {
                        xreal = u[2 * k];
                        ximag = -u[2 * k + 1];
                        yreal = R[2 * i + k * Ncols2];
                        yimag = R[2 * i + 1 + k * Ncols2];
                        sum_real += xreal * yreal - ximag * yimag;
                        sum_imag += xreal * yimag + ximag * yreal;
                    }
                    xreal = sum_real;
                    ximag = sum_imag;
                    yreal = scale_real;
                    yimag = scale_imag;
                    sum_real = xreal * yreal - ximag * yimag;
                    sum_imag = xreal * yimag + ximag * yreal;
                    for (k = col; k < Nrows; k++)
                    {
                        xreal = u[2 * k];
                        ximag = u[2 * k + 1];
                        yreal = sum_real;
                        yimag = sum_imag;
                        R[2 * i + k * Ncols2] -= xreal * yreal - ximag * yimag;
                        R[2 * i + 1 + k * Ncols2] -= xreal * yimag + ximag * yreal;
                    }
                }
                /* Q=Q*Q1 */
                for (i = 0; i < Nrows; i++)
                {
                    sum_real = 0;
                    sum_imag = 0;
                    for (k = col; k < Nrows; k++)
                    {
                        xreal = u[2 * k];
                        ximag = -u[2 * k + 1];
                        yreal = Q[2 * k + i * Nrows2];
                        yimag = Q[2 * k + 1 + i * Nrows2];
                        sum_real += xreal * yreal - ximag * yimag;
                        sum_imag += xreal * yimag + ximag * yreal;
                    }
                    xreal = sum_real;
                    ximag = sum_imag;
                    yreal = scale_real;
                    yimag = scale_imag;
                    sum_real = xreal * yreal - ximag * yimag;
                    sum_imag = xreal * yimag + ximag * yreal;
                    for (k = col; k < Nrows; k++)
                    {
                        xreal = u[2 * k];
                        ximag = u[2 * k + 1];
                        yreal = sum_real;
                        yimag = sum_imag;
                        Q[2 * k + i * Nrows2] -= xreal * yreal - ximag * yimag;
                        Q[2 * k + 1 + i * Nrows2] -= xreal * yimag + ximag * yreal;
                    }
                }
            } /* if ((zreal!=0)||(zimag!=0)) */
        }     /* if (sum!=0) */
    }         /* for (col=0;col<=loop_count;col++) */

    /* Q=conj(Q) */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Nrows; col++)
        {
            Q[2 * col + 1 + row * Nrows2] = -Q[2 * col + 1 + row * Nrows2];
        }
    }

    return 0;
}

int DSPF_sp_qrd_solver_cmplx_cn(const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{
    short row, col, loop_cnt;
    float xreal, ximag, yreal, yimag, zreal, zimag, sum_real, sum_imag;

    /* generate y=Q'*b */
    for (row = 0; row < Nrows; row++)
    {
        sum_real = 0;
        sum_imag = 0;
        for (col = 0; col < Nrows; col++)
        {
            xreal = Q[2 * row + col * 2 * Nrows];
            ximag = -Q[2 * row + 1 + col * 2 * Nrows];
            yreal = b[2 * col];
            yimag = b[2 * col + 1];
            sum_real += xreal * yreal - ximag * yimag;
            sum_imag += xreal * yimag + ximag * yreal;
        }
        y[2 * row] = sum_real;
        y[2 * row + 1] = sum_imag;
    }

    /* use backward substitution to solve x=inv(R)*y */
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;
    memset(x, 0, sizeof(float) * 2 * Ncols);
    for (row = loop_cnt - 1; row >= 0; row--)
    {
        sum_real = 0;
        sum_imag = 0;
        for (col = row + 1; col < loop_cnt; col++)
        {
            xreal = R[2 * col + row * 2 * Ncols];
            ximag = R[2 * col + 1 + row * 2 * Ncols];
            yreal = x[2 * col];
            yimag = x[2 * col + 1];
            sum_real += xreal * yreal - ximag * yimag;
            sum_imag += xreal * yimag + ximag * yreal;
        }
        xreal = y[2 * row] - sum_real;
        ximag = y[2 * row + 1] - sum_imag;
        yreal = R[2 * row + row * 2 * Ncols];
        yimag = R[2 * row + 1 + row * 2 * Ncols];
        complex_sp_div_cn(xreal, ximag, yreal, yimag, &zreal, &zimag);
        x[2 * row] = zreal;
        x[2 * row + 1] = zimag;
    }

    return 0;
}

int DSPF_sp_qrd_inverse_cmplx_cn(const int Nrows, const int Ncols, float *Q, float *R, float *inv_A)
{
    int row, col, k;
    float xreal, ximag, yreal, yimag, zreal, zimag;
    float factor_real, factor_imag, sum_real, sum_imag;

    /* set inv_A matrix to identity */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Ncols; col++)
        {
            if (row == col)
            {
                inv_A[2 * col + row * 2 * Ncols] = 1;
                inv_A[2 * col + 1 + row * 2 * Ncols] = 0;
            }
            else
            {
                inv_A[2 * col + row * 2 * Ncols] = 0;
                inv_A[2 * col + 1 + row * 2 * Ncols] = 0;
            }
        }
    }

    /* use Gauss Jordan algorithm to invert R whose result will be in inv_A */
    for (col = Ncols - 1; col >= 1; col--)
    {
        for (row = col - 1; row >= 0; row--)
        {
            xreal = R[2 * col + row * 2 * Ncols];
            ximag = R[2 * col + 1 + row * 2 * Ncols];
            yreal = R[2 * col + col * 2 * Ncols];
            yimag = R[2 * col + 1 + col * 2 * Ncols];
            complex_sp_div_cn(xreal, ximag, yreal, yimag, &factor_real, &factor_imag);
            for (k = 0; k < Ncols; k++)
            {
                xreal = factor_real;
                ximag = factor_imag;
                yreal = inv_A[2 * k + col * 2 * Ncols];
                yimag = inv_A[2 * k + 1 + col * 2 * Ncols];
                inv_A[2 * k + row * 2 * Ncols] -= xreal * yreal - ximag * yimag;
                inv_A[2 * k + 1 + row * 2 * Ncols] -= xreal * yimag + ximag * yreal;
                yreal = R[2 * k + col * 2 * Ncols];
                yimag = R[2 * k + 1 + col * 2 * Ncols];
                R[2 * k + row * 2 * Ncols] -= xreal * yreal - ximag * yimag;
                R[2 * k + 1 + row * 2 * Ncols] -= xreal * yimag + ximag * yreal;
            }
        }
    }

    /* scale R and inv_A to get identity matrix in R */
    for (row = Nrows - 1; row >= 0; row--)
    {
        factor_real = R[2 * row + row * 2 * Ncols];
        factor_imag = R[2 * row + 1 + row * 2 * Ncols];
        for (col = 0; col < Ncols; col++)
        {
            xreal = inv_A[2 * col + row * 2 * Ncols];
            ximag = inv_A[2 * col + 1 + row * 2 * Ncols];
            yreal = factor_real;
            yimag = factor_imag;
            complex_sp_div_cn(xreal, ximag, yreal, yimag, &zreal, &zimag);
            inv_A[2 * col + row * 2 * Ncols] = zreal;
            inv_A[2 * col + 1 + row * 2 * Ncols] = zimag;
            xreal = R[2 * col + row * 2 * Ncols];
            ximag = R[2 * col + 1 + row * 2 * Ncols];
            complex_sp_div_cn(xreal, ximag, yreal, yimag, &zreal, &zimag);
            R[2 * col + row * 2 * Ncols] = zreal;
            R[2 * col + 1 + row * 2 * Ncols] = zimag;
        }
    }

    /* inv_A = inv_R * Q' */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Ncols; col++)
        {
            sum_real = 0;
            sum_imag = 0;
            for (k = 0; k < Ncols; k++)
            {
                xreal = inv_A[2 * k + row * 2 * Ncols];
                ximag = inv_A[2 * k + 1 + row * 2 * Ncols];
                yreal = Q[2 * k + col * 2 * Ncols];
                yimag = -Q[2 * k + 1 + col * 2 * Ncols];
                sum_real += xreal * yreal - ximag * yimag;
                sum_imag += xreal * yimag + ximag * yreal;
            }
            //R[col]=sum;
            R[2 * col] = sum_real;
            R[2 * col + 1] = sum_imag;
        }
        for (col = 0; col < Ncols; col++)
        {
            inv_A[2 * col + row * 2 * Ncols] = R[2 * col];
            inv_A[2 * col + 1 + row * 2 * Ncols] = R[2 * col + 1];
        }
    }

    return 0;
}

void complex_sp_inv_cn(float y_real, float y_imag, float *z_real, float *z_imag)
{
    float y_mag, z_mag;
    float y_angle, z_angle;

    /* magnitude */
    y_mag = sqrt(y_real * y_real + y_imag * y_imag);
    z_mag = 1 / y_mag;

    /* angle */
    y_angle = atan2(y_imag, y_real);
    z_angle = -y_angle;

    /* results */
    *z_real = cos(z_angle) * z_mag;
    *z_imag = sin(z_angle) * z_mag;
}

void complex_sp_div_cn(float x_real, float x_imag, float y_real, float y_imag, float *z_real, float *z_imag)
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

static void complex_sp_sqrt_cn(float x_real, float x_imag, float *z_real, float *z_imag)
{
    float x_mag, z_mag;
    float x_angle, z_angle;

    /* magnitude */
    x_mag = sqrt(x_real * x_real + x_imag * x_imag);
    z_mag = sqrt(x_mag);

    /* angle */
    x_angle = atan2(x_imag, x_real);
    z_angle = x_angle / 2;

    /* results */
    *z_real = cos(z_angle) * z_mag;
    *z_imag = sin(z_angle) * z_mag;
}

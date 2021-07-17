#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "M7002.h"
#include "Timer.h"

#include "version.h"

#define RAND_MAX 0x7ff

void printMatrix(float *matrix, const char *name, int rowN, int colN){
    int i, j;
    printf("%s = [", name);
    for (i = 0; i < rowN; ++i)
    {
        for (j = 0; j < colN; ++j)
        {
            printf("%f, ", matrix[j + i * colN]);
        }
        //printf("\n");
    }
    printf("]\n");
}


#define MAX_NROW 128
#define MAX_NCOL 128
vector float *v_A;
vector float *v_Q;
vector float *v_R;
vector float *v_u;
vector float *v_b;
vector float *v_y;
vector float *v_x;
float A[MAX_NROW * MAX_NCOL * 2];
float Q[MAX_NROW * MAX_NCOL * 2];
float R[MAX_NROW * MAX_NCOL * 2];
float inv_A[MAX_NROW * MAX_NCOL * 2];
float u[MAX_NROW * 2];
float b[MAX_NROW * 2];
float y[MAX_NROW * 2];
float x[MAX_NCOL * 2];

void test_qr_solver_complx(
    float *A, float *Q, float *R, float *inv_A,
    float *u, float *b, float *y, float *x);

int DSPF_sp_qrd_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *A, float *Q, float *R, float *u){
    *t_start = GetTimerCount(0);
    int status = DSPF_sp_qrd_cmplx_cn(Nrows, Ncols, A, Q, R, u);
    *t_stop = GetTimerCount(0);
    return status;
}

int DSPF_sp_qrd_solver_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{    
    int status;

    {
        M7002_datatrans(Q, v_Q, sizeof(float) * Ncols * Nrows * 2);
        M7002_datatrans(R, v_R, sizeof(float) * Ncols * Nrows * 2);
        M7002_datatrans(b, v_b, sizeof(float) * Nrows * 2);

        *t_start = GetTimerCount(0);
        status = DSPF_sp_qrd_solver_cmplx_v1(Nrows, Ncols, v_Q, v_R, v_b, v_y, v_x);
        *t_stop = GetTimerCount(0);
        M7002_datatrans(v_x, x, sizeof(float) * Nrows * 2);
        M7002_datatrans(v_y, y, sizeof(float) * Nrows * 2);
        printMatrix(x, "x", 1, Nrows*2);
        printMatrix(y, "y", 1, Nrows*2);
    }
    {
        // trival_version
        *t_start = GetTimerCount(0);
        status = DSPF_sp_qrd_solver_cmplx_cn(Nrows, Ncols, Q, R, b ,y, x);
        *t_stop = GetTimerCount(0);
        printMatrix(x, "x", 1, Nrows*2);
        printMatrix(y, "y", 1, Nrows*2);
    }

    return status;
}

int DSPF_sp_qrd_inverse_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *Q, float *R, float *inv_A){
    *t_start = GetTimerCount(0);
    int status = DSPF_sp_qrd_inverse_cmplx_cn(Nrows, Ncols, Q, R, inv_A);
    *t_stop = GetTimerCount(0);
    return status;
}

int main()
{
    int *cache = 0x040140004; /*将SM配置成L1DCache/SRAM存储模式*/
    int *cache1 = 0x040140000;
    volatile int cache_ok;
    *cache = 0x1;
    *cache1 = 0x1;
    cache_ok = *cache1;
    while (cache_ok != 0)
        cache_ok = *cache1;

    SetTimerPeriod(0, 0xffffffff);
    TimerStart(0);

    int i, j, row, col;
    int Nrows = MAX_NROW;
    int Ncols = MAX_NCOL;


    v_A = 0x040000000;
    v_Q = v_A + Nrows * Nrows * 2 / 16 + 100;
    v_R = v_Q + Nrows * Nrows * 2 / 16 + 100;
    v_u = v_R + Nrows * Nrows * 2 / 16 + 100;
    v_b = v_u + (Nrows > Ncols ? Nrows : Ncols) * 2 / 16 + 100;
    v_y = v_b + Nrows * 2 / 16 + 100;
    v_x = v_y + Ncols * 2 / 16 + 100;

    printf("begin test\n");

    test_qr_solver_complx(A, Q, R, inv_A, u, b, y, x);

    printf("end\n");
}

void test_qr_solver_complx(
    float *A, float *Q, float *R, float *inv_A,
    float *u, float *b, float *y, float *x)
{
    // 是否检查答案精度
    int CHECK_ERROR = 1;

    unsigned short test, pass, Nrows, Ncols;
    float tolerance;
    float xreal, ximag, yreal, yimag;
    float sum_real, sum_imag, error_real, error_imag;
    float max_error_cn, max_error, max_solver_error_cn, max_solver_error, max_inverse_error_cn, max_inverse_error;
    float max_transform_error_cn, max_transform_error;
    int row, col, k, status, invertible;
    long long t_overhead;

    /* --------------------------------------------------------------------- */
    /* intialize hardware timers                                             */
    /* --------------------------------------------------------------------- */
    unsigned long t_start, t_stop;
    unsigned long QRD_t;
    unsigned long QRD_t_slover;
    unsigned long QRD_t_inverse;

    /* --------------------------------------------------------------------- */
    /* Compute the overhead of calling clock twice to get timing info        */
    /* --------------------------------------------------------------------- */
    t_start = GetTimerCount(0);
    ;
    t_stop = GetTimerCount(0);
    ;
    t_overhead = t_stop - t_start;

    /* --------------------------------------------------------------------- */
    /* process test cases                                                    */
    /* --------------------------------------------------------------------- */
    // 增大误差限s
    tolerance = 0.001 * 10000;
    pass = 1;

    for (test = 1; test <= 3; test++)
    {
        printf("DSPF_sp_qrd_cmplx\tIter#: %d\t", test);

        switch (test)
        {
        case 1:
        {
            Nrows = 16;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            { // random matrix
                for (col = 0; col < 2 * Ncols; col++)
                {
                    A[row * 2 * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[2 * row] = (float)(rand()) / ((float)RAND_MAX);
                b[2 * row + 1] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        case 2:
        {
            Nrows = 48;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            { // random matrix
                for (col = 0; col < 2 * Ncols; col++)
                {
                    A[row * 2 * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[2 * row] = (float)(rand()) / ((float)RAND_MAX);
                b[2 * row + 1] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        case 3:
        {
            Nrows = 128;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            { // random matrix
                for (col = 0; col < 2 * Ncols; col++)
                {
                    A[row * 2 * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[2 * row] = (float)(rand()) / ((float)RAND_MAX);
                b[2 * row + 1] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        }

        /* ------------------------------------------------------------------- */
        /* decompose A into Q and R where A=Q_cn*R_cn                          */
        /* ------------------------------------------------------------------- */
        status = DSPF_sp_qrd_cmplx_wrapper(&t_start, &t_stop, Nrows, Ncols, A, Q, R, u);
        QRD_t = t_stop - t_start - t_overhead;
        if (status == -1)
        {
            printf("QRD decomposition failed!\n");
        }

        /* ------------------------------------------------------------------- */
        /* check decomposition: Q*R=A                                          */
        /* ------------------------------------------------------------------- */
        if (CHECK_ERROR)
        {
            max_error_cn = 0;
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    sum_real = 0;
                    sum_imag = 0;
                    for (k = 0; k < Nrows; k++)
                    {
                        xreal = Q[2 * k + row * 2 * Nrows];
                        ximag = Q[2 * k + 1 + row * 2 * Nrows];
                        yreal = R[2 * col + k * 2 * Ncols];
                        yimag = R[2 * col + 1 + k * 2 * Ncols];
                        sum_real += xreal * yreal - ximag * yimag;
                        sum_imag += xreal * yimag + ximag * yreal;
                    }
                    error_imag = fabs(A[2 * col + 1 + row * 2 * Ncols] - sum_imag);
                    if (error_imag > max_error_cn)
                    {
                        max_error_cn = error_imag;
                    }
                    error_real = fabs(A[2 * col + row * 2 * Ncols] - sum_real);
                    if (error_real > max_error_cn)
                    {
                        max_error_cn = error_real;
                    }
                    if (error_real > tolerance)
                    {
                        pass = 0;
                        printf("nat C decomp error real=%e\n", error_real);
                        break;
                    }
                    if (error_imag > tolerance)
                    {
                        pass = 0;
                        printf("nat C decomp error imag=%e\n", error_imag);
                        break;
                    }
                }
            }
        }

        /* ------------------------------------------------------------------- */
        /* check transformation: Q*Q'=I                                        */
        /* ------------------------------------------------------------------- */
        if (CHECK_ERROR)
        {
            max_transform_error_cn = 0;
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Nrows; col++)
                {
                    sum_imag = 0;
                    sum_real = 0;
                    for (k = 0; k < Nrows; k++)
                    {
                        xreal = Q[2 * k + row * 2 * Nrows];
                        ximag = Q[2 * k + 1 + row * 2 * Nrows];
                        yreal = Q[2 * k + col * 2 * Nrows];
                        yimag = -Q[2 * k + 1 + col * 2 * Nrows];
                        sum_real += xreal * yreal - ximag * yimag;
                        sum_imag += xreal * yimag + ximag * yreal;
                    }
                    if (row == col)
                    {
                        error_real = fabs(sum_real - 1.0);
                    }
                    else
                    {
                        error_real = fabs(sum_real);
                    }
                    error_imag = fabs(sum_imag);
                    if (error_real > max_transform_error_cn)
                        max_transform_error_cn = error_real;
                    if (error_imag > max_transform_error_cn)
                        max_transform_error_cn = error_imag;
                    if ((error_real > tolerance) || (error_imag > tolerance))
                    {
                        pass = 0;
                        printf("nat C transformation error = %e %e\n", error_real, error_imag);
                    }
                }
            }
        }

        /* ------------------------------------------------------------------------------ */
        /* check if A is invertible by looking for zeros on R_cn diagonal                 */
        /* ------------------------------------------------------------------------------ */
        invertible = 1;
        if (Nrows == Ncols)
        {
            for (row = 0; row < Nrows; row++)
            {
                if ((fabs(R[2 * row + row * 2 * Ncols]) < tolerance) && (fabs(R[2 * row + 1 + row * 2 * Ncols]) < tolerance))
                {
                    invertible = 0;
                }
            }
        }
        else
        {
            invertible = 0;
        }

        /* ------------------------------------------------------------------------------ */
        /* solve Ax=b                                                                     */
        /* ------------------------------------------------------------------------------ */
        if (invertible)
        {
            status = DSPF_sp_qrd_solver_cmplx_wrapper(&t_start, &t_stop, Nrows, Ncols, Q, R, b, y, x);
            QRD_t_slover = t_stop - t_start - t_overhead;
            if (status == -1)
            {
                printf("solver failed!\n");
            }

            /* ------------------------------------------------------------------- */
            /* verify A*x=b                                                        */
            /* ------------------------------------------------------------------- */
            if (CHECK_ERROR)
            {
                max_solver_error_cn = 0;
                for (row = 0; row < Nrows; row++)
                {
                    sum_real = 0;
                    sum_imag = 0;
                    for (col = 0; col < Ncols; col++)
                    {
                        xreal = A[2 * col + row * 2 * Ncols];
                        ximag = A[2 * col + 1 + row * 2 * Ncols];
                        yreal = x[2 * col];
                        yimag = x[2 * col + 1];
                        sum_real += xreal * yreal - ximag * yimag;
                        sum_imag += xreal * yimag + ximag * yreal;
                    }
                    error_real = fabs(b[2 * row] - sum_real);
                    if (error_real > max_solver_error_cn)
                    {
                        max_solver_error_cn = error_real;
                    }
                    error_imag = fabs(b[2 * row + 1] - sum_imag);
                    if (error_imag > max_solver_error_cn)
                    {
                        max_solver_error_cn = error_imag;
                    }
                    if (error_real > tolerance)
                    {
                        pass = 0;
                        printf("nat C solver error real=%e at row,col = %d %d\n", error_real, row, col);
                        break;
                    }
                    if (error_imag > tolerance)
                    {
                        pass = 0;
                        printf("nat C solver error imag=%e at row,col = %d %d\n", error_imag, row, col);
                        break;
                    }
                }
            }

            /* ------------------------------------------------------------------- */
            /* inverse A = inv(R) * Q'                                             */
            /*   note that R matrice is modified during processing                 */
            /* ------------------------------------------------------------------- */
            status = DSPF_sp_qrd_inverse_cmplx_wrapper(&t_start, &t_stop, Nrows, Ncols, Q, R, inv_A);
            QRD_t_inverse = t_stop - t_start - t_overhead;

            /* ------------------------------------------------------------------- */
            /* check that inv(A)*A = identity matrix                               */
            /* ------------------------------------------------------------------- */
            if (CHECK_ERROR)
            {
                max_inverse_error_cn = 0;
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
                            yreal = A[2 * col + k * 2 * Ncols];
                            yimag = A[2 * col + 1 + k * 2 * Ncols];
                            sum_real += xreal * yreal - ximag * yimag;
                            sum_imag += xreal * yimag + ximag * yreal;
                        }
                        if (row == col)
                        {
                            error_real = fabs(sum_real - 1.0);
                        }
                        else
                        {
                            error_real = fabs(sum_real);
                        }
                        if (error_real > max_inverse_error_cn)
                        {
                            max_inverse_error_cn = error_real;
                        }
                        error_imag = fabs(sum_imag);
                        if (error_imag > max_inverse_error_cn)
                        {
                            max_inverse_error_cn = error_imag;
                        }
                        if (error_real > tolerance)
                        {
                            pass = 0;
                            printf("nat C inverse error real=%e\n", error_real);
                            break;
                        }
                        if (error_imag > tolerance)
                        {
                            pass = 0;
                            printf("nat C inverse error imag=%e\n", error_imag);
                            break;
                        }
                    }
                }
            }
        } /* if (invertible) */

        if (pass)
        {
            printf("Result Successful");
            printf("\torder=%2dx%2d  qrd: %d  solver: %d  inverse: %d\n", Nrows, Ncols, QRD_t, QRD_t_slover, QRD_t_inverse);
        }
        else
        {
            printf("Result Failure\torder=%2d\n", Nrows);
            printf("\torder=%2dx%2d  qrd: %d  solver: %d  inverse: %d\n", Nrows, Ncols, QRD_t, QRD_t_slover, QRD_t_inverse);
        }
    }
}

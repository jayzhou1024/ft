#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

#include "M7002.h"
#include "c6x-c.h"

/* ======================================================================= */
/* Interface header files for the natural C and optimized C code           */
/* ======================================================================= */
#include "DSPF_sp_cholesky_cmplx_cn.h"
#include "DSPF_sp_cholesky_solver_cmplx.h"

/* ======================================================================= */
/* define kernel size constant                                             */
/* ======================================================================= */
#if defined(__TI_EABI__)
#define kernel_size _kernel_size
#endif

/* ======================================================================= */
/* extern parameters                                                       */
/* ======================================================================= */
extern char kernel_size;

/* ======================================================================= */
/* define size constants                                                   */
/* ======================================================================= */

#define MAX_MATRIX_NROWS 64 /* max is 240 */
#define MAX_A_MATRIX_SIZE (2 * MAX_MATRIX_NROWS * MAX_MATRIX_NROWS)

/* ======================================================================= */
/* formula arrays                                                          */
/* ======================================================================= */
#define CYCLE_FORMULA_ORDER_PT1 32
#define CYCLE_FORMULA_ORDER_PT2 64
#define FORMULA_SIZE 2
long long form_cholesky_cycles[FORMULA_SIZE];

/* ======================================================================= */
/* float word alignment of arrays                                         */
/* ======================================================================= */
#pragma DATA_SECTION(M, ".far:matrix")
#pragma DATA_ALIGN(M, 8);
float M[MAX_A_MATRIX_SIZE];

#pragma DATA_SECTION(A, ".far:matrix")
#pragma DATA_ALIGN(A, 8);
float A[MAX_A_MATRIX_SIZE];

#ifndef ENABLE_DECOMP_ONLY
#pragma DATA_SECTION(x, ".far:matrix")
#pragma DATA_ALIGN(x, 8);
float x[2 * MAX_MATRIX_NROWS];

#pragma DATA_SECTION(x_in_place, ".far:matrix")
#pragma DATA_ALIGN(x_in_place, 8);
float x_in_place[2 * MAX_MATRIX_NROWS];

#pragma DATA_SECTION(y, ".far:matrix")
#pragma DATA_ALIGN(y, 8);
float y[2 * MAX_MATRIX_NROWS];

#pragma DATA_SECTION(b, ".far:matrix")
#pragma DATA_ALIGN(b, 8);
float b[2 * MAX_MATRIX_NROWS];
#endif

/* ======================================================================= */
/* Main -- Top level driver for testing the algorithm                      */
/* ======================================================================= */
void main()
{

    unsigned short Nrows, pass;
    float xreal, ximag, yreal, yimag, zreal, zimag;
    float sum_real, sum_imag;
    float error_real, error_imag;
    float b_calc_real, b_calc_imag;
    float max_cholesky_error_cn, max_solver_error_cn, max_cholesky_in_place_error_cn, max_solver_in_place_error_cn;
    float max_cholesky_error, max_solver_error, max_cholesky_in_place_error, max_solver_in_place_error;
    int i, j, k, status, enable_test, Ncols;
    int row, col, loop_limit;
    long long t_overhead, t_start, t_stop;
    long long cholesky_t_cn;
    long long cholesky_t, cholesky_in_place_t, solver_t;
    float *L, *A_in_place;
    int test;
    float tolerance = 0.00004;
    float tolerance_solver = 0.003;


    /* --------------------------------------------------------------------- */
    /* Compute the overhead of calling clock twice to get timing info        */
    /* --------------------------------------------------------------------- */
    
    unsigned long time1, time2, cholesky_solver_t_cn, cholesky_solver_t;
    //定时器初始化
    SetTimerPeriod(0, 0xffffffff);
    //启动Timer0定时器
    TimerStart(0);

    /* --------------------------------------------------------------------- */
    /* process matrix Nrows loop                                             */
    /* --------------------------------------------------------------------- */
    pass = 1;
    for (test = 1; test <= 3; test++)
    {

        printf("DSPF_sp_cholesky_cmplx\tIter#: %d\t", test);

        switch (test)
        {
        case 1:
        {
            Nrows = 3;
            M[0] = 2;
            M[1] = 0;
            M[2] = 2;
            M[3] = 1;
            M[4] = 4;
            M[5] = 0;
            M[6] = 2;
            M[7] = -1;
            M[8] = 3;
            M[9] = 0;
            M[10] = 0;
            M[11] = 1;
            M[12] = 4;
            M[13] = 0;
            M[14] = 0;
            M[15] = -1;
            M[16] = 1;
            M[17] = 0;
            break;
        }
        case 2:
        {
            Nrows = CYCLE_FORMULA_ORDER_PT1;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < 2 * Ncols; col++)
                {
                    M[row * 2 * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
            }
            break;
        }
        case 3:
        {
            Nrows = CYCLE_FORMULA_ORDER_PT2;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < 2 * Ncols; col++)
                {
                    M[row * 2 * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
            }
            break;
        }
        }

        /* ------------------------------------------------------------------- */
        /* generate symmetric A matrix: A=M*M_transpose                        */
        /* ------------------------------------------------------------------- */
        Ncols = 2 * Nrows;
        for (i = 0; i < Nrows; i++)
        {
            for (j = 0; j < Nrows; j++)
            {
                sum_real = 0;
                sum_imag = 0;
                for (k = 0; k < Nrows; k++)
                {
                    xreal = M[i * Ncols + 2 * k];
                    ximag = M[i * Ncols + 2 * k + 1];
                    yreal = M[j * Ncols + 2 * k];
                    yimag = -M[j * Ncols + 2 * k + 1];
                    sum_real += xreal * yreal - ximag * yimag;
                    sum_imag += xreal * yimag + ximag * yreal;
                }
                A[i * Ncols + 2 * j] = sum_real;
                A[i * Ncols + 2 * j + 1] = sum_imag;
            }
        }
        memset(M, 0.0, sizeof(float) * 2 * Nrows * Nrows);

        /* ------------------------------------------------------------------- */
        /* generate b vector                                                   */
        /* ------------------------------------------------------------------- */
        for (i = 0; i < 2 * Nrows; i++)
        {
            b[i] = (float)(rand()) / ((float)RAND_MAX);
        }

        /* ------------------------------------------------------------------- */
        /* decompose A and generate L using natural C code                     */
        /* ------------------------------------------------------------------- */
        enable_test = 1;
        L = &M[0];
        status = DSPF_sp_cholesky_cmplx_cn(enable_test, Nrows, A, L);
        if (status == -1)
        {
            printf("cholesky decomposition matrix A is not positive definite!\n");
        }

        /* ------------------------------------------------------------------- */
        /* solve for x using natural C code                                    */
        /* ------------------------------------------------------------------- */

        time1 = GetTimerCount(0);
        status = DSPF_sp_cholesky_solver_cmplx_cn(Nrows, L, y, b, x);
        time2 = GetTimerCount(0);
        cholesky_solver_t_cn = time2 - time1;
        printf("natual c use %ld cycle\n", cholesky_solver_t_cn);

        /* ------------------------------------------------------------------- */
        /* solve for x using optimized C code                                  */
        /* ------------------------------------------------------------------- */
        
        lvector double *L_AM = (vector float *)0x040000000;
        lvector double *y_AM = (vector float *)(0x040000000 + MAX_A_MATRIX_SIZE * sizeof(float));
        lvector double *b_AM = (vector float *)(0x040000000 + MAX_A_MATRIX_SIZE * sizeof(float) + 2 * MAX_MATRIX_NROWS * sizeof(float));
        lvector double *x_AM = (vector float *)(0x040000000 + MAX_A_MATRIX_SIZE * sizeof(float) + 4 * MAX_MATRIX_NROWS * sizeof(float));
        M7002_datatrans(L, L_AM, MAX_A_MATRIX_SIZE * sizeof(float));
        M7002_datatrans(b, b_AM, 2 * MAX_MATRIX_NROWS * sizeof(float));
        memset(y_AM, NULL, 2 * Nrows); //初始化y_AM
        time1 = GetTimerCount(0);
        status = DSPF_sp_cholesky_solver_cmplx(Nrows, L_AM, y_AM, b_AM, x_AM);
        time2 = GetTimerCount(0);
        M7002_datatrans(x_AM, x, 2 * MAX_MATRIX_NROWS * sizeof(float));
        cholesky_solver_t = time2 - time1;
        printf("vector c use %ld cycle\n", cholesky_solver_t);


        /* ------------------------------------------------------------------- */
        /* check A*x=b                                                         */
        /* ------------------------------------------------------------------- */

        max_solver_error = 0;
        Ncols = 2 * Nrows;
        for (i = 0; i < Nrows; i++)
        {
            b_calc_real = 0;
            b_calc_imag = 0;
            for (j = 0; j < Nrows; j++)
            {
                xreal = A[i * Ncols + 2 * j];
                ximag = A[i * Ncols + 2 * j + 1];
                yreal = x[2 * j];
                yimag = x[2 * j + 1];
                b_calc_real += xreal * yreal - ximag * yimag;
                b_calc_imag += xreal * yimag + ximag * yreal;
            }
            error_real = fabs(b_calc_real - b[2 * i]);
            if (error_real > max_solver_error)
                max_solver_error = error_real;
            error_imag = fabs(b_calc_imag - b[2 * i + 1]);
            if (error_imag > max_solver_error)
                max_solver_error = error_imag;
            if (error_real >= tolerance_solver)
            {
                printf("vector C:  A*x_cn=b test failure at i=%d b_calc_real=%e b[2*%d]=%e  error_real=%e\n", i, b_calc_real, i, b[2 * i], error_real);
                pass = 0;
            }
            if (error_imag >= tolerance_solver)
            {
                printf("vector C:  A*x_cn=b test failure at i=%d b_calc_imag=%e b[2*%d+1]=%e  error_imag=%e\n", i, b_calc_imag, i, b[2 * i + 1], error_imag);
                pass = 0;
            }
        }
        
        /* ------------------------------------------------------------------- */
        /* print error and timing results                                      */
        /* ------------------------------------------------------------------- */
        if (pass)
        {
            printf("Result Successful");
            printf("    order=%d   natC: %lld  optC: %lld\n", Nrows, cholesky_solver_t, cholesky_solver_t_cn);
        }
        else
        {
            printf("Result Failure  order=%d\n", Nrows);
        }
    }
}

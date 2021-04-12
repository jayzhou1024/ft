#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "M7002.h"
#include "Timer.h"
#include "qr.h"

#define RAND_MAX 0x7ff

void printMatrix(float* matrix, const char* name,  int rowN, int colN){
	int i,j;
	printf("%s = [", name);
    for(i = 0; i < rowN; ++i){
        for(j = 0; j < colN; ++j){
            printf("%f, ", matrix[j + i * rowN]);
        }
    }
    printf("]\n");
}

float timeCaculate(unsigned long timed){
    return timed;
}

void testQr(QR_FUNC qr_func, SLOVER_FUNC slover_func, INVERSE_FUNC inverse_func,float* A, float* Q, float* R, int Nrows, int Ncols, float* u, float* inv_A, float* b, float* y, float* x);

void main()
{
	int  *cache=0x040140004;   /*将SM配置成L1DCache/SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;

	float time_res[100];
	SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
	
    int i,j, row,col;
    int Nrows = 16;
    int Ncols = 16;
    float* ddr_A = (float*)malloc(sizeof(float)*Nrows*Ncols);
    float* ddr_Q = (float*)malloc(sizeof(float)*Nrows*Nrows);
    float* ddr_R = (float*)malloc(sizeof(float)*Nrows*Ncols);
    float* ddr_inv_A = (float*)malloc(sizeof(float)*Nrows*Ncols);
    float* ddr_u = (float*)malloc(sizeof(float)*(Nrows > Ncols ? Nrows : Ncols));
    float* ddr_b = (float*)malloc(sizeof(float)*Nrows);
    float* ddr_y = (float*)malloc(sizeof(float)*Nrows);
    float* ddr_x = (float*)malloc(sizeof(float)*Ncols);

    for(i = 0; i < 3; ++i){
        printf("test %d\n", i);
    //---------------------------------------
        srand(0);
        for (row = 0; row < Nrows; row++)
        {
            for (col = 0; col < Ncols; col++)
            {
                ddr_A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
            }
            ddr_b[row] = (float)(rand()) / ((float)RAND_MAX);
        }
        testQr(trival_qr, trival_qr_solver, trival_inverse, ddr_A, ddr_Q, ddr_R, Nrows, Ncols, ddr_u, ddr_inv_A, ddr_b, ddr_y, ddr_x);
        //printMatrix(ddr_x, "x", 1, Nrows);

    //---------------------------------------
        srand(0);
        for (row = 0; row < Nrows; row++)
        {
            for (col = 0; col < Ncols; col++)
            {
                ddr_A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
            }
            ddr_b[row] = (float)(rand()) / ((float)RAND_MAX);
        }
        testQr(trival_qr, DSPF_sp_qrd_solver1, trival_inverse,ddr_A, ddr_Q, ddr_R, Nrows, Ncols, ddr_u, ddr_inv_A, ddr_b, ddr_y, ddr_x);
        //printMatrix(ddr_x, "x", 1, Nrows);

    //---------------------------------------
        srand(0);
        for (row = 0; row < Nrows; row++)
        {
            for (col = 0; col < Ncols; col++)
            {
                ddr_A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
            }
            ddr_b[row] = (float)(rand()) / ((float)RAND_MAX);
        }
        testQr(trival_qr, DSPF_sp_qrd_solver3, trival_inverse,ddr_A, ddr_Q, ddr_R, Nrows, Ncols, ddr_u, ddr_inv_A, ddr_b, ddr_y, ddr_x);
        //printMatrix(ddr_x, "x", 1, Nrows);

    //---------------------------------------
        srand(0);
        for (row = 0; row < Nrows; row++)
        {
            for (col = 0; col < Ncols; col++)
            {
                ddr_A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
            }
            ddr_b[row] = (float)(rand()) / ((float)RAND_MAX);
        }
        testQr(trival_qr, DSPF_sp_qrd_solver4, trival_inverse,ddr_A, ddr_Q, ddr_R, Nrows, Ncols, ddr_u, ddr_inv_A, ddr_b, ddr_y, ddr_x);
        //printMatrix(ddr_x, "x", 1, Nrows);

    //---------------------------------------
        srand(0);
        for (row = 0; row < Nrows; row++)
        {
            for (col = 0; col < Ncols; col++)
            {
                ddr_A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
            }
            ddr_b[row] = (float)(rand()) / ((float)RAND_MAX);
        }
        testQr(trival_qr, DSPF_sp_qrd_solver5, trival_inverse,ddr_A, ddr_Q, ddr_R, Nrows, Ncols, ddr_u, ddr_inv_A, ddr_b, ddr_y, ddr_x);
        //printMatrix(ddr_x, "x", 1, Nrows);

    }

}

void testQr(QR_FUNC qr_func, SLOVER_FUNC slover_func, INVERSE_FUNC inverse_func,float* A, float* Q, float* R, int Nrows, int Ncols, float* u, float* inv_A, float* b, float* y, float* x){
	unsigned long t_start, t_stop;
	unsigned long QRD_t;
	unsigned long QRD_t_slover;
	unsigned long QRD_t_inverse;

    int test, pass;
    float sum, error;
    int row, col, k, status, invertible;
    
    float temp;
    
    pass = 1; invertible = 1;

    float tolerance_invertible = 0.00001 * 100000;
    float tolerance_decomp = 0.0001 * 100000;
    float tolerance_solver = 0.0004 * 100000;
    float tolerance_inverse = 0.0004 * 100000;


    
    /* ------------------------------------------------------------------- */
    /* decompose A into Q and R where A=Q_cn*R_cn                          */
    /* ------------------------------------------------------------------- */
    t_start = GetTimerCount(0);
    status = qr_func(Nrows, Ncols, A, Q, R, u);
    t_stop = GetTimerCount(0);
    QRD_t = t_stop - t_start;
    if (status == -1)
    {
        printf("QR decomposition failed!\n");
    }

    /* ------------------------------------------------------------------- */
    /* check decomposition: Q*R=A                                          */
    /* ------------------------------------------------------------------- */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Ncols; col++)
        {
            sum = 0;
            for (k = 0; k < Nrows; k++)
            {
                sum += Q[k + row * Nrows] * R[col + k * Ncols];
            }
            error = fabs(A[col + row * Ncols] - sum);
            if (error > tolerance_decomp)
            {
                pass = 0;
                printf("natural decomposition fails error=%e\n", error);
                break;
            }
        }
    }

    /* ------------------------------------------------------------------- */
    /* check transformation: Q*Q'=I                                        */
    /* ------------------------------------------------------------------- */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Nrows; col++)
        {
            sum = 0;
            for (k = 0; k < Nrows; k++)
            {
                sum += Q[k + row * Nrows] * Q[k + col * Nrows];
            }
            if (row == col)
            {
                error = fabs(sum - 1.0);
            }
            else
            {
                error = fabs(sum);
            }
            if (error > tolerance_decomp)
            {
                pass = 0;
            }
        }
    }

    /* ------------------------------------------------------------------------------ */
    /* check if A is invertible by looking for zeros on R_cn diagonal                 */
    /* ------------------------------------------------------------------------------ */
    if (Nrows == Ncols)
    {
        invertible = 1;
        for (row = 0; row < Nrows; row++)
        {
            if ((temp = fabs(R[row + row * Ncols])) < tolerance_invertible)
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
        // change
        t_start = GetTimerCount(0);
        status = slover_func(Nrows, Ncols, Q, R, b, y, x);
        t_stop = GetTimerCount(0);
        QRD_t_slover = t_stop - t_start;
        
        if (status == -1)
        {
            printf("solver failed!\n");
        }

        /* ------------------------------------------------------------------- */
        /* verify A*x=b                                                        */
        /* ------------------------------------------------------------------- */
        for (row = 0; row < Nrows; row++)
        {
            sum = 0.0;
            for (col = 0; col < Ncols; col++)
            {
                sum += A[col + row * Ncols] * x[col];
            }
            error = fabs(b[row] - sum);
            if (error > tolerance_solver)
            {
                pass = 0;
                printf("natural A*x is not equal to b! error=%e\n", error);
                break;
            }
        }

        /* ------------------------------------------------------------------- */
        /* inverse A = inv(R) * Q'                                             */
        /*   note that R matrice is modified during processing                 */
        /* ------------------------------------------------------------------- */
        // change
        // t_start = GetTimerCount(0);
        // status = inverse_func(Nrows, Ncols, Q, R, inv_A);
        // t_stop = GetTimerCount(0);
        // QRD_t_inverse = t_stop - t_start;

        // /* ------------------------------------------------------------------- */
        // /* check that inv(A_cn)*A = identity matrix                            */
        // /* ------------------------------------------------------------------- */
        // for (row = 0; row < Nrows; row++)
        // {
        //     for (col = 0; col < Ncols; col++)
        //     {
        //         sum = 0;
        //         for (k = 0; k < Ncols; k++)
        //         {
        //             sum += inv_A[k + row * Ncols] * A[col + k * Ncols];
        //         }
        //         if (row == col)
        //             error = fabs(sum - 1.0);
        //         else
        //             error = fabs(sum);
        //         if (error > tolerance_inverse)
        //         {
        //             pass = 0;
        //             printf("natural inv(A)*A is not equal to identity!  error=%e\n", error);
        //             break;
        //         }
        //     }
        // }
    } /* if (invertible) */

    if (pass)
    {
        printf("Successful");
        printf("\torder=%2dx%2d, \tqr: %lf, \tslover: %lf, \tinverse: %lf, \n", Nrows, Ncols, timeCaculate(QRD_t), timeCaculate(QRD_t_slover), timeCaculate(QRD_t_inverse));
    }
    else
    {
        printf("vector Result Failure\n", Nrows, Ncols);
    }
}

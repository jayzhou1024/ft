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


#define MAX_NROW 128
#define MAX_NCOL 128
vector float *v_A;
vector float *v_Q;
vector float *v_R;
vector float *v_u;
vector float *v_b;
vector float *v_y;
vector float *v_x;
float A[MAX_NROW * MAX_NCOL];
float Q[MAX_NROW * MAX_NCOL];
float R[MAX_NROW * MAX_NCOL];
float inv_A[MAX_NROW * MAX_NCOL];
float u[MAX_NROW];
float b[MAX_NROW];
float y[MAX_NROW];
float x[MAX_NCOL];

void testQr();

int DSPF_sp_qrd_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *A, float *Q, float *R, float *u){
    *t_start = GetTimerCount(0);
    int status = trival_qr(Nrows, Ncols, A, Q, R, u);
    *t_stop = GetTimerCount(0);
    return status;
}

int DSPF_sp_qrd_solver_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{    
    int status;
    {
        M7002_datatrans(Q, v_Q, sizeof(float) * Ncols * Nrows);
        M7002_datatrans(R, v_R, sizeof(float) * Ncols * Nrows);
        M7002_datatrans(b, v_b, sizeof(float) * Nrows);

        *t_start = GetTimerCount(0);
        //status = DSPF_sp_qrd_solver_asm(Nrows, Ncols, v_Q, v_R, v_b, v_y, v_x);
        status = DSPF_sp_qrd_solver7(Nrows, Ncols, v_Q, v_R, v_b, v_y, v_x);
        *t_stop = GetTimerCount(0);
        M7002_datatrans(v_x, x, sizeof(float) * Ncols);
        M7002_datatrans(v_y, y, sizeof(float) * Nrows);
        printMatrix(x, "x", 1, Ncols);
        printMatrix(y, "y", 1, Nrows);
    }
    {
        // trival_version
        status = trival_qr_solver(Nrows, Ncols, Q, R, b ,y, x);
        printMatrix(x, "x", 1, Ncols);
        printMatrix(y, "y", 1, Nrows);
    }
    return status;
}

int DSPF_sp_qrd_inverse_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, float *Q, float *R, float *inv_A){
    *t_start = GetTimerCount(0);
    int status = trival_inverse(Nrows, Ncols, Q, R, inv_A);
    *t_stop = GetTimerCount(0);
    return status;
}


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

	SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
	
    v_A = 0x040000000;
    v_Q = v_A + MAX_NROW * MAX_NCOL / 16 + 100;
    v_R = v_Q + MAX_NROW * MAX_NCOL / 16 + 100;
    v_u = v_R + MAX_NROW * MAX_NCOL / 16 + 100;
    v_b = v_u + (MAX_NROW > MAX_NCOL ? MAX_NROW : MAX_NCOL) / 16 + 100;
    v_y = v_b + MAX_NROW / 16 + 100;
    v_x = v_y + MAX_NCOL / 16 + 100;

    testQr();

}

void testQr() {
	int t_start, t_stop;
	int QRD_t;
	int QRD_t_slover;
	int QRD_t_inverse;

    int test, pass;
    float sum, error;
    int row, col, k, status, invertible;
    
    float temp;
    
    pass = 1; invertible = 1;

    float tolerance_invertible = 0.00001 * 100000;
    float tolerance_decomp = 0.0001 * 100000;
    float tolerance_solver = 0.0004 * 100000;
    float tolerance_inverse = 0.0004 * 100000;

    
    int Nrows;
    int Ncols;

    for (test=3;test<=4;test++) {
	    printf("DSPF_dp_qrd\tIter#: %d\t", test);
        switch(test) {
        case 1: {
            Nrows = 16;
            Ncols = 16;
            srand(0);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[row] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        case 2: {
            Nrows = 48;
            Ncols = 48;
            srand(0);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[row] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        case 3: {
            Nrows = 128;
            Ncols = 128;
            srand(0);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[row] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        case 4: {
            Nrows = 51;
            Ncols = 51;
            srand(0);
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    A[row * Ncols + col] = (float)(rand()) / ((float)RAND_MAX);
                }
                b[row] = (float)(rand()) / ((float)RAND_MAX);
            }
            break;
        }
        }
    
        /* ------------------------------------------------------------------- */
        /* decompose A into Q and R where A=Q_cn*R_cn                          */
        /* ------------------------------------------------------------------- */
        status = DSPF_sp_qrd_wrapper(&t_start, &t_stop, Nrows, Ncols, A, Q, R, u);
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
            status = DSPF_sp_qrd_solver_wrapper(&t_start, &t_stop, Nrows, Ncols, Q, R, b, y, x);
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
            status = DSPF_sp_qrd_inverse_wrapper(&t_start, &t_stop, Nrows, Ncols, Q, R, inv_A);
            QRD_t_inverse = t_stop - t_start;

            /* ------------------------------------------------------------------- */
            /* check that inv(A_cn)*A = identity matrix                            */
            /* ------------------------------------------------------------------- */
            for (row = 0; row < Nrows; row++)
            {
                for (col = 0; col < Ncols; col++)
                {
                    sum = 0;
                    for (k = 0; k < Ncols; k++)
                    {
                        sum += inv_A[k + row * Ncols] * A[col + k * Ncols];
                    }
                    if (row == col)
                        error = fabs(sum - 1.0);
                    else
                        error = fabs(sum);
                    if (error > tolerance_inverse)
                    {
                        pass = 0;
                        printf("natural inv(A)*A is not equal to identity!  error=%e\n", error);
                        break;
                    }
                }
            }
        } /* if (invertible) */

        if (pass)
        {
            printf("Successful");
            printf("\torder=%2dx%2d, \tqr: %d, \tsolver: %d, \tinverse: %d, \n", Nrows, Ncols, QRD_t, QRD_t_slover, QRD_t_inverse);
        }
        else
        {
            printf("vector Result Failure\n", Nrows, Ncols);
        }
    }

}

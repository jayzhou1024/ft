#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "M7002.h"
#include "Timer.h"

#include "version.h"

#define RAND_MAX 0x7ff

void printMatrix(double *matrix, const char *name, int rowN, int colN){
    int i, j;
    printf("%s = [", name);
    for (i = 0; i < rowN; ++i)
    {
        for (j = 0; j < colN; ++j)
        {
            printf("%lf, ", matrix[j + i * rowN]);
        }
        printf("\n");
    }
    printf("]\n");
}

#define MAX_NROW 64
#define MAX_NCOL 64
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
    double *A, double *Q, double *R, double *inv_A,
    double *u, double *b, double *y, double *x);

int DSPF_sp_qrd_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, double *A, double *Q, double *R, double *u){
    *t_start = GetTimerCount(0);
    int status = DSPF_dp_qrd_cmplx_cn(Nrows, Ncols, A, Q, R, u);
    *t_stop = GetTimerCount(0);
    return status;
}

int DSPF_sp_qrd_solver_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, double *Q, double *R, double *b, double *y, double *x){
    
    int status;

    {
        M7002_datatrans(Q, v_Q, sizeof(double) * Ncols * Nrows * 2);
        M7002_datatrans(R, v_R, sizeof(double) * Ncols * Nrows * 2);
        M7002_datatrans(b, v_b, sizeof(double) * Nrows * 2);
        //printMatrix(Q, "Q", Nrows, Ncols*2);
        //printMatrix(R, "R", Nrows, Ncols*2);

        *t_start = GetTimerCount(0);
        status = DSPF_dp_qrd_solver_cmplx_v1(Nrows, Ncols, v_Q, v_R, v_b, v_y, v_x);
        *t_stop = GetTimerCount(0);
        M7002_datatrans(v_y, y, sizeof(double) * Ncols * Nrows * 2);
        M7002_datatrans(v_x, x, sizeof(double) * Ncols * Nrows * 2);
        printMatrix(x, "x", 1, Nrows*2);
        printMatrix(y, "y", 1, Nrows*2);
    }
    {
        // trival_version
        *t_start = GetTimerCount(0);
        status = DSPF_dp_qrd_solver_cmplx_cn(Nrows, Ncols, Q, R, b ,y, x);
        *t_stop = GetTimerCount(0);
        printMatrix(x, "x", 1, Nrows*2);
        printMatrix(y, "y", 1, Nrows*2);
    }

    return status;
}

int DSPF_sp_qrd_inverse_cmplx_wrapper(unsigned int* t_start, unsigned int* t_stop, const int Nrows, const int Ncols, double *Q, double *R, double *inv_A){
    *t_start = GetTimerCount(0);
    int status = DSPF_dp_qrd_inverse_cmplx_cn(Nrows, Ncols, Q, R, inv_A);
    *t_stop = GetTimerCount(0);
    return status;
}

void test_dp_cplx()
{
        
    int* shuf_addr = 0x040160000;
    // 混洗1：提取奇数项
    *(shuf_addr + 0) = 0x06040200;
    *(shuf_addr + 1) = 0x0e0c0a08;
    *(shuf_addr + 2) = 0x16141210;
    *(shuf_addr + 3) = 0x1e1c1a18;
    // 混洗2：提取偶数项
    *(shuf_addr + 4) = 0x07050301;
    *(shuf_addr + 5) = 0x0f0d0b09;
    *(shuf_addr + 6) = 0x17151311;
    *(shuf_addr + 7) = 0x1f1d1b19;

    vector float vf1;
    vector float vf2;
    vector float vf3;
    vector float vf4;
    // 混洗测试
    float farr1[16] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
    float farr2[16] = {17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32};
    M7002_datatrans(farr1, &vf1, sizeof(float) * 16);
    M7002_datatrans(farr2, &vf2, sizeof(float) * 16);
    shuff_mode(0);
    vf3 = vec_shufw ( 0, vf1, vf2 );
    shuff_mode(1);
    vf4 = vec_shufw ( 1, vf1, vf2 );
    v_A[0] = vf3;
    v_A[1] = vf4;


    // 双精度乘法
    lvector double vd1_1; //乘数1
    lvector double vd1_2; //乘数1续
    lvector double vd2_1; //乘数2
    lvector double vd2_2; //乘数2续
    vector float hi1_1, lo1_1; //乘数的高低32位(两个寄存器)
    vector float hi1_2, lo1_2;
    vector float hi2_1, lo2_1;
    vector float hi2_2, lo2_2;

    lvector double vd1_r; //乘数的虚部实部分离
    lvector double vd1_i;
    lvector double vd2_r;
    lvector double vd2_i;
    vector float hi1_i, lo1_i; //实部虚部的高低32位
    vector float hi1_r, lo1_r;
    vector float hi2_i, lo2_i;
    vector float hi2_r, lo2_r;

    lvector double vdres_r;
    lvector double vdres_i;

    double darr1[16] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
    double darr2[16] = {17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32};
    // 传送到向量空间
    M7002_datatrans(darr1, &v_x, sizeof(double) * 8);
    M7002_datatrans(darr1 + 8, &v_x + 1, sizeof(double) * 8);
    M7002_datatrans(darr2, &v_x + 2, sizeof(double) * 8);
    M7002_datatrans(darr2 + 8, &v_x + 3, sizeof(double) * 8);
    // 模2取
    vd1_1 = vec_ldm2(0, (lvector double*)&v_x); //乘数1
    vd1_2 = vec_ldm2(0, (lvector double*)(&v_x + 1)); //乘数1续
    vd2_1 = vec_ldm2(0, (lvector double*)(&v_x + 2)); //乘数2
    vd2_2 = vec_ldm2(0, (lvector double*)(&v_x + 3)); //乘数2续
    // 获取高位低位寄存器 double -> float,float
    hi1_1 = ((vector float*)&vd1_1)[1];
    lo1_1 = ((vector float*)&vd1_1)[0];
    hi1_2 = ((vector float*)&vd1_2)[1];
    lo1_2 = ((vector float*)&vd1_2)[0];
    hi2_1 = ((vector float*)&vd2_1)[1];
    lo2_1 = ((vector float*)&vd2_1)[0];
    hi2_2 = ((vector float*)&vd2_2)[1];
    lo2_2 = ((vector float*)&vd2_2)[0];

    // 实部虚部靠混洗分离
    shuff_mode(0); //乘数1实部
    hi1_r = vec_shufw ( 0, hi1_1, hi1_2 );
    lo1_r = vec_shufw ( 0, lo1_1, lo1_2 );
    //乘数2实部
    hi2_r = vec_shufw ( 0, hi2_1, hi2_2 );
    lo2_r = vec_shufw ( 0, lo2_1, lo2_2 );
    shuff_mode(1); //乘数1虚部
    hi1_i = vec_shufw ( 1, hi1_1, hi1_2 );
    lo1_i = vec_shufw ( 1, lo1_1, lo1_2 );
    //乘数2虚部
    hi2_i = vec_shufw ( 1, hi2_1, hi2_2 );
    lo2_i = vec_shufw ( 1, lo2_1, lo2_2 );

    // 实部虚部结合，(汇编层面可以直接操作寄存器)
    ((vector float*)&vd1_r)[1] = hi1_r;
    ((vector float*)&vd1_r)[0] = lo1_r;
    ((vector float*)&vd1_i)[1] = hi1_i;
    ((vector float*)&vd1_i)[0] = lo1_i;
    ((vector float*)&vd2_r)[1] = hi2_r;
    ((vector float*)&vd2_r)[0] = lo2_r;
    ((vector float*)&vd2_i)[1] = hi2_i;
    ((vector float*)&vd2_i)[0] = lo2_i;
    
    vdres_r = vec_muli(vd1_i, vd2_i);
    vdres_r = vec_mulb(vd1_r, vd2_r, vdres_r); //vec_mulb, [src1 * src2 -src3]

    vdres_i = vec_muli(vd1_r, vd2_r);
    vdres_i = vec_mula(vd1_i, vd2_i, vdres_i);
    
    // 存储，防止优化
    //M7002_datatrans(&vdres_r, &v_Q, sizeof(double) * 16);
    //M7002_datatrans(&vdres_i, &v_R, sizeof(double) * 16);
    *(lvector double*)v_Q = vdres_r;
    *(lvector double*)v_R = vdres_i;

    return;
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

    
    int Nrows = MAX_NROW;
    int Ncols = MAX_NCOL;
    v_A = 0x040000000;
    v_Q = v_A + Nrows * Nrows * 2 / 16 + 100;
    v_R = v_Q + Nrows * Nrows * 2 / 16 + 100;
    v_u = v_R + (Nrows > Ncols ? Nrows : Ncols) * 2 / 16 + 100;
    v_b = v_u + Nrows * 2 / 16 + 100;
    v_y = v_b + Nrows * 2 / 16 + 100;
    v_x = v_y + Ncols * 2 / 16 + 100;

    printf("begin test\n");

    //test_qr_solver_complx(A, Q, R, inv_A, u, b, y, x);
    test_dp_cplx();

    printf("end\n");
}

void test_qr_solver_complx(
    double *A, double *Q, double *R, double *inv_A,
    double *u, double *b, double *y, double *x)
{
    // 是否检查答案精度
    int CHECK_ERROR = 1;

    unsigned short test, pass, Nrows, Ncols;
    double tolerance;
    double xreal, ximag, yreal, yimag;
    double sum_real, sum_imag, error_real, error_imag;
    double max_error_cn, max_error, max_solver_error_cn, max_solver_error, max_inverse_error_cn, max_inverse_error;
    double max_transform_error_cn, max_transform_error;
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
                    A[row * 2 * Ncols + col] = (double)(rand()) / ((double)RAND_MAX);
                }
                b[2 * row] = (double)(rand()) / ((double)RAND_MAX);
                b[2 * row + 1] = (double)(rand()) / ((double)RAND_MAX); 
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
                    A[row * 2 * Ncols + col] = (double)(rand()) / ((double)RAND_MAX);
                }
                b[2 * row] = (double)(rand()) / ((double)RAND_MAX);
                b[2 * row + 1] = (double)(rand()) / ((double)RAND_MAX);
            }
            break;
        }
        case 3:
        {
            Nrows = 64;
            Ncols = Nrows;
            srand(1);
            for (row = 0; row < Nrows; row++)
            { // random matrix
                for (col = 0; col < 2 * Ncols; col++)
                {
                    A[row * 2 * Ncols + col] = (double)(rand()) / ((double)RAND_MAX);
                }
                b[2 * row] = (double)(rand()) / ((double)RAND_MAX);
                b[2 * row + 1] = (double)(rand()) / ((double)RAND_MAX);
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

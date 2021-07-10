#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "version.h"
#include "M7002.h"


static void complex_sp_div(float x_real, float x_imag, float y_real, float y_imag, float *z_real, float *z_imag);

int DSPF_sp_qrd_solver_cmplx_v1(
    const int Nrows, const int Ncols, 
    lvector double *Q, lvector double *R, lvector double *b, 
    lvector double *y, lvector double *x)
{
    short row, col, loop_cnt, i, j;
    float xreal, ximag, zreal, zimag, sum_real, sum_imag;
    float temp_cplx[2];
    float buf[16];

    lvector double vdt1;
    lvector double vdt2;
    vector float vft1;
    vector float vft2;
    vector float vft3;
    vector float vft4;

    vector float* Qf = (vector  float *)Q;
    vector float* Rf = (vector  float *)R;
    vector float* yf = (vector  float *)y;
    vector float* xf = (vector  float *)x;
    vector float* bf = (vector  float *)b;

    int Nrows16 = Nrows / 16;
    int Ncols16 = Ncols / 16;

    // part1 
    for(i = 0; i < Ncols16; ++i){
        y[i] = vec_svbcast2(0.0);
    }
    for (row = 0; row < Nrows; row++)
    {
        mov_to_svr_v16sf( *(vector float*)((double*)b+row) );
        *(int*)&temp_cplx[0] = mov_from_svr0();
        *(int*)&temp_cplx[1] = mov_from_svr1();

        // Q的一行乘上b的一项
        vdt2 = vec_svbcast2 ( *(double*)(temp_cplx) );
        for(col = 0; col < Nrows16; ++col){
            vdt1 = vec_ldm2(row * Ncols + col * 16, Q);
            vdt1 = complex_vmov (vdt1); //共轭
            vft1 = vec_fcreal32(vdt1, vdt2); //复数乘法实部
            vft2 = vec_fcimag32(vdt1, vdt2); //复数乘法虚部
            yf[2*col] = vec_add(yf[2*col], vft1);
            yf[2*col+1] = vec_add(yf[2*col+1], vft2);
        }
    }
    // 调整内存中存储顺序，模16 -> 模2
    for(col = 0; col < Ncols16; ++col){
        vec_stm16(y[col], 0, &y[col]);
    }

    // part2
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;

    for(i = 0; i < Ncols16; ++i){
        x[i] = vec_svbcast2(0.0);
    }
    
    for (row = loop_cnt - 1; row >= 0; row--)
    {
        vft3 = vec_svbcast(0.0f); // real acc
        vft4 = vec_svbcast(0.0f); // imag acc

        for(col = 0; col < Ncols16; ++col){
            vdt1 = vec_ldm2(row * Ncols + col * 16, R);
            vdt2 = vec_ldm2(col * 16, x);

            vft1 = vec_fcreal32(vdt1, vdt2); // real tmp
            vft2 = vec_fcimag32(vdt1, vdt2); // imag tmp

            vft3 = vec_add(vft3, vft1);
            vft4 = vec_add(vft4, vft2);
        }

        mov_to_svr_v16sf( vft3 );
        *(int*)&buf[0] = mov_from_svr0();
        *(int*)&buf[1] = mov_from_svr1();
        *(int*)&buf[2] = mov_from_svr2();
        *(int*)&buf[3] = mov_from_svr3();
        *(int*)&buf[4] = mov_from_svr4();
        *(int*)&buf[5] = mov_from_svr5();
        *(int*)&buf[6] = mov_from_svr6();
        *(int*)&buf[7] = mov_from_svr7();
        *(int*)&buf[8] = mov_from_svr8();
        *(int*)&buf[9] = mov_from_svr9();
        *(int*)&buf[10] = mov_from_svr10();
        *(int*)&buf[11] = mov_from_svr11();
        *(int*)&buf[12] = mov_from_svr12();
        *(int*)&buf[13] = mov_from_svr13();
        *(int*)&buf[14] = mov_from_svr14();
        *(int*)&buf[15] = mov_from_svr15();
        xreal = buf[0] + buf[1] + buf[2] + buf[3] + buf[4] + buf[5] + buf[6] + buf[7] + 
            buf[8] + buf[9] + buf[10] + buf[11] + buf[12] + buf[13] + buf[14] + buf[15];
    
        mov_to_svr_v16sf( vft4 );
        *(int*)&buf[0] = mov_from_svr0();
        *(int*)&buf[1] = mov_from_svr1();
        *(int*)&buf[2] = mov_from_svr2();
        *(int*)&buf[3] = mov_from_svr3();
        *(int*)&buf[4] = mov_from_svr4();
        *(int*)&buf[5] = mov_from_svr5();
        *(int*)&buf[6] = mov_from_svr6();
        *(int*)&buf[7] = mov_from_svr7();
        *(int*)&buf[8] = mov_from_svr8();
        *(int*)&buf[9] = mov_from_svr9();
        *(int*)&buf[10] = mov_from_svr10();
        *(int*)&buf[11] = mov_from_svr11();
        *(int*)&buf[12] = mov_from_svr12();
        *(int*)&buf[13] = mov_from_svr13();
        *(int*)&buf[14] = mov_from_svr14();
        *(int*)&buf[15] = mov_from_svr15();
        ximag = buf[0] + buf[1] + buf[2] + buf[3] + buf[4] + buf[5] + buf[6] + buf[7] + 
            buf[8] + buf[9] + buf[10] + buf[11] + buf[12] + buf[13] + buf[14] + buf[15];
        
        // y[row] - sum
        mov_to_svr_v16sf( *(vector float*)((double*)y + row) );
        *(int*)&temp_cplx[0] = mov_from_svr0();
        *(int*)&temp_cplx[1] = mov_from_svr1();
        xreal = temp_cplx[0] - xreal;
        ximag = temp_cplx[1] - ximag;
        
        // R[row][row]
        mov_to_svr_v16sf( *(vector float*)((double*)R + row * Ncols + row) );
        *(int*)&temp_cplx[0] = mov_from_svr0();
        *(int*)&temp_cplx[1] = mov_from_svr1();
        // y[row] - sum / R[row][row]
        complex_sp_div(xreal, ximag, temp_cplx[0], temp_cplx[1], temp_cplx, temp_cplx + 1);

        // 回存x[row]
        mov_to_svr_v16sf(*(vector float*)((double*)x + row));
        mov_to_svr0(*(int*)&temp_cplx[0]);
        mov_to_svr1(*(int*)&temp_cplx[1]);
        *(vector float*)((double*)x + row) = mov_from_svr_v16sf();
    }
    return 0;
}


void complex_sp_div(float x_real, float x_imag, float y_real, float y_imag, float *z_real, float *z_imag)
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


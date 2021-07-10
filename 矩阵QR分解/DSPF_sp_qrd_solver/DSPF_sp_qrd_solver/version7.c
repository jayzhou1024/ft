#include "M7002.h"
#include <string.h>


int DSPF_sp_qrd_solver7(
    const int Nrows,
    const int Ncols,
    vector float *Q,
    vector float *R,
    vector float *b,
    vector float *y,
    vector float *x
)
{
    int row,col, loop_cnt, sum;
    float temp;
    float temp_y, temp_r;
    float buf[16];

    vector float vft1;

    int Nrows16 = (Nrows + 15) / 16;
    int Ncols16 = (Nrows + 15) / 16;

    // parst1
    for(i = 0; i < Ncols16; ++i){
        y[i] = vec_svbcast(0.0f);
    }
    for (row = 0; row < Nrows; row++)
    {
        mov_to_svr_v16sf( *(vector float*)((float*)b+row) );
        *(int*)&temp = mov_from_svr0();
        vft1 = vec_svbcast ( temp );
        for(col = 0; col < Nrows16; ++col){
            vec_mula(vft1, 
                *(vector float*)((float*)Q + row * Nrows + col * 16)), 
                *(vector float*)((float*)y + col * 16);
        }
    }

    // part2
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;

    for (i = 0; i < Ncols16; ++i){
        x[i] = vec_svbcast(0.0f);
    }
    for (row = loop_cnt - 1; row >= 0; row--)
    {   
        vft1 = vec_svbcast(0.0f);
        for (col = 1; col < Ncols16; ++col){
            vft1 = vec_mula(
                *(vector float*)((float*)R + row * Ncols + col * 16), 
                *(vector float*)((float*)x + col * 16), 
                vft1);
        }

        mov_to_svr_v16sf( vft1 );
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

        sum = buf[0] + buf[1] + buf[2] + buf[3] + buf[4] + buf[5] + buf[6] + buf[7] + 
            buf[8] + buf[9] + buf[10] + buf[11] + buf[12] + buf[13] + buf[14] + buf[15];
        
        mov_to_svr_v16sf(*(vector float*)((float*)y + row));
        *(int*)temp_y = mov_from_svr0();

        mov_to_svr_v16sf(*(vector float*)((float*)R + row * Nrows + row));
        *(int*)temp_r = mov_from_svr0();

        temp = (temp_y - sum) / temp_r;

        mov_to_svr_v16sf(*(vector float*)((float*)x + row));
        mov_to_svr0(*(int*)&temp);
        *(vector float*)((double*)x + row) = mov_from_svr_v16sf();
    }
    
}
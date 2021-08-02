#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>

void DSP_fir_r8_h16_cn (
    const short  *x,
    const short * h,    
    short       * r,                         
    int nr                     
){
    int i, j, sum;
    for (j = 0; j < nr; j++) {
        sum = 0;
        for (i = 0; i < 16; i++)
            sum += x[i + j] * h[i];
        r[j] = sum >> 15;
    }

}

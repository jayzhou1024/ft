#ifndef DSPF_SP_CHOLESKY_H_
#define DSPF_SP_CHOLESKY_H_

#include <stdlib.h>

#include "M7002.h"
#include "c6x-c.h" 
#include <vsip.h>

#define VPE_NUM 16
#define OFF_FLOAT_PTR(base,off)(*((vector float*)( ((float*)base)+(off) )) )

void DSPF_sp_cholesky(int order,vector float *L_am,vector float* t_am);

#endif 
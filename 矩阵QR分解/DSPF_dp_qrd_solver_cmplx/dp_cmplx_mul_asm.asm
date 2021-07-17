.align	2
.global dp_cmplx_mul_asm
.type	dp_cmplx_mul_asm, @function
dp_cmplx_mul_asm:

; 寄存器规定
;   参数:
;   lvector double *vd1:R11:10, *vd2:R13:R12, *res:R15:R14
;   转移到基址寄存器:
;   *vd1:AR4, *vd2R:AR5, *res:AR6
;   

;配置参数基址寄存器
        SMVAGA36.M1     R11:R10, AR4 ;乘数1
        SNOP 1
        SMVAGA36.M1     R13:R12, AR5 ;乘数2
        SNOP 1
        SMVAGA36.M1     R15:R14, AR6 ;结果
        SNOP 1
; 双精度复数乘法示例, 用到12个VR
;   乘数1实部:  VR1:VR0
;   乘数1虚部:  VR3:VR2
;   乘数2实部:  VR5:VR4
;   乘数2虚部:  VR7:VR6
;   结果实部:   VR9:VR8
;   结果虚部:   VR11:VR10
        VLDDW0M4        *+AR4[0], VR1:VR0   ;乘数1实部
|       VLDDW1M4        *+AR4[16], VR3:VR2  ;乘数1虚部
        SNOP 7

        VLDDW0M4        *+AR5[0], VR5:VR4   ;乘数2实部
|       VLDDW1M4        *+AR5[16], VR7:VR6  ;乘数2虚部
        SNOP 7

        VFMULD.M1       VR2, VR4, VR8       ;imag * imag
|       VFMULD.M2       VR0, VR6, VR10      ;real * imag    
        SNOP 5
        VFMULBD.M1      VR0, VR4, VR8, VR8   ;结果实部real * real - imag * image
|       VFMULAD.M2      VR2, VR4, VR10, VR10 ;结果虚部imag * real + real * imag
        SNOP 7

        VSTDW0M16       VR9:VR8, *AR6 
|       VSTDW1M16       VR11:VR10, *+AR6[16]
        SNOP 3


;返回main函数
SBR R62
SNOP 6

.size dp_cmplx_mul_asm, .-dp_cmplx_mul_asm
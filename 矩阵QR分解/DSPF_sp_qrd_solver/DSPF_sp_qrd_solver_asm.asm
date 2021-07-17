.align	2
.global DSPF_sp_qrd_solver_asm
.type	DSPF_sp_qrd_solver_asm, @function
DSPF_sp_qrd_solver_asm:
;压栈

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;保护现场结束
; 寄存器规定
;   参数:
;   int Nrows:R10, Ncols:R12
;   vector float *Q:R15:14, *R:R17:R16, *b:R19:R18, *y:R21:R20, *x:R23:R22
;   转移到基址寄存器:
;   *Q:AR0, *R:AR1, *b:AR2, *y:AR3, *x:AR4
;   
;   局部变量
;   条件 R0
;   int row:R1, col:R2
;   int loop_cnt:R3
;   float buf[16]:R46~R61
;   int 0x0000ffff:R24 开关VPE用
;   int zero:R25
;   
;   vector float acc:VR0
;   vector float op1:VR1
;   vector float op2:VR2
;   vector float zero:VR63
;   

;配置参数基址寄存器
        SMVAGA36.M1     R15:R14, AR0
        SNOP 1
        SMVAGA36.M1     R17:R16, AR1
        SNOP 1
        SMVAGA36.M1     R19:R18, AR2
        SNOP 1
        SMVAGA36.M1     R21:R20, AR3
        SNOP 1
        SMVAGA36.M1     R23:R22, AR4
        SNOP 1
;配置工具寄存器
        SMOVIL          0, R25
        SMOVIL          0xffff, R24
        SMOVIH          0x0000, R24
        SMVAGA36.M1     R25:R24, OR0 ;高位置零，方便后续只处理低32位
|       SVBCAST.M2      R25, VR63
        SNOP 3
        SMVAGA36.M1     R25:R24, OR1 ;高位置零，方便后续只处理低32位
        SNOP 2

        SMOV            R25, R1 
set_zero_y_loop:
        SMVAGA32.M1     R1, OR0
        SNOP 1

        ; 开关VPE处理边界
        SADD.M1         16,R1,R1   
        SLT             R10, R1, R0
[R0]    SSUB.M1         R10, R1, R46
[R0]    SSHFLR          R46, R24, R46
[R0]    SMVCGC          R46, VLR
        SNOP            4

        VSTW            VR63, *+AR3[OR0]
        SNOP 3
        SLT             R1, R10, R0
[R0]    SBR             set_zero_y_loop
        SMVCGC          R24, VLR
        SNOP 5


        SMOV            R25, R2 
set_zero_x_loop:
        SMVAGA32.M1     R2, OR0
        SNOP 1

        ; 开关VPE处理边界
        SADD.M1         16,R2,R2   
        SLT             R12, R2, R0
[R0]    SSUB.M1         R12, R2, R46
[R0]    SSHFLR          R46, R24, R46
[R0]    SMVCGC          R46, VLR
        SNOP            4

        VSTW            VR63, *+AR4[OR0]
        SNOP 3
        SLT             R2, R12, R0
[R0]    SBR             set_zero_x_loop
        SMVCGC          R24, VLR
        SNOP 5

        SMOV            R10, R1 
part1_loop_row:
        SSUB.M1         1,R1,R1    ;Nrows -1-> 0 
        SMVAGA32.M1     R1, OR0
        SNOP 3

; TODO 可以通过混洗改进
        VLDW            *+AR2[OR0], VR1
        SNOP 7
        VMVCGC          VR1, SVR
        SNOP 2
        SMVCCG          SVR0, R46
        SNOP 1
        SVBCAST.M1      R46, VR2 ;op2
|       SMULIU.M2       R1, R10, R61    ;row * Nrows
        SNOP 3

        SMOV            R25, R2 
part1_loop_col:
        SADD.M2         R61, R2, R46
        SMVAGA32.M1     R2, OR0     ;y + col
        SNOP 3       
        SMVAGA32.M1     R46, OR1   ;Q + row * Nrows + col
        SNOP 3

        SADD.M1         16,R2,R2   
        SLT             R12, R2, R0
[R0]    SSUB.M1         R12, R2, R46
[R0]    SSHFLR          R46, R24, R46
[R0]    SMVCGC          R46, VLR
        SNOP            4

        VLDW            *+AR3[OR0], VR0
        SNOP 7
        VLDW            *+AR0[OR1], VR1 
        SNOP 7
        VFMULAS32.M1    VR1, VR2, VR0, VR0
        SNOP 5
        VSTW            VR0, *+AR3[OR0] 
        SNOP 3
        
        SLT             R2, R12, R0
[R0]    SBR              part1_loop_col
        SMVCGC          R24, VLR
        SNOP 5

        SLT             0, R1, R0
[R0]    SBR             part1_loop_row
        SNOP 6 


        SLT             R10, R12, R0
[R0]    SMOV            R10, R1
[!R0]   SMOV            R12, R1



part2_loop_row:
        SSUB.M1         1,R1,R1    ; loop_cnt -1-> 0 
|       VMOV.M2         VR63, VR0  ; acc <- 0
        SMULISU.M2      R1, R12, R61    ;row * Ncols
        SNOP 2

        SMOV            R25, R2 
part2_loop_col:
        SADD.M2         R61, R2, R46
        SMVAGA32.M1     R2, OR0     ;col
        SNOP 3        
        SMVAGA32.M1     R46, OR1    ;row * Ncols + col
        SNOP 3

        SADD.M1         16,R2,R2   
        SLT             R12, R2, R0
[R0]    SSUB.M1         R12, R2, R46
[R0]    SSHFLR          R46, R24, R46
[R0]    SMVCGC          R46, VLR
        SNOP            4

        VLDW            *+AR4[OR0], VR2
        SNOP 7
        VLDW            *+AR1[OR1], VR1 
        SNOP 7
        VFMULAS32.M1    VR1, VR2, VR0, VR0
        SNOP 5
  
        SLT             R2, R12, R0
[R0]    SBR             part2_loop_col
        SMVCGC          R24, VLR
        SNOP 5


; 16个相加
        VMVCGC          VR0, SVR
        SNOP 2
        SMVCCG          SVR0, R46
        SNOP 1
        SMVCCG          SVR1, R47
        SNOP 1
        SMVCCG          SVR2, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR3, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR4, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR5, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR6, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR7, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR8, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR9, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR10, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR11, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR12, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR13, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SMVCCG          SVR14, R48
|       SFADDS32.M2     R47, R46, R46
        SNOP 2
        SMVCCG          SVR15, R47
|       SFADDS32.M2     R48, R46, R46
        SNOP 2
        SFADDS32.M2     R47, R46, R46   ;R46 sum
        SNOP 2

        SADD.M2         R61, R1, R49
        SMVAGA32.M1     R1, OR0     ;row
        SNOP 3
        SMVAGA32.M1     R49, OR1    ;row * Ncols + row
        SNOP 3

        VLDW            *+AR3[OR0], VR1
        SNOP 7
        VMVCGC          VR1, SVR
        SNOP 2
        SMVCCG          SVR0, R48   ;temp_y
        SNOP 1

        VLDW            *+AR1[OR1], VR1
        SNOP 7
        VMVCGC          VR1, SVR
        SNOP 2
        SMVCCG          SVR0, R47   ;temp_r
        SNOP 1

        SFSUBS32.M1     R46, R48, R46   ; src2 - src1 -> dst


;单精度标量除法 R46/R47->R46, R48,R49,R50缓存
        SMOVIL          0x4000, R48
        SSHFLL          16, R48, R48
        SFRCPS32.M1     R47,R49 
        SNOP 3
        SFMULS32.M1     R47, R49, R50
        SNOP 4
        SFSUBS32.M1     R50, R48, R50
        SNOP 3
        SFMULS32.M1     R50, R49, R50
        SNOP 3
        SFMULS32.M1     R47, R50, R49
        SNOP 4
        SFSUBS32.M1     R49, R48, R49
        SNOP 3
        SFMULS32.M1     R49, R50, R49 ;R49 = 1/R47
        SNOP 4
        SFMULS32.M1     R46, R49, R46
        SNOP 4
        ; 除法结束

        VLDW            *+AR4[OR0], VR1
        SNOP 7        
        VMVCGC          VR1, SVR
        SNOP 2
        SMVCGC          R46, SVR0
        SNOP 2
        VMVCCG          SVR, VR1
        SNOP 1
        VSTW            VR1, *+AR4[OR0]
        SNOP 3

        SLT             0, R1, R0
[R0]    SBR             part2_loop_row
        SNOP 6 















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;恢复现场

;返回main函数
SBR R62
SNOP 6

.size DSPF_sp_qrd_solver_asm, .-DSPF_sp_qrd_solver_asm
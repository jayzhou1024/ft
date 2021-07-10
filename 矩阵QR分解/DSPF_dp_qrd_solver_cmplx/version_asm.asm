.align	2
.global DSPF_sp_qrd_solver_cmplx_vasm1
.type	DSPF_sp_qrd_solver_cmplx_vasm1, @function
DSPF_sp_qrd_solver_cmplx_vasm1:
;压栈
SMOVIL -576, R2
SMOVIL -1, R3 
SADDA.M2 R3:R2,AR15,AR12 
SNOP 1 
SSTW R4,*+AR12[0] 
SSTW R5,*+AR12[1] 
SSTW R6,*+AR12[2] 
SSTW R7 ,*+AR12[3] 
SSTW R30 ,*+AR12[4] 
SSTW R31 ,*+AR12[5] 
SSTW R32 ,*+AR12[6] 
SSTW R33 ,*+AR12[7] 
SSTW R34 ,*+AR12[8] 
SSTW R35 ,*+AR12[9] 
SSTW R36 ,*+AR12[10] 
SSTW R37 ,*+AR12[11] 
SSTW R38 ,*+AR12[12] 
SSTW R39 ,*+AR12[13] 
SSTW R40 ,*+AR12[14] 
SSTW R41 ,*+AR12[15] 
SSTW R62 ,*+AR12[16] 
SSTW R63 ,*+AR12[17] 
SMVAAGL.M1 AR7 , R0 
| SMVAAGH.M2 AR7 , R1 
SMVAAGL.M1 AR8 , R2 
| SMVAAGH.M2 AR8 , R3 
SMVAAGL.M1 AR9 , R4 
| SMVAAGH.M2 AR9 , R5 
SMVAAGL.M1 AR14 , R6 
| SMVAAGH.M2 AR14 , R7 
SMVAAGL.M1 AR15 , R8 
| SMVAAGH.M2 AR15 , R9 

SSTW R0, *+AR12[18] 
SSTW R1, *+AR12[19] 
SSTW R2, *+AR12[20] 
SSTW R3, *+AR12[21] 
SSTW R4, *+AR12[22] 
SSTW R5, *+AR12[23] 
SSTW R6, *+AR12[24] 
SSTW R7, *+AR12[25] 
SSTW R8, *+AR12[26] 
SSTW R9, *+AR12[27] 

SMVAAGL.M1 OR8 , R0 
| SMVAAGH.M2 OR8 , R1 
SMVAAGL.M1 OR9 , R2 
| SMVAAGH.M2 OR9 , R3 
SMVAAGL.M1 OR10 , R4 
| SMVAAGH.M2 OR10 , R5 
SMVAAGL.M1 OR15 , R6 
| SMVAAGH.M2 OR15 , R7 
SSTW R0, *+AR12[28] 
SSTW R1, *+AR12[29] 
SSTW R2, *+AR12[30] 
SSTW R3, *+AR12[31] 
SSTW R4, *+AR12[32] 
SSTW R5, *+AR12[33] 
SSTW R6, *+AR12[34] 
SSTW R7, *+AR12[35]

SMVAAA.M1 AR12,AR15
SNOP 1

;FIXME:AR15和AR14没有修改
;寄存器分配：R8,R9为暂存寄存器,R48、AR4为地址暂存寄存器
;R31 <-> order,R32 <-> i,R33 <-> j,R34 <-> k
;R35 <-> close,R36 <-> increment,R37 <-> len,R38 <-> 地址,R39 <-> 0
;R40 <-> Ljj

;AR0 <-> A_am,AR1 <-> L_am,AR2 <-> t_am,AR8 <-> buffer

;VR49:VR40 <-> L_am的一行
;VR39:VR30 <-> t_am,temp <-> VR3,VR10 <-> 暂存寄存器

;接受参数
SMOV.M1 R10,R31
SMVAGA36.M1 R13:R12,AR0
SNOP 1
SMVAGA36.M1 R15:R14,AR1

;:FIXME:可能引发问题
;饱和操作设置
;SMOVIL 3, R0;1
;SMVCGC R0, SCR;1

;初始化R49
SMOVIL 0,R39

;初始化increment
SADD.M1 -1,R10,R36
SSHFLL 2,R36,R36

;分配DDR中的buffer,调用calloc
SMOV.M1 R31,R10
SMOVIL 0,R11
SMOVIL 4,R12
SMOVIL 0,R13
SBR calloc
SMOVIL		calloc_return, R62
SMOVIH		calloc_return, R62
SMOVIH4.L	calloc_return, R63
SNOP		4

calloc_return:
SMVAGA36.M1 R11:R10,AR8

;for循环，j为索引
;初始化j
SMOVIL 0,R33
j_loop:
    ;循环判断
    SLT R33,R31,R0
    [!R0] SBR j_end
    SNOP 6
    ;循环主体

    ;设置t_am(AR2)
    SMULIU.M1 R33,R31,R38
    SNOP 2
    SMULIU.M1 4,R38,R38
    SNOP 2
    SADDA.M1 R38,AR1,AR2 
    
    ;数据通过DMA转到DDR中
    ;if(j>0)
    SLT 0,R33,R0
    [!R0] SBR datatrans_end
    SNOP 6
        ;调用M7002_datatrans_index
        SMULIU.M1 4,R33,R38
        SNOP 2
        SADDA.M1 R38,AR1,AR4
        SNOP 2
        SMVAAGL.M1 AR4,R10
        |SMVAAGH.M2 AR4,R11
        SNOP 1
        SMVAAGL.M1 AR8,R12
        |SMVAAGH.M2 AR8,R13
        SADD.L -1,R33,R14
        SMOVIL 0,R15
        SMOVIL 1,R16
        SMOVIL 0,R17
        SMOV R36,R18
        SMOVIL 0,R19

        SBR M7002_datatrans_index
        SMOVIL		datatrans_end, R62
        SMOVIH		datatrans_end, R62
        SMOVIH4.L	datatrans_end, R63
        SNOP		3

    datatrans_end:

    ;for循环，i为索引
    ;初始化i
    SMOVIL 0,R32
    ;循环主体
    i_loop:
        ;循环判断
        SLT R32,R33,R0
        [!R0] SBR i_end
        SNOP 6
        ;广播
        SMOV.M1 R32,R38
        SMVAGA36.M2 R39:R38,OR8
        SNOP 1
        SLDW *+AR8[OR8],R42
        SNOP 5
        SVBCAST.M1 R42,VR3
        ;乘累加

        ;OFF_FLOAT_PTR(L_am,j+i*order+k*VPE_NUM)
        ;for循环，k为索引
        ;初始化k
        SMOVIL 0,R34
        SSUBU.M1 R33,R31,R37
        ;循环主体
        k_loop:
            ;循环判断
            SLT 0,R37,R0
            [!R0] SBR k_end
            SNOP 6
            ;加载AM中L_am的数据进入VR40
            SMULIU.M1 R32,R31,R38
            |SMULIU.M2 16,R34,R7
            SNOP 2
            SADD.M1 R38,R33,R38
            SADD.M1 R38,R7,R38
            SMVAGA36.M1 R38,OR1
            SNOP 1
            SADD.M1 R33,R7,R38
            SMVAGA36.M1 R38,OR2
            SNOP 1
            VLDW  *+AR1[OR1],VR40
            |VLDW *+AR2[OR2],VR30
            SNOP 7
            ;VR3为temp
            ;VR30为t_am
            SLT 15,R37,R1
            [!R1] SMOVIL 16,R7
            [!R1] SMOVIL 0xffff,R8
            [!R1] SSHFLR 16,R8,R8
            [!R1] SSUB.M1 R37,R7,R7
            [!R1] SSHFLR R7,R8,R7
            [!R1] SMVCGC R7,VLR
            [!R1] SNOP 3

            VFMULAS32.M1 VR3,VR40,VR30,VR30
            SNOP 5

            [!R1] SMVCGC R8,VLR

            ;存回t_am
            VSTW VR30,*+AR2[OR2]

            ;更改len
            SSUB.M1 16,R37,R37
            ;循环索引k增加
            SADD.M1 1,R34,R34
            SBR k_loop
            SNOP 6
        k_end:

        ;循环索引i增加
        SADD.M1 1,R32,R32
        SBR i_loop
        SNOP 6
    i_end:

    ;加载AM中A_am的数据进入VR49:VR40
    ;for循环，k为索引
    ;初始化k
    SMOVIL 0,R34
    SSUBU.M1 R33,R31,R37
    ;循环主体
    k1_loop:
        ;循环判断
        SLT 0,R37,R0
        [!R0] SBR k1_end
        SNOP 6
        ;加载AM中L_am的数据进入VR40
        SMULIU.M1 R33,R31,R38
        |SMULIU.M2 16,R34,R7
        SNOP 2
        SADD.M1 R38,R33,R38
        SADD.M1 R38,R7,R38
        SMVAGA36.M1 R38,OR1
        SNOP 1
        SADD.M1 R33,R7,R38
        SMVAGA36.M1 R38,OR2
        SNOP 1
        
        VLDW  *+AR0[OR1],VR40
        |VLDW *+AR2[OR2],VR30
        SNOP 7
        ;VR3为temp
        ;VR30为t_am
        SLT 15,R37,R1
        [!R1] SMOVIL 16,R7
        [!R1] SMOVIL 0xffff,R8
        [!R1] SSHFLR 16,R8,R8
        [!R1] SSUB.M1 R37,R7,R7
        [!R1] SSHFLR R7,R8,R7
        [!R1] SMVCGC R7,VLR
        [!R1] SNOP 3

        VFSUBS32.M1 VR30,VR40,VR30
        SNOP 2

        [!R1] SMVCGC R8,VLR

        ;存回t_am
        VSTW VR30,*+AR2[OR2]

        ;更改len
        SSUB.M1 16,R37,R37
        ;循环索引k增加
        SADD.M1 1,R34,R34
        SBR k1_loop
        SNOP 6
    k1_end:
    
    ;将Ljj移到R40
    ;加载Ljj
    SMULIU.M1 R33,R31,R38
    SNOP 2
    SADD.M1 R38,R33,R38
    SMVAGA36.M1 R38,OR1
    SNOP 1
    VLDW *+AR1[OR1],VR30
    SNOP 7

    VMVCGC VR30,SVR
    SNOP 2
    SMVCCG SVR0,R40
    SNOP 1
    ;Ljj开方
    SMOVIL 0x3f00,R6 ;R6 为迭代公式中的立即数 0.5
    SSHFLL 16,R6,R6   
    SMOVIL 0x3fc0,R8 ;R8 为迭代公式中的立即数 1.5
    SSHFLL 16,R8,R8
    SMOV R40,R10   ;R10 为待开方的数
    SFRSQS32.M1 R10,R11     ;1
    SFMULS32.M1 R11,R11,R12
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R6,R10,R13
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R12,R13,R14
    SNOP 1
    SNOP 1
    SNOP 1
    SFSUBS32.M1 R14,R8,R15
    SNOP 1
    SNOP 1
    SFMULS32.M1 R15,R11,R16
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R16,R16,R17
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R6,R10,R18
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R17,R18,R19
    SNOP 1
    SNOP 1
    SNOP 1
    SFSUBS32.M1 R19,R8,R20
    SNOP 1
    SNOP 1
    SFMULS32.M1 R20,R16,R21
    SNOP 1
    SNOP 1
    SNOP 1
    SFMULS32.M1 R10,R21,R22
    SNOP 1
    SNOP 1
    SNOP 1

    ;for循环，k为索引
    ;初始化k
    SMOVIL 0,R34
    SSUBU.M1 R33,R31,R37
    ;循环主体
    k2_loop:
        ;循环判断
        SLT 0,R37,R0
        [!R0] SBR k2_end
        SNOP 6
        ;加载AM中L_am的数据进入VR30
        SMULIU.M1 R33,R31,R38
        |SMULIU.M2 16,R34,R7
        SNOP 2
        SADD.M1 R38,R33,R38
        SADD.M1 R38,R7,R38
        SMVAGA36.M1 R38,OR1
        SNOP 1
        
        VLDW  *+AR1[OR1],VR30
        SNOP 7
        ;VR3为temp
        ;VR30为t_am
        SLT 15,R37,R1
        [!R1] SMOVIL 16,R7
        [!R1] SMOVIL 0xffff,R8
        [!R1] SSHFLR 16,R8,R8
        [!R1] SSUB.M1 R37,R7,R7
        [!R1] SSHFLR R7,R8,R7
        [!R1] SMVCGC R7,VLR
        [!R1] SNOP 3

        ;除法
        VMOV VR30,VR7 ;VR7 为输入的被除数
        VMOVIL 0x4000,VR8 
        VSHFLL 16,VR8,VR8 ;VR8 为迭代公式中的立即数 2
        SVBCAST.M1 R22,VR10;VR10 为输入的除数
        SNOP 3
        VFRCPS32.M1 VR10,VR11 ;使用 FRCPS32 指令求出初始迭代值
        SNOP 1
        SNOP 1
        VFMULS32.M1 VR10,VR11,VR13 ;第一次迭代
        SNOP 1 ;迭代公式为 X[n+1] = X[n](2-v*X[n])
        SNOP 1
        SNOP 1
        VFSUBS32.M1 VR13,VR8,VR14 ;2-v*X[n]
        SNOP 1
        SNOP 1
        VFMULS32.M1 VR14,VR11,VR15 ;X[n](2-v*X[n])
        SNOP 1
        SNOP 1
        SNOP 1
        VFMULS32.M1 VR10,VR15,VR16 ;第二次迭代
        SNOP 1
        SNOP 1
        SNOP 1
        VFSUBS32.M1 VR16,VR8,VR17 ;2-v*X[n]
        SNOP 1
        SNOP 1
        VFMULS32.M1 VR17,VR15,VR18 ;X[n](2-v*X[n])
        SNOP 1
        SNOP 1
        SNOP 1
        VFMULS32.M1 VR7,VR18,VR19 ;得到最终除法结果
        SNOP 1
        SNOP 1
        SNOP 1

        [!R1] SMVCGC R8,VLR

        ;存回t_am
        VSTW VR19,*+AR1[OR1]

        ;更改len
        SSUB.M1 16,R37,R37
        ;循环索引k增加
        SADD.M1 1,R34,R34
        SBR k2_loop
        SNOP 6
    k2_end:

    ;循环索引j增加
    SADD.M1 1,R33,R33
    SBR j_loop
    SNOP 6
j_end:
;free DDR中的buffer

;出栈
SMVAAA.M1 AR15,AR12
SNOP 1

SLDW *+AR12[18], R0 
SLDW *+AR12[19], R1 
SLDW *+AR12[20], R2 
SLDW *+AR12[21], R3 
SLDW *+AR12[22], R4 
SLDW *+AR12[23], R5 
SLDW *+AR12[24], R6 
SLDW *+AR12[25], R7 
SLDW *+AR12[26], R8 
SLDW *+AR12[27], R9 
SNOP 4 
SMVAGA36.M1 R1:R0,AR7 
| SMVAGA36.M2 R3:R2,AR8 
SMVAGA36.M1 R5:R4,AR9 
| SMVAGA36.M2 R7:R6,AR14 
SMVAGA36.M1 R9:R8,AR15 

SLDW *+AR12[28], R0 
SLDW *+AR12[29], R1 
SLDW *+AR12[30], R2 
SLDW *+AR12[31], R3 
SLDW *+AR12[32], R4 
SLDW *+AR12[33], R5
SLDW *+AR12[34], R6 
SLDW *+AR12[35], R7 
SNOP 5 
| SMVAGA36.M2 R1:R0,OR8 
SMVAGA36.M1 R3:R2,OR9 
| SMVAGA36.M2 R5:R4,OR10 
SMVAGA36.M1 R7:R6,OR15 

SLDW *+AR12[0],R4 
SLDW *+AR12[1],R5 
SLDW *+AR12[2],R6 
SLDW *+AR12[3],R7 
SLDW *+AR12[4],R30 
SLDW *+AR12[5],R31 
SLDW *+AR12[6],R32 
SLDW *+AR12[7],R33 
SLDW *+AR12[8],R34 
SLDW *+AR12[9],R35 
SLDW *+AR12[10],R36 
SLDW *+AR12[11],R37 
SLDW *+AR12[12],R38 
SLDW *+AR12[13],R39 
SLDW *+AR12[14],R40 
SLDW *+AR12[15],R41 
SLDW *+AR12[16],R62 
SLDW *+AR12[17],R63 
SNOP 5
;返回main函数
SBR R62
SNOP 6

.size DSPF_sp_cholesky, .-DSPF_sp_cholesky
.global DSPF_sp_cholesky_solver_cmplx

DSPF_sp_cholesky_solver_cmplx:

.preparation:
        SMVAGA32.M1     R16, AR0
|       SMOV.M2         R10, R10
|       SMOVIL          0x0000, R16
        SMVAGA32.M1     R14, AR1
|       SMVAGA32.M2     R12, AR2
|       SMOVIL          0x4000, R16
        SMVAGA32.M2     R18, AR3
|       SMOVIL          0x0200, R18
|       VLDW            *+AR0[0], VR0
        SMOVIH          0x0604, R18
|       VLDW            *+AR1[0], VR1
|       VLDW            *+AR2[0], VR2
        SMOVIL          0x0040, R18
|       SSTW            R18, *AR10
        SMOVIL          0x0000, R12
        SMOVIL          0x0000, R14
        SMOVIL          0x0001, R1
        SMOVIH          0x0000, R18
        SMOVIH          0x4016, R12
        SMOVIH          0x0000, R14
        SMOVIH          0x0000, R1
|       VMVCGC          VR2, SVR
        SMOVIL          0x0a08, R2
        SMOVIH          0x0e0c, R2
        SMOVIL          0x1210, R2
|       SSTW            R2, *+AR10[1]
|       VMVCGC          VR0, SVR
        SMOVIH          0x1614, R2
        SMOVIL          0x1a18, R2
|       SSTW            R2, *+AR10[2]
        SMOVIH          0x1e1c, R2
|       VMVCGC          VR1, SVR
        SMOVIL          0x0301, R2
|       SSTW            R2, *+AR10[3]
        SMOVIH          0x0705, R2
        SMOVIL          0x0b09, R2
|       SSTW            R2, *+AR10[4]
        SMOVIH          0x0f0d, R2
        SMOVIL          0x1311, R2
|       SSTW            R2, *+AR10[5]
        SMOVIH          0x1715, R2
        SMOVIL          0x1b19, R2
|       SSTW            R2, *+AR10[6]
        SMOVIH          0x1f1d, R2
        SMOVIL          0x1000, R2
|       SSTW            R2, *+AR10[7]
        SMOVIH          0x1101, R2
        SMOVIL          0x1202, R2
|       SSTW            R2, *+AR10[8]
        SMOVIH          0x1303, R2
        SMOVIL          0x1404, R2
|       SSTW            R2, *+AR10[9]
        SMOVIH          0x1505, R2
        SMOVIL          0x1606, R2
|       SSTW            R2, *+AR10[10]
        SMOVIH          0x1707, R2
        SMOVIL          0x1808, R2
|       SSTW            R2, *+AR10[11]
        SMOVIH          0x1909, R2
        SMOVIL          0x1a0a, R2
|       SSTW            R2, *+AR10[12]
        SMOVIH          0x1b0b, R2
        SMOVIL          0x1c0c, R2
|       SSTW            R2, *+AR10[13]
        SMOVIH          0x1d0d, R2
        SMOVIL          0x1e0e, R2
|       SSTW            R2, *+AR10[14]
        SMOVIH          0x1f0f, R2
        SMVCCG          SVR0, R2
|       SSTW            R2, *+AR10[15]
        SNOP            1
        SFMULS32.M2     R2, R2, R3
|       SMVCCG          SVR1, R8
        SNOP            1
        SFMULS32.M2     R8, R8, R9
|       SMVCCG          SVR1, R11
        SNOP            1
        SFMULS32.M2     R11, R8, R13
|       SMVCCG          SVR0, R15
        SNOP            1
        SFMULS32.M1     R15, R2, R9
|       SADD.M2         R3, R9, R3
        SFMULS32.M2     R11, R2, R2
|       SMOV            R3, R11
        SFMULS32.M1     R15, R8, R8
|       SFRCPS32.M2     R11, R15
        SFMULS32.M2     R11, R15, R17
        SADD.M1         R9, R13, R9
        SMOV            R9, R9
        SADD.M1         R2, R8, R2
        SFSUBS32.M2     R17, R16, R17
        SNOP            2
        SFMULS32.M2     R17, R15, R15
        SNOP            3
        SFMULS32.M2     R11, R15, R3
|       SMOV            R3, R11
        SFRCPS32.M2     R11, R17
        SFMULS32.M2     R11, R17, R8
        SNOP            1
        SFSUBS32.M2     R3, R16, R3
|       SMOVIL          0x0000, R16
        SMOVIL          0x4000, R16
        SFSUBS32.M2     R8, R16, R8
        SFMULS32.M2     R3, R15, R15
|       SMOV            R3, R3
        SMVCGC          R3, SVR0
        SFMULS32.M2     R8, R17, R17
        SNOP            1
        SFMULS32.M2     R9, R15, R2
|       SMOV            R2, R9
        SNOP            1
        SFMULS32.M2     R11, R17, R11
        SNOP            3
        SFSUBS32.M2     R11, R16, R16
        SNOP            2
        SFMULS32.M2     R16, R17, R17
|       SMOV            R16, R16
        SMVCGC          R16, SVR1
        SNOP            2
        SFMULS32.M2     R9, R17, R2
|       VMVCCG          SVR, VR1
        SNOP            1
        VSTW            VR1, *+AR1[0]
        SNOP            1

.i_loop0:
        SVBCAST.M1      R14, VR1
|       SMULIU.M2       R1, R10, R12
|       SMOVIL          0x0000, R2
        SVBCAST.M2      R14, VR0
|       SMOVIL          0x0000, R17
        SMOVIH          0x0000, R2
        SMULIU.M1       8, R12, R12
|       SADD.M2         16, R2, R9
|       SMOVIL          0x0000, R16
        SMOVIH          0x0000, R17
        SMOVIH          0x0000, R16

.j_loop0:
        SMULIU.M2       8, R2, R17
|       SMOVIL          0x0000, R16
        SMOVIH          0x0000, R16
        SMVCGC          R16, SMR
        SADD.M1         R17, R12, R17
|       SADD.M2         R18, R17, R16
        SMVAGA32.M1     R17, OR0
|       SADD.M2         R16, R12, R16
        SMVAGA32.M2     R16, OR1
        VLDW            *+AR2[OR0], VR2
|       VLDW            *+AR1[OR0], VR3
        SMOVIL          0x0001, R16
|       VLDW            *+AR2[OR1], VR4
|       VLDW            *+AR1[OR1], VR5
        SMOVIH          0x0000, R16
        SMVCGC          R16, SMR
        SNOP            4
        SLT             R9, R10, R0
        VSHUFW          VR3, VR5, VR6
        VSHUFW          VR3, VR5, VR5
        VSHUFW          VR2, VR4, VR3
        VSHUFW          VR2, VR4, VR4
        SNOP            1
        VFMULS32.M3     VR6, VR3, VR2
        VFMULS32.M3     VR5, VR4, VR7
        SNOP            1
[R0]    SBR             .full_vpe_y
        SNOP            1
        VFMULS32.M1     VR3, VR5, VR2
|       VFMULS32.M2     VR6, VR4, VR7
|       VSUB.M3         VR7, VR2, VR6
        SNOP            3
        VSUB.M3         VR7, VR2, VR2

        SFCMPES32.M2    R9, R10, R0
[R0]    SBR             .full_vpe_y
        SNOP            6

        SSUB.M2         R10, R9, R16
|       SMOVIL          0xFFFF, R17
|       VADD.M2         VR1, VR6, VR1
|       VADD.M3         VR0, VR2, VR0
        SMOVIH          0x0000, R17
        SSHFAR16        R16, R17, R17
        SMVCGC          R17, VLR
        SNOP            4
        SMOVIL          0xFFFF, R17
|       SBR             .j_endloop0
        SMOVIH          0x0000, R17
        SMVCGC          R17, VLR
        SNOP            4

.full_vpe_y:
        SADD.M1         16, R2, R2
|       SADD.M2         16, R9, R9
|       VADD.M2         VR0, VR2, VR0
|       VADD.M3         VR1, VR6, VR1
        SLT             R2, R10, R0
[R0]    SBR             .j_loop0
        SNOP            6

.j_endloop0:
        SMULIU.M2       R1, R10, R12
|       SMOVIL          0x0000, R2
|       VMVCGC          VR1, SVR
        SMOVIH          0x0000, R2
        SMOVIL          0x0000, R9
        SADD.M2         R12, R1, R12
|       SMOVIH          0x0000, R9
|       VMVCGC          VR0, SVR
        SMULIU.M2       8, R12, R12
|       SMOVIL          0x0000, R16
        SMOVIL          0x4000, R16
        SMVCCG          SVR0, R17
        SMVAGA32.M1     R12, OR1
        SMULIU.M1       8, R1, R12
|       SADD.M2         R17, R2, R2
|       SMVCCG          SVR1, R17
        SADD.M2         1, R1, R1
|       VLDW            *+AR2[OR1], VR0
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR2, R17
        SMVAGA32.M1     R12, OR1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR3, R17
        VLDW            *+AR1[OR1], VR1
|       VLDW            *+AR0[OR1], VR6
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR4, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR5, R17
        VMVCGC          VR0, SVR
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR6, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR7, R17
        VMVCGC          VR6, SVR
|       VSTW            VR1, *+AR1[OR1]
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR8, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR9, R17
|       VMVCGC          VR1, SVR
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR10, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR11, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR12, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR13, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR14, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SMVCCG          SVR15, R17
        SNOP            1
        SADD.M2         R17, R2, R2
|       SLT             R1, R10, R0
        SMVCCG          SVR0, R17
        SNOP            1
        SADD.M2         R17, R9, R9
|       SMVCCG          SVR1, R17
        SNOP            1
        SFMULS32.M2     R17, R17, R12
|       SMVCCG          SVR0, R11
        SNOP            1
        SFMULS32.M2     R11, R11, R15
|       SMVCCG          SVR1, R8
        SNOP            1
        SADD.M2         R8, R9, R9
|       SMVCCG          SVR2, R8
        SNOP            1
        SADD.M1         R8, R9, R9
|       SADD.M2         R15, R12, R12
|       SMVCCG          SVR3, R8
        SMOV.M2         R12, R15
        SFRCPS32.M1     R15, R3
|       SADD.M2         R8, R9, R9
|       SMVCCG          SVR4, R8
        SFMULS32.M2     R15, R3, R13
        SADD.M2         R8, R9, R9
|       SMVCCG          SVR5, R8
        SNOP            1
        SADD.M1         R8, R9, R9
|       SMVCCG          SVR6, R8
        SFSUBS32.M2     R13, R16, R13
        SADD.M2         R8, R9, R9
|       SMVCCG          SVR7, R8
        SNOP            1
        SADD.M1         R8, R9, R9
|       SFMULS32.M2     R13, R3, R3
|       SMVCCG          SVR8, R8
        SNOP            1
        SADD.M2         R8, R9, R9
|       SMVCCG          SVR9, R8
        SNOP            1
        SADD.M1         R8, R9, R9
|       SFMULS32.M2     R15, R3, R12
|       SMOV            R12, R15
        SFRCPS32.M2     R15, R8
|       SMVCCG          SVR10, R13
        SFMULS32.M2     R15, R8, R19
        SADD.M1         R13, R9, R9
|       SMVCCG          SVR11, R13
        SFSUBS32.M2     R12, R16, R16
        SADD.M1         R13, R9, R9
|       SMOVIL          0x0000, R13
        SMVCCG          SVR12, R12
        SMOV.M1         R16, R3
|       SFMULS32.M2     R16, R3, R16
        SADD.M2         R12, R9, R9
|       SMOVIL          0x4000, R13
        SFSUBS32.M2     R19, R13, R19
|       SMVCCG          SVR13, R12
        SNOP            1
        SADD.M1         R12, R9, R9
|       SMVCCG          SVR14, R12
        SFMULS32.M2     R19, R8, R8
        SADD.M2         R12, R9, R9
|       SMVCCG          SVR15, R12
        SNOP            1
        SADD.M1         R12, R9, R9
|       SMVCCG          SVR0, R12
        SFMULS32.M2     R15, R8, R15
        SSUB.M2         R2, R12, R12
|       SMVCCG          SVR1, R2
        SFMULS32.M1     R12, R17, R19
|       SFMULS32.M2     R12, R11, R20
        SSUB.M1         R9, R2, R2
|       SMVCGC          R3, SVR0
        SFSUBS32.M1     R15, R13, R17
|       SFMULS32.M2     R2, R17, R13
        SFMULS32.M1     R2, R11, R11
        SNOP            1
        SMOV            R17, R15
        SADD.M2         R20, R13, R20
        SADD.M2         R11, R19, R11
|       SMOV            R20, R20
        SFMULS32.M1     R17, R8, R16
|       SFMULS32.M2     R20, R16, R11
|       SMOV            R11, R20
        SMVCGC          R15, SVR1
|[R0]   SBR             .i_loop0
        SNOP            2
        SFMULS32.M2     R20, R16, R11
        SNOP            3

        SSUB.M2         1, R10, R14
|       SMOVIL          0x0000, R1
        SMOVIL          0x0000, R11
        SMOVIL          0x0001, R16
        SMOVIH          0x0000, R1
        SMOVIH          0x0000, R11
        SMOVIH          0x0000, R16

.i_loop1:
        SMULIU.M2       R14, R10, R1
|       SMOVIL          0x0000, R16
        SMOVIL          0x4000, R16
        SMOVIL          0x0000, R20
        SADD.M1         1, R14, R1
|       SADD.M2         R1, R14, R15
|       SMOVIH          0x0000, R20
        SMULIU.M1       8, R15, R15
|       SADD.M2         16, R20, R8
        SNOP            2
        SMULIU.M1       8, R14, R15
|       SMVAGA32.M2     R15, OR1
        SNOP            1
        VLDW            *+AR2[OR1], VR1
        SMULIU.M1       R15, R10, R15
|       SMVAGA32.M2     R15, OR1
        SNOP            1
        VLDW            *+AR3[OR1], VR6
|       VLDW            *+AR1[OR1], VR0
        SNOP            4
        VMVCGC          VR1, SVR
        SNOP            2
        SMVCCG          SVR1, R17
|       VMVCGC          VR0, SVR
        SNOP            1
        SMVCCG          SVR0, R19
        VMVCGC          VR6, SVR
        SFMULS32.M2     R19, R19, R13
|       SNEG            R17, R17
        SFMULS32.M2     R17, R17, R3
|       SMVCCG          SVR0, R9
        SNOP            1
        SFMULS32.M2     R9, R19, R9
|       SMVCCG          SVR1, R21
        SNOP            1
        SFMULS32.M1     R21, R17, R3
|       SADD.M2         R13, R3, R13
        SFMULS32.M1     R12, R17, R17
|       SMOV            R13, R21
        SFMULS32.M1     R2, R19, R19
|       SFRCPS32.M2     R21, R22
        SFMULS32.M2     R21, R22, R23
        SADD.M2         R9, R3, R9
        SMOV            R9, R9
        SADD.M1         R19, R17, R19
        SFSUBS32.M2     R23, R16, R23
        SNOP            2
        SFMULS32.M2     R23, R22, R22
        SNOP            3
        SFMULS32.M2     R21, R22, R13
|       SMOV            R13, R21
        SFRCPS32.M2     R21, R23
        SFMULS32.M2     R21, R23, R17
        SNOP            1
        SFSUBS32.M2     R13, R16, R13
|       SMOVIL          0x0000, R16
        SMOVIL          0x4000, R16
        SFSUBS32.M2     R17, R16, R17
        SFMULS32.M2     R13, R22, R22
|       SMOV            R13, R13
        SMVCGC          R13, SVR0
        SFMULS32.M2     R17, R23, R23
        SNOP            1
        SFMULS32.M2     R9, R22, R19
|       SMOV            R19, R9
        SNOP            1
        SFMULS32.M2     R21, R23, R21
        SNOP            3
        SFSUBS32.M2     R21, R16, R16
        SNOP            2
        SFMULS32.M2     R16, R23, R23
|       SMOV            R16, R16
        SMVCGC          R16, SVR1
        SNOP            2
        SFMULS32.M2     R9, R23, R19
|       VMVCCG          SVR, VR6
        SNOP            1
        VSTW            VR6, *+AR3[OR1]
        SNOP            1

.j_loop1:
        SMULIU.M2       8, R20, R19
|       SMOVIL          0x0000, R23
        SMOVIH          0x0000, R23
        SMVCGC          R23, SMR
        SADD.M1         R19, R15, R19
|       SADD.M2         R18, R19, R23
        SMVAGA32.M1     R19, OR1
|       SADD.M2         R23, R15, R23
        SMVAGA32.M2     R23, OR0
        VLDW            *+AR2[OR1], VR6
|       VLDW            *+AR1[OR1], VR0
        SMOVIL          0x0001, R23
|       VLDW            *+AR2[OR0], VR1
|       VLDW            *+AR1[OR0], VR2
        SMOVIH          0x0000, R23
        SMVCGC          R23, SMR
        SNOP            4
        SLT             R14, R8, R0
|       VSHUFW          VR6, VR6, VR7
[!R0]   SBR             .full_vpe_x
|       VSHUFW          VR0, VR2, VR5
        VSHUFW          VR0, VR2, VR2
        VSHUFW          VR6, VR1, VR1
        SNOP            2
        VNEG            VR1, VR1
        SNOP            1

        SFCMPES32.M2    R8, R1, R0
[R0]    SBR             .full_vpe_x
        SNOP            6

        SSUB.M2         R1, R8, R23
|       SMOVIL          0xFFFF, R19
|       VFMULS32.M2     VR1, VR4, VR6
|       VFMULS32.M3     VR7, VR3, VR0
        SMOVIL          0x0002, R9
        SMOVIH          0x0000, R19
        SMOVIH          0x0000, R9
        SMVCGC          R9, SMR
|       VFMULS32.M1     VR1, VR3, VR0
|       VFMULS32.M2     VR7, VR4, VR6
|       VSUB.M3         VR6, VR0, VR7
        VSUB.M3         VR7, VR5, VR5
        SNOP            2
        VADD.M3         VR6, VR0, VR0
        SMOVIL          0x0003, R9
|       VSUB.M3         VR0, VR2, VR2
        SMOVIH          0x0000, R9
|       VSHUFW          VR5, VR2, VR0
        SMVCGC          R9, SMR
|       VSHUFW          VR5, VR2, VR2
        SNOP            1
        VSTW            VR0, *+AR1[OR1]
        VSTW            VR2, *+AR1[OR0]
        SNOP            1
        SSHFAR16        R23, R19, R19
        SMVCGC          R19, VLR
        SNOP            4
        SMOVIL          0xFFFF, R19
|       SBR             .j_endloop1
        SMOVIH          0x0000, R19
        SMVCGC          R19, VLR
        SNOP            4

.full_vpe_x:
        SADD.M2         16, R20, R20
|       SMOVIL          0x0002, R23
|       VFMULS32.M2     VR1, VR4, VR6
|       VFMULS32.M3     VR7, VR3, VR0
        SMOVIH          0x0000, R23
        SMVCGC          R23, SMR
        SNOP            1
        VFMULS32.M1     VR1, VR3, VR0
|       VFMULS32.M2     VR7, VR4, VR6
|       VSUB.M3         VR6, VR0, VR7
        VSUB.M3         VR7, VR5, VR5
        SNOP            1
        SMOVIL          0x0003, R23
        SMOVIH          0x0000, R23
|       VADD.M3         VR6, VR0, VR0
        SMVCGC          R23, SMR
|       VSUB.M3         VR0, VR2, VR2
        VSHUFW          VR5, VR2, VR0
        VSHUFW          VR5, VR2, VR2
        SNOP            1
        VSTW            VR0, *+AR1[OR1]
        SLT             R20, R14, R0
|       VSTW            VR2, *+AR1[OR0]
[R0]    SBR             .j_loop1
        SNOP            6

.j_endloop1:
        SSUB.M2         1, R14, R14
        SLT             R14, R11, R0
[!R0]   SBR             .i_loop1
        SNOP            6

.restoration:
        SBR             R62
        SNOP            6

.size DSPF_sp_cholesky_solver_cmplx, .-DSPF_sp_cholesky_solver_cmplx
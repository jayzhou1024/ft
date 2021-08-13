.global DSPF_sp_biquad_asm

DSPF_sp_biquad_asm:

.preparation:
        SMVAGA36.M1     R13:R12, AR10
|       SMOV.M2         R20, R12
|       SMOVIL          0, R3
        SMVAGA36.M1     R17:R16, AR11
|       SMOV.M2         R20, R16
|       SMOVIL          16, R2
        SMVAGA36.M1     R11:R10, AR0
|       SMOVIH          0, R3
|       SLDW            *+AR10[0], R17
        SMVAGA36.M1     R11:R10, AR1
|       SMOVIH          0, R2
|       SLDW            *+AR10[2], R13
        SMVAGA36.M1     R3:R2, OR0
|       SMOVIL          0, R2
|       SLDW            *+AR10[1], R3
        SMVAGA36.M1     R11:R10, AR2
|       SMOVIH          0, R2
|       SLDW            *+AR11[0], R10
        SMVAGA36.M1     R15:R14, AR10
|       SLDW            *+AR11[1], R14
        SMVAGA36.M1     R19:R18, AR3
        SMVAGA36.M1     R19:R18, AR4
|       SVBCAST.M2      R17, VR0
|       SLDW            *+AR10[1], R15
        SMVAGA36.M1     R19:R18, AR5
|       SVBCAST.M2      R13, VR1
|       SLDW            *+AR10[2], R11
|       VLDW            *AR3++[2], VR2
        SMVAGA36.M1     R19:R18, AR6
|       SVBCAST.M2      R3, VR3
        SNOP            6

.FIRST_LOOP:
        SSUB.M2         16, R12, R12
|       VLDW            *+AR0[0], VR4
|       VLDW            *+AR3[0], VR2
        SLT             R12, R2, R0
|       VLDW            *+AR0[2], VR5
|       VLDW            *+AR0[1], VR6
        VLDW            *AR0++[OR0], VR7
        SNOP            5
        VFMULAS32.M3    VR4, VR1, VR2, VR2
        SNOP            5
        VFMULAS32.M3    VR6, VR3, VR2, VR2
        SNOP            5
[!R0]   SBR             .FIRST_LOOP
|       VFMULAS32.M3    VR5, VR0, VR2, VR2
        SNOP            5
        VSTW            VR2, *AR3++[OR0]

        SSUB.M2         2, R16, R16
|       VLDW            *+AR6[0], VR2
|       VLDW            *AR4++[2], VR1
        VLDW            *+AR1[0], VR3
        SNOP            7
        VMVCGC          VR3, SVR
        SNOP            2
        SMVCCG          SVR0, R12
|       VMVCGC          VR2, SVR
        SNOP            1
        SFMULS32.M2     R3, R12, R18
|       SMVCCG          SVR1, R19
        SNOP            1
        SFMULS32.M2     R17, R12, R12
|       SMVCCG          SVR0, R12
        SNOP            1
        SFMULS32.M2     R17, R19, R19
|       SMVCCG          SVR1, R19
        SNOP            1
        SFADDS32.M2     R10, R12, R12
        SNOP            1
        SFADDS32.M2     R14, R19, R19
        SFMULS32.M2     R15, R12, R14
|       SMVCGC          R12, SVR0
        SNOP            1
        SFADDS32.M2     R18, R19, R19
        SNOP            2
        SFSUBS32.M2     R14, R19, R19
        SNOP            2
        SMVCGC          R19, SVR1
        SNOP            2
        VMVCCG          SVR, VR2
        SNOP            1
        VSTW            VR2, *+AR6[0]

.SECOND_LOOP:
        SSUB.M1         16, R16, R16
|       SFMULS32.M2     R11, R12, R14
|       VLDW            *+AR4[0], VR1
        SFMULS32.M2     R15, R19, R18
|       SLT             R16, R2, R0
        SNOP            6
        VMVCGC          VR1, SVR
        SNOP            2
        SMVCCG          SVR0, R10
        SNOP            1
        SFSUBS32.M2     R18, R10, R10
|       SMVCCG          SVR1, R18
        SNOP            1
        SMVCCG          SVR2, R17
        SFMULS32.M1     R11, R19, R14
|       SFSUBS32.M2     R14, R10, R10
        SMVCCG          SVR3, R1
        SNOP            1
        SFMULS32.M2     R15, R10, R8
|       SMVCCG          SVR4, R9
        SNOP            1
        SMVCCG          SVR5, R21
        SNOP            1
        SFSUBS32.M2     R8, R18, R18
|       SMVCCG          SVR6, R8
        SNOP            1
        SMVCCG          SVR7, R22
        SFMULS32.M1     R11, R10, R14
|       SFSUBS32.M2     R14, R18, R18
        SMVCCG          SVR8, R23
        SNOP            1
        SFMULS32.M2     R15, R18, R24
|       SMVCCG          SVR9, R25
        SNOP            1
        SMVCCG          SVR10, R26
        SNOP            1
        SFSUBS32.M2     R24, R17, R17
|       SMVCCG          SVR11, R24
        SNOP            1
        SMVCCG          SVR12, R27
        SFMULS32.M1     R11, R18, R14
|       SFSUBS32.M2     R14, R17, R17
        SMVCCG          SVR13, R28
        SNOP            1
        SFMULS32.M2     R15, R17, R29
|       SMVCCG          SVR14, R42
        SNOP            1
        SMVCCG          SVR15, R43
        SNOP            1
        SFSUBS32.M2     R29, R1, R1
|       SMVCGC          R10, SVR0
        SNOP            2
        SFMULS32.M1     R11, R17, R14
|       SFSUBS32.M2     R14, R1, R1
|       SMVCGC          R18, SVR1
        SNOP            2
        SFMULS32.M2     R15, R1, R17
|       SMVCGC          R17, SVR2
        SNOP            2
        SMVCGC          R1, SVR3
        SFSUBS32.M2     R17, R9, R9
        SNOP            2
        SFMULS32.M1     R11, R1, R14
|       SFSUBS32.M2     R14, R9, R9
        SNOP            2
        SFMULS32.M2     R15, R9, R1
|       SMVCGC          R9, SVR4
        SNOP            3
        SFSUBS32.M2     R1, R21, R21
        SNOP            2
        SFMULS32.M1     R11, R9, R14
|       SFSUBS32.M2     R14, R21, R21
        SNOP            2
        SFMULS32.M2     R15, R21, R9
|       SMVCGC          R21, SVR5
        SNOP            3
        SFSUBS32.M2     R9, R8, R8
        SNOP            2
        SFMULS32.M1     R11, R21, R14
|       SFSUBS32.M2     R14, R8, R8
        SNOP            2
        SFMULS32.M2     R15, R8, R21
|       SMVCGC          R8, SVR6
        SNOP            3
        SFSUBS32.M2     R21, R22, R22
        SNOP            2
        SFMULS32.M1     R11, R8, R14
|       SFSUBS32.M2     R14, R22, R22
        SNOP            2
        SFMULS32.M2     R15, R22, R8
|       SMVCGC          R22, SVR7
        SNOP            3
        SFSUBS32.M2     R8, R23, R23
        SNOP            2
        SFMULS32.M1     R11, R22, R14
|       SFSUBS32.M2     R14, R23, R23
        SNOP            2
        SFMULS32.M2     R15, R23, R22
|       SMVCGC          R23, SVR8
        SNOP            3
        SFSUBS32.M2     R22, R25, R25
        SNOP            2
        SFMULS32.M1     R11, R23, R14
|       SFSUBS32.M2     R14, R25, R25
        SNOP            2
        SFMULS32.M2     R15, R25, R23
|       SMVCGC          R25, SVR9
        SNOP            3
        SFSUBS32.M2     R23, R26, R26
        SNOP            2
        SFMULS32.M1     R11, R25, R14
|       SFSUBS32.M2     R14, R26, R26
        SNOP            2
        SFMULS32.M2     R15, R26, R25
|       SMVCGC          R26, SVR10
        SNOP            3
        SFSUBS32.M2     R25, R24, R24
        SNOP            2
        SFMULS32.M1     R11, R26, R14
|       SFSUBS32.M2     R14, R24, R24
        SNOP            2
        SFMULS32.M2     R15, R24, R26
|       SMVCGC          R24, SVR11
        SNOP            3
        SFSUBS32.M2     R26, R27, R27
        SNOP            2
        SFMULS32.M1     R11, R24, R14
|       SFSUBS32.M2     R14, R27, R27
        SNOP            2
        SFMULS32.M2     R15, R27, R24
|       SMVCGC          R27, SVR12
        SNOP            3
        SFSUBS32.M2     R24, R28, R28
        SNOP            2
        SFMULS32.M1     R11, R27, R14
|       SFSUBS32.M2     R14, R28, R28
        SNOP            2
        SFMULS32.M2     R15, R28, R27
|       SMVCGC          R28, SVR13
        SNOP            3
        SFSUBS32.M2     R27, R42, R42
        SNOP            2
        SFMULS32.M1     R11, R28, R14
|       SFSUBS32.M2     R14, R42, R42
        SNOP            2
        SFMULS32.M2     R15, R42, R28
|       SMVCGC          R42, SVR14
        SMOV.M2         R42, R12
        SNOP            2
        SFSUBS32.M2     R28, R43, R43
        SNOP            2
        SFSUBS32.M2     R14, R43, R43
        SNOP            1
[!R0]   SBR             .SECOND_LOOP
        SMOV.M2         R43, R19
|       SMVCGC          R43, SVR15
        SNOP            2
        VMVCCG          SVR, VR1
        SNOP            1
        VSTW            VR1, *AR4++[OR0]

        SMOV.M2         R20, R20
|       SMOVIL          0, R21
        SMOVIH          0, R21
        SMVAGA36.M1     R21:R20, OR0
        SNOP            1
        SSUBA.M2        2, OR0, OR0
        SNOP            2
        VLDW            *+AR5[OR0], VR1
|       VLDW            *+AR2[OR0], VR2
        SNOP            7
        VMVCGC          VR2, SVR
        SNOP            2
        SMVCCG          SVR1, R20
|       VMVCGC          VR1, SVR
        SNOP            1
        SFMULS32.M1     R13, R20, R3
|       SFMULS32.M2     R3, R20, R20
|       SMVCCG          SVR0, R21
        SNOP            1
        SMVCCG          SVR0, R16
        SNOP            1
        SFMULS32.M1     R11, R16, R21
|       SFMULAS32.M2    R13, R21, R20, R20
|       SMVCCG          SVR1, R13
        SNOP            1
        SFMULS32.M1     R15, R13, R15
        SFMULS32.M2     R11, R13, R13
        SNOP            2
        SFSUBS32.M2     R21, R20, R20
        SFSUBS32.M2     R13, R3, R3
        SNOP            1
        SFSUBS32.M2     R15, R20, R20
        SSTW            R3, *+AR11[1]
        SNOP            1
        SSTW            R20, *+AR11[0]

.restoration:
        SBR             R62
        SNOP            6

.size DSPF_sp_biquad_asm, .-DSPF_sp_biquad_asm
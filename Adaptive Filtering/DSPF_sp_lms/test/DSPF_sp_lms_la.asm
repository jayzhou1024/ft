.global DSPF_sp_lms_la

DSPF_sp_lms_la:

.preparation:
        SMVAGA36.M1     R17:R16, AR10
|       SVBCAST.M2      R18, VR0
|       SMOVIL          0xf, R18
        SMVAGA36.M1     R15:R14, AR11
|       SMVCGC          R18, VLR
        SNOP            4
        SMOVIL          0, R18
        SADD.M1         0, R18, R15
|       SADD.M2         0, R18, R17

.loop_i:
        SMVAGA36.M1     R13:R12, AR0
|       SVBCAST.M2      R20, VR2
|       SMOVIL          0, R1
        SMVAGA36.M1     R13:R12, AR1
|       SSHFLL          2, R18, R16
        SADD.M2         R16, R10, R16
        SMVAGA36.M1     R17:R16, AR2
        VFMULS32.M3     VR2, VR0, VR2
        SADDA.M2        4, AR2, AR3
        SNOP            2

.loop_j:
        SADD.M2         0, R1, R14
|       SEQ             0, R1, R0
|       VLDW            *AR0++[4], VR3
        SMVAGA36.M1     R15:R14, OR0
|[R0]   SVBCAST.M2      R1, VR1
        SADD.M2         4, R1, R1
        SLT             R1, R22, R0
|       VLDW            *+AR2[OR0], VR4
|       VLDW            *+AR3[OR0], VR5
        SNOP            7
        VFMULAS32.M3    VR2, VR4, VR3, VR3
        SNOP            4
[R0]    SBR             .loop_j
        VFMULAS32.M3    VR3, VR5, VR1, VR1
|       VSTW            VR3, *AR1++[4]
        SNOP            5

        SADD.M2         1, R18, R18
|       SLDW            *AR11++[1], R1
|       VMVCGC          VR1, SVR
        SLT             R18, R24, R0
        SNOP            1
        SMVCCG          SVR0, R2
        SNOP            1
        SMVCCG          SVR1, R3
        SNOP            1
        SFADDS32.M2     R2, R3, R3
|       SMVCCG          SVR2, R2
        SNOP            1
        SMVCCG          SVR3, R8
        SFADDS32.M2     R3, R2, R3
        SNOP            1
[R0]    SBR             .loop_i
        SFADDS32.M2     R3, R8, R3
        SNOP            2
        SFSUBS32.M2     R3, R1, R20
|       SSTW            R3, *AR10++[1]
        SNOP            2

        SMOVIL          0xffff, R12
        SMVCGC          R12, VLR
        SNOP            4

.restoration:
        SMOV            R20, R10                        ;transfer "error" to R10
|       SBR             R62
        SNOP            6

.size DSPF_sp_lms_la, .-DSPF_sp_lms_la
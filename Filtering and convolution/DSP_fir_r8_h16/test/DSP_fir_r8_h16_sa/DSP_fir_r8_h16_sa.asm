.global DSP_fir_r8_h16_sa

DSP_fir_r8_h16_sa:

.preparation:
        SMOVIL          0, R61                          ;initial the high word of the stack offset in R-buf

        SADD.M1         15, R18, R10
|       SADD.M2         0, R10, R1
|       SMOVIL          0, R2
|       VMOVIL          16, VR0
        SMVAGA36.M1     R13:R12, AR10
|       SMOVIL          0, R3
|       VMOVIH          16, VR0
        SMOVIH          0, R2
|       VMOVIL          528, VR1
        SADD.M1         0, R2, R13
|       SADD.M2         0, R2, R9
|       SMVCGC          R2, SMR
|       SLDH            *AR10++[1], R2
|       VMOVIH          528, VR1
        SMVAGA36.M1     R15:R14, AR0
|       SMOVIH          0, R3
|       SLDH            *AR10++[1], R17
        SLDH            *AR10++[1], R14
        SMOVIL          0x02020202, R15
|       SLDH            *AR10++[1], R19
        SMOVIL          0x04020301, R20
|       SLDH            *AR10++[1], R21
        SMOVIH          0x02020202, R15
|       SLDH            *AR10++[1], R22
        SVBCAST.M2      R2, VR2
|       SMOVIH          0x04020301, R20
        SVBCAST.M2      R17, VR3
|       SMOVIL          0, R12
        SVBCAST.M1      R14, VR4
|       SMOVIH          0x40160000, R12
        SMVAGA36.M1     R13:R12, AR11
|       SMOVIL          16, R12
        SMOVIH          0, R12
        SMVAGA36.M1     R13:R12, OR0
|       SADDU.M2        R15, R20, R20
|       SSHFLR          4, R10, R10
|       SSTW            R20, *AR11++[1]
        SVBCAST.M1      R22, VR5
|       SADDU.M2        R15, R20, R20
|       SSTW            R20, *AR11++[1]
        SADDU.M1        1, R10, R10
|       SADDU.M2        R15, R20, R20
|       SSTW            R20, *AR11++[1]
        SVBCAST.M1      R21, VR6
|       SADDU.M2        R15, R20, R20
|       SSHFLR          1, R10, R10
|       SSTW            R20, *AR11++[1]
        SVBCAST.M1      R19, VR7
|       SADDU.M2        R15, R20, R20
|       SSTW            R20, *AR11++[1]
        SADDU.M2        R15, R20, R20
|       SSTW            R20, *AR11++[1]
        SADDU.M2        R15, R20, R20
|       SSTW            R20, *AR11++[1]
        SSTW            R20, *AR11++[1]
        SLDH            *AR10++[1], R20
        SLDH            *AR10++[1], R15
        SLDH            *AR10++[1], R19
        SLDH            *AR10++[1], R21
        SLDH            *AR10++[1], R22
        SLDH            *AR10++[1], R12
        SVBCAST.M2      R20, VR8
|       SLDH            *AR10++[1], R20
        SVBCAST.M2      R15, VR9
|       SLDH            *AR10++[1], R15
        SVBCAST.M2      R19, VR10
|       SLDH            *AR10++[1], R19
        SVBCAST.M2      R21, VR11
|       SLDH            *AR10++[1], R21
        SVBCAST.M2      R22, VR12
        SVBCAST.M2      R12, VR13
        SVBCAST.M2      R20, VR14
        SVBCAST.M2      R15, VR15
        SVBCAST.M2      R19, VR16
        SVBCAST.M2      R21, VR17
        SNOP            3

.loop_j:
        SADD.M2         16, R3, R3
|       SSHFLL          1, R3, R21
|       VMOVIL          0, VR18
        SADD.M2         R1, R21, R8
|       SLT             R3, R18, R0
|       VMOVIH          0, VR18
        SMVAGA36.M1     R9:R8, AR1
|       VADD.M3         0, VR18, VR19
        SNOP            1
        VLDH            *AR1, VR20
|       VLDW            *AR1, VR21
        VLDW            *+AR1[2], VR22
|       VLDH            *+AR1[6], VR23
        VLDH            *+AR1[2], VR24
|       VLDH            *+AR1[4], VR25
        SNOP            5
        VMULAS16T.M3    VR20, VR2, VR18, VR18
|       VSHUFH          VR21, VR21, VR26
|       VLDH            *+AR1[8], VR20
|       VLDW            *+AR1[4], VR21
        VSHUFH          VR22, VR22, VR27
|       VLDW            *+AR1[6], VR22
        VMULAS16T.M3    VR24, VR4, VR19, VR19
|       VLDH            *+AR1[10], VR24
        VMULAS16T.M3    VR25, VR6, VR18, VR18
|       VLDH            *+AR1[12], VR25
        VBEXT           VR0, VR26, VR28
        VMULAS16T.M3    VR23, VR8, VR19, VR19
|       VBEXT           VR1, VR26, VR29
|       VLDH            *+AR1[14], VR23
        VMULAS16T.M3    VR29, VR3, VR18, VR18
|       VBEXT           VR0, VR27, VR26
        VBEXT           VR1, VR27, VR29
        VMULAS16T.M3    VR28, VR7, VR19, VR19
|       VSHUFH          VR21, VR21, VR27
        VMULAS16T.M3    VR29, VR5, VR18, VR18
        VSHUFH          VR22, VR22, VR29
        VMULAS16T.M3    VR26, VR9, VR19, VR19
|       VBEXT           VR1, VR27, VR22
        VMULAS16T.M3    VR20, VR10, VR18, VR18
        VBEXT           VR0, VR27, VR20
        VMULAS16T.M3    VR24, VR12, VR19, VR19
|       VBEXT           VR1, VR29, VR27
        VMULAS16T.M3    VR25, VR14, VR18, VR18
|       VBEXT           VR0, VR29, VR24
        SNOP            1
        VMULAS16T.M3    VR23, VR16, VR19, VR19
        VMULAS16T.M3    VR22, VR11, VR18, VR18
        SNOP            1
        VMULAS16T.M3    VR20, VR13, VR19, VR19
        VMULAS16T.M3    VR27, VR15, VR18, VR18
[R0]    SBR             .loop_j
        VMULAS16T.M3    VR24, VR17, VR19, VR19
        SNOP            2
        VADD.M3         VR18, VR19, VR19
        VSHFAR          15, VR19, VR19
        VSTH            VR19, *AR0++[OR0]

.restoration:
        SBR             R62
        SNOP            6

.size DSP_fir_r8_h16_sa, .-DSP_fir_r8_h16_sa
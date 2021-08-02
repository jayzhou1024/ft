.global DSP_fir_r8_sa

DSP_fir_r8_sa:

.preparation:
        SMOVIL          0, R61                          ;initial the high word of the stack offset in R-buf

        SMVAGA36.M1     R13:R12, AR10
|       SADD.M2         15, R18, R12
|       SMOVIL          0, R13
|       VMOVIL          16, VR0
        SMOVIL          0, R2
|       VMOVIH          16, VR0
        SMOVIL          0x04020301, R1
|       VMOVIL          528, VR1
        SMOVIH          0, R13
|       VMOVIH          528, VR1
        SADD.M1         0, R13, R3
|       SADD.M2         0, R13, R9
|       SMVCGC          R13, SMR
        SMOVIH          0x40160000, R2
        SMVAGA36.M1     R3:R2, AR11
        SMOVIH          0x04020301, R1
        SMOVIL          16, R2
|       SSTW            R1, *AR11++[1]
        SMOVIH          0, R2
        SMVAGA36.M1     R3:R2, OR0
|       SMOVIL          0x02020202, R17
        SMOVIH          0x02020202, R17
        SADDU.M2        R17, R1, R1
|       SSHFLR          4, R12, R12
        SADDU.M1        1, R12, R12
|       SADDU.M2        R17, R1, R1
|       SSTW            R1, *AR11++[1]
        SADDU.M2        R17, R1, R1
|       SSHFLR          1, R12, R12
|       SSTW            R1, *AR11++[1]
        SADDU.M2        R17, R1, R1
|       SSTW            R1, *AR11++[1]
        SADDU.M2        R17, R1, R1
|       SSTW            R1, *AR11++[1]
        SADDU.M2        R17, R1, R1
|       SSTW            R1, *AR11++[1]
        SADDU.M2        R17, R1, R1
|       SSTW            R1, *AR11++[1]
        SSTW            R1, *AR11++[1]

.loop_i:
        SMOVIL          0, R1
|       SLDH            *AR10++[1], R17
        SMOVIH          0, R1
|       SLDH            *AR10++[1], R2
        SADD.M1         0, R1, R21
|       SADD.M2         0, R1, R3
|       SSHFLL          1, R13, R8
|       SLDH            *AR10++[1], R19
        SADD.M2         R8, R10, R22
|       SLDH            *AR10++[1], R23
        SLDH            *AR10++[1], R24
        SLDH            *AR10++[1], R25
        SVBCAST.M2      R17, VR2
|       SLDH            *AR10++[1], R17
        SVBCAST.M2      R2, VR3
|       SLDH            *AR10++[1], R2
        SVBCAST.M2      R19, VR4
        SVBCAST.M2      R23, VR5
        SVBCAST.M2      R24, VR6
        SVBCAST.M2      R25, VR7
        SVBCAST.M2      R17, VR8
        SVBCAST.M2      R2, VR9
        SNOP            3

.loop_j:
        SADD.M2         16, R1, R1
|       SSHFLL          1, R1, R2
|       VMOVIL          0, VR10
        SADD.M2         R22, R2, R8
|       SLT             R1, R18, R0
|       VMOVIH          0, VR10
        SMVAGA36.M1     R9:R8, AR0
|       SADD.M2         1, R3, R3
|       SSHFLL          6, R3, R20
|       VADD.M3         0, VR10, VR11
        SADD.M2         R20, R14, R20
        SMVAGA36.M1     R21:R20, AR1
|       VLDH            *AR0, VR12
|       VLDW            *AR0, VR13
        VLDW            *+AR0[2], VR14
|       VLDH            *+AR0[6], VR15
        VLDH            *+AR0[4], VR16
|       VLDW            *AR1, VR17
        VLDH            *+AR0[2], VR18
        SNOP            4
        VMULAS16T.M3    VR12, VR2, VR10, VR10
|       VSHUFH          VR13, VR13, VR19
        VSHUFH          VR14, VR14, VR13
        SNOP            1
        VMULAS16T.M2    VR16, VR6, VR10, VR10
|       VMULAS16T.M3    VR18, VR4, VR17, VR17
        VBEXT           VR0, VR19, VR18
        VBEXT           VR1, VR19, VR16
        VMULAS16T.M2    VR16, VR3, VR10, VR10
|       VMULAS16T.M3    VR15, VR8, VR17, VR17
|       VBEXT           VR1, VR13, VR19
        VBEXT           VR0, VR13, VR15
        SNOP            1
        VMULAS16T.M2    VR19, VR7, VR10, VR10
|       VMULAS16T.M3    VR18, VR5, VR17, VR17
[R0]    SBR             .loop_j
        SNOP            1
        VMULAS16T.M3    VR15, VR9, VR17, VR17
        SNOP            2
        VADD.M3         VR10, VR17, VR17
        VSTW            VR17, *AR1

        SADD.M2         8, R13, R13
        SLT             R13, R16, R0
[R0]    SBR             .loop_i
        SNOP            6

        SMVAGA36.M1     R15:R14, AR1
|       SMOVIL          0, R10
        SMVAGA36.M1     R15:R14, AR0
|       SMOVIH          0, R10
        SNOP            1

.update_store:
        SADD.M2         1, R10, R10
|       VLDDWM2         *AR1++[OR0], VR1:VR0
        SLT             R10, R12, R0
        SNOP            3
[R0]    SBR             .update_store
        SNOP            2
        VSHFAR          15, VR1, VR1
        VSHFAR          15, VR0, VR0
        VBALE2          VR0, VR1, VR0
        VSTW            VR0, *AR0++[OR0]

.restoration:
        SBR             R62
        SNOP            6

.size DSP_fir_r8_sa, .-DSP_fir_r8_sa
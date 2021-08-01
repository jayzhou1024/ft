.global DSP_fir_r8_h8_asm

DSP_fir_r8_h8_asm:

.preparation:
        SMOVIL          0, R61                          ;initial the high word of the stack offset in R-buf

        SADD.M1         0, R11, R3
|       SADD.M2         15, R16, R1
|       SMOVIL          0, R8
|       VMOVIL          528, VR0
        SMVAGA36.M1     R13:R12, AR10
|       SMOVIL          0, R9
|       VMOVIL          16, VR1
        SMOVIH          0, R8
|       VMOVIH          528, VR0
        SADD.M2         0, R8, R13
|       SMVCGC          R8, SMR
|       SLDH            *AR10++[1], R8
|       VMOVIH          16, VR1
        SMOVIH          0, R9
|       SLDH            *AR10++[1], R17
        SADD.M1         0, R9, R19
|       SADD.M2         0, R9, R21
|       SLDH            *AR10++[1], R18
        SMOVIL          0, R2
        SMOVIL          0x04020301, R22
|       SLDH            *AR10++[1], R23
        SMOVIH          0x40160000, R2
        SMVAGA36.M1     R3:R2, AR11
|       SMOVIH          0x04020301, R22
        SMOVIL          0x02020202, R24
        SVBCAST.M1      R17, VR2
|       SMOVIH          0x02020202, R24
|       SSTW            R22, *AR11++[1]
        SVBCAST.M1      R8, VR3
|       SADDU.M2        R24, R22, R22
|       SSHFLR          4, R1, R1
        SADDU.M1        R24, R22, R22
|       SADDU.M2        1, R1, R1
|       SMOVIL          16, R2
|       SSTW            R22, *AR11++[1]
        SADDU.M2        R24, R22, R22
|       SSHFLR          1, R1, R1
|       SSTW            R22, *AR11++[1]
        SVBCAST.M1      R23, VR4
|       SADDU.M2        R24, R22, R22
|       SMOVIH          0, R2
|       SSTW            R22, *AR11++[1]
        SMVAGA36.M1     R3:R2, OR0
|       SADDU.M2        R24, R22, R22
|       SSTW            R22, *AR11++[1]
        SVBCAST.M1      R18, VR5
|       SADDU.M2        R24, R22, R22
|       SSTW            R22, *AR11++[1]
        SADDU.M2        R24, R22, R22
|       SSTW            R22, *AR11++[1]
        SSTW            R22, *AR11++[1]
        SLDH            *AR10++[1], R22
        SLDH            *AR10++[1], R24
        SLDH            *AR10++[1], R18
        SLDH            *AR10++[1], R2
        SNOP            2
        SVBCAST.M2      R22, VR6
        SVBCAST.M2      R24, VR7
        SVBCAST.M2      R18, VR8
        SVBCAST.M2      R2, VR9
        SNOP            3

.loop_j:
        SADD.M2         16, R9, R9
|       SSHFLL          1, R9, R2
|       VMOVIL          0, VR10
        SADD.M2         R10, R2, R12
|       SLT             R9, R16, R0
|       VMOVIH          0, VR10
        SMVAGA36.M1     R13:R12, AR0
|       SADD.M2         1, R19, R19
|       SSHFLL          6, R19, R20
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
        VMULAS16T.M3    VR12, VR3, VR10, VR10
|       VSHUFH          VR13, VR13, VR19
        VSHUFH          VR14, VR14, VR13
        SNOP            1
        VMULAS16T.M2    VR16, VR6, VR10, VR10
|       VMULAS16T.M3    VR18, VR5, VR17, VR17
        VBEXT           VR1, VR19, VR18
        VBEXT           VR0, VR19, VR16
        VMULAS16T.M2    VR16, VR2, VR10, VR10
|       VMULAS16T.M3    VR15, VR8, VR17, VR17
|       VBEXT           VR0, VR13, VR19
        VBEXT           VR1, VR13, VR15
        SNOP            1
        VMULAS16T.M2    VR19, VR7, VR10, VR10
|       VMULAS16T.M3    VR18, VR4, VR17, VR17
[R0]    SBR             .loop_j
        SNOP            1
        VMULAS16T.M3    VR15, VR9, VR17, VR17
        SNOP            2
        VADD.M3         VR10, VR17, VR17
        VSTW            VR17, *AR1

        SMVAGA36.M1     R15:R14, AR1
|       SMOVIL          0, R9
        SMVAGA36.M1     R15:R14, AR0
|       SMOVIH          0, R9
        SNOP            1

.update_store:
        SADD.M2         1, R9, R9
|       VLDDWM2         *AR1++[OR0], VR3:VR2
        SLT             R9, R1, R0
        SNOP            3
[R0]    SBR             .update_store
        SNOP            2
        VSHFAR          15, VR3, VR3
        VSHFAR          15, VR2, VR2
        VBALE2          VR2, VR3, VR2
        VSTW            VR2, *AR0++[OR0]

.restoration:
        SBR             R62
        SNOP            6

.size DSP_fir_r8_h8_asm, .-DSP_fir_r8_h8_asm
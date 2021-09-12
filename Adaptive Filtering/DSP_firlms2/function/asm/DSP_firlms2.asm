.global DSP_firlms2_asm

DSP_firlms2_asm:

.preparation:
        SMVAGA36.M1     R11:R10, AR0
|       SVBCAST.M2      R14, VR0
|       SMOVIL          0, R14
        SMVAGA36.M1     R13:R12, AR1
|       SADD.M2         15, R16, R12
|       SMOVIL          0, R10
        SMOVIL          0, R13
        SMOVIL          0x80028001, R2
        SMOVIH          0, R14
        SVBCAST.M2      R14, VR1
|       SMOVIH          0x40160000, R10
        SMOVIH          0, R13
        SADD.M2         0, R13, R11
|       SMOVIH          0x80028001, R2
        SMVAGA36.M1     R11:R10, AR10
|       SMOVIL          0x00020002, R3
        SMOVIH          0x00020002, R3
        SADDU.M2        R3, R2, R2
|       SMOVIL          16, R10
|       SSTW            R2, *AR10++[1]
        SADDU.M2        R3, R2, R2
|       SMOVIH          0, R10
|       SSTW            R2, *AR10++[1]
        SMVAGA36.M1     R11:R10, OR0
|       SADDU.M2        R3, R2, R2
|       SSHFAR          4, R12, R12
|       SSTW            R2, *AR10++[1]
        SADDU.M2        R3, R2, R2
|       SSTW            R2, *AR10++[1]
        SSUB.M1         1, R12, R12
|       SADDU.M2        R3, R2, R2
|       SSTW            R2, *AR10++[1]
        SADDU.M2        R3, R2, R2
|       SSTW            R2, *AR10++[1]
        SADDU.M2        R3, R2, R2
|       SSTW            R2, *AR10++[1]
        SSTW            R2, *AR10++[1]

.sloop:
        SMOVIL          0, R2
|       VMOV.M3         VR1, VR2
|       VMOV            VR1, VR3
|       VLDW            *AR1, VR4
|       VLDH            *AR0++[OR0], VR5
        SMOVIH          0, R2
|       VLDH            *AR1++[OR0], VR6
        SAND            15, R16, R3
        SLT             0, R3, R0
        SSHFAR          4, R14, R3
        SEQ             R3, R12, R1
        SAND            R1, R0, R1
        SNOP            1
        VSHUFH          VR4, VR4, VR4
        VMULAS16T.M3    VR0, VR6, VR1, VR1
        SNOP            1
        VMULAS16T.M3    1, VR4, VR3, VR3
        VMOV.M3         VR2, VR1
|       VSHFAR          15, VR1, VR4
        SNOP            1
        VMULAS16T.M3    VR3, VR4, VR1, VR1
        SNOP            2
        VMULAS16T.M3    VR3, VR5, VR1, VR1
        SNOP            2
        VMOV            VR1, VR5
        VREDUC16        VR5, 0, 0, VR5
        SNOP            6
        VMVCGC          VR5, SVR
        SNOP            2
        SMVCCG          SVR0, R3
        SNOP            2
[!R1]   SADD.M2         R3, R2, R2
        SMOVIL          280493008, R60                  ;stack offset spill, transfer the offset's low word to R
        SMVAGA36.M1     R61:R60, OR14                   ;transfer the stack offset into the OR
[!R1]   SBR             .loop_ra
        SLDW            *+AR15[OR14], R1                ;restore "ih" back to register
        SNOP            5

        SAND            15, R16, R3
|       VMVCGC          VR1, SVR
        SSHFAR          3, R3, R0
        SNOP            1
        SMVCCG          SVR0, R10
        SNOP            2
        SMVCCG          SVR3, R11
        SNOP            2
        SMVCCG          SVR1, R8
        SNOP            2
        SADD.M2         R10, R8, R10
|       SMVCCG          SVR2, R8
        SNOP            2
        SADD.M2         R8, R11, R8
|       SMVCCG          SVR5, R11
        SADD.M2         R10, R8, R8
        SADD.M2         R2, R8, R2
        SMVCCG          SVR7, R8
        SNOP            2
        SMVCCG          SVR4, R10
        SNOP            2
        SADD.M2         R10, R11, R10
|       SMVCCG          SVR6, R11
        SNOP            2
        SADD.M2         R11, R8, R11
|       SMVCCG          SVR9, R8
        SADD.M2         R10, R11, R11
[R0]    SADD.M2         R2, R11, R2
        SMVCCG          SVR11, R11
        SNOP            2
        SMVCCG          SVR8, R10
        SNOP            2
        SADD.M2         R10, R8, R10
|       SMVCCG          SVR10, R8
        SNOP            2
        SADD.M2         R8, R11, R8
|       SEQ             12, R3, R0
        SADD.M2         R10, R8, R8
[R0]    SADD.M2         R2, R8, R2

.loop_ra:
        SADD.M1         16, R14, R14
|       SADD.M2         R2, R13, R13
|       VMOV            VR2, VR1
        SLT             R14, R16, R0
[R0]    SBR             .sloop
        SNOP            6

.restoration:
        SMOV            R13, R10                        ;transfer "r" to R10
|       SBR             R62
        SNOP            6

.size DSP_firlms2_asm, .-DSP_firlms2_asm
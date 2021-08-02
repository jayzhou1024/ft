.global DSP_fir_r8_h16_asm
        ;寄存器资源分配
        ;
        ;VR3~VR5:乘加中间结果
        ;VR6~VR9:混洗中间结果
        ;VR10~VR25:h0~h15
        ;VR26~VR29:x0_31 x4_35 x8 x12
        ;VR30~VR45:x0~x15
        ;VR46:528
        ;VR47:16
        ;
        ;R0:循环控制
        ;R1:初始化控制
        ;R2~R3:开辟空间
        ;
        ;R52~R59:取h
        ;R61:R60:配置取x地址
        ;
        ;OR4 = 16
        ;

DSP_fir_r8_h16_asm:
        SMOVI0L         0, R49
|       SMVAGA36.M1     R13:R12, AR11   ;AR11 = *h
|       VMOVIL          528,VR46

        SMOVIL          0, R48
|       SMVAGA36.M1     R15:R14,AR4     ;AR4 = *r
|       VMOVIH          0,VR46

        SMOVIH          0x40160000, R48
|       SLDH            *AR11++[1], R52 ;取h0 (6 cycles)
|       VMOVIL          16,VR47

        SLDH            *AR11++[1], R53 ;取h1
|       SMVAGA36.M1     R49:R48,AR10    ;混洗地址
|       VMOVIH          0,VR47

        SMOVIL          0x04020301, R46
|       SLDH            *AR11++[1], R54 ;取h2
        
        SMOVIH          0x04020301, R46
|       SLDH            *AR11++[1], R55 ;取h3
        
        SMOVIL          0x02020202, R51
|       SLDH            *AR11++[1], R56 ;取h4

        SMOVIH          0x02020202, R51
|       SLDH            *AR11++[1], R57 ;取h5

        SLDH            *AR11++[1], R58 ;取h6
|       SADD.M1         R46,R51,R47     ;0x08070605

        SLDH            *AR11++[1], R59 ;取h7
|       SVBCAST2.M1     R53:R52,VR11:VR10;广播h0、h1(4 cycles)
|       SADD.M2         R46,R51,R47     ;0x08070605

        SLDH            *AR11++[1], R52 ;取h8
|       SADD.M2         R47,R51,R48     ;0x0c0b0a09

        SMOVIL          0,R9
|       SLDH            *AR11++[1], R53 ;取h9
|       SVBCAST2.M1     R55:R54,VR13:VR12;广播h2、h3
|       SADD.M2         R48,R51,R49     ;0x0c0b0a09
        
        SMVCGC          R9,SMR         ;混洗模式配置
|       SLDH            *AR11++[1], R54 ;取h10
|       SADD.M2         R49,R51,R42

        SMOVIL          16,R8
|       SLDH            *AR11++[1], R55 ;取h11
|       SVBCAST2.M2     R57:R56,VR15:VR14;广播h4、h5
|       SADD.M1         R42,R51,R43     ;0x0a090807

        SLDH            *AR11++[1], R56 ;取h12
|       SMVAGA36.M1     R9:R8,OR4     ;OR4 = 16

        SADD.M1         R43,R51,R44

        SLDH            *AR11++[1], R57 ;取h13
|       SVBCAST2.M2     R59:R58,VR17:VR16;广播h6、h7
|       SADD.M1         R44,R51,R45     ;0x1211100f

        SMOVIL          32,R8
|       SLDH            *AR11++[1], R58 ;取h14

        SLDH            *AR11++[1], R59 ;取h15
|       SVBCAST2.M2     R53:R52,VR19:VR18;广播h8、h9

        SSTW            R46,*AR10++[1]

        SSTW            R47,*AR10++[1]
|       SVBCAST2.M2     R55:R54,VR21:VR20;广播h10、h11

        SSTW            R48,*AR10++[1]

        SSTW            R49,*AR10++[1]
|       SVBCAST2.M2     R57:R56,VR23:VR22;广播h12、h13

        SSTW            R42,*AR10++[1]
|       SMVAGA36.M1     R11:R10,AR3
|       SMOVI0L         0,R55           ;内循环使用

        SSTW            R43,*AR10++[1]  ;混洗配置
|       SMVAGA36.M1     R11:R10,AR5
|       SMOVI0L         0,R48           ;j = 0

        SSTW            R44,*AR10++[1]  ;混洗配置
|       SVBCAST2.M2     R59:R58,VR25:VR24;广播h14、h15
|       SADD.M1         0,R48,R61       ;内循环使用

        SSTW            R45,*AR10++[1]  ;混洗配置
|       SADD.M1         0,R48,R60       ;内循环使用
LOOP_J:
        VLDW            *AR3++[2],VR26   ;x_0_31 (8 cycles)
|       VLDH            *AR5++[2],VR30       ;x_0_15
|       VMOVIL          0,VR3

        VLDW            *AR3++[2],VR27   ;x_4_35
|       VLDH            *AR5++[2],VR32   ;x_2_17
|       VMOVIH          0,VR3

        VLDW            *AR3++[2],VR28   ;x_8_39
|       VLDH            *AR5++[2],VR34   ;x_4_19
|       VADD.M1         0,VR3,VR4
|       VADD.M2         0,VR3,VR5

        VLDW            *AR3++[2],VR29   ;x_12_43
|       VLDH            *AR5++[2],VR36   ;x_6_21

        VLDH            *AR5++[2],VR38   ;x_8_23
        VLDH            *AR5++[2],VR40  ;x_10_25

        VLDH            *AR5++[2],VR42   ;x_12_27
        VLDH            *AR5++[2],VR44   ;x_14_29

        VSHUFH          VR26,VR26,VR6  ;混洗(3 cycles)
|       VMULAS16T.M1    VR10,VR30,VR3,VR3       ;乘加(3 cycles)

        VSHUFH          VR27,VR27,VR7  ;混洗
|       VMULAS16T.M1    VR12,VR32,VR4,VR4       ;乘加
        
        VSHUFH          VR28,VR28,VR8  ;混洗
|       VMULAS16T.M1    VR14,VR34,VR5,VR5       ;乘加

        VSHUFH          VR29,VR29,VR9  ;混洗
|       VMULAS16T.M1    VR16,VR36,VR3,VR3       ;乘加

        VMULAS16T.M1    VR18,VR38,VR4,VR4       ;乘加

        VMULAS16T.M1    VR20,VR40,VR5,VR5       ;乘加

        VBEXT           VR46,VR6,VR31   ;取x_1_16
|       VMULAS16T.M1    VR22,VR42,VR3,VR3       ;乘加

        VBEXT           VR47,VR6,VR33   ;取x_3_18
|       VMULAS16T.M1    VR24,VR44,VR4,VR4       ;乘加

        VBEXT           VR46,VR7,VR35   ;取x_5_20
|       SADD.M1         16,R48,R48      ;j+=16
        SLT             R48,R18,R0      ;j<nr?

        VMULAS16T.M1    VR11,VR31,VR3,VR3
|       VMULAS16T.M2    VR13,VR33,VR4,VR4
|       VMULAS16T.M3    VR15,VR35,VR5,VR5
|       VBEXT           VR47,VR7,VR37   ;取x_7_22

        VBEXT           VR46,VR8,VR39   ;取x_9_24
        VBEXT           VR47,VR8,VR41   ;取x_11_26

        VMULAS16T.M1    VR17,VR37,VR3,VR3
|       VMULAS16T.M2    VR19,VR39,VR4,VR4
|       VMULAS16T.M3    VR21,VR41,VR5,VR5
        
        VBEXT           VR46,VR9,VR43   ;取x_13_28
        VBEXT           VR47,VR9,VR45   ;取x_15_30

        VMULAS16T.M1    VR23,VR43,VR3,VR3
|       VMULAS16T.M2    VR25,VR45,VR4,VR4

;循环判断
[R0]    SBR             LOOP_J
|       SMOVI0L         0,R1        
        SNOP            2
        VADD.M1         VR4,VR5,VR5
        VADD.M1         VR5,VR3,VR3
        VSHFAR          15,VR3,VR3
        VSTH            VR3,*AR4++[OR4] ;存入计算结果

        SBR             R62
        SNOP            6
.size DSP_fir_r8_h16_asm, .-DSP_fir_r8_h16_asm

.global DSP_fir_r8_asm_v2
        ;寄存器配置
        ;AR0 = 初始AR12(初始栈地址)
        ;AR3 = i*2+*x(内循环)
        ;AR4 = *r(内循环)
        ;AR10:混洗配置地址
        ;AR11:h地址
        ;AR12:栈地址
        ;
        ;OR4 = 16
        ;
        ;R2:R3 = AR12(保存栈地址)
        ;R16 = nh
        ;R18 = nr
        ;R50 = i
        ;R51 = j
        ;R53~R56:h0~3
        ;R57、R58、R59:配置混洗
        ;
        ;VR3 = r_0_15
        ;VR5 = 乘加中间结果
        ;VR10~VR17:vh0~vh7
        ;VR30 = x_0_15
        ;VR31 = x_1_16
        ;VR32 = x_2_17
        ;VR33 = x_3_18
        ;VR34 = x_0_31_shuff
        ;VR35 = x_0_31
        ;VR36 = 528
        ;VR37 = 16
        ;VR38 = x_4_35
        ;VR39 = x_4_19
        ;VR40 = x_5_20
        ;VR41 = x_6_21
        ;VR42 = x_7_22
        ;VR43 = x_4_35_shuff

DSP_fir_r8_asm_v2:

        SMOVIL      0,R48       ;R48 = 0
|       SMVAGA36.M2 R13:R12,AR11     ;AR11 = *h
|       VMOVIL      528,VR36    ;混洗后取值x1_16

        SMOVIH      0x40160000,R48  ;R48 = 0x40160000
|       SADD.M1     0, R48,R45  ;R45 = 0
|       SADD.M2     0, R48,R49  ;R49 = 0
|       VMOVIH      528,VR36    ;混洗后取值

        SMOVIL      0x02020202,R57  ;R57 = 0x02020202
|       SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址
|       SADD.M2     0,R49,R50   ;i = 0
|       VMOVIL      16,VR37    ;混洗后取值x3_18

        SMOVIH      0x02020202,R57      ;R57 = 0x02020202
|       SADDU.M2    15,R18,R61      ;vr_len = nr + 15
|       SADD.M1     16,R49,R44      ;R44 = 16
|       VMOVIH      16,VR37    ;混洗后取值

        SMOVIL      0x04020301,R58
|       SMVAGA36.M1 R45:R44, OR4    ;p2  OR4=16

        SMOVIH      0x04020301,R58      ;R58 = 0x04020301

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R58,R59         ;R59 = 0x06040503
|       SSHFLR      4,R61,R61       ;vr_len = ((NR+15)/16)

        SSTW        R59,*AR10++[1]       ;混洗配置写入
|       SADD.M2    R57,R59,R58         ;R58 = 0x08060705
|       SADDU.M1    1,R61,R61
|       SMVCGC      R50,SMR         ;配置混洗模式

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R58,R59         ;R59 = 

        SSTW        R59,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R59,R58         ;R58 = 

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R58,R59         ;R59 = 

        SSTW        R59,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R59,R58         ;R58 = 

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SADD.M2    R57,R58,R59         ;R59 = 

        SSTW        R59,*AR10++[1]      ;混洗配置写入

LOOP_I:
        SLDH	    *AR11++[1],R53   ;取h0 (6 cycles)
|       SMOVI0L     0, R51      ;j = 0

        SLDH	    *AR11++[1],R54      ;取h1
|       SSHFLL      1,R50,R46           ;R46 = i*2
|       SADD.M1     0,R51,R52   ;k = 0

        SLDH	    *AR11++[1],R55      ;取h2
|       SADD.M1     R46,R10,R46      ;X + i*2

        SLDH	    *AR11++[1],R56      ;取h3
|       SMOVI0L     0,R43           ;给内循环使用

        SLDH        *AR11++[1],R44      ;取h4
|       SEQ         0,R50,R1    ; i == 0时，初始化i

        SLDH        *AR11++[1],R45      ;取h5

        SLDH        *AR11++[1],R47      ;取h6
|       SVBCAST.M1  R53,VR10    ;广播h0 (4 cycles)

        SLDH        *AR11++[1],R48      ;取h7
|       SVBCAST.M1  R54,VR11    ;广播h1

        SVBCAST.M1  R55,VR12    ;广播h2
|       SMOVI0L         0,R55   ;R55 = 0
        
LOOP_J:  
        SSHFLL	    1, R51,R42  ;R42 = j*2
|       VMOVIL      0,VR5       ;VR5 = 0
|       SVBCAST.M2  R55,VR6     ;VR6 = 0

        SSHFLL	    6, R52,R54  ;R54 = k*64
|       SADD.M1     R42,R46,R42 ;R42 = j*2+*x + i*2
|       VMOVIH      0,VR5       ;VR5 = 0

        SMVAGA36.M1 	R43:R42, AR3    ;AR3 = j*2+*x
|       SADD.M2         R14,R54,R54     ;R54 = *r + k*64
|       VMOVIL           0,VR4          ;VR4 = 0

        SMVAGA36.M1 	R55:R54, AR4    ;AR4 = *r + k*64
|       VMOVIH           0,VR4          ;VR4 = 0
|       SVBCAST.M2  R44,VR14    ;广播h4

        VLDW            *AR3,VR35       ;x_0_31   ;P8
|       VLDH            *AR3,VR30       ;x_0_15
|       SADD.M1		16,R51,R51      ;R51 += 16
|       SVBCAST.M2  R47,VR16    ;广播h6

        VLDH            *+AR3[2],VR32   ;X_2_17  
|       VLDW            *AR4,VR3        ;r_0_15
|       SLT	        R51,R18,R0      ;j<nr?
|       SVBCAST.M1  R56,VR13    ;广播h3

        VLDW            *+AR3[2],VR38    ;x_4_35
|       VLDH            *+AR3[4],VR39    ;x_4_19
|       SVBCAST.M1  R45,VR15    ;广播h5

        VLDH            *+AR3[6],VR41   ;x_6_21
|       SVBCAST.M1  R48,VR17    ;广播h7
        SNOP            4
        
        VSHUFH          VR35,VR35,VR34    ;p3   混洗
|       VMULAS16T.M1    VR30,VR10,VR5,VR5 ;P3   乘加x_0_15 (3 cycles)

 [R1]   SVBCAST.M1      R55,VR3         ;VR3 = 0
|       VMULAS16T.M2    VR32,VR12,VR4,VR4 ;P3   乘加x_2_17
        
        VSHUFH          VR38,VR38,VR43  ;混洗
|       VMULAS16T.M1    VR39,VR14,VR6,VR6       ;乘加x_4_19

        SNOP    2

        VBEXT       VR36,VR34,VR31
|       VMULAS16T.M1    VR41,VR16,VR5,VR5       ;乘加x_6_21       

        VBEXT       VR37,VR34,VR33
|       VMULAS16T.M1    VR31,VR11,VR4,VR4       ;乘加x_1_16

        VBEXT       VR36,VR43,VR40
|       VMULAS16T.M1    VR33,VR13,VR3,VR3       ;乘加x_3_18

        VBEXT       VR37,VR43,VR42
|       VMULAS16T.M1    VR40,VR15,VR6,VR6       ;乘加x_5_20

        VMULAS16T.M1    VR42,VR17,VR5,VR5       ;乘加x_7_22

;内循环判断
 [R0]   SBR	        LOOP_J
|	SADD.M1	        1, R52,R52      ;R52++
        SNOP	     	2
        VADD.M2         VR4,VR3,VR3     ;本次循环计算结果VR3
        VADD.M2         VR6,VR3,VR3
        VADD.M2         VR5,VR3,VR3
        VSTW            VR3,*AR4        ;计算结果保存
;外循环判断
        SADD 		8, R50, R50     ;i+=8
        SLT		R50,R16,R1      ;i<nh?
 [R1]	SBR		LOOP_I
        SNOP		6
;内外循环结束
        SMOVI0L         0,R50   ;i = 0
|       SMVAGA36.M1     R15:R14,AR1    ;P2    AR1 = *r  插在这里减少1cycle
        
        SSHFLR          1,R61,R61       ;vr_len = ((NR+15)/16+1)/2
|       SMVAGA36.M1     R15:R14,AR2     ;AR2 = *r

UPDATE_STORE:
        SADD.M2         1,R50,R50       ;i+1
|       VLDDWM2		*AR1++[OR4], VR5:VR4   ;偏移 16*8
        SLT             R50,R61,R1      ;循环条件判断
        SNOP		3
 [R1]   SBR		UPDATE_STORE
        SNOP		2
        VSHFAR          15,VR4,VR4      ;右移
        VSHFAR          15,VR5,VR5      ;右移
        VBALE2          VR4,VR5,VR4     ;打包
        VSTW            VR4,*AR2++[OR4] ;保存

    	SBR	    R62
        SNOP        6

.size DSP_fir_r8_asm_v2, .-DSP_fir_r8_asm_v2




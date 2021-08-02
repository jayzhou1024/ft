.global DSP_fir_r4_asm
        ;寄存器配置
        ;AR0 = 初始AR12(初始栈地址)
        ;AR3 = i*2+*x(内循环)
        ;AR4 = *r(内循环)
        ;AR10:混洗配置地址
        ;AR11:h地址
        ;AR12:栈地址
        ;
        ;OR4 = 16
        ;OR5 = 32
        ;OR6 = 48
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
        ;VR10~VR13:vh0~vh3
        ;VR30 = x_0_15
        ;VR32 = x_2_17
        ;VR33 = x_3_18
        ;VR35 = x_0_31
        ;VR31 = x_0_31_shuff | x_1_16

DSP_fir_r4_asm:

        SMOVIL		-150,R2  ;开一个16 * 8的空间
        SMOVIL		-1,R3

        SMOVI0L	    0, R50           ;初始化i
|       SADDA.M2    R3:R2,AR15,AR12  ;p2

        SMOV        R50,R49     ;R49 = 0
|       SADD.M1     0, R50,R45  ;R45 = 0

        SMOVIL      0,R48       ;R48 = 0
|       SMVAAGL.M1	AR12, R3:R2    ;p2

        SMOVIH      0x40160000,R48  ;R48 = 0x40160000
|       SMVAAGH.M1  AR12, R3:R2 ;p2

        SMOVIL      0x04040404,R57  ;R57 = 0x04040404
|       SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址

        SMOVIH      0x04040404,R57  ;R57 = 0x04040404
|       SMVAGA36.M1 R3:R2,AR0   ;AR0 = AR12(初始)
|       SMVAGA36.M2 R13:R12,AR11     ;AR11 = *h

        SMOVIL      0x04030201,R58
        SMOVIH      0x04030201,R58  ;R58 = 0x04030201
|       SADD.M2         15,R18,R61      ;vr_len = nr + 15

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SMOVIL      16,R44      ;R44 = 16(配置OR4)
|       SADDU.M1    R57,R58,R59      ;R59 = 0x08070605

        SSTW       R59,*AR10++[1]       ;混洗配置写入
|       SMOVIH      0,R44       ;R44 = 16(配置OR4)
|       SADDU.M1    R57,R59,R58      ;R58 = 0x0c0b0a09

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SMVAGA36.M1	R45:R44, OR4   ;p2  OR4=16
|       SADDU.M2    R57,R58,R59      ;R60 = 0x100f0e0d
|       SMOVIL      0x06050403,R60

        SSTW        R59,*AR10++[1]      ;混洗配置写入
|       SMOVIH      0x06050403,R60       ;R60 = 0x06050403

        SSTW        R60,*AR10++[1]      ;混洗配置写入
|       SADDU.M1    R57,R60,R59      ;R59 = 0x0a090807
|       SMOVIL      32,R44           ;R44 = 32（配置OR5

        SSTW        R59,*AR10++[1]      ;混洗配置写入
|       SMVAGA36.M1	R45:R44, OR5   ;OR5 = 32
|       SADDU.M2    R57,R59,R58         ;R58 = 0x0e0d0c0b
|       SMOVIL      48,R44              ;R44 = 48(配置OR6)

        SSTW        R58,*AR10++[1]      ;混洗配置写入
|       SADDU.M2    R57,R58,R59         ;R59 = 0x1211100f
|       SMVAGA36.M1	R45:R44, OR6    ;OR6 = 48
|       SSHFLR          4,R61,R61       ;vr_len = ((NR+15)/16)

        SSTW        R59,*AR10++[1]      ;混洗配置写入
|       SMVCGC          R50,SMR         ;配置混洗模式
|       SADDU.M2            1,R61,R61       ;
;|      SMOVIL          3,R0            ;饱和配置
;       SMVCGC  	R0,SCR          ;饱和配置
LOOP_I:
        SLDH	    *AR11++[1],R53   ;取h0 (6 cycles)
|       SMOVI0L     0, R51      ;j = 0

        SLDH	    *AR11++[1],R54      ;取h1
|       SSHFLL      1,R50,R46           ;R46 = i*2
|       SADD.M1     0,R51,R52   ;k = 0

        SLDH	    *AR11++[1],R55      ;取h2
|       SADD.M1     R46,R10,R46      ;X + i*2

        SLDH	    *AR11++[1],R56      ;取h3
        SMOVI0L     0,R43           ;给内循环使用 
        SEQ         0,R50,R1    ; i == 0时，初始化i

        SVBCAST.M1  R53,VR10    ;广播h0 (4 cycles)
        SVBCAST.M2  R54,VR11    ;广播h1
        SVBCAST.M1  R55,VR12    ;广播h2
        SVBCAST.M2  R56,VR13    ;广播h3
|       SMOVI0L         0,R55   ;R55 = 0
LOOP_J:  
        SSHFLL	    1, R51,R42  ;R42 = j*2
|       VMOVIL      0,VR5       ;VR5 = 0

        SSHFLL	    6, R52,R54  ;R54 = k*64
|       SADD.M1     R42,R46,R42 ;R42 = j*2+*x + i*2
|       VMOVIH      0,VR5       ;VR5 = 0

        SMVAGA36.M1 	R43:R42, AR3    ;AR3 = j*2+*x
|       SADD.M2         R14,R54,R54     ;R54 = *r + k*64
|       VMOVIL           0,VR4          ;VR4 = 0

        
        SMVAGA36.M1 	R55:R54, AR4    ;AR4 = *r + k*64
|       VMOVIH           0,VR4          ;VR4 = 0

        VLDW            *AR3,VR35       ;X_0_31   ;P8
|       VLDH            *AR3,VR30       ;x_0_15

        VLDH            *+AR3[2],VR32   ;X_2_17  
|       VLDW            *AR4,VR3        ;r_0_15
|       SADD.M1		16,R51,R51      ;R51 += 16

        SLT	        R51,R18,R0      ;j<nr?

        SNOP            5

        VSHUFH          VR35,VR35,VR31    ;p3   混洗
|       VMULAS16T.M1    VR30,VR10,VR5,VR5 ;P3   乘加x_0_15 (3 cycles)

 [R1]   SVBCAST.M1      R55,VR3         ;VR3 = 0
|       VMULAS16T.M1    VR32,VR12,VR4,VR4 ;P3   乘加x_2_17
        SNOP            1
        VSTW            VR31,*AR0         ;保存混洗结果
        VADD.M1         VR4,VR5,VR4     ;保存乘加中间结果
        SNOP            2
        VLDH            *+AR0,VR31      ;取x_1_16
|       VLDH            *+AR0[OR4],VR33 ;取x_3_18
        SNOP            7
        VMULAS16T.M1    VR31,VR11,VR4,VR4 ;P3   乘加x_1_16
|       VMULAS16T.M2    VR33,VR13,VR3,VR3       ;乘加x_3_18
        SNOP            2
        VADD.M1         VR4,VR3,VR3     ;本次循环计算结果VR3

        VSTW            VR3,*AR4        ;计算结果保存

;内循环判断
|[R0]   SBR	        LOOP_J
|	SADD.M1	        1, R52,R52      ;R52++
        SNOP	     	6
;外循环判断
        SADD 		4, R50, R50     ;i+=4
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
        SNOP		6
        VSHFAR          15,VR4,VR4      ;右移
        VSHFAR          15,VR5,VR5      ;右移
        VBALE2          VR4,VR5,VR4     ;打包
        VSTW            VR4,*AR2++[OR4] ;保存
|[R1]   SBR		UPDATE_STORE
        SNOP		6
        
    	SBR	    R62
        SNOP        6

.size DSP_fir_r4_asm, .-DSP_fir_r4_asm




.global DSP_fir_gen_asm

DSP_fir_gen_asm:

        SMOVIL		-150,R2  ;开一个16 * 8的空间
        SMOVIL		-1,R3
        
        SMOVI0L	    0, R50           ;初始化i
|       SADDA.M2    R3:R2,AR15,AR12  ;p2

        SMOV        R50,R49       
|       SADD.M1     0, R50,R45 

        SMOVIL      0,R48
|       SMVAAGL.M1	AR12, R3:R2    ;p2

        SMOVIH      0x4016,R48
|       SMVAAGH.M1  AR12, R3:R2

        SMOVIL      0x0404,R57
|       SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址

        SMOVIH      0x0404,R57
|       SMVAGA36.M1 R3:R2,AR0
|       SMVAGA36.M2 R13:R12,AR11     ;H

        SMOVIL      0x0201,R58
        SMOVIH      0x0403,R58

        SSTW        R58,*AR10++[1]
|       SMOVIL      16,R44
|       SADDU.M1    R57,R58,R59      ;P1

        SSTW       R59,*AR10++[1]
|       SMOVIH      0,R44
|       SADDU.M1    R57,R59,R58

        SSTW        R58,*AR10++[1]
|       SMVAGA36.M1	R45:R44, OR4   ;p2  16
|       SADDU.M2    R57,R58,R59

        SSTW        R59,*AR10++[1]
|       SMOVIL      0x0403,R58

        SMOVIH      0x0605,R58

        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59
|       SMOVIL      32,R44

        SSTW        R59,*AR10++[1]
|       SMVAGA36.M1	R45:R44, OR5   ;offset 32
|       SADDU.M2    R57,R59,R58
|       SMOVIL      48,R44

        SSTW        R58,*AR10++[1]
|       SADDU.M2    R57,R58,R59     
|       SMVAGA36.M1	R45:R44, OR6   ;offset 48

        SSTW        R59,*AR10++[1]
; |       SMOVIL  	3,R0		    ;饱和配置

        SSTW        R59,*AR10++[1]
; |       SMVCGC  	R0,SCR
LOOP_I:
        SLDH	    *AR11++[1],R53   ;P6
|       SMOVI0L     0, R51 
|       SSUB.M1     R50,R16,R43

        SLDH	    *AR11++[1],R54 
|       SSHFLL      1,R50,R46
|       SADD.M1     0,R51,R52
|       SADD.M2     0,R51,R47

        SLDH	    *AR11++[1],R55
|       SADD.M1     R46,R10,R46      ;X + i

        SLDH	    *AR11++[1],R56
|	SMVAGA36.M1 	R15:R14, AR4 

        SLT         1,R43,R0
        SLT         2,R43,R1
        SLT         3,R43,R2
|       SVBCAST.M2      R53,VR10

 [!R0]  SADD.M1     0,R51,R54       ;不满足则置0
        SMOVI0L     0,R43           ;给内循环使用 
|[!R1]  SADD.M1     0,R51,R55       ;不满足则置0
|       SVBCAST.M2  R54,VR11

        SEQ         0,R50,R1    ; i == 0时，初始化i
|[!R2]  SADD.M1     0,R51,R56 
|       SVBCAST.M2  R55,VR12
        SVBCAST.M2  R56,VR13
LOOP_J:  
        SSHFLL	    1, R51,R42
|       VMOVIL      0,VR5
|       VLDW        *AR4,VR3 

        SADD.M1     R42,R46,R42
|       VMOVIH      0,VR5

        SMVAGA36.M1     R43:R42, AR3    ;x
|       VMOV            VR5,VR4

        SMVCGC          R43,SMR         ;配置混洗模式
|       SMVAGA36.M1     R43:R42, AR1   ;x
|       SADD.M2		16,R51,R51 


        SLT	        R51,R18,R0
|       VLDW            *AR3,VR35       ;X_0_15
|       VLDH            *AR3,VR30  

        VLDH            *+AR3[2],VR32   ;X_2_17
|       VLDW            *AR1++[OR4],VR45

        VLDH            *AR1,VR40
|       VLDH            *+AR1[2],VR42 
     
        SNOP            5
        VSHUFH          VR35,VR35,VR31    ;p3
|       VMULAS16T.M1    VR30,VR10,VR5,VR5 ;P3

 [R1]   SVBCAST.M1      R55,VR3
|       VMULAS16T.M1    VR32,VR12,VR4,VR4 ;P3
        SNOP            1
        VSTW            VR31,*AR0         ;P4
        VADD.M1         VR4,VR5,VR4
        SNOP            2
        VLDH            *+AR0,VR31
|       VLDH            *+AR0[OR4],VR33
        SNOP            7
        VMULAS16T.M1    VR31,VR11,VR4,VR4 ;P3
|       VMULAS16T.M2    VR33,VR13,VR3,VR3
        SNOP            2
        VADD.M1         VR4,VR3,VR3
        VSTW            VR3,*AR4++[OR4]
|[R0]   SBR	        LOOP_J
|	SADD.M1	        1, R52,R52
        SNOP	     	6
        SADD 		4, R50, R50
        SLT		R50,R16,R1
 [R1]	SBR		LOOP_I
        SNOP		6

        SMOVI0L         0,R50
|       SMVAGA36.M1     R15:R14,AR1    ;P2    R  插在这里减少1cycle
|       SADD.M2         15,R18,R42

        SSHFLR          4,R42,R42       ; ((NR+15)/16)
|       SMVAGA36.M1     R15:R14,AR2

        SADD            1,R42,R42
        SSHFLR          1,R42,R42
UPDATE_STORE:
        SADD.M2         1,R50,R50
|       VLDDWM2		*AR1++[OR4], VR5:VR4   ;偏移 16*8
        SLT             R50,R42,R1
        SNOP		6
        VSHFAR          15,VR4,VR4
        VSHFAR          15,VR5,VR5
        VBALE2          VR4,VR5,VR4
        VSTW            VR4,*AR2++[OR4]        ;偏移 16*4
|[R1]   SBR		UPDATE_STORE
        SNOP		6
        
    	SBR	    R62                   
        SNOP        6                     

.size DSP_fir_gen_asm, .-DSP_fir_gen_asm
.global DSP_fir_sym_asm
DSP_fir_sym_asm:       

        SMOVIL		-128,R2  ;开一个16 * 8的空间
        SMOVIL		-1,R3

        SMOVI0L	    0, R50     ;初始化i
|       SADDA.M1    R3:R2,AR15,AR12

        SMOV        R50,R49
|       SADD.M1     0, R50,R45 

        SMOVIL      0,R48
|       SSUB.M1     1,R20,R47
|       SADD.M2     1,R50,R46      ; 初始化为1

        SMOVIH      0x4016,R48

        SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址
|       SMOVIL      0x0404,R57
        SMVAGA36.M1 R13:R12,AR11     ;H
|       SMOVIH      0x0404,R57
        SMOVIL      0x0201,R58
        SMOVIH      0x0403,R58

        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59  ;P1
; |       SMOVIL  	3,R0		    ;饱和配置


        SSTW       R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58
|       SMOVIL      16,R44

        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59
|       SMOVIH      0,R44

        SSTW        R59,*AR10++[1]
|       SMOVIL      0x0403,R58
|       SMVAGA36.M1	R45:R44, OR4

        SMOVIH      0x0605,R58
|       SMVAAGL.M2	AR12, R3:R2

        SSTW        R58,*AR10++[1]
|       SSHFLL      R47,R46,R61  ;1 << (S-1)
|       SADDU.M1    R57,R58,R59

        SSTW        R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58
|       SMVAAGH.M2  AR12, R3:R2
|       SMOVIL      32,R44


        SSTW        R58,*AR10++[1]
; |       SMVCGC  	R0,SCR
|       SADDU.M1    R57,R58,R59       ;m2冲突了

        SMVAGA36.M1	R45:R44, OR5   ;offset 32

        SSTW        R59,*AR10++[1]
|       SMOVIL      48,R44
|       SMVAGA36.M1     R3:R2,AR0
        SMVAGA36.M1	R45:R44, OR6   ;offset 32

LOOP_I:
        SLDH		*AR11++[1],R53   ;P6
|       SMOVI0L 	0, R51 
|       SADD.M2         R16,R16,R46
 
        SSHFLL		1, R50,R40 
|       SLDH		*AR11++[1],R54 
|       SADD.M1         0,R51,R52

        SSHFLR          2,R50,R47
|       SLDH		*AR11++[1],R55
|       SADD.M1		R40,R10,R44

        SLDH		*AR11++[1],R56     
|       SSHFLL          2,R47,R47

        SSUB.M1         R47,R46,R46
        SSUB            3,R46,R46
        SVBCAST.M1      R53,VR10
|       SSHFLL          1,R46,R46
        SVBCAST.M1      R54,VR11
|       SADD.M2         R10,R46,R46
|       SEQ             0,R50,R1 
        SVBCAST.M1      R55,VR12
        SVBCAST.M1      R56,VR13
LOOP_J:  
        SSHFLL		1, R51,R42   
|       VMOVIL          0,VR5

        SADD.M2         R42,R44,R48 
|       VMOVIH          0,VR5

        SSHFLL	    	6, R52,R54 
|       SMVAGA36.M1 	R49:R48, AR3    ;x前半部分  p2
 
        SADD.M1      	R42,R46,R48 
|       SADD.M2         R14,R54,R54
|       VMOV            VR5,VR6
|       SMOVI0L         0,R55

        SMVAGA36.M1 	R49:R48, AR4    ;x后半部分
|       VMOV            VR5,VR4  
        SMVAGA36.M1 	R55:R54, AR5    ;r地址
|       VLDW            *AR3,VR39       ;X_0_15   ;P8
|       VLDH            *AR3,VR30       ;X_0_31

        VLDH            *+AR3[2],VR32   ;X_2_17  
|       VLDW            *AR4,VR40       ;X_N_0_31  

        VLDW            *AR5,VR3        ;R          ;P8
|       VLDH            *+AR4[2],VR36   ;X_N_2
       
        VLDH            *+AR4[4],VR38   ;X_N_4
|       SMVCGC          R45,SMR
|       SADD.M1		16,R51,R51 
        SLT	        R51,R18,R0
        SNOP            3
        VSHUFH          VR39,VR39,VR31  ;p3
        VSHUFH          VR40,VR40,VR35  

        VMULAS16T.M1    VR30,VR10,VR4,VR4 ;P3
|       VMULAS16T.M2    VR32,VR12,VR5,VR5
|       VMULAS16T.M3    VR36,VR12,VR6,VR6
|[R1]   SVBCAST.M1      R61,VR3
        VSTW            VR31,*AR0        ;P4
        VSTW            VR35,*+AR0[OR4]  ;P4
        VMULAS16T.M1    VR38,VR10,VR4,VR4
        SNOP            1
        VLDH            *AR0,VR31        ;p8
|       VLDH            *+AR0[OR4],VR33

        VLDH            *+AR0[OR5],VR35
|       VLDH            *+AR0[OR6],VR37
        SNOP            6
        VMULAS16T.M1    VR31,VR11,VR4,VR4 ;P3
|       VMULAS16T.M2    VR33,VR13,VR5,VR5
        VMULAS16T.M1    VR35,VR13,VR6,VR6 ;P3
        VMULAS16T.M2    VR37,VR11,VR3,VR3 ;没有并行，给下面留一拍

        VADD.M3         VR4,VR5,VR4
        VADD.M3         VR4,VR6,VR4
        VADD.M3         VR4,VR3,VR3
        VSTW            VR3,*AR5
|[R0]   SBR	        LOOP_J
|	SADD.M1	        1, R52,R52 
        SNOP	     	6
        SADD 		4, R50, R50
        SLT		R50,R16,R1
 [R1]	SBR		LOOP_I
|       SLDH		*AR11,R60     ;循环结束时保存的h[nh]
|       SMVAGA36.M1     R15:R14,AR1    ;P2    R  插在这里减少1cycle
        SMOVIL          0, R51 
|       SMVAGA36.M1     R15:R14,AR2
        SMOVIH          0, R51 
        SNOP		4   

        SMOVI0L         0,R50
|       SVBCAST.M1      R60,VR10    ; P4
|       SADD.M2         R16,R16,R44

        SMOVI0L         0,R52       ; K = 0
|       SADD.M2         R44,R10,R44
|       SMVAGA36.M1     R15:R14,AR5 ;P2    R

        SMVAGA36.M1     R45:R44,AR4 ;P2    X+NH
|       SVBCAST.M2      R20,VR3     ;位移系数

COMPUTER_NH:
        VLDW            *AR5,VR4           ;R_0_15
|       VLDW            *+AR5[OR4],VR5     ;R_16_31 
|       SSUB.M1         R50,R18,R42        ; nr - i
        VLDH            *AR4++[OR4],VR34   ;X_0_15
|       SLT             15,R42,R0          ;NR - i > 16
        VLDH            *AR4++[OR4],VR35   ;X_16_31
|       SVBCAST.M1      R0,VR0
        SMOVIL          32,R44
        SADD.M2         R44,R50,R50
        SLT             R50,R18,R1
        SNOP            3
        VMULAS16T.M2    VR34,VR10,VR4,VR4
[VR0]   VMULAS16T.M2    VR35,VR10,VR5,VR5
        SNOP            1
        VSHFAR          VR3,VR4,VR4
        VSTW            VR4,*AR5++[OR4]   ;P4
|[VR0]  VSHFAR          VR3,VR5,VR5
        VSTW            VR5,*AR5++[OR4]
        SNOP            3
        VLDDWM2		*AR1++[OR4], VR5:VR4
        SNOP            7
        VBALE2          VR4,VR5,VR4
        VSTW            VR4,*AR2++[OR4]   ;p4


 [R1]   SBR             COMPUTER_NH
        SNOP    	6   

    	SBR	        R62                   
        SNOP    	6                     

.size DSP_fir_sym_asm, .-DSP_fir_sym_asm

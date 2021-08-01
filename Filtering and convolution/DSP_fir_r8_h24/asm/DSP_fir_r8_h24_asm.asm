.global DSP_fir_r8_h24_asm

DSP_fir_r8_h24_asm:

;R51	j
;R52	k
;R53	i
;R60	i<<1
;R50	j<<1
;R57:R56	x+j*2+i*2
;R54	k<<5
;R55	SMR
;R58	x+j*2
;R49:R48	OR4,OR5,OR6
;R42-R49	h0-h7
   
        SMOVI0L	    0, R49           
|       SMVAGA36.M2 R13:R12,AR11     
 	    
		
        SMOVIL      0x40160000,R48

        SMOVIH      0x40160000,R48


        SMOVIL      0x02020202,R57	 
|       SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址
		
        SMOVIH      0x02020202,R57
	
        SMOVIL      0x04020301,R58   ;配置混洗模式1
        SMOVIH      0x04020301,R58

        SMOVIL      16,R44

        SMOVIH      0,R44
	
        SMVAGA36.M1	R45:R44, OR4   ;p2  16
		SNOP		1
        SMOVIL      32,R44
	
		SMVAGA36.M1	R45:R44, OR5   ;p2  32
		SNOP		1
	
        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59    
|       SMOVIL      48,R44

        SSTW       R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58

        SSTW        R58,*AR10++[1]
|       SADDU.M2    R57,R58,R59
|       SMVAGA36.M1	R45:R44, OR6   ;p2  48

        SSTW        R59,*AR10++[1]
|       SMOVIL      0x0c0a0b09,R58

        SMOVIH      0x0c0a0b09,R58

        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59
|		VMOVIH		0,VR40


        SSTW        R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58
|		SMOVI0L		0,R53
|		VMOVIL		16,VR40

        SSTW        R58,*AR10++[1]
|       SADDU.M1   R57,R58,R59  
|		VMOVIH		0,VR41		


        SSTW        R59,*AR10++[1]	
|		SADD.M1		0,R51,R52
|		VMOVIL		528,VR41
|		SMOVI0L		0,R57

LOOP_I:
        SSHFLL	    1, R53,R60
|		SLDH	    *AR11++[1],R42
   
		SLDH	    *AR11++[1],R43
|		SMOVI0L	    0, R51       

		SLDH	    *AR11++[1],R44
|		SADD.M1		0,R51,R52
|		SADD.M2		R60,R10,R58
 
		SLDH	    *AR11++[1],R45
|		SEQ			0,R51,R1
|		SADD.M1		8,R53,R53                   
 
		SLDH	    *AR11++[1],R46 

		SLDH	    *AR11++[1],R47
 
		SLDH	    *AR11++[1],R48 
|		SVBCAST.M2      R42,VR10
|		SLT			23,R53,R2


		SLDH	    *AR11++[1],R49
|		SVBCAST.M2      R43,VR11
 

LOOP_J:  
        SSHFLL	    1, R51,R50
|       VMOVIL      0,VR5
|[R1]		SVBCAST.M2      R44,VR12



        SSHFLL	    6, R52,R54 
|       SADD.M1     R58,R50,R56		;x+j*2+i*2基地址
|       VMOVIH      0,VR5
|[R1]		SVBCAST.M2      R45,VR13


        SMOVI0L         0,R55
|       SMVAGA36.M1 	R57:R56, AR3    
|       SADD.M2         R14,R54,R54
|       VMOVIL          0,VR4

        SMVCGC          R55,SMR         ;配置混洗模式
|       SMVAGA36.M1 	R55:R54, AR4    ;r
|       VMOVIH          0,VR4
|[R1]		SVBCAST.M2      R46,VR14


        VLDW            *AR3,VR35       ;X_0_31   ;P8
|       VLDH            *AR3,VR30  
|		VMOVIL			0,VR6
|[R1]		SVBCAST.M2      R47,VR15
|		SEQ				0,R60,R0



        VLDH            *+AR3[2],VR32   ;X_2_17  
|		VLDW			*+AR3[2],VR38	;X_4_35
|       SADD.M1			16,R51,R51
|		VMOVIH			0,VR6 
|[R1]		SVBCAST.M2      R48,VR16


		VLDH			*+AR3[4],VR34	;X_4_19
|       VLDW            *AR4,VR3 
|		VMOVIL			0,VR7
|[R1]		SVBCAST.M2      R49,VR17


		VLDH			*+AR3[6],VR36	;X_6_21
|		VMOVIH			0,VR7

        SNOP            4
	
        VSHUFH          VR35,VR35,VR42    
|       VMULAS16T.M1    VR30,VR10,VR5,VR5 
|[R0]		SVBCAST.M1		R55,VR3		;第一次计算将取出的r清零



		VSHUFH          VR38,VR38,VR39
|       VMULAS16T.M2    VR32,VR12,VR4,VR4
 

       VMULAS16T.M1	   VR34,VR14,VR6,VR6
       VMULAS16T.M2	   VR36,VR16,VR7,VR7
		
		VBEXT			VR40,VR42,VR33
		VBEXT			VR41,VR42,VR31
|	   VADD.M1          VR4,VR5,VR4
		VBEXT			VR40,VR39,VR37
|	   VADD.M1			VR4,VR6,VR4
		VBEXT			VR41,VR39,VR35
|	   VADD.M1			VR4,VR7,VR4
|        SLT				R51,R18,R0

		
		VMULAS16T.M1    VR31,VR11,VR4,VR4       
        VMULAS16T.M2    VR33,VR13,VR3,VR3


[R0]   SBR	        LOOP_J
|	    SADD.M1	        1, R52,R52
|		SMOVI0L			0,R1

		VMULAS16T.M1    VR35,VR15,VR4,VR4       
        VMULAS16T.M2    VR37,VR17,VR3,VR3
        SNOP            2

        VADD.M1         VR4,VR3,VR3
        VSTW            VR3,*AR4
       
 
[!R2]	SBR		LOOP_I
		SNOP	6  

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

[R1]   SBR		UPDATE_STORE
        VSHFAR          15,VR4,VR4
        VSHFAR          15,VR5,VR5
        VBALE2          VR4,VR5,VR4
        VSTW            VR4,*AR2++[OR4]        ;偏移 16*4
        SNOP		2

    	SBR	    R62
        SNOP        6                     

.size DSP_fir_r8_h24_asm, .-DSP_fir_r8_h24_asm




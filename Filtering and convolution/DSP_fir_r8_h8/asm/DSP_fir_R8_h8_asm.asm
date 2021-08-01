.global DSP_fir_r8_h8_asm

DSP_fir_r8_h8_asm:

;AR11	h基地址
;AR10	混洗基地址
;R57-R59	配置混洗模式
;R47-R56	h0-h7
;VR10-VR17	广播后的h0-h7
;R44-R45	配置16位偏移寄存器OR4
;VR40、VR41	配置VBEXT指令的取数偏移
;R51	j
;R46	j<<1
;R52	k
;R54	k<<5
;R48	x+j*2基地址
;AR3	x+j*2基地址
;AR4	r基地址

         
        SMOVI0L	    0, R49           
|       SMVAGA36.M2 R13:R12,AR11     ;h基地址
 	    
        SMOVIL      0x40160000,R48

        SMOVIH      0x40160000,R48
|		SADD.M2		0,R49,R45 


        SMOVIL      0x02020202,R57	 
|       SMVAGA36.M1 R49:R48,AR10     ;混洗配置基地址
		
	
        SMOVIH      0x02020202,R57

        SMOVIL      0x04020301,R58   ;配置混洗模式1
        SMOVIH      0x04020301,R58
|		SLDH	    *AR11++[1],R47   

		SLDH	    *AR11++[1],R48 
|       SMOVIL      16,R44

		SLDH	    *AR11++[1],R49
|       SMOVIH      0,R44

		SLDH	    *AR11++[1],R50
|       SMVAGA36.M1	R45:R44, OR4   ;p2  16

		SLDH	    *AR11++[1],R53

		SLDH	    *AR11++[1],R54
 

		SLDH	    *AR11++[1],R55


		SLDH	    *AR11++[1],R56

        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59    
|		SVBCAST.M2      R47,VR10

  

        SSTW       R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58
|       SVBCAST.M2  R48,VR11


        SSTW        R58,*AR10++[1]
|       SADDU.M2    R57,R58,R59


        SSTW        R59,*AR10++[1]
|       SMOVIL      0x0c0a0b09,R58
|		SVBCAST.M2	R49,VR12



        SMOVIH      0x0c0a0b09,R58
|		SVBCAST.M1	R50,VR13


        SSTW        R58,*AR10++[1]
|       SADDU.M1    R57,R58,R59
|		SVBCAST.M2	R53,VR14
|		VMOVIH		0,VR40


        SSTW        R59,*AR10++[1]
|       SADDU.M1    R57,R59,R58
|		SVBCAST.M2	R54,VR15
|		SMOVI0L		0,R51
|		VMOVIL		16,VR40

        SSTW        R58,*AR10++[1]
|       SADDU.M1   R57,R58,R59  
|	    SVBCAST.M2  R55,VR16
|		VMOVIH		0,VR41		

        SSTW        R59,*AR10++[1]	
|		SADD.M1		0,R51,R52
|		SEQ         0,R51,R1 
|       SVBCAST.M2  R56,VR17
|		VMOVIL		528,VR41



LOOP_J:  
        SSHFLL	    1, R51,R46
|       VMOVIL      0,VR5
|		SADD.M1		0,R11,R49

        SSHFLL	    5, R52,R54 
|       SADD.M1     R10,R46,R48		;x+j*2基地址
|       VMOVIH      0,VR5

        SMOVI0L         0,R55
|       SMVAGA36.M1 	R49:R48, AR3    
|       SADD.M2         R14,R54,R54
|       VMOVIL          0,VR4

        SMVCGC          R55,SMR         ;配置混洗模式
|       SMVAGA36.M1 	R55:R54, AR4    ;r
|       VMOVIH          0,VR4

        VLDW            *AR3,VR31       ;X_0_31   ;P8
|       VLDH            *AR3,VR30  
|		VMOVIL			0,VR6

        VLDH            *+AR3[2],VR32   ;X_2_17  
|		VLDW			*+AR3[2],VR35	;X_4_35
|       SADD.M1			16,R51,R51
|		VMOVIH			0,VR6 

		VLDH			*+AR3[4],VR34	;X_4_19
|       VLDW            *AR4,VR3 
|		VMOVIL			0,VR7

		VLDH			*+AR3[6],VR36	;X_6_21
|		VMOVIH			0,VR7

        SLT				R51,R16,R0
        SNOP            3
	
        VSHUFH          VR31,VR31,VR31		;混洗，混洗结果存入VR31  
|       VMULAS16T.M1    VR30,VR10,VR5,VR5	;计算
|       [R1]   SVBCAST.M1      R55,VR3

		VSHUFH          VR35,VR35,VR35		;混洗，混洗结果存入VR35
|       VMULAS16T.M2    VR32,VR12,VR4,VR4 

       VMULAS16T.M1	   VR34,VR14,VR6,VR6	;计算
       VMULAS16T.M2	   VR36,VR16,VR7,VR7	;计算
		
		VBEXT			VR40,VR31,VR33	;取数，得到3-18位
		VBEXT			VR41,VR31,VR31	;取数，得到1-16位
|	   VADD.M1          VR4,VR5,VR4
		VBEXT			VR40,VR35,VR37	;取数，得到7-22位
|	   VADD.M1			VR4,VR6,VR4
		VBEXT			VR41,VR35,VR35	;取数，得到5-20位
|	   VADD.M1			VR4,VR7,VR4
		
		VMULAS16T.M1    VR31,VR11,VR4,VR4       
        VMULAS16T.M2    VR33,VR13,VR3,VR3

        SNOP            1


		VMULAS16T.M1    VR35,VR15,VR4,VR4       

[R0]   SBR	        LOOP_J
|	    SADD.M1	        1, R52,R52
|		SMOVI0L			0,R1

        VMULAS16T.M2    VR37,VR17,VR3,VR3
        SNOP            2
        VADD.M1         VR4,VR3,VR3
		VSHFAR			15,VR3,VR3
        VSTH            VR3,*AR4		;充分利用SBR指令的6个延时槽的时间
       
   
    	SBR	    R62                   
        SNOP        6                     

.size DSP_fir_r8_h8_asm, .-DSP_fir_r8_h8_asm




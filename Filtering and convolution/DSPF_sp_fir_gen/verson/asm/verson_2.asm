.global asm_dspf_sp_fir_gen

;终版   在verson1的基础上 一次内循环计算x_0_32,进行并行化和软流水
asm_dspf_sp_fir_gen:  ;
;part 1    保存现场  &&  初始化寄存器                
		SMOVIL		-576,R2
		SMOVIL		-1,R3
		SADDA.M2		R3:R2,AR15,AR12
|		SMOVIL		    16,R36
		SMOVIH		    0,R36	
		SSTW			R38 ,*+AR12[0]
|		SMOVIL			0,R50
|		VMOVIL			0, VR4
| 		SMVAGA36.M1 	R13:R12, AR10  ;h基址

		SSTW			R40 ,*+AR12[1]
|		SMOVIH			0, R50	
|		VMOVIH			0,VR4	

		SSTW			R62 ,*+AR12[2]
|		SMOVIL			0, R47        ;R47:R46 r+k  只需要低位为0
|		VMOVIL			0, VR5

		SSTW			R63 ,*+AR12[3]
|		SMOVIL			3,	R0		  ;饱和配置	
|		VMOVIH			0,VR5	     

		SSTW			R37 ,*+AR12[4]
|		VMOVIL			0,VR6	
|		SMOVIL			80,R45

		SSTW			R36 ,*+AR12[5]
|		VMOVIH			0,VR6	
|		SMOVIH			0,R45
;part 2   铺满时：外循环取计算8个h，一共需要17个VR
		SSTW			R39 ,*+AR12[6]
|		SMOVIL			0,R37
		SSHFLL          1,R36,R39
		SSHFLL          2,R36,R61
		SMVAGA36.M1 	R37:R36, OR1
|		SMVCGC			R0,	SCR
		SSHFLL          3,R36,R36
		SMOVIL			48,R37    
		SMOVIH			0,R37
;part3:  R50~R52: i,j,k
dspf_sp_fir_gen_LOOP1:    ;外循环    6p
        SSUB.M1 		R50,R16,R43 
|		SLDW			*AR10++[1],R53     ;p6
|       SMOVIL          0,R51

        SLDW			*AR10++[1],R54
|       SMOVIH          0,R51       

        SLDW			*AR10++[1],R55
|       SMOVIL			0, R52

        SLDW			*AR10++[1],R56
|       SLT				4,R43,R2

        SMOVIH			0, R52             ;p1  i*4
|[R2]   SLDW			*AR10++[1],R57     ;p6
|		SVBCAST.M1		R2,VR1 

        SSHFLL			2, R50,R40
|[R2]   SLDW			*AR10++[1],R58  

        SVBCAST.M1		R53, VR10         ;R53 LD结束
|[R2]   SLDW			*AR10++[1],R59
|       SADD.M2			R40,R10,R44        ;(Xaddr)+i*4
|		SMOVIL			0,R42

        SVBCAST.M1		R54, VR11  
|[R2]   SLDW			*AR10++[1],R60    ;p8
|		SMOVIH			0,R42
		
dspf_sp_fir_gen_LOOP2:   ;内循环   36

		SSUB.M1 		R51,R18,R38 
|		VMOVIL			0,VR5
		SLT				16,R38,R1      ;nr - j >16	
|		VMOVIH			0,VR5
		SVBCAST.M1		R1,VR0
|		VMOVIL			0,VR6
		SMOVIL			0,R49
|		VMOVIH			0,VR6
|		SADD.M1    		R42,R44,R48	 ;x+i+j		
|       SVBCAST.M2		R55, VR12

		SADD			16,R48,R48	
|		SMVAGA36.M1 	R49:R48, AR3     ;x+i+j基址
|		SVBCAST.M2		R56, VR13

		SADD    	    R14,R52,R46	     ;r+k
|		SMVAGA36.M1		R49:R48, AR4	 ;p2
|[R2]   SVBCAST.M2		R57, VR14  

		VLDW			*AR3++[1], VR30  ;p8
|		SMVAGA36.M1 	R47:R46, AR5     ;r+k基址
|[R2]   SVBCAST.M2		R58, VR15
|[R1]	SADD			R37,R48,R48   ;x+i+j+16

		VLDW			*AR3++[1], VR31 
|[VR1]	VLDW			*AR4++[1], VR34
|[R1]	SMVAGA36.M1 	R49:R48, AR6
|[R2]   SVBCAST.M2		R59, VR16 
|[R1]	SADD			16,R48,R48   ;x+i+j+16+8

		VLDW			*AR3++[1], VR32 
|[VR1]	VLDW			*AR4++[1], VR35
|[R1]   SMVAGA36.M1 	R49:R48, AR7
|[R2]   SVBCAST.M2		R60, VR17        ;P4

		VLDW			*AR3++[1], VR33 
|[VR1]	VLDW			*AR4++[1], VR36
|       SADD			R39,R51,R51       ;j+=32

        VLDW			*+AR5[0],VR3 
|[VR1]	VLDW			*AR4++[1], VR37 
|		SSHFLL			2, R51,R42       ;2<<j

 [VR0]	VLDW			*+AR5[OR1],VR4   
|[VR0]	VLDW			*AR6++[1],VR40    ;P8   X+16  开始

 [VR0]	VLDW			*AR6++[1],VR41
|[VR0]	VLDW			*AR7++[1],VR44

 [VR0]	VLDW			*AR6++[1],VR42    ;VR30取完
|[VR0]	VLDW			*AR7++[1],VR45

 [VR0]	VLDW			*AR6++[1],VR43
|[VR0]	VLDW			*AR7++[1],VR46
|       VFMULS32.M2     VR10, VR30,VR30 

[VR0]	VLDW			*AR7++[1],VR47   ;P8
|		VFMULS32.M2     VR11, VR31,VR31  ;防止M1写端口冲突，计算尽量使用M2,M3
|[VR1]	VFMULS32.M3     VR14, VR34,VR34

		VFMULS32.M2     VR12, VR32,VR32
|[VR1]	VFMULS32.M3     VR15, VR35,VR35

 		VFMULS32.M2     VR13, VR33,VR33
|[VR1]	VFMULS32.M3     VR16, VR36,VR36 

		VFADDS32.M1     VR30,VR3,VR3
|[VR1]	VFMULS32.M2     VR17, VR37,VR37

[VR1]	VFADDS32.M1     VR34,VR5,VR5
|[VR0]	VFMULS32.M2     VR10, VR40,VR40 

[VR0]	VFMULS32.M2     VR11, VR41,VR41 
|[VR1]	VFMULS32.M3     VR14, VR44,VR44
		VFADDS32.M1     VR31,VR3,VR3
|[VR0]	VFMULS32.M2     VR12, VR42,VR42 
|[VR1]	VFMULS32.M3     VR15, VR45,VR45 
		
[VR1]	VFADDS32.M1     VR35,VR5,VR5
|[VR0]	VFMULS32.M2     VR13, VR43,VR43 
|[VR1]	VFMULS32.M3     VR16, VR46,VR46 

 [VR1]	VFMULS32.M2     VR17, VR47,VR47
    	VFADDS32.M1     VR32,VR3,VR3
[VR0]	VFADDS32.M1     VR40,VR4,VR4
[VR1]	VFADDS32.M1     VR36,VR5,VR5
[VR1]	VFADDS32.M1     VR44,VR6,VR6
    	VFADDS32.M1     VR33,VR3,VR3
[VR0]	VFADDS32.M1     VR41,VR4,VR4		
[VR1]	VFADDS32.M1     VR37,VR5,VR5
[VR1]	VFADDS32.M1     VR45,VR6,VR6
[VR0]	VFADDS32.M1     VR42,VR4,VR4

[VR1]  	VFADDS32.M1		VR3,VR5,VR3       

[VR1]	VFADDS32.M1     VR46,VR6,VR6
[VR0]	VFADDS32.M1     VR43,VR4,VR4
		SLT				R51,R18,R0        ;内循环条件 nr>j   SIEU
[VR1]	VFADDS32.M1     VR47,VR6,VR6
		VSTW			VR3, *AR5 
		SNOP 			1
[VR1]	VFADDS32.M1     VR6,VR4,VR4
		SNOP 			2
[VR0]	VSTW			VR4, *+AR5[OR1]
|[R0]   SBR				dspf_sp_fir_gen_LOOP2
|		SADD.M1			R36, R52,R52           ;k+=128
		SNOP	     	6					 ;转移指令留6p  保证指令排空
		SADD 		    8, R50, R50       ;SMAC1  i++
	    SLT			    R50,R16,R1   	  ;SIEU   外循环条件  i!=nh

 [R1]	SBR				dspf_sp_fir_gen_LOOP1
		SNOP			6
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   12p

		SLDW			*+AR12[0], R38
		SLDW			*+AR12[1], R40
		SLDW			*+AR12[2], R62 
		SLDW			*+AR12[3], R63 
		SLDW			*+AR12[4], R37
		SLDW			*+AR12[5], R36
		SLDW			*+AR12[6], R38 
		SBR			R62                                 
		SNOP		6                                   
		
.size asm_dspf_sp_fir_gen, .-asm_dspf_sp_fir_gen
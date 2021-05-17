.global asm_dspf_sp_fir_gen
asm_dspf_sp_fir_gen:  ;
;  vectorC   verson3版本翻译
;part 1    保存现场                     part1+part2 30cycle
			SMOVIL		-576,R2
			SMOVIL		-1,R3
			SADDA.M2		R3:R2,AR15,AR12
			SNOP 			1
			SSTW			R38 ,*+AR12[0]
			SSTW			R40 ,*+AR12[1]
			SSTW			R62 ,*+AR12[2]
			SSTW			R63 ,*+AR12[3]
;part 2   铺满时：外循环取计算8个h，一共需要17个VR
		SMOVIL			0, R50	  ;i
		SMOVIH			0, R50				 
|	    SMVAGA36.M1 	R13:R12, AR10  ;h基址
		SMOVIL			0, R47        ;R47:R46 r+k
		SMOVIH			0, R47
		SMOVIL			3,	R0		  ;饱和配置	  				
		SMVCGC			R0,	SCR
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
        SMOVIL			0, R52             ;p1  i*4
|[R2]   SLDW			*AR10++[1],R57     ;p6
        SSHFLL			2, R50,R40
|[R2]   SLDW			*AR10++[1],R58     
        SVBCAST.M1		R53, VR10         ;R53 LD结束
|[R2]   SLDW			*AR10++[1],R59
|       SADD.M2			R40,R10,R44        ;(Xaddr)+i*4
        SVBCAST.M1		R54, VR11  
|[R2]   SLDW			*AR10++[1],R60    ;p8
dspf_sp_fir_gen_LOOP2:   ;内循环   36
        SVBCAST.M1		R2,VR1  
|		SSHFLL			2, R51,R42   ;2<<j
		SVBCAST.M1		R55, VR12
|		SADD.M2			R42,R44,R48  ;x+i+j	
|		SSHFLL			6, R52,R46	 ;4<<k  
        SMVAGA36.M1 	R49:R48, AR3 ;x+i+j基址
|		SADD.M2		    R14,R46,R46	 ;r+k     
		SMVAGA36.M1 	R47:R46, AR4 ;r+k基址   
|		SVBCAST.M2		R56, VR13  
		VLDW			*AR3++[1], VR30  ;p8
|[R2]   SVBCAST.M2		R57, VR14  
		VLDW			*AR3++[1], VR31 
|       VLDW			*AR4,VR3         ;p8
|[R2]   SVBCAST.M1		R58, VR15  
		VLDW			*AR3++[1], VR32 
|[R2]   SVBCAST.M1		R59, VR16  
		VLDW			*AR3++[1], VR33 
|[R2]   SVBCAST.M1		R60, VR17        ;P4
 [VR1]	VLDW			*AR3++[1], VR34  ;p8
 [VR1]	VLDW			*AR3++[1], VR35 
 [VR1]	VLDW			*AR3++[1], VR36 
 [VR1]	VLDW			*AR3++[1], VR37 
		SADD.M2			16,R51,R51        ;j+=12
		SLT				R51,R18,R0        ;内循环条件 nr>j   SIEU

		VFMULAS32.M1	VR10, VR30, VR3, VR3  ;p6
|    	VFMULAS32.M2	VR11, VR31, VR3, VR3 
|       VFMULAS32.M3    VR12, VR32, VR3, VR3 

        VFMULAS32.M1	VR13, VR33, VR3, VR3  ;p6
 [VR1] 	VFMULAS32.M2	VR14, VR34, VR3, VR3 
 [VR1]  VFMULAS32.M3    VR15, VR35, VR3, VR3 

 [VR1]  VFMULAS32.M1	VR16, VR36, VR3, VR3  ;p6
 [VR1]  VFMULAS32.M2	VR17, VR37, VR3, VR3 

		SNOP			7
		VSTW			VR3, *AR4             ;p4
|[R0]   SBR				dspf_sp_fir_gen_LOOP2
|		SADD.M1			1, R52,R52           ;k+=1
		SNOP	     	6					 ;转移指令留6p  保证指令排空
		SADD 		    4, R50, R50       ;SMAC1  i++
	    SEQ			    R50,R16,R1   	  ;SIEU   外循环条件  i!=nh

|[!R1]	SBR				dspf_sp_fir_gen_LOOP1
		SNOP			6
        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   12p
		SLDW			*+AR12[2], R62 
		SLDW			*+AR12[3], R63 
		SLDW			*+AR12[0], R38
		SLDW			*+AR12[1], R40

|		SBR			R62                                 
		SNOP		6                                   
		
.size asm_dspf_sp_fir_gen, .-asm_dspf_sp_fir_gen
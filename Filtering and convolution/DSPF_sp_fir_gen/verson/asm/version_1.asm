.global asm_dspf_sp_fir_gen

asm_dspf_sp_fir_gen:  ;12
;  vectorC   verson3版本翻译
;part 1    保存现场
			SMOVIL		-576,R2
			SMOVIL		-1,R3
			SADDA.M2		R3:R2,AR15,AR12
			SNOP 			1
			SSTW			R30 ,*+AR12[4]
			SSTW			R32 ,*+AR12[5]
			SSTW			R34 ,*+AR12[6]
			SSTW			R36 ,*+AR12[7]
			SSTW			R38 ,*+AR12[8]
			SSTW			R40 ,*+AR12[9]
			SSTW			R62 ,*+AR12[16]
			SSTW			R63 ,*+AR12[17]
|			SMVAAGL.M1		AR14 ,R42       ;p2
|			SMVAAGH.M2      AR14 ,R43  
			SMVAAGL.M1      AR15 ,R48
|			SMVAAGH.M2		AR15 ,R49
|			SSTW			R42, *+AR12[18]
			SSTW			R43, *+AR12[19]
			SSTW			R48, *+AR12[20]
			SSTW			R49, *+AR12[21]
;part 2   初始化寄存器     VR，R用到前注意初始化  
;		  R30,R32,R34  i j k    R36:h[i]  R38:t
;         VR3:h[i]广播 
;		  VR7、VR9 、VR11  temp4 temp5 tem6
;		  VR8、VR10、VR12  temp7 temp8 temp9
;
;		  R40: R21<<2  x+i偏移   i<<2
;         R42: R20<<2            j<<2
;		  R44:         R45:R44=>R11:R10+(i+j)*4    
; 		  R46: k<<4    
;		  R48:
	    SMOVIL		15, R42
|		VMOVIL			0, VR7		  ;   VIEU   P1
		SMOVIL			0, R30		  ;	  i		 P1
|       VMOVIL			0, VR12
		SMOVIH			0, R30		  ;			 
|       VMOVIH			0, VR7
	    SMVAGA36.M1 	R13:R12, AR10  ;h基址
|		SMOVIL			0, R45		  
|		VMOVIL			0, VR8		 
		SMOVIH			0, R45	
|		VMOVIH			0, VR8
		SMOVIL			0,R49   
|        VMOVIL			0, VR12     	  
		SMOVIH			0,R49
|		VMOVIL			0, VR9
		SMOVIL			4,R48
|		VMOVIH			0, VR9		
		SMOVIH			0,R48 	      ;R49:R48 => OR3  
|		VMOVIL			0, VR10	
		SMOVIL			0, R36
|		VMOVIH			0, VR10
		SMVAGA36.M1 	R49:R48, OR3
|		SMOVIH			0, R36
		SMOVIL			0, R47        ;R47:R46 r+k
|		VMOVIL			0, VR11
		SMVAGA36.M1 	R49:R48, OR3
|		SMOVIH			0, R47
|		VMOVIH			0, VR11
		SMVCGC.L		R42, VLR      ;P5 SIEU   配置VPE个数
|		SSUB.M1			1,R16,R16
;		SMOVIL			3,	R0		  饱和配置	  				
;;		SMVCGC			R0,	SCR

;part3:
dspf_sp_fir_gen_LOOP1:    ;外循环    7p
		SLDW			*AR10++[1],R36     ;p6
|		SSHFLL			2, R30,R40         ;SIEU    p1  i*4
		SMOVIL			0, R34             ;外循环初始化k
	    SMOVIH			0, R34			
		SMOVIL			0, R32			   ;外循环初始化j
		SNOP       		2
		SADD.M2			R40,R10,R44	       ;x+i
|		SVBCAST.M1		R36, VR3           ;SMAC    p4
|		SMOVIH			0, R32
dspf_sp_fir_gen_LOOP2:   ;内循环
		SSUB.M1 		R32,R18,R38  ;nr-j
		SSHFLL			2, R32,R42   ;2<<j
		SADD.M2			R42,R44,R48  ;x+i+j	
|		SSHFLL			4, R34,R46	 ;4<<k  
		SADD.M2		    R14,R46,R46	 ;r+k
|       SMVAGA36.M1 	R49:R48, AR3 ;x+i+j基址
		SMVAGA36.M1 	R47:R46, AR4 ;r+k基址
		SMVAGA36.M1 	R47:R46, AR5 ;用于数据写回r		   
		VLDW			*AR3++[OR3], VR7  ;temp4    p8
|		VLDW			*AR4++[OR3], VR8  ;temp7
		VLDW			*AR3++[OR3], VR9  ;temp5
|		VLDW			*AR4++[OR3], VR10 ;temp8
		VLDW			*AR3++[OR3], VR11 ;temp6
|		VLDW			*AR4++[OR3], VR12 ;temp9
|		SLT				4,R38,R2		  ;条件判断  t>4?
		SLT				8,R38,R3 		  ;条件判断  t>8?
		SVBCAST2.M1		R3:R2, VR1:VR0    ;p4
|		SADD.M2			12,R32,R32        ;j+=12
		SLT				R32,R18,R0        ;内循环条件 nr>j   SIEU
		SNOP  			4				  
		VFMULAS32.M1	VR7, VR3, VR8, VR8  ;p6
|[VR0]	VFMULAS32.M2	VR9, VR3, VR10, VR10 
|[VR1]	VFMULAS32.M3	VR11, VR3, VR12, VR12 
		SNOP			5
		VSTW			VR8, *AR5++[OR3]    ;AR5之间存在数据依赖  无法并行  这里多了2p
 [VR0]	VSTW			VR10, *AR5++[OR3]
 [VR1]	VSTW			VR12, *AR5++[OR3] 
|[R0]   SBR				dspf_sp_fir_gen_LOOP2
|		SADD.M1			3, R34,R34           ;k+=3
		SNOP	     	6					 ;转移指令留6p  保证指令排空
		SADD 		    1, R30, R30       ;SMAC1  i++
	    SEQ			    R30,R16,R1   	  ;SIEU   外循环条件  i!=nh

|[!R1]	SBR				dspf_sp_fir_gen_LOOP1
		SNOP			6
		SMOVIL 			0xFFFF,R42		  
		SMVCGC 			R42,VLR ;SIEU
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		SLDW			*+AR12[18], R42
		SLDW			*+AR12[19], R43
		SLDW			*+AR12[20], R48
		SLDW			*+AR12[21], R49
		SLDW			*+AR12[16], R62 
		SLDW			*+AR12[17], R63 
		SLDW			*+AR12[4], R30 
		SLDW			*+AR12[5], R32
		SLDW			*+AR12[6], R34
		SLDW			*+AR12[7], R36
		SLDW			*+AR12[8], R38
		SLDW			*+AR12[9], R40
|		SMVAGA36.M2     R43:R42,AR14 
|		SMVAGA36.M1     R49:R48,AR15

|		SBR			R62                                 
		SNOP		6                                   
		
.size asm_dspf_sp_fir_gen, .-asm_dspf_sp_fir_gen
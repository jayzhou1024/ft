.global asm_dspf_sp_fir_gen   ;全局符号声明，可以在其他C或汇编文件中调用
asm_dspf_sp_fir_gen:  ;
;	寄存器规定：
;		R50 ~ R51: i,j
;       R53 ~ R60: h_0 ~ h_7
;		VR10 ~ VR17: 广播后的h_0 ~ h_7
;		AR3：x[i+j]的地址  计算： R10(x基址,由于高4位为0,实际只用R10) + R50<<2 + R51<<2    (地址寻址单位为字节，数据类型是float)
;		AR4: X[I+J+16]地址
;	    AR5：r[k]的地址    计算： R14 + R52<<6  (r每次偏移16*4B)
;       VR30：x_0_15  VR31: x_1_16   ... VR37：x_7_22
;		VR3: r[k]
;
;   参数要求： nh % 4 = 0 &&  nh >= 4
;			  nr % 4 = 0 &&  nr >= 4


;      初始化寄存器
        SMOVI0L	    	0, R50 			;初始化i
|	    SMVAGA36.M1 	R13:R12, AR10   ;h基址保存到AR10中

        SMOVIL     		16,R44			;16
|       SADD.M1	   		0,R50,R45   		

        SMOVIH     		0,R44
|       SADD.M1	   		0,R50,R45  

		SMOVIL			3,	R0		    ;饱和配置(具体作用看体系结构手册)  	
|       SADD.M2	   		R44,R44,R46      ;32

		SMVCGC			R0,	SCR
|		SMVAGA36.M1 	R45:R44, OR5    ;offset 16
|		SADD.M2			R46,R46,R45      ;64
;part3:  
dspf_sp_fir_gen_LOOP1:    ;外循环 

        SMOVI0L	    	0, R51 	           ;j 置 0
|       SSUB.M1 		R50,R16,R43 
|		SLDW			*AR10++[1],R53     ;将存放在SM中的h_0取到寄存器中 p6

        SLT				4,R43,R2           ;计算h_4 ~ h_7的条件
|	    SMVAGA36.M1 	R15:R14, AR5       ;在外循环取r
|       SLDW			*AR10++[1],R54

		SSHFLL			2, R50,R40
|       SLDW			*AR10++[1],R55	
        SLDW			*AR10++[1],R56
        SLDW			*AR10++[1],R57     
 	    SLDW			*AR10++[1],R58    
 	    SLDW			*AR10++[1],R59
|       SVBCAST.M2		R53, VR10          ;h_0取数结束，将其广播到向量寄存器中
|       SADD.M1			R40,R10,R47        ;(Xaddr)+i*4

        SLDW			*AR10++[1],R60   
|       SVBCAST.M1		R54, VR11  
		SVBCAST.M1		R55, VR12
 		SVBCAST.M1		R56, VR13 
		 	
 [!R2]  SADD.M2     	0,R51,R57

        SVBCAST.M1		R57, VR14 
|[!R2]  SADD.M2     	0,R51,R58

		SVBCAST.M1		R58, VR15 
|[!R2]  SADD.M2     	0,R51,R59

        SVBCAST.M1		R59, VR16 
|[!R2]  SADD.M2     	0,R51,R60

		SEQ				0,R50,R2
|       SVBCAST.M1		R60, VR17 

dspf_sp_fir_gen_LOOP2:   ;内循环   

 		SSHFLL			2, R51,R42         ;j<<2
|		SSUB.M1		    R51,R18,R61		   ;NR - J
|       VLDW			*AR5,VR3    ;从AM空间内取r_0_15

		SLT				16,R61,R0     	   ;nr - j >16	
| 		SADD.M2			R42,R47,R48        ;x+i+j	
|		VMOVIL			0,VR5
|       VLDW			*+AR5[OR5] ,VR4    ;从AM空间内取r_0_15

		; SLT				R46,R61,R1     	   ;nr - j > 32	
        SMVAGA36.M1 	R49:R48, AR3       ;x+i+j基址
|		VMOVIH			0,VR5
|		SADD.M2			R45,R48,R48

		VMOV			VR5,VR5
|       SMVAGA36.M1 	R49:R48, AR4       ;x+i+j基址

		VMOV			VR5,VR6

		VMOV			VR5,VR7
|		VLDW			*AR3++[1], VR30    ;从AM空间内取x_0_15
|		VLDW			*AR4++[1],VR40   ;双字取有问题未解决，这里一次就取了 32个,双字取寄存器不够用

		VMOV			VR5,VR8
|		VLDW			*AR3++[1], VR31     
|		VLDW			*AR4++[1], VR41  
|   	SVBCAST.M1		R0,VR0				

		VMOV			VR5,VR50
|		VLDW			*AR3++[1], VR32 
|		VLDW			*AR4++[1], VR42
; |   	SVBCAST.M1		R1,VR1	

		VMOV			VR5,VR51
|		VLDW			*AR3++[1], VR33     
|		VLDW			*AR4++[1], VR43
|[R2]	SVBCAST.M1		R50,VR3   			  ;确保VR3被初始化,此时R50 == 0

		VMOV			VR5,VR52
|		VLDW			*AR3++[1], VR34  
|		VLDW			*AR4++[1], VR44
|[R2]	SVBCAST.M1		R50,VR4 			  ;确保VR3被初始化,此时R50 == 0

		VMOV			VR5,VR53
| 		VLDW			*AR3++[1], VR35 
|		VLDW			*AR4++[1], VR45

		VMOV			VR5,VR54
|		VLDW			*AR3++[1], VR36 
|		VLDW			*AR4++[1], VR46

		VMOV			VR5,VR55
|		VLDW			*AR3++[1], VR37 
|		VLDW			*AR4++[1], VR47

		VMOV			VR55,VR56
|		VFMULAS32.M2	VR10, VR30, VR3, VR3  ; r_0_15 = x_0_15 * vh_0 + r_0_15
|[VR0]	VFMULAS32.M3	VR10, VR40, VR4, VR4  

		VMOV			VR55,VR57
|		VFMULAS32.M2	VR11, VR31, VR5, VR5 
|[VR0]	VFMULAS32.M3	VR11, VR41, VR6, VR6 

		VMOV			VR55,VR58
|		VFMULAS32.M2	VR12, VR32, VR7, VR7 
|[VR0]	VFMULAS32.M3	VR12, VR42, VR8, VR8  

 		VMOV			VR55,VR59
|		VFMULAS32.M2	VR13, VR33, VR50, VR50  
|[VR0]	VFMULAS32.M3	VR13, VR43, VR51, VR51 

		VFMULAS32.M2	VR14, VR34, VR52, VR52  
|[VR0]	VFMULAS32.M3	VR14, VR44, VR53, VR53 

		VFMULAS32.M2	VR15, VR35, VR54, VR54  
|[VR0]	VFMULAS32.M3	VR15, VR45, VR55, VR55 

		
		VFMULAS32.M2	VR16, VR36, VR56, VR56  
|[VR0]	VFMULAS32.M3	VR16, VR46, VR57, VR57 

		VFADDS32.M1     VR3,VR5,VR3
|		VFMULAS32.M2	VR17, VR37, VR58, VR58  
|[VR0]	VFMULAS32.M3	VR17, VR47, VR59, VR59 

		VFADDS32.M1     VR4,VR6,VR4
		SNOP			1
		VFADDS32.M1     VR3,VR7,VR3
		VFADDS32.M1     VR4,VR8,VR4

		VFADDS32.M1     VR50,VR52,VR50
		VFADDS32.M1     VR51,VR53,VR51

		VFADDS32.M1     VR3,VR54,VR3
		VFADDS32.M1     VR4,VR55,VR4

		VFADDS32.M1     VR50,VR56,VR50
		VFADDS32.M1     VR51,VR57,VR51

		VFADDS32.M1     VR3,VR58,VR3
		VFADDS32.M1     VR4,VR59,VR4
		SNOP			1
		VFADDS32.M1     VR3,VR50,VR3
		VFADDS32.M1     VR4,VR51,VR4
|		SADD.M2			R46,R51,R51        ;j += 32
		SLT				R51,R18,R0        ;内循环条件 nr>j  

		VSTW			VR3, *AR5++[OR5]             ;r_0_15 写回内存
		VSTW			VR4, *AR5++[OR5] 

|[R0]   SBR				dspf_sp_fir_gen_LOOP2
		SNOP	     	6					  ;转移指令留6p  保证指令排空
		SADD 		    8, R50, R50           ;SMAC1  i += 8
	    SLT			    R50,R16,R1   	      ;SIEU   外循环条件  i!=nh
 [R1]	SBR				dspf_sp_fir_gen_LOOP1
 [!R1]  SBR				R62                       
		SNOP			6                                
		
.size asm_dspf_sp_fir_gen, .-asm_dspf_sp_fir_gen
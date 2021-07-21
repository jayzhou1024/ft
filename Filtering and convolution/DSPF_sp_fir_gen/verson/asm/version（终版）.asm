.global asm_dspf_sp_fir_gen  ;全局符号声明，可以在其他C或汇编文件中调用
asm_dspf_sp_fir_gen:  ;
;	vectorC   verson3版本翻译
;	为了直观展示，该版本没有完全的做并行化，part1和part2 很多地方可以并行
;	
;	寄存器规定：
;		R50 ~ R52: i,j,k
;       R53 ~ R60: h_0 ~ h_7
;		VR10 ~ VR17: 广播后的h_0 ~ h_7
;  （这部分理解数据在内存中的位置，基址一般用AR来存放）    
;		AR3：x[i+j]的地址  计算： R10(x基址,由于高4位为0,实际只用R10) + R50<<2 + R51<<2    (地址寻址单位为字节，数据类型是float)
;	    AR4：r[k]的地址    计算： R14 + R52<<6  (r每次偏移16*4B)
;       VR30：x_0_15  VR31: x_1_16   ... VR37：x_7_22
;		VR3: r[k]
;
;   参数要求： nh % 4 = 0 &&  nh >= 4
;			  nr % 4 = 0 &&  nr >= 4
;   由于一次计算了h_0 ~ h_7, 需要判断是否计算 h_4 ~ h_7,判断条件:nh - i > 4,即：R16 - R50 > 4
;   
;   循环条件：外循环：i < nh   内循环：j < nr
;
;part 1    保存现场                     
		SMOVIL		-576,R2
		SMOVIL		-1,R3
		SADDA.M2		R3:R2,AR15,AR12  ;开辟栈空间,由于本函数没有子函数调用，这里并没有移动栈指针
		SNOP 			1
		SSTW			R62 ,*+AR12[0]   ;用到的寄存器压栈,在函数中用到了才需要压栈(这里为了演示)
		SSTW			R63 ,*+AR12[1]   
		SSTW			R38 ,*+AR12[2]	 
		SSTW			R40 ,*+AR12[3]
;part 2  初始化寄存器
		SMOVIL			0, R50	        ;初始化i
		SMOVIH			0, R50				 
|	    SMVAGA36.M1 	R13:R12, AR10   ;h基址保存到AR10中
		SMOVIL			0, R47          ;R47:R46用来计算r + k
		SMOVIH			0, R47
		SMOVIL			3,	R0		    ;饱和配置(具体作用看体系结构手册)  				
		SMVCGC			R0,	SCR
;part3:  
dspf_sp_fir_gen_LOOP1:    ;外循环   
        SSUB.M1 		R50,R16,R43 
|		SLDW			*AR10++[1],R53     ;将存放在SM中的h_0取到寄存器中
|       SMOVIL          0,R51              ;j 置 0
        SLDW			*AR10++[1],R54
|       SMOVIH          0,R51       
        SLDW			*AR10++[1],R55	
|       SMOVIL			0, R52			   ;k 置 0
        SLDW			*AR10++[1],R56
|       SLT				4,R43,R2           ;计算h_4 ~ h_7的条件
        SMOVIL			0, R52             
|[R2]   SLDW			*AR10++[1],R57     
        SSHFLL			2, R50,R40
|[R2]   SLDW			*AR10++[1],R58     
        SVBCAST.M1		R53, VR10          ;h_0取数结束，将其广播到向量寄存器中
|[R2]   SLDW			*AR10++[1],R59
|       SADD.M2			R40,R10,R44        ;(Xaddr)+i*4
        SVBCAST.M1		R54, VR11          
|[R2]   SLDW			*AR10++[1],R60    
dspf_sp_fir_gen_LOOP2:   ;内循环   
        SVBCAST2.M1		R3:R2,VR1:VR0    
|		SSHFLL			2, R51,R42         ;j<<2
		SVBCAST.M1		R55, VR12
|		SADD.M2			R42,R44,R48        ;x+i+j	
|		SSHFLL			6, R52,R46	       ;k<<6  
        SMVAGA36.M1 	R49:R48, AR3       ;x+i+j基址
|		SADD.M2		    R14,R46,R46	       ;r+k     
		SMVAGA36.M1 	R47:R46, AR4       ;r+k基址   
|		SVBCAST.M2		R56, VR13          ;部分h的广播放到了内循环中(这样会有重复计算，但是不会增加cycyle)
		VLDW			*AR3++[1], VR30    ;从AM空间内取x_0_15
|[R2]   SVBCAST.M2		R57, VR14          
		VLDW			*AR3++[1], VR31 
|       VLDW			*AR4,VR3           ;从AM空间内取r_0_15
|[R2]   SVBCAST.M1		R58, VR15       
		VLDW			*AR3++[1], VR32 
|[R2]   SVBCAST.M1		R59, VR16  
		VLDW			*AR3++[1], VR33 
|[R2]   SVBCAST.M1		R60, VR17        
 [VR0]	VLDW			*AR3++[1], VR34  
 [VR0]	VLDW			*AR3++[1], VR35 
 [VR0]	VLDW			*AR3++[1], VR36 
 [VR0]	VLDW			*AR3++[1], VR37 
		SADD.M2			16,R51,R51        ;j += 16
		SLT				R51,R18,R0        ;内循环条件 nr>j  
		VFMULAS32.M1	VR10, VR30, VR3, VR3  ; r_0_15 = x_0_15 * vh_0 + r_0_15
		SNOP			5					  ;有数据依赖，VR3需要写回才能进行下一乘累加指令的计算
    	VFMULAS32.M2	VR11, VR31, VR3, VR3  ; r_0_15 = x_1_16 * vh_1 + r_0_15
		SNOP			5
        VFMULAS32.M3    VR12, VR32, VR3, VR3  ; r_0_15 = x_2_17 * vh_2 + r_0_15
		SNOP			5
        VFMULAS32.M1	VR13, VR33, VR3, VR3  ; r_0_15 = x_3_18 * vh_3 + r_0_15
		SNOP			5
 [VR0] 	VFMULAS32.M2	VR14, VR34, VR3, VR3 
 		SNOP			5
 [VR0]  VFMULAS32.M3    VR15, VR35, VR3, VR3 
		SNOP			5
 [VR0]  VFMULAS32.M1	VR16, VR36, VR3, VR3  
		SNOP			5
 [VR0]  VFMULAS32.M2	VR17, VR37, VR3, VR3 
		SNOP			5
		VSTW			VR3, *AR4             ;r_0_15 写回内存
|[R0]   SBR				dspf_sp_fir_gen_LOOP2
|		SADD.M1			1, R52,R52            ;k+=1
		SNOP	     	6					  ;转移指令留6p  保证指令排空
		SADD 		    8, R50, R50           ;SMAC1  i += 8
	    SLT			    R50,R16,R1   	      ;SIEU   外循环条件  i!=nh
 [R1]	SBR				dspf_sp_fir_gen_LOOP1
		SNOP			6
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   恢复现场
		SLDW			*+AR12[0], R62
		SLDW			*+AR12[1], R63
		SLDW			*+AR12[2], R38 
		SLDW			*+AR12[3], R40 
		SBR			R62                                 
		SNOP		6                                   
		
.size asm_dspf_sp_fir_gen, .-asm_dspf_sp_fir_gen
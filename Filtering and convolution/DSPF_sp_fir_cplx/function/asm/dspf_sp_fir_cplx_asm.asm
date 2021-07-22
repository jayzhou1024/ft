.global DSPF_sp_fir_cplx_asm

DSPF_sp_fir_cplx_asm:  

        SMOVI0L	    	0, R50 	
|       SSUB.M1         1,R16,R42
        SSHFLL          3, R42,R42
|       SADD.M1		0, R50,R43   
|       SADD.M2         0, R50,R47

        SMOVIL          16,R46	        ;16
|       SADD.M1         R42,R12,R42

        SMOVIH          16,R46
|       SMVAGA36.M1 	R43:R42, AR12   ;h基址保存到AR10中(倒序)

        SADD            R46,R46,R43     ;32
|       SMVAGA36.M1 	R47:R46, OR5
; |	SMOVIL  	3,	R0		    ;饱和配置  	
; 	SMVCGC  	R0,	SCR
LOOP_I:
        SMOVI0L	    	0, R51 	
|       SSUB.M1 	R50,R16,R42
|       SLDDW		*AR12--,R55:R54    ;P6

        SLT		2,R42,R2           ;再延伸寄存器就不够使用了
|	SMVAGA36.M1 	R15:R14, AR5       ;在外循环取r
|       SLDDW		*AR12--,R57:R56               
         
        SSHFLL		3, R50,R42         ;R42复用 
|       SLDDW		*AR12--,R59:R58

        SADD.M1		R42,R10,R44 
|       SLDDW		*AR12--,R61:R60

        SMOVI0L	    	0, R47
        SNOP            1
        SVBCAST2.M1	R55:R54, VR11:VR10
        SVBCAST2.M1	R57:R56, VR13:VR12 
 [R2]   SADD.M1     	0,R47,R58
|[R2]   SADD.M2     	0,R47,R59

        SADD        	0,R47,R58
|       SVBCAST2.M1	R59:R58, VR15:VR14 
|[R2]   SADD.M2     	0,R47,R58

        SEQ	        0,R50,R2
|       SVBCAST2.M1	R61:R60, VR17:VR16 
LOOP_J:
        SSHFLL		3, R51,R42
|	SSUB.M2		R51,R18,R45		   ;NR - J
|       VLDDW		*AR5, VR5:VR4
|	VMOVIL		0,VR6

        SLT		16,R45,R1
|       SADD.M2		R42,R44,R48
|	VMOVIH		0,VR6

        SADD		R43,R48,R48     ; +32
|       SMVAGA36.M1 	R49:R48, AR3
|       SADD.M2		R43,R51,R51        ;j += 32
|       VMOV		VR6,VR7

        SLT	        R51,R18,R0
|       SMVAGA36.M1 	R49:R48, AR4
        SVBCAST.M1	R1,VR0	
        VLDDWM2		*AR3++, VR31:VR30    ;P8  
|       VLDDWM2         *AR4++, VR41:VR40

        VLDDWM2		*AR3++, VR33:VR32
|       VLDDWM2         *AR4++, VR43:VR42

        VLDDWM2 	*AR3++, VR35:VR34 
|       VLDDWM2         *AR4++, VR45:VR44

        VLDDWM2		*AR3++, VR37:VR36
|       VLDDWM2         *AR4++, VR47:VR46
 [R2]	SVBCAST.M1	R50,VR3             ; R初始化
 [R2]	SVBCAST.M1	R50,VR4 
        SNOP            2
        VFCREAL32.M1    VR11:VR10,VR31:VR30,VR20  ;P7  两拍读
|       VFCIMAG32.M2    VR11:VR10,VR31:VR30,VR21
|[VR0]  VFCREAL32.M3    VR11:VR10,VR41:VR40,VR22
        SNOP            1
 [VR0]  VFCIMAG32.M1    VR11:VR10,VR41:VR40,VR23
|       VFCREAL32.M2    VR13:VR12,VR33:VR32,VR24
|       VFCIMAG32.M3    VR13:VR12,VR33:VR32,VR25
        SNOP            1
 [VR0]  VFCREAL32.M2    VR13:VR12,VR43:VR42,VR26
|[VR0]  VFCIMAG32.M3    VR13:VR12,VR43:VR42,VR27
        SNOP            1
        VFCREAL32.M2    VR15:VR14,VR35:VR34,VR28
|       VFCIMAG32.M3    VR15:VR14,VR35:VR34,VR29  
        SNOP            1
 [VR0]  VFCREAL32.M2    VR15:VR14,VR45:VR44,VR50
|[VR0]  VFCIMAG32.M3    VR15:VR14,VR45:VR44,VR51

        VFADDS32.M1     VR20,VR22,VR20

        VFADDS32.M1     VR21,VR23,VR21
|       VFCIMAG32.M2    VR17:VR16,VR37:VR36,VR53   
|[VR0]  VFCREAL32.M3    VR17:VR16,VR47:VR46,VR54

        VFADDS32.M1     VR24,VR26,VR24

        VFADDS32.M1     VR25,VR27,VR25
|       VFCREAL32.M2    VR17:VR16,VR37:VR36,VR52 
|[VR0]  VFCIMAG32.M3    VR17:VR16,VR47:VR46,VR55

        VFADDS32.M1     VR28,VR50,VR28
        VFADDS32.M1     VR29,VR51,VR29 

        VFADDS32.M1     VR20,VR24,VR20
        VFADDS32.M1     VR21,VR25,VR21
        
        VFADDS32.M1     VR52,VR54,VR52
        VFADDS32.M1     VR53,VR55,VR53 

        VFADDS32.M1     VR20,VR28,VR20
        VFADDS32.M1     VR21,VR29,VR21
        VFADDS32.M1     VR4,VR52,VR4
        VFADDS32.M1     VR5,VR53,VR5 
        SNOP            1
        VFADDS32.M1     VR4,VR20,VR4
        VFADDS32.M1     VR5,VR21,VR5
        SNOP            2
        VSTDW		VR5:VR4,*AR5
|[R0]   SBR		LOOP_J
        SNOP	     	6
        SADD 		4, R50, R50
        SLT	        R50,R16,R1
 [R1]	SBR		LOOP_I
	SNOP    	6

        SADD.M2         15,R18,R42	    ;前面R42已使用完毕
|       SADD            0,R47,R50           ;R47 = 0
|       SMVAGA36.M1     R15:R14,AR4

        SSHFLR          4,R42,R42
|       SADD.M1         16,R50,R46

UPDATE_STORE:
        SADD.M2         1,R50,R50
|       VLDDW		*AR4, VR5:VR4  ;p8
|       SMVAGA36.M1 	R47:R46, OR4
        SLT             R50,R42,R1
        SNOP		6
        VSTDWM16        VR5:VR4,*AR4++[OR4]   ;p4
|[R1]   SBR		UPDATE_STORE
 [!R1]  SBR	        R62                                 
        SNOP    	6   

.size DSPF_sp_fir_cplx_asm, .-DSPF_sp_fir_cplx_asm


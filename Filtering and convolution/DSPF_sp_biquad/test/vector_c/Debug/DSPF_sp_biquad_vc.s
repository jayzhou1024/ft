	.file	"DSPF_sp_biquad_vc.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_biquad_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_biquad_vc
	.type	DSPF_sp_biquad_vc, @function
DSPF_sp_biquad_vc:
.LFB3:
	.file 1 "../DSPF_sp_biquad_vc.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
		SMVAGA36.M2		R13:R12, AR12
	|	SMVAGA36.M1		R19:R18, AR1
	|	SMOVIL		0, R42
	.loc 1 32 0
		SLT		R42, R20, R0
	|	SMVAGA36.M1		R11:R10, AR2
	|	SMVAGA36.M2		R15:R14, AR10
.LVL1:
	.loc 1 29 0
		SLDW		*+AR12[1], R51
	|	SADDA.M1		8,AR1,AR0
	|	SMOVIL		192, R6
.LVL2:
	.loc 1 30 0
		SLDW		*AR12, R8
	|	SMOVIL		0, R7
	.loc 1 28 0
		SLDW		*+AR12[2], R52
	|	SSUBA.L		R7:R6, AR7, AR7
	.loc 1 14 0
		SMOVIL		-16, R6
		SMVAAGL.M2		AR0, R43:R42
		SMOVIL		-1, R7
	.loc 1 32 0
	[!R0]	SBR		.L6
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 29 0
		SVBCAST.M2 		 R51,VR6
	|	SMVAAGL.M1		AR8, R7:R6
	|	SMOVIL		0, R60
	.loc 1 28 0
		SVBCAST.M1 		 R52,VR5
	|	SVBCAST.M2 		 R8,VR7
.LVL3:
	.loc 1 14 0
		SMVAAGH.M1		AR8, R7:R6
		SNOP		1
	.cfi_offset 8, -8
		SMVAGA36.M1		R17:R16, AR8
	|	SSTDW		R7:R6, *+AR15[1]
	[R0]	SMVAAGH.M1		AR0, R43:R42
		SNOP		1
	;; condjump to .L6 occurs
.LVL4:
.L5:
	.loc 1 34 0 discriminator 2
		SSHFAR		31, R60, R55
	|	SMOV.M2		R60, R52
	|	SMVAGA36.M1		R43:R42, AR0
		SMOV.M2		R55, R53
	|	SMOVIL		64, R46
	;no-op trunc di R53:R52 to pdi R53:R52
		SSHFLL		2, R53, R45
	|	VLDW.LS 		*AR0,VR3
	|	SADD.M2		1,R60,R50
	|	SMOV.M1		R43, R1
		SSHFLR		30, R52, R10
	|	SADD.M2		R46,R42,R53
	|	SADD.M1		2,R60,R61
		SOR		R45, R10, R45
	|	SADD.M2		16,R60,R60
.LVL5:
		SSHFLL		2, R52, R44
		SADDA.M2		R45:R44,AR2,AR4
	|	SSHFAR		31, R50, R57
	.loc 1 38 0 discriminator 2
		SMOV.M1		R57, R51
	|	SSHFAR		31, R61, R59
	;no-op trunc di R51:R50 to pdi R51:R50
		SSHFLR		30, R50, R43
	.loc 1 34 0 discriminator 2
		VLDW.LS 		*AR4,VR4
	|	SSHFLL		2, R51, R47
	|	SMOV.M2		R59, R51
	.loc 1 38 0 discriminator 2
		SOR		R47, R43, R47
		SSHFLL		2, R50, R46
	|	SMOV.M2		R61, R50
		SADDA.M2		R47:R46,AR2,AR6
	;no-op trunc di R51:R50 to pdi R51:R50
	|	SSHFLR		30, R50, R3
	.loc 1 42 0 discriminator 2
		SSHFLL		2, R51, R49
		SOR		R49, R3, R49
		SSHFLL		2, R50, R48
		SADDA.M2		R49:R48,AR2,AR4
	|	SLT		R60, R20, R0
	.loc 1 34 0 discriminator 2
		VSTW.LS 		VR4,*+AR7[32]
	|	SLTU		R53, R42, R2
	|	SMOV.M1		R53, R42
	.loc 1 36 0 discriminator 2
		VLDW.LS 		*+AR7[32],VR0
	|	SADD.M1		R1,R2,R43
		SNOP		7
		VFMULAS32.M3	VR0,VR5,VR3,VR3
		SNOP		5
		VSTW.LS 		VR3,*AR0
	.loc 1 38 0 discriminator 2
		VLDW.LS 		*AR6,VR1
		SNOP		7
		VSTW.LS 		VR1,*+AR7[16]
	.loc 1 40 0 discriminator 2
		VLDW.LS 		*+AR7[16],VR2
		SNOP		7
		VFMULAS32.M3	VR2,VR6,VR3,VR3
		SNOP		5
		VSTW.LS 		VR3,*AR0
	.loc 1 42 0 discriminator 2
		VLDW.LS 		*AR4,VR8
		SNOP		7
		VSTW.LS 		VR8,*AR7
	.loc 1 44 0 discriminator 2
		VLDW.LS 		*AR7,VR9
		SNOP		7
	.loc 1 32 0 discriminator 2
	[R0]	SBR		.L5
	|	VFMULAS32.M3	VR9,VR7,VR3,VR3
	.loc 1 44 0 discriminator 2
		SNOP		5
		VSTW.LS 		VR3,*AR0
	;; condjump to .L5 occurs
		SLDW		*+AR12[1], R51
		SLDW		*AR12, R8
		SNOP		5
.LVL6:
.L6:
	.loc 1 48 0
		VLDW.LS 		*AR2,VR10
		SNOP		7
		VMVCGC.L		VR10,SVR
		SNOP		2
	.loc 1 49 0
		SMVCCG.L		SVR0,R9
		SNOP		1
.LVL7:
	.loc 1 50 0
		SMVCCG.L		SVR1,R11
		SNOP		1
.LVL8:
	.loc 1 51 0
		VLDW.LS 		*AR1,VR11
		SNOP		7
		VMVCGC.L		VR11,SVR
		SNOP		2
.LVL9:
	.loc 1 55 0
		SLDW		*+AR8[1], R46
	|	SMOVIL		-2147483648, R13
	.loc 1 54 0
		SLDW		*AR8, R47
	|	SMOVIH		-2147483648, R13
	.loc 1 55 0
		SLDW		*+AR10[1], R12
		SNOP		3
		SFMULAS32.M2	R8, R11, R46, R46
	.loc 1 54 0
		SFMULAS32.M1	R8, R9, R47, R47
		SNOP		4
.LVL10:
	.loc 1 55 0
		SFMULAS32.M1	R51, R9, R46, R46
	.loc 1 8 0
		SXOR		R13, R47, R14
		SNOP		4
.LVL11:
	.loc 1 55 0
		SFMULAS32.M2	R14, R12, R46, R46
		SNOP		5
.LVL12:
	.loc 1 56 0
	; ;APP 
;# 56 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R47, SVR0         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 57 0
;# 57 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R46, SVR1         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 58 0
	; ;NO_APP 
		VMVCCG.L		SVR,VR12
		SNOP		1
	.loc 1 8 0
		SMVAAGL.M2		AR1, R45:R44
	|	SMOVIL		2, R15
	|	SADD.M1		-3,R20,R16
	|	VSTW.LS 		VR12,*AR1
.LVL13:
		SMOVIL		-56, R42
		SMOVIL		-1, R43
	|	SMVAAGH.M2		AR1, R45:R44
	.loc 1 60 0
		SLT		R15, R20, R1
	|	SADDA.M1		R43:R42,AR1,OR0
	[!R1]	SBR		.L4
	|	SADD.M2		8,R44,R48
	|	SSHFLR		4, R16, R17
	.loc 1 8 0
		SLTU		R48, R44, R44
		SSHFLL		6, R17, R18
	|	SMVAAGL.M2		OR0, R43:R42
	|	SADD.M1		R45,R44,R19
.LVL14:
		SSHFLR		30, R16, R21
	|	SADD.M1		R18,R48,R22
		SLTU		R22, R48, R23
	|	SADD.M1		R21,R19,R24
	|	SMVAAGH.M2		OR0, R43:R42
		SMOVIL		-2147483648, R26
	|	SADD.M1		R24,R23,R25
		SMOVIH		-2147483648, R26
	;; condjump to .L4 occurs
.LVL15:
.L7:
		SMOVIL		64, R27
		SADD.M2		R27,R42,R28
		SLTU		R28, R42, R52
	|	SMOV.M2		R28, R42
		SADD.M2		R43,R52,R43
	.loc 1 8 0 is_stmt 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR0
		SNOP		1
	.loc 1 62 0 is_stmt 1 discriminator 2
		VLDW.LS 		*AR0,VR13
		SNOP		7
		VMVCGC.L		VR13,SVR
		SNOP		2
	.loc 1 63 0 discriminator 2
		SMVCCG.L		SVR0,R61
		SNOP		1
.LVL16:
	.loc 1 64 0 discriminator 2
		SMVCCG.L		SVR1,R10
		SNOP		1
.LVL17:
	.loc 1 65 0 discriminator 2
		SMVCCG.L		SVR2,R60
		SNOP		1
.LVL18:
	.loc 1 66 0 discriminator 2
		SMVCCG.L		SVR3,R58
		SNOP		1
.LVL19:
	.loc 1 67 0 discriminator 2
		SMVCCG.L		SVR4,R57
		SNOP		1
.LVL20:
	.loc 1 68 0 discriminator 2
		SMVCCG.L		SVR5,R56
		SNOP		1
.LVL21:
	.loc 1 69 0 discriminator 2
		SMVCCG.L		SVR6,R55
		SNOP		1
.LVL22:
	.loc 1 70 0 discriminator 2
		SMVCCG.L		SVR7,R54
		SNOP		1
.LVL23:
	.loc 1 71 0 discriminator 2
		SMVCCG.L		SVR8,R53
		SNOP		1
.LVL24:
	.loc 1 72 0 discriminator 2
		SMVCCG.L		SVR9,R59
		SNOP		1
.LVL25:
	.loc 1 73 0 discriminator 2
		SMVCCG.L		SVR10,R2
		SNOP		1
.LVL26:
	.loc 1 74 0 discriminator 2
		SMVCCG.L		SVR11,R50
		SNOP		1
.LVL27:
	.loc 1 75 0 discriminator 2
		SMVCCG.L		SVR12,R0
		SNOP		1
.LVL28:
	.loc 1 76 0 discriminator 2
		SMVCCG.L		SVR13,R3
		SNOP		1
.LVL29:
	.loc 1 77 0 discriminator 2
		SMVCCG.L		SVR14,R49
		SNOP		1
.LVL30:
	.loc 1 78 0 discriminator 2
		SMVCCG.L		SVR15,R51
		SNOP		1
.LVL31:
	.loc 1 80 0 discriminator 2
		SLDW		*+AR10[1], R45
		SLDW		*+AR10[2], R8
		SNOP		4
	.loc 1 8 0 discriminator 2
		SXOR		R26, R45, R9
	.loc 1 80 0 discriminator 2
		SFMULAS32.M2	R9, R46, R61, R61
	|	SXOR		R26, R8, R11
.LVL32:
	.loc 1 8 0 discriminator 2
		SNOP		5
	.loc 1 80 0 discriminator 2
		SFMULAS32.M2	R11, R47, R61, R61
	|	SMOV.M1		R49, R47
.LVL33:
	.loc 1 94 0 discriminator 2
		SNOP		5
.LVL34:
	.loc 1 81 0 discriminator 2
		SFMULAS32.M2	R9, R61, R10, R10
		SNOP		5
.LVL35:
		SFMULAS32.M2	R11, R46, R10, R10
	|	SMOV.M1		R51, R46
.LVL36:
	.loc 1 95 0 discriminator 2
		SNOP		5
.LVL37:
	.loc 1 82 0 discriminator 2
		SFMULAS32.M2	R9, R10, R60, R60
		SNOP		5
.LVL38:
		SFMULAS32.M2	R11, R61, R60, R60
		SNOP		5
.LVL39:
	.loc 1 83 0 discriminator 2
		SFMULAS32.M2	R9, R60, R58, R58
		SNOP		5
.LVL40:
		SFMULAS32.M2	R11, R10, R58, R58
		SNOP		5
.LVL41:
	.loc 1 84 0 discriminator 2
		SFMULAS32.M2	R9, R58, R57, R57
		SNOP		5
.LVL42:
		SFMULAS32.M2	R11, R60, R57, R57
		SNOP		5
.LVL43:
	.loc 1 85 0 discriminator 2
		SFMULAS32.M2	R9, R57, R56, R56
		SNOP		5
.LVL44:
		SFMULAS32.M2	R11, R58, R56, R56
		SNOP		5
.LVL45:
	.loc 1 86 0 discriminator 2
		SFMULAS32.M2	R9, R56, R55, R55
		SNOP		5
.LVL46:
		SFMULAS32.M2	R11, R57, R55, R55
		SNOP		5
.LVL47:
	.loc 1 87 0 discriminator 2
		SFMULAS32.M2	R9, R55, R54, R54
		SNOP		5
.LVL48:
		SFMULAS32.M2	R11, R56, R54, R54
		SNOP		5
.LVL49:
	.loc 1 88 0 discriminator 2
		SFMULAS32.M2	R9, R54, R53, R53
		SNOP		5
.LVL50:
		SFMULAS32.M2	R11, R55, R53, R53
		SNOP		5
.LVL51:
	.loc 1 89 0 discriminator 2
		SFMULAS32.M2	R9, R53, R59, R59
		SNOP		5
.LVL52:
		SFMULAS32.M2	R11, R54, R59, R59
		SNOP		5
.LVL53:
	.loc 1 90 0 discriminator 2
		SFMULAS32.M2	R9, R59, R2, R2
		SNOP		5
.LVL54:
		SFMULAS32.M2	R11, R53, R2, R2
		SNOP		5
.LVL55:
	.loc 1 91 0 discriminator 2
		SFMULAS32.M2	R9, R2, R50, R50
		SNOP		5
.LVL56:
		SFMULAS32.M2	R11, R59, R50, R50
		SNOP		5
.LVL57:
	.loc 1 92 0 discriminator 2
		SFMULAS32.M2	R9, R50, R0, R0
		SNOP		5
.LVL58:
		SFMULAS32.M2	R11, R2, R0, R0
		SNOP		5
.LVL59:
	.loc 1 93 0 discriminator 2
		SFMULAS32.M2	R9, R0, R3, R3
		SNOP		5
.LVL60:
		SFMULAS32.M2	R11, R50, R3, R3
		SNOP		5
.LVL61:
	.loc 1 94 0 discriminator 2
		SFMULAS32.M2	R9, R3, R47, R47
		SNOP		5
		SFMULAS32.M2	R11, R0, R47, R47
		SNOP		5
.LVL62:
	.loc 1 95 0 discriminator 2
		SFMULAS32.M2	R9, R47, R46, R46
		SNOP		5
		SFMULAS32.M2	R11, R3, R46, R46
		SNOP		5
.LVL63:
	.loc 1 100 0 discriminator 2
	; ;APP 
;# 100 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R61, SVR0         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 101 0 discriminator 2
;# 101 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R10, SVR1         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 102 0 discriminator 2
;# 102 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R60, SVR2         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 103 0 discriminator 2
;# 103 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R58, SVR3         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 104 0 discriminator 2
;# 104 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R57, SVR4         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 105 0 discriminator 2
;# 105 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R56, SVR5         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 106 0 discriminator 2
;# 106 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R55, SVR6         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 107 0 discriminator 2
;# 107 "../DSPF_sp_biquad_vc.c" 1
	 SMVCGC    R54, SVR7         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 108 0 discriminator 2
;# 108 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R53, SVR8         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 109 0 discriminator 2
;# 109 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R59, SVR9         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 110 0 discriminator 2
;# 110 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R2, SVR10        
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 111 0 discriminator 2
;# 111 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R50, SVR11        
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 112 0 discriminator 2
;# 112 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R0, SVR12        
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 113 0 discriminator 2
;# 113 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R3, SVR13        
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 114 0 discriminator 2
;# 114 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R47, SVR14         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 115 0 discriminator 2
;# 115 "../DSPF_sp_biquad_vc.c" 1
	  SMVCGC    R46, SVR15        
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 117 0 discriminator 2
	; ;NO_APP 
		VMVCCG.L		SVR,VR14
		SNOP		1
	.loc 1 60 0 discriminator 2
		SEQ		R28, R22, R1
	|	VSTW.LS 		VR14,*AR0
	[R1]	SEQ		R43, R25, R1
	[!R1]	SBR		.L7
		SNOP		6
	;; condjump to .L7 occurs
.LVL64:
.L4:
	.loc 1 122 0
		SADD.M2		-2,R20,R20
.LVL65:
		SSHFAR		31, R20, R12
	|	SMOV.M2		R20, R44
		SMOV.M2		R12, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R42
		SSHFLL		2, R45, R43
		SOR		R43, R42, R43
		SSHFLL		2, R44, R42
		SADDA.M2		R43:R42,AR2,AR2
		SNOP		2
		VLDW.LS 		*AR2,VR15
		SNOP		7
.LVL66:
	.loc 1 123 0
		VMVCGC.L		VR15,SVR
		SNOP		2
	.loc 1 124 0
		SMVCCG.L		SVR0,R13
		SNOP		1
.LVL67:
	.loc 1 125 0
		SMVCCG.L		SVR1,R14
		SNOP		1
.LVL68:
	.loc 1 127 0
		SMOV.M2		R20, R44
	|	SMOV.M1		R12, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R15
		SSHFLL		2, R45, R16
.LVL69:
		SOR		R16, R15, R43
		SSHFLL		2, R44, R42
		SADDA.M2		R43:R42,AR1,AR0
		SNOP		2
		VLDW.LS 		*AR0,VR16
		SNOP		7
.LVL70:
	.loc 1 128 0
		VMVCGC.L		VR16,SVR
		SNOP		2
	.loc 1 129 0
		SMVCCG.L		SVR0,R17
		SNOP		1
.LVL71:
	.loc 1 130 0
		SMVCCG.L		SVR1,R44
		SNOP		1
	.loc 1 132 0
		SLDW		*+AR12[2], R48
	|	SMOVIL		-2147483648, R19
		SLDW		*+AR12[1], R18
	|	SMOVIH		-2147483648, R19
	.loc 1 8 0
		SLDW		*+AR10[2], R22
	|	SMOVIL		192, R6
		SLDW		*+AR10[1], R24
	|	SMOVIL		0, R7
.LVL72:
	.loc 1 134 0
		SADDA.M2		R7:R6,AR7,AR7
		SMVCGC.L		R63, BRReg
	.loc 1 132 0
		SFMULS32.M1		R48, R13, R21
		SNOP		1
	.loc 1 8 0
		SXOR		R19, R22, R23
		SXOR		R19, R24, R25
	|	SLDDW		*+AR15[1], R7:R6
	.loc 1 132 0
		SFMULAS32.M2	R18, R14, R21, R21
		SNOP		5
		SFMULAS32.M2	R23, R17, R21, R21
		SNOP		5
		SFMULAS32.M2	R25, R44, R21, R21
		SNOP		5
		SSTW		R21, *AR8
		SNOP		2
	.loc 1 133 0
		SLDW		*+AR10[2], R26
		SLDW		*+AR12[2], R27
		SNOP		4
		SFMULS32.M2		R44, R26, R28
		SNOP		3
	.loc 1 8 0
		SXOR		R19, R28, R29
	.loc 1 133 0
		SFMULAS32.M2	R27, R14, R29, R29
		SNOP		2
	.loc 1 134 0
		SBR		R62
		SNOP		2
	.loc 1 133 0
		SSTW		R29, *+AR8[1]
	|	SMVAGA36.M2		R7:R6, AR8
	|	SMOVIL		16, R6
	.loc 1 134 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE3:
	.size	DSPF_sp_biquad_vc, .-DSPF_sp_biquad_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x311
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x2ed
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x9
	.4byte	0x2fa
	.4byte	.LLST1
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0xa
	.4byte	0x300
	.4byte	.LLST2
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0xb
	.4byte	0x300
	.4byte	.LLST3
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0xc
	.4byte	0x300
	.4byte	.LLST4
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0xd
	.4byte	0x2fa
	.4byte	.LLST5
	.uleb128 0x5
	.string	"nx"
	.byte	0x1
	.byte	0xe
	.4byte	0x306
	.4byte	.LLST6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x10
	.4byte	0x300
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.4byte	0x300
	.4byte	.LLST8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.4byte	0x2ed
	.byte	0x2
	.byte	0x90
	.uleb128 0x65
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.4byte	0x2ed
	.byte	0x2
	.byte	0x90
	.uleb128 0x66
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.4byte	0x2ed
	.byte	0x2
	.byte	0x90
	.uleb128 0x67
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.4byte	0x2ed
	.byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x13
	.4byte	0x2ed
	.byte	0x2
	.byte	0x90
	.uleb128 0x70
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x14
	.4byte	0x30b
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.4byte	0x30b
	.byte	0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x14
	.4byte	0x30b
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x15
	.4byte	0x2fa
	.4byte	.LLST9
	.uleb128 0x9
	.string	"x0"
	.byte	0x1
	.byte	0x17
	.4byte	0x85
	.4byte	.LLST10
	.uleb128 0x9
	.string	"x1"
	.byte	0x1
	.byte	0x17
	.4byte	0x85
	.4byte	.LLST11
	.uleb128 0x9
	.string	"y0"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST12
	.uleb128 0x9
	.string	"y1"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST13
	.uleb128 0x9
	.string	"y2"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST14
	.uleb128 0x9
	.string	"y3"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST15
	.uleb128 0x9
	.string	"y4"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST16
	.uleb128 0x9
	.string	"y5"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST17
	.uleb128 0x9
	.string	"y6"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST18
	.uleb128 0x9
	.string	"y7"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST19
	.uleb128 0x9
	.string	"y8"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST20
	.uleb128 0x9
	.string	"y9"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST21
	.uleb128 0x9
	.string	"y10"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST22
	.uleb128 0x9
	.string	"y11"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST23
	.uleb128 0x9
	.string	"y12"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST24
	.uleb128 0x9
	.string	"y13"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST25
	.uleb128 0x9
	.string	"y14"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST26
	.uleb128 0x9
	.string	"y15"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST27
	.uleb128 0x9
	.string	"y_0"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST28
	.uleb128 0x9
	.string	"y_1"
	.byte	0x1
	.byte	0x18
	.4byte	0x85
	.4byte	.LLST29
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST30
	.uleb128 0x9
	.string	"j"
	.byte	0x1
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST31
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST32
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x85
	.4byte	0x2fa
	.uleb128 0xb
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x2ed
	.uleb128 0xc
	.byte	0x8
	.4byte	0x85
	.uleb128 0xd
	.4byte	0x62
	.uleb128 0xe
	.byte	0x1
	.4byte	0x85
	.uleb128 0xb
	.byte	0xf
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB3
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL6
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL11
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5a
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL13
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL14
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL65
	.llong	.LVL69
	.2byte	0x4
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x9f
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.uleb128 0x24
	.sleb128 2
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL1
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL1
	.llong	.LVL14
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x1
	.byte	0x50
	.llong	.LVL4
	.llong	.LVL14
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 8
	.byte	0x9f
	.llong	.LVL14
	.llong	.LFE3
	.2byte	0x3
	.byte	0x71
	.sleb128 8
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL7
	.llong	.LVL67
	.2byte	0x1
	.byte	0x69
	.llong	.LVL67
	.llong	.LFE3
	.2byte	0x1
	.byte	0x6d
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL8
	.llong	.LVL68
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL68
	.llong	.LFE3
	.2byte	0x1
	.byte	0x6e
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL16
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL33
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL71
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL17
	.llong	.LVL35
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL36
	.llong	.LVL64
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL72
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL18
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL39
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL19
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL41
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL20
	.llong	.LVL42
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.llong	.LVL43
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL21
	.llong	.LVL44
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL45
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL22
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.llong	.LVL47
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL23
	.llong	.LVL48
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.llong	.LVL49
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL24
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.llong	.LVL51
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL25
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL53
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL26
	.llong	.LVL54
	.2byte	0x1
	.byte	0x62
	.llong	.LVL55
	.llong	.LVL64
	.2byte	0x1
	.byte	0x62
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL27
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	.LVL57
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL28
	.llong	.LVL58
	.2byte	0x1
	.byte	0x60
	.llong	.LVL59
	.llong	.LVL64
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL29
	.llong	.LVL60
	.2byte	0x1
	.byte	0x63
	.llong	.LVL61
	.llong	.LVL64
	.2byte	0x1
	.byte	0x63
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL30
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL62
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL31
	.llong	.LVL63
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL10
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	.LVL63
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL12
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL63
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"/cygdrive/e/something/newtext/DSPF_sp_biquad/DSPF_sp_biquad/Debug"
.LASF24:
	.string	"temp_v_y"
.LASF26:
	.string	"../DSPF_sp_biquad_vc.c"
.LASF11:
	.string	"float"
.LASF13:
	.string	"delay"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"tempx"
.LASF15:
	.string	"tempy"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF12:
	.string	"double"
.LASF3:
	.string	"unsigned int"
.LASF28:
	.string	"DSPF_sp_biquad_vc"
.LASF0:
	.string	"long long unsigned int"
.LASF16:
	.string	"temp1"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"temp2"
.LASF10:
	.string	"char"
.LASF25:
	.string	"GNU C 4.7.0"
.LASF18:
	.string	"temp3"
.LASF21:
	.string	"temp4"
.LASF22:
	.string	"temp5"
.LASF6:
	.string	"short int"
.LASF23:
	.string	"temp6"
.LASF20:
	.string	"temp8"
.LASF19:
	.string	"temp7"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"signed char"

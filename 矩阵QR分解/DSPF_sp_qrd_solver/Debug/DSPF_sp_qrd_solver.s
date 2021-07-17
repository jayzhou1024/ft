	.file	"DSPF_sp_qrd_solver.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_qrd_solver7,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_solver7
	.type	DSPF_sp_qrd_solver7, @function
DSPF_sp_qrd_solver7:
.LFB0:
	.file 1 "../DSPF_sp_qrd_solver.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
		SMVAGA36.M1		R21:R20, AR6
	|	SMOVIL		-64, R52
	.loc 1 4 0
		SMOVIL		-1, R53
	|	SMVAGA36.M1		R17:R16, AR4
		SADDA.M1		R53:R52,AR6,AR0
	|	SMOVIL		-16, R6
	.loc 1 13 0
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 16
		SMVAAGL.M2		AR0, R53:R52
	|	SMOVIL		0, R42
	|	SMVAGA36.M1		R23:R22, AR1
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -4
		SMVAAGH.M2		AR0, R53:R52
	|	SMOVIH		0, R42
	.loc 1 33 0
		SVBCAST.M1 		 R42,VR3
	|	SMOVIL		0, R44
	.loc 1 4 0
		SMOV.M2		R52, R42
	|	SMOV.M1		R53, R43
		SNOP		2
.LVL1:
.L4:
	.loc 1 27 0
		SADD.M2		16,R44,R1
	|	SMOVIL		64, R46
.LVL2:
	.loc 1 28 0
		SLT		R10, R1, R2
	|	SADD.M2		R46,R42,R45
	[!R2]	SBR		.L2
	|	SLTU		R45, R42, R47
	|	SMOV.M2		R45, R42
		SADD.M2		R43,R47,R43
	.loc 1 4 0
		SMVAGA36.M1		R43:R42, AR0
		SNOP		4
	.loc 1 28 0
	;; condjump to .L2 occurs
	.loc 1 29 0
		SMOVIL		65535, R43
		SNEG		R12, R3
		SMOVIH		65535, R43
		SSHFAR		R3, R43, R8
	.loc 1 30 0
	; ;APP 
;# 30 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R8, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 33 0
	; ;NO_APP 
		SSHFLL		1, R44, R9
		SSHFAR		31, R44, R11
		SLTU		R9, R44, R13
		SSHFLL		1, R11, R16
.LVL3:
		SSHFLL		2, R44, R42
	|	SADD.M2		R16,R13,R17
		SMOVIL		0, R22
.LVL4:
		SLTU		R42, R9, R20
.LVL5:
		SSHFLL		1, R17, R21
		SMOVIH		0, R22
	|	SADD.M2		R21,R20,R43
		SVBCAST.M2 		 R22,VR0
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M1		R43:R42,AR6,AR0
	|	SMOVIL		65535, R23
	.loc 1 36 0
		SMOVIH		65535, R23
		SNOP		2
	.loc 1 33 0
		VSTW.LS 		VR0,*AR0
	.loc 1 36 0
	; ;APP 
;# 36 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R23, VLR         
	  SNOP      3              
	
;# 0 "" 2
.LVL6:
	.loc 1 4 0
	; ;NO_APP 
		SMOVIL		-64, R54
		SMOVIL		-1, R55
		SADDA.M2		R55:R54,AR1,OR0
	|	SMOVIL		0, R24
	.loc 1 50 0
		SMOVIH		0, R24
		SVBCAST.M1 		 R24,VR1
	|	SMOVIL		0, R30
		SMVAAGL.M1		OR0, R55:R54
		SNOP		1
		SMVAAGH.M1		OR0, R55:R54
		SNOP		1
	.loc 1 4 0
		SMOV.M2		R54, R42
	|	SMOV.M1		R55, R43
.LVL7:
.L7:
	.loc 1 44 0
		SADD.M2		16,R30,R29
	|	SMOVIL		64, R25
.LVL8:
	.loc 1 45 0
		SLT		R12, R29, R1
	|	SADD.M2		R25,R42,R26
	[!R1]	SBR		.L5
	|	SLTU		R26, R42, R28
	|	SMOV.M2		R26, R42
		SADD.M2		R43,R28,R43
	.loc 1 4 0
		SMVAGA36.M1		R43:R42, AR0
		SNOP		4
	.loc 1 45 0
	;; condjump to .L5 occurs
.LVL9:
	.loc 1 46 0
		SMOVIL		65535, R49
	|	SSUB.M2		R12, R29, R48
		SMOVIH		65535, R49
		SSHFAR		R48, R49, R50
	.loc 1 47 0
	; ;APP 
;# 47 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R50, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 50 0
	; ;NO_APP 
		SSHFLL		1, R30, R51
		SSHFAR		31, R30, R56
		SLTU		R51, R30, R57
		SSHFLL		1, R56, R58
		SSHFLL		2, R30, R42
	|	SADD.M2		R58,R57,R59
		SLTU		R42, R51, R60
		SSHFLL		1, R59, R61
		SADD.M2		R61,R60,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR1,AR0
	|	SMOVIL		0, R42
		SMOVIH		0, R42
		SVBCAST.M1 		 R42,VR2
		SNOP		3
		VSTW.LS 		VR2,*AR0
.LVL10:
.L6:
	.loc 1 53 0
		SMOVIL		65535, R46
		SMOVIH		65535, R46
	; ;APP 
;# 53 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R46, VLR         
	  SNOP      3              
	
;# 0 "" 2
.LVL11:
	.loc 1 4 0
	; ;NO_APP 
		SMVAGA36.M1		R15:R14, OR1
	|	SMOVIL		0, R45
	|	SADD.M2		-1,R10,R47
		SMOVIL		-64, R50
		SMOVIL		-1, R51
	.loc 1 60 0
		SLT		R45, R10, R0
	|	SADDA.M2		R51:R50,OR1,OR2
	.loc 1 4 0
		SSHFLL		1, R47, R3
	|[!R0]	SBR		.L13
		SSHFLL		2, R47, R8
		SLTU		R3, R47, R9
	|	SADD.M1		4,R8,R11
	|	SMVAAGL.M2		OR2, R51:R50
		SSHFLL		1, R10, R44
	|	SADD.M1		R11,R18,R16
		SSHFAR		31, R10, R43
	|	SMVAAGH.M2		OR2, R51:R50
		SLTU		R8, R3, R13
		SSHFLL		1, R9, R17
	;; condjump to .L13 occurs
		SLTU		R44, R10, R20
	|	SADD.M2		R17,R13,R21
		SSHFLL		1, R43, R22
		SLTU		R11, R8, R23
	|	SADD.M2		R22,R20,R24
		SSHFLL		2, R10, R25
	|	SADD.M2		R21,R23,R26
		SADD.M2		R26,R19,R27
	|	SLTU		R25, R44, R28
		SSHFLL		1, R24, R14
.LVL12:
		SLTU		R16, R18, R15
	|	SADD.M2		R14,R28,R29
		SMOVIL		0, R1
	|	SADD.M2		R27,R15,R30
	.loc 1 71 0
		SMOVIL		65535, R59
		SLT		R1, R12, R2
		SMOVIH		65535, R59
.LVL13:
.L12:
	.loc 1 63 0
		SMVAGA36.M1		R19:R18, AR0
		SNOP		1
		VLDW.LS 		*AR0,VR4
		SNOP		7
		VMVCGC.L		VR4,SVR
		SNOP		2
	.loc 1 64 0
		SMVCCG.L		SVR0,R48
		SNOP		1
.LVL14:
	.loc 1 67 0
	[!R2]	SBR		.L16
	|	SVBCAST.M2 		 R48,VR6
	|	SMOV.M1		R52, R44
	|	SMOVIL		0, R46
.LVL15:
		SMOV.M2		R53, R45
	|	SMOV.M1		R50, R42
		SMOV.M2		R51, R43
		SNOP		4
	;; condjump to .L16 occurs
.LVL16:
.L11:
	.loc 1 69 0
		SADD.M2		16,R46,R46
	|	SMOVIL		64, R49
.LVL17:
	.loc 1 70 0
		SLT		R12, R46, R0
	|	SADD.M2		R49,R42,R60
	|	SADD.M1		R49,R44,R61
	[!R0]	SBR		.L14
	|	SLTU		R60, R42, R58
		SLTU		R61, R44, R56
	.loc 1 67 0
		SLT		R46, R12, R1
		SNOP		4
	.loc 1 70 0
	;; condjump to .L14 occurs
.LVL18:
	.loc 1 4 0
		SSUB.M2		R12, R46, R3
	.loc 1 71 0
		SSHFAR		R3, R59, R8
	.loc 1 72 0
	; ;APP 
;# 72 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R8, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 4 0
	; ;NO_APP 
		SMOVIL		64, R9
		SADD.M2		R9,R44,R48
	|	SADD.M1		R9,R42,R46
.LVL19:
		SLTU		R48, R44, R44
		SLTU		R46, R42, R42
	|	SADD.M2		R45,R44,R49
		SADD.M2		R43,R42,R47
	|	SMVAGA36.M1		R49:R48, AR0
		SMVAGA36.M1		R47:R46, AR2
	.loc 1 75 0
		VLDW.LS 		*AR0,VR8
		VLDW.LS 		*AR2,VR9
		SNOP		7
		VFMULAS32.M3	VR6,VR9,VR8,VR8
		SNOP		5
		VSTW.LS 		VR8,*AR0
.LVL20:
.L16:
	.loc 1 80 0
	; ;APP 
;# 80 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R59, VLR         
	  SNOP      3              
	
;# 0 "" 2
	; ;NO_APP 
		SADD.M2		4,R18,R13
	|	SADD.M1		R50,R25,R17
		SLTU		R13, R18, R43
	|	SADD.M2		R51,R29,R51
	|	SMOV.M1		R13, R18
		SADD.M2		R19,R43,R19
	|	SEQ		R13, R16, R0
	.loc 1 60 0
	[R0]	SEQ		R19, R30, R0
	[!R0]	SBR		.L12
	|	SLTU		R17, R50, R20
	|	SMOV.M2		R17, R50
		SADD.M2		R51,R20,R51
		SNOP		5
	;; condjump to .L12 occurs
.LVL21:
.L13:
		SMIN		R12, R10, R10
	|	SMVAAGL.M1		AR1, R47:R46
	|	SMVAAGL.M2		AR6, R45:R44
.LVL22:
	.loc 1 4 0
		SMOVIL		0, R52
	.loc 1 89 0
		SADD.M1		-1,R10,R61
	|	SMOVIL		0, R18
	|	SMVAAGH.M2		AR1, R47:R46
.LVL23:
	.loc 1 4 0
		SMULIS.M2		R61,R12,R60
	|	SNEG		R61, R16
	|	SMVAAGH.M1		AR6, R45:R44
		SLTU		R52, R16, R21
		SSHFLL		1, R16, R28
		SADD.M2		-16,R60,R22
	|	SSHFAR		31, R60, R11
		SLTU		R22, R60, R53
	|	SADD.M2		-1,R11,R50
		SSHFLL		1, R22, R23
	|	SADD.M2		R50,R53,R24
		SLTU		R23, R22, R25
		SSHFLL		1, R24, R26
		SSHFLL		2, R22, R42
	|	SADD.M2		R26,R25,R27
		SLTU		R42, R23, R30
		SSHFLL		1, R27, R49
		SNEG		R21, R15
	|	SADD.M2		R49,R30,R43
	.loc 1 89 0
		SLT		R61, R18, R2
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M2		R43:R42,AR4,OR3
	.loc 1 4 0
		SSHFLL		2, R61, R1
	|[R2]	SBR		.L10
		SLTU		R28, R16, R59
		SSHFLL		1, R61, R29
	|	SMVAAGL.M2		OR3, R53:R52
		SSHFLL		1, R15, R48
	|	SADD.M1		R46,R1,R15
		SSHFAR		31, R61, R10
	|	SADD.M1		R48,R59,R58
	|	SMVAAGH.M2		OR3, R53:R52
.LVL24:
		SNEG		R12, R14
		SSHFLL		2, R16, R8
	|	SADD.M2		R1,R44,R16
	;; condjump to .L10 occurs
		SLTU		R29, R61, R57
	|	SADD.M2		-4,R8,R17
		SSHFLL		1, R10, R56
	.loc 1 92 0
		SMOVIL		0, R46
	|	SADD.M2		R56,R57,R3
	.loc 1 4 0
		SSHFLL		1, R14, R9
		SSHFLL		1, R58, R51
		SSHFAR		31, R14, R19
	.loc 1 92 0
		SMOVIH		0, R46
	.loc 1 4 0
		SLTU		R8, R28, R43
	|	SVBCAST.M2 		 R46,VR10
		SADD.M1		R51,R43,R18
	|	SLTU		R9, R14, R13
		SSHFLL		1, R3, R2
	|	SADD.M2		-1,R18,R21
		SSHFLL		1, R19, R42
		SLTU		R1, R29, R0
	|	SADD.M2		R42,R13,R20
		SADD.M2		R2,R0,R22
	|	SSHFLL		2, R14, R18
		SADD.M2		R47,R22,R24
	|	SLTU		R18, R9, R50
	|	SADD.M1		R22,R45,R45
		SSHFLL		1, R20, R47
		SLTU		R17, R8, R23
	|	SADD.M2		R47,R50,R22
		SLTU		R16, R44, R44
	|	SADD.M2		R21,R23,R23
		SLTU		R15, R1, R25
	|	SADD.M2		R45,R44,R21
		SMOVIL		0, R26
	|	SADD.M2		R24,R25,R20
	.loc 1 97 0
		SMOVIL		65535, R59
	.loc 1 135 0
		SMOVIL		1073741824, R13
	.loc 1 4 0
		SMOVIL		0, R50
		SMOVIL		0, R51
		SLT		R26, R12, R2
	.loc 1 97 0
		SMOVIH		65535, R59
	.loc 1 135 0
		SMOVIH		1073741824, R13
.LVL25:
.L21:
	.loc 1 93 0
	[!R2]	SBR		.L17
	|	VMOV		VR10,	VR11
	|	SMOV.M2		R54, R42
	|	SMOV.M1		R55, R43
	|	SMOVIL		0, R58
.LVL26:
		SMOV.M2		R52, R44
	|	SMOV.M1		R53, R45
		SNOP		5
	;; condjump to .L17 occurs
.LVL27:
.L20:
	.loc 1 95 0
		SADD.M2		16,R58,R58
	|	SMOVIL		64, R27
.LVL28:
	.loc 1 96 0
		SLT		R12, R58, R0
	|	SADD.M2		R27,R44,R28
	|	SADD.M1		R27,R42,R29
	[!R0]	SBR		.L18
	|	SLTU		R28, R44, R30
		SLTU		R29, R42, R57
	.loc 1 93 0
		SLT		R58, R12, R1
		SNOP		4
	.loc 1 96 0
	;; condjump to .L18 occurs
.LVL29:
	.loc 1 4 0
		SSUB.M2		R12, R58, R56
	.loc 1 97 0
		SSHFAR		R56, R59, R3
	.loc 1 98 0
	; ;APP 
;# 98 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R3, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 4 0
	; ;NO_APP 
		SMOVIL		64, R8
		SADD.M2		R8,R44,R48
	|	SADD.M1		R8,R42,R46
		SLTU		R48, R44, R9
		SLTU		R46, R42, R42
	|	SADD.M2		R45,R9,R49
		SADD.M2		R43,R42,R47
	|	SMVAGA36.M1		R49:R48, AR2
		SMVAGA36.M1		R47:R46, AR0
	.loc 1 101 0
		VLDW.LS 		*AR2,VR14
		VLDW.LS 		*AR0,VR15
		SNOP		7
		VFMULAS32.M3	VR14,VR15,VR11,VR11
		SNOP		5
.LVL30:
.L17:
	.loc 1 106 0
	; ;APP 
;# 106 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R59, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 109 0
	; ;NO_APP 
		VMVCGC.L		VR11,SVR
		SNOP		2
	.loc 1 110 0
		SMVCCG.L		SVR0,R29
		SNOP		1
	.loc 1 111 0
		SMVCCG.L		SVR1,R44
		SNOP		1
	.loc 1 112 0
		SMVCCG.L		SVR2,R0
		SNOP		1
	.loc 1 113 0
		SMVCCG.L		SVR3,R9
		SNOP		1
	.loc 1 114 0
		SMVCCG.L		SVR4,R8
		SNOP		1
	.loc 1 115 0
		SMVCCG.L		SVR5,R3
		SNOP		1
	.loc 1 116 0
		SMVCCG.L		SVR6,R28
		SNOP		1
	.loc 1 117 0
		SMVCCG.L		SVR7,R27
		SNOP		1
	.loc 1 118 0
		SMVCCG.L		SVR8,R26
		SNOP		1
	.loc 1 119 0
		SMVCCG.L		SVR9,R25
		SNOP		1
	.loc 1 120 0
		SMVCCG.L		SVR10,R24
		SNOP		1
	.loc 1 121 0
		SMVCCG.L		SVR11,R58
		SNOP		1
	.loc 1 122 0
		SMVCCG.L		SVR12,R57
		SNOP		1
	.loc 1 123 0
		SMVCCG.L		SVR13,R56
		SNOP		1
	.loc 1 124 0
		SMVCCG.L		SVR14,R49
		SNOP		1
	.loc 1 125 0
		SMVCCG.L		SVR15,R48
		SNOP		1
.LVL31:
	.loc 1 4 0
		SADD.M2		R50,R16,R42
	|	SADD.M1		R51,R21,R47
		SLTU		R42, R50, R46
		SADD.M2		R47,R46,R43
		SMVAGA36.M1		R43:R42, AR0
		SNOP		1
	.loc 1 130 0
		VLDW.LS 		*AR0,VR16
		SNOP		7
		VMVCGC.L		VR16,SVR
		SNOP		2
	.loc 1 131 0
		SMVCCG.L		SVR0,R47
		SNOP		1
.LVL32:
	.loc 1 132 0
		SADD.M2		R61,R60,R45
	|	SADD.M1		R10,R11,R30
		SLTU		R45, R60, R1
		SSHFLL		1, R45, R46
	|	SADD.M2		R30,R1,R42
		SSHFLL		1, R42, R1
		SLTU		R46, R45, R30
		SSHFLL		2, R45, R42
	|	SADD.M2		R1,R30,R45
		SLTU		R42, R46, R46
		SSHFLL		1, R45, R43
		SADD.M2		R43,R46,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR4,AR0
		SNOP		2
		VLDW.LS 		*AR0,VR17
		SNOP		7
		VMVCGC.L		VR17,SVR
		SNOP		2
	.loc 1 133 0
		SMVCCG.L		SVR0,R30
		SNOP		1
.LVL33:
	.loc 1 4 0
		SADD.M2		R50,R15,R42
	|	SADD.M1		R51,R20,R45
		SLTU		R42, R50, R1
		SADD.M2		R45,R1,R43
		SMVAGA36.M1		R43:R42, AR0
		SNOP		1
	.loc 1 138 0
		VLDW.LS 		*AR0,VR18
		SNOP		7
		VMVCGC.L		VR18,SVR
		SNOP		2
	.loc 1 127 0
		SFADDS32.M2		R29, R44, R29
	|	SFRCPS32.M1		R30, R44
.LVL34:
	.loc 1 135 0
		SFMULS32.M1		R30, R44, R42
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R29, R0, R0
		SNOP		1
	.loc 1 135 0
		SFSUBS32.M1		R42, R13, R46
	.loc 1 127 0
		SFADDS32.M1		R0, R9, R9
		SNOP		1
	.loc 1 135 0
		SFMULS32.M1		R44, R46, R43
	.loc 1 127 0
		SFADDS32.M2		R9, R8, R8
		SNOP		2
		SFADDS32.M1		R8, R3, R3
	|	SFMULS32.M2		R30, R43, R30
	.loc 1 135 0
		SNOP		2
.LVL35:
	.loc 1 127 0
		SFADDS32.M1		R3, R28, R28
	.loc 1 135 0
		SFSUBS32.M1		R30, R13, R1
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R28, R27, R27
	.loc 1 135 0
		SFMULS32.M1		R43, R1, R29
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R27, R26, R26
		SNOP		2
	.loc 1 128 0
		SFADDS32.M2		R26, R25, R25
		SNOP		2
		SFADDS32.M2		R25, R24, R24
		SNOP		2
		SFADDS32.M2		R24, R58, R58
		SNOP		2
		SFADDS32.M2		R58, R57, R57
		SNOP		2
		SFADDS32.M2		R57, R56, R56
		SNOP		2
		SFADDS32.M2		R56, R49, R49
		SNOP		2
	.loc 1 127 0
		SFADDS32.M2		R49, R48, R48
		SNOP		2
	.loc 1 135 0
		SFSUBS32.M2		R48, R47, R47
		SNOP		2
.LVL36:
		SFMULS32.M2		R47, R29, R45
		SNOP		3
	.loc 1 139 0
	; ;APP 
;# 139 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC    R45, SVR0         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 140 0
	; ;NO_APP 
		VMVCCG.L		SVR,VR19
		SNOP		1
		SADD.M2		-4,R50,R44
	|	SADD.M1		-1,R51,R51
	|	VSTW.LS 		VR19,*AR0
		SLTU		R44, R50, R42
	|	SADD.M2		R52,R18,R9
	|	SADD.M1		R14,R60,R43
		SADD.M2		R51,R42,R51
	|	SEQ		R44, R17, R0
	|	SADD.M1		-1,R61,R8
	.loc 1 89 0
	[R0]	SEQ		R51, R23, R0
	|	SADD.M2		R53,R22,R53
	|	SADD.M1		R19,R11,R11
	[!R0]	SBR		.L21
	|	SMOV.M2		R44, R50
	|	SLTU		R9, R52, R46
	|	SMOV.M1		R9, R52
		SADD.M2		R53,R46,R53
	|	SLTU		R43, R60, R3
	|	SMOV.M1		R43, R60
		SADD.M2		R11,R3,R11
	|	SLTU		R8, R61, R30
	|	SMOV.M1		R8, R61
		SADD.M2		-1,R10,R10
		SADD.M2		R10,R30,R10
		SNOP		2
	;; condjump to .L21 occurs
.LVL37:
.L10:
	.loc 1 143 0
		SLDW		*+AR15[3], R30
	|	SMOVIL		16, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		0, R10
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL38:
.L18:
		SMOV.M2		R28, R44
	|	SMOV.M1		R29, R42
		SADD.M2		R45,R30,R45
	|	SADD.M1		R43,R57,R43
	.loc 1 4 0
		SMVAGA36.M1		R45:R44, AR2
		SMVAGA36.M1		R43:R42, AR0
	.loc 1 101 0
		VLDW.LS 		*AR2,VR12
		VLDW.LS 		*AR0,VR13
		SNOP		6
	.loc 1 93 0
	[R1]	SBR		.L20
	.loc 1 101 0
		VFMULAS32.M3	VR12,VR13,VR11,VR11
		SNOP		5
.LVL39:
	.loc 1 93 0
	;; condjump to .L20 occurs
	.loc 1 106 0
	; ;APP 
;# 106 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R59, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 109 0
	; ;NO_APP 
		VMVCGC.L		VR11,SVR
		SNOP		2
	.loc 1 110 0
		SMVCCG.L		SVR0,R29
		SNOP		1
	.loc 1 111 0
		SMVCCG.L		SVR1,R44
		SNOP		1
	.loc 1 112 0
		SMVCCG.L		SVR2,R0
		SNOP		1
	.loc 1 113 0
		SMVCCG.L		SVR3,R9
		SNOP		1
	.loc 1 114 0
		SMVCCG.L		SVR4,R8
		SNOP		1
	.loc 1 115 0
		SMVCCG.L		SVR5,R3
		SNOP		1
	.loc 1 116 0
		SMVCCG.L		SVR6,R28
		SNOP		1
	.loc 1 117 0
		SMVCCG.L		SVR7,R27
		SNOP		1
	.loc 1 118 0
		SMVCCG.L		SVR8,R26
		SNOP		1
	.loc 1 119 0
		SMVCCG.L		SVR9,R25
		SNOP		1
	.loc 1 120 0
		SMVCCG.L		SVR10,R24
		SNOP		1
	.loc 1 121 0
		SMVCCG.L		SVR11,R58
		SNOP		1
	.loc 1 122 0
		SMVCCG.L		SVR12,R57
		SNOP		1
	.loc 1 123 0
		SMVCCG.L		SVR13,R56
		SNOP		1
	.loc 1 124 0
		SMVCCG.L		SVR14,R49
		SNOP		1
	.loc 1 125 0
		SMVCCG.L		SVR15,R48
		SNOP		1
.LVL40:
	.loc 1 4 0
		SADD.M2		R50,R16,R42
	|	SADD.M1		R51,R21,R47
		SLTU		R42, R50, R46
		SADD.M2		R47,R46,R43
		SMVAGA36.M1		R43:R42, AR0
		SNOP		1
	.loc 1 130 0
		VLDW.LS 		*AR0,VR16
		SNOP		7
		VMVCGC.L		VR16,SVR
		SNOP		2
	.loc 1 131 0
		SMVCCG.L		SVR0,R47
		SNOP		1
.LVL41:
	.loc 1 132 0
		SADD.M2		R61,R60,R45
	|	SADD.M1		R10,R11,R30
		SLTU		R45, R60, R1
		SSHFLL		1, R45, R46
	|	SADD.M2		R30,R1,R42
		SSHFLL		1, R42, R1
		SLTU		R46, R45, R30
		SSHFLL		2, R45, R42
	|	SADD.M2		R1,R30,R45
		SLTU		R42, R46, R46
		SSHFLL		1, R45, R43
		SADD.M2		R43,R46,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR4,AR0
		SNOP		2
		VLDW.LS 		*AR0,VR17
		SNOP		7
		VMVCGC.L		VR17,SVR
		SNOP		2
	.loc 1 133 0
		SMVCCG.L		SVR0,R30
		SNOP		1
.LVL42:
	.loc 1 4 0
		SADD.M2		R50,R15,R42
	|	SADD.M1		R51,R20,R45
		SLTU		R42, R50, R1
		SADD.M2		R45,R1,R43
		SMVAGA36.M1		R43:R42, AR0
		SNOP		1
	.loc 1 138 0
		VLDW.LS 		*AR0,VR18
		SNOP		7
		VMVCGC.L		VR18,SVR
		SNOP		2
	.loc 1 127 0
		SFADDS32.M2		R29, R44, R29
	|	SFRCPS32.M1		R30, R44
.LVL43:
	.loc 1 135 0
		SFMULS32.M1		R30, R44, R42
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R29, R0, R0
		SNOP		1
	.loc 1 135 0
		SFSUBS32.M1		R42, R13, R46
	.loc 1 127 0
		SFADDS32.M1		R0, R9, R9
		SNOP		1
	.loc 1 135 0
		SFMULS32.M1		R44, R46, R43
	.loc 1 127 0
		SFADDS32.M2		R9, R8, R8
		SNOP		2
		SFADDS32.M1		R8, R3, R3
	|	SFMULS32.M2		R30, R43, R30
	.loc 1 135 0
		SNOP		2
.LVL44:
	.loc 1 127 0
		SFADDS32.M1		R3, R28, R28
	.loc 1 135 0
		SFSUBS32.M1		R30, R13, R1
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R28, R27, R27
	.loc 1 135 0
		SFMULS32.M1		R43, R1, R29
		SNOP		1
	.loc 1 127 0
		SFADDS32.M1		R27, R26, R26
		SNOP		2
	.loc 1 128 0
		SFADDS32.M2		R26, R25, R25
		SNOP		2
		SFADDS32.M2		R25, R24, R24
		SNOP		2
		SFADDS32.M2		R24, R58, R58
		SNOP		2
		SFADDS32.M2		R58, R57, R57
		SNOP		2
		SFADDS32.M2		R57, R56, R56
		SNOP		2
		SFADDS32.M2		R56, R49, R49
		SNOP		2
	.loc 1 127 0
		SFADDS32.M2		R49, R48, R48
		SNOP		2
	.loc 1 135 0
		SFSUBS32.M2		R48, R47, R47
		SNOP		2
.LVL45:
		SFMULS32.M2		R47, R29, R45
		SNOP		3
	.loc 1 139 0
	; ;APP 
;# 139 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC    R45, SVR0         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 140 0
	; ;NO_APP 
		VMVCCG.L		SVR,VR19
		SNOP		1
		SADD.M2		-4,R50,R44
	|	SADD.M1		-1,R51,R51
	|	VSTW.LS 		VR19,*AR0
		SLTU		R44, R50, R42
	|	SADD.M2		R52,R18,R9
	|	SADD.M1		R14,R60,R43
		SADD.M2		R51,R42,R51
	|	SEQ		R44, R17, R0
	|	SADD.M1		-1,R61,R8
	.loc 1 89 0
	[R0]	SEQ		R51, R23, R0
	|	SADD.M2		R53,R22,R53
	|	SADD.M1		R19,R11,R11
	[!R0]	SBR		.L21
	|	SMOV.M2		R44, R50
	|	SLTU		R9, R52, R46
	|	SMOV.M1		R9, R52
		SADD.M2		R53,R46,R53
	|	SLTU		R43, R60, R3
	|	SMOV.M1		R43, R60
		SADD.M2		R11,R3,R11
	|	SLTU		R8, R61, R30
	|	SMOV.M1		R8, R61
		SADD.M2		-1,R10,R10
		SADD.M2		R10,R30,R10
		SNOP		2
	;; condjump to .L21 occurs
		SBR		.L10
		SNOP		6
	;; jump to .L10 occurs
.LVL46:
.L14:
		SMOV.M2		R60, R42
	|	SMOV.M1		R61, R44
		SADD.M2		R43,R58,R43
	|	SADD.M1		R45,R56,R45
	.loc 1 4 0
		SMVAGA36.M1		R45:R44, AR0
		SMVAGA36.M1		R43:R42, AR2
	.loc 1 75 0
		VLDW.LS 		*AR0,VR7
		VLDW.LS 		*AR2,VR5
		SNOP		7
	.loc 1 67 0
	[R1]	SBR		.L11
	|	VFMULAS32.M3	VR6,VR5,VR7,VR7
	.loc 1 75 0
		SNOP		5
		VSTW.LS 		VR7,*AR0
	;; condjump to .L11 occurs
	.loc 1 80 0
	; ;APP 
;# 80 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R59, VLR         
	  SNOP      3              
	
;# 0 "" 2
	; ;NO_APP 
		SADD.M2		4,R18,R13
	|	SADD.M1		R50,R25,R17
		SLTU		R13, R18, R43
	|	SADD.M2		R51,R29,R51
	|	SMOV.M1		R13, R18
		SADD.M2		R19,R43,R19
	|	SEQ		R13, R16, R0
	.loc 1 60 0
	[R0]	SEQ		R19, R30, R0
	[!R0]	SBR		.L12
	|	SLTU		R17, R50, R20
	|	SMOV.M2		R17, R50
		SADD.M2		R51,R20,R51
		SNOP		5
	;; condjump to .L12 occurs
		SBR		.L13
		SNOP		6
	;; jump to .L13 occurs
.LVL47:
.L5:
	.loc 1 52 0
		SLT		R29, R12, R2
	|	SMOV.M2		R29, R30
	|	VSTW.LS 		VR1,*AR0
.LVL48:
	[R2]	SBR		.L7
		SNOP		6
	;; condjump to .L7 occurs
		SBR		.L6
		SNOP		6
	;; jump to .L6 occurs
.LVL49:
.L2:
	.loc 1 35 0
		SLT		R1, R10, R0
	|	SMOV.M2		R1, R44
	|	VSTW.LS 		VR3,*AR0
.LVL50:
	[R0]	SBR		.L4
		SNOP		6
	;; condjump to .L4 occurs
	.loc 1 36 0
		SMOVIL		65535, R23
		SMOVIH		65535, R23
	; ;APP 
;# 36 "../DSPF_sp_qrd_solver.c" 1
	  SMVCGC   R23, VLR         
	  SNOP      3              
	
;# 0 "" 2
.LVL51:
	.loc 1 4 0
	; ;NO_APP 
		SMOVIL		-64, R54
		SMOVIL		-1, R55
		SADDA.M2		R55:R54,AR1,OR0
	|	SMOVIL		0, R24
		SBR		.L7
	|	SMOVIH		0, R24
	.loc 1 50 0
		SVBCAST.M1 		 R24,VR1
	|	SMOVIL		0, R30
		SMVAAGL.M1		OR0, R55:R54
		SNOP		1
		SMVAAGH.M1		OR0, R55:R54
		SNOP		1
	.loc 1 4 0
		SMOV.M2		R54, R42
	|	SMOV.M1		R55, R43
	;; jump to .L7 occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_qrd_solver7, .-DSPF_sp_qrd_solver7
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x1
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0x15b
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x15b
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5
	.4byte	0x162
	.byte	0x1
	.byte	0x6a
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6
	.4byte	0x162
	.byte	0x1
	.byte	0x6c
	.uleb128 0x5
	.string	"Q"
	.byte	0x1
	.byte	0x7
	.4byte	0x174
	.4byte	.LLST1
	.uleb128 0x5
	.string	"R"
	.byte	0x1
	.byte	0x8
	.4byte	0x174
	.4byte	.LLST2
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x9
	.4byte	0x174
	.4byte	.LLST3
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0xa
	.4byte	0x174
	.4byte	.LLST4
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x174
	.4byte	.LLST5
	.uleb128 0x6
	.string	"row"
	.byte	0x1
	.byte	0xe
	.4byte	0x15b
	.4byte	.LLST6
	.uleb128 0x6
	.string	"col"
	.byte	0x1
	.byte	0xe
	.4byte	0x15b
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0xe
	.4byte	0x15b
	.4byte	.LLST8
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0xe
	.4byte	0x15b
	.4byte	.LLST9
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0xf
	.4byte	0x31
	.4byte	.LLST10
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x10
	.4byte	0x31
	.4byte	.LLST11
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x10
	.4byte	0x31
	.4byte	.LLST12
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x10
	.4byte	0x31
	.4byte	.LLST13
	.uleb128 0x8
	.string	"buf"
	.byte	0x1
	.byte	0x11
	.4byte	0x17a
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x12
	.4byte	0x15b
	.4byte	.LLST14
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x14
	.4byte	0x167
	.4byte	.LLST15
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.4byte	0x15b
	.uleb128 0xb
	.byte	0x1
	.4byte	0x31
	.4byte	0x174
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.4byte	0x167
	.uleb128 0xe
	.4byte	0x31
	.4byte	0x18a
	.uleb128 0xf
	.4byte	0x18a
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
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
	.uleb128 0xa
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB0
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL12
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL12
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.llong	.LVL47
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL13
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13
	.llong	.LVL47
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	.LVL47
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL1
	.llong	.LVL2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	.LVL2
	.llong	.LVL11
	.2byte	0x1
	.byte	0x61
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL47
	.llong	.LFE0
	.2byte	0x1
	.byte	0x61
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL8
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL38
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL47
	.llong	.LVL49
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL51
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL1
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x4
	.byte	0x92
	.uleb128 0x2d
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3e
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x4
	.byte	0x92
	.uleb128 0x4a
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL38
	.llong	.LVL46
	.2byte	0x4
	.byte	0x92
	.uleb128 0x4a
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3e
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL48
	.llong	.LVL49
	.2byte	0x4
	.byte	0x92
	.uleb128 0x2d
	.sleb128 -16
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	.LVL50
	.llong	.LFE0
	.2byte	0x3
	.byte	0x81
	.sleb128 -16
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL22
	.llong	.LVL24
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL24
	.llong	.LVL25
	.2byte	0x4
	.byte	0x92
	.uleb128 0x4d
	.sleb128 1
	.byte	0x9f
	.llong	.LVL25
	.llong	.LVL46
	.2byte	0x14
	.byte	0x8c
	.sleb128 0
	.byte	0x12
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8a
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL31
	.llong	.LVL34
	.2byte	0x40
	.byte	0xf5
	.uleb128 0x2d
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2b
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x29
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x48
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x31
	.byte	0x22
	.byte	0x9f
	.llong	.LVL40
	.llong	.LVL43
	.2byte	0x40
	.byte	0xf5
	.uleb128 0x2d
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2b
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x29
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x48
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x31
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL14
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x48
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x2d
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2b
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x29
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x48
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x31
	.byte	0x22
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x2e
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x48
	.byte	0xf5
	.uleb128 0x3f
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x2d
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x3c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x10
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2c
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2b
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x2a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x29
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x4a
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x48
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x22
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x31
	.byte	0x22
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x2e
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL32
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	.LVL41
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL33
	.llong	.LVL35
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL42
	.llong	.LVL44
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0xb
	.byte	0xa
	.2byte	0xffff
	.byte	0x92
	.uleb128 0x2d
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	.LVL18
	.llong	.LVL20
	.2byte	0xb
	.byte	0xa
	.2byte	0xffff
	.byte	0x92
	.uleb128 0x3e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0xb
	.byte	0xa
	.2byte	0xffff
	.byte	0x92
	.uleb128 0x4a
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL15
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL26
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	.LVL38
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"temp"
.LASF5:
	.string	"temp_y"
.LASF1:
	.string	"Ncols"
.LASF11:
	.string	"GNU C 4.7.0"
.LASF8:
	.string	"vft1"
.LASF0:
	.string	"Nrows"
.LASF13:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver/Debug"
.LASF2:
	.string	"cur_index"
.LASF14:
	.string	"DSPF_sp_qrd_solver7"
.LASF7:
	.string	"close"
.LASF12:
	.string	"../DSPF_sp_qrd_solver.c"
.LASF3:
	.string	"loop_cnt"
.LASF9:
	.string	"float"
.LASF10:
	.string	"sizetype"
.LASF6:
	.string	"temp_r"

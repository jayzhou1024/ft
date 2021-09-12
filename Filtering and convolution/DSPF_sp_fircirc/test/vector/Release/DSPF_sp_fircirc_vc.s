	.file	"DSPF_sp_fircirc_vc.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fircirc_vc4,"ax",@progbits
	.align	2
	.global	DSPF_sp_fircirc_vc4
	.type	DSPF_sp_fircirc_vc4, @function
DSPF_sp_fircirc_vc4:
.LFB3:
	.file 1 "../DSPF_sp_fircirc_vc.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
		SMOVIL		256, R6
	|	SMVAGA36.M1		R11:R10, AR1
	|	SADD.M2		-1,R18,R3
.LVL1:
		SMOVIL		0, R7
	|	SMVAGA36.M1		R15:R14, AR0
		SSUBA.L		R7:R6, AR7, AR7
.LVL2:
	.loc 1 36 0
		SMOVIL		128, R10
	|	SMVAGA36.M1		R13:R12, OR0
.LVL3:
.LBB2:
	.loc 1 10 0
		SNOP		1
.LBE2:
	.loc 1 36 0
		SMOVIL		0, R11
	|	SADDA.M2		4,OR0,OR1
		SADDA.M1		R11:R10,AR7,AR2
	|	SMOVIL		1, R0
		SMOVIL		64, R14
.LVL4:
		SMOVIL		0, R15
	|	SMVAAGL.M1		OR1, R57:R56
	.loc 1 59 0
		SMOVIL		2, R11
	|	SADDA.M1		R15:R14,AR2,AR4
	.loc 1 41 0
		SEQ		R0, R18, R1
	|	SMVAAGH.M2		OR1, R57:R56
	.loc 1 59 0
		SEQ		R11, R18, R42
	.loc 1 87 0
		SMOVIL		3, R9
	|	SMOV.M2		R42, R0
	.loc 1 124 0
		SMOVIL		4, R15
		SEQ		R15, R18, R2
	.loc 1 36 0
		SMOVIL		0, R10
		SMOVIH		0, R10
		SVBCAST.M2 		 R10,VR8
	|	SMOVIL		-88, R6
	.loc 1 18 0
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 88
	.loc 1 150 0
		SMOVIL		4, R17
	.cfi_offset 56, -8
	.cfi_offset 57, -4
	.loc 1 38 0
		SMOVIL		1, R14
	|	SSTDW		R41:R40, *+AR15[10]
	.loc 1 18 0
		SSTDW		R39:R38, *+AR15[9]
	.loc 1 38 0
		SSHFLL		R3, R14, R8
	.cfi_offset 54, -16
	.cfi_offset 55, -12
	.loc 1 39 0
		SADD.M2		-1,R8,R19
	|	SMOVIL		16, R23
	.cfi_offset 52, -24
	.cfi_offset 53, -20
	.loc 1 41 0
	[R1]	SBR		.L59
	|	SSTDW		R37:R36, *+AR15[8]
	.loc 1 18 0
		SSTDW		R35:R34, *+AR15[7]
	.loc 1 87 0
		SEQ		R9, R18, R1
.LBB3:
	.loc 1 173 0
		SMOVIL		128, R54
.LBE3:
	.loc 1 18 0
		SSTDW		R33:R32, *+AR15[6]
		SSTDW		R31:R30, *+AR15[5]
	.cfi_offset 50, -32
	.cfi_offset 51, -28
	.cfi_offset 48, -40
	.cfi_offset 49, -36
	.cfi_offset 46, -48
	.cfi_offset 47, -44
	.loc 1 36 0
		VSTW.LS 		VR8,*AR4
	|	SMOVIL		0, R55
	;; condjump to .L59 occurs
.LVL5:
	.loc 1 59 0
	[R0]	SBR		.L60
	|	SLT		R17, R18, R0
.LBB4:
	.loc 1 153 0
		SMOVIL		0, R18
		SNOP		5
.LVL6:
.LBE4:
	.loc 1 59 0
	;; condjump to .L60 occurs
	.loc 1 87 0
	[R1]	SBR		.L61
	|	SLT		R18, R20, R1
.LBB5:
	.loc 1 153 0
		SNOP		6
.LBE5:
	.loc 1 87 0
	;; condjump to .L61 occurs
	.loc 1 124 0
	[R2]	SBR		.L62
	|	SMOVIL		0, R2
		SLT		R2, R22, R21
		SNOP		5
	;; condjump to .L62 occurs
	.loc 1 150 0
	[!R0]	SBR		.L1
	|	SMVAAGL.M2		AR2, R13:R12
.LBB6:
	.loc 1 173 0
		SNOP		1
.LVL7:
		SMVAAGH.M2		AR2, R13:R12
		SNOP		1
		SMVAGA36.M1		R13:R12, AR2
		SNOP		2
.LBE6:
	.loc 1 150 0
	;; condjump to .L1 occurs
.LBB7:
	.loc 1 153 0 discriminator 1
	[!R1]	SBR		.L1
		SNOP		6
	;; condjump to .L1 occurs
.LVL8:
.L32:
	.loc 1 10 0
		SMVAGA36.M2		R57:R56, AR10
	|	SMOV.M1		R21, R0
	|	SMOVIL		0, R60
	.loc 1 157 0
	[!R0]	SBR		.L37
	|	SADD.M1		R16,R2,R59
	.loc 1 154 0
		SLDW		*-AR10[1], R43
	|	SAND		R19, R59, R37
	.loc 1 155 0
	[R0]	SLDW		*AR10, R13
		SNOP		4
	.loc 1 157 0
	;; condjump to .L37 occurs
	.loc 1 154 0
		SVBCAST.M2 		 R43,VR6
.LVL9:
	.loc 1 155 0
		SVBCAST.M1 		 R13,VR7
		SNOP		3
.LVL10:
.L31:
	.loc 1 160 0
		SSUB.M2		R37, R8, R58
	|	SSHFLL		1, R37, R61
	.loc 1 159 0
		SSHFAR		31, R37, R30
	.loc 1 161 0
		SMOVIL		16, R36
	.loc 1 159 0
		SLTU		R61, R37, R31
	.loc 1 161 0
		SLT		R36, R58, R0
	.loc 1 159 0
		SSHFLL		1, R30, R32
	.loc 1 165 0
		SEQ		R36, R58, R1
	|	SADD.M2		R32,R31,R33
	.loc 1 161 0
	[R0]	SBR		.L63
	|	SSHFLL		2, R37, R42
	.loc 1 159 0
		SLTU		R42, R61, R34
		SSHFLL		1, R33, R35
		SADD.M2		R35,R34,R43
	|	SSHFLL		1, R58, R24
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR1,AR6
	|	SSHFAR		31, R58, R25
	|	SMOV.M1		R60, R42
.LVL11:
	.loc 1 174 0
		SLTU		R24, R58, R26
		SSHFLL		1, R25, R27
	;; condjump to .L63 occurs
	.loc 1 165 0
	[R1]	SBR		.L64
	|	SSHFLL		2, R58, R44
	|	SADD.M2		R27,R26,R28
	|	SSUB.M1		R58, R23, R37
.LVL12:
	.loc 1 174 0
		SLTU		R44, R24, R29
		SSHFLL		1, R28, R45
		SADD.M2		R45,R29,R45
	|	SSHFAR		31, R60, R38
	.loc 1 175 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M2		R45:R44,AR7,OR2
	|	SMOV.M1		R38, R53
	.loc 1 180 0
		SMOV.M1		R53, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R40
	|	SMOV.M1		R60, R44
	;; condjump to .L64 occurs
	.loc 1 173 0
		VLDW.LS 		*AR6,VR3
	|	SSHFLL		2, R43, R47
	|	SADDA.M2		R55:R54,OR2,AR4
	|	SMOV.M1		R38, R45
	.loc 1 180 0
		SOR		R47, R40, R47
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADD.M1		16,R60,R60
		SSHFLL		2, R42, R46
		SADDA.M2		R47:R46,AR0,AR6
	|	SSHFLR		30, R44, R39
.LVL13:
	.loc 1 186 0
		SSHFLL		2, R45, R49
		SOR		R49, R39, R49
		SSHFLL		2, R44, R48
	.loc 1 157 0
		SLT		R60, R22, R0
	.loc 1 173 0
		VSTW.LS 		VR3,*AR2
	.loc 1 175 0
		VLDW.LS 		*AR1,VR0
		SNOP		7
		VSTW.LS 		VR0,*AR4
	|	SADDA.M2		R49:R48,AR0,AR4
	.loc 1 180 0
		VLDW.LS 		*AR6,VR9
	|	VLDW.LS 		*AR2,VR5
.LVL14:
	.loc 1 177 0
		VLDW.LS 		*+AR2[1],VR4
.LVL15:
	.loc 1 181 0
	[!R2]	SBR		.L65
		SNOP		6
	;; condjump to .L65 occurs
.L36:
	.loc 1 184 0
		VFMULAS32.M3	VR6,VR5,VR9,VR9
		SNOP		5
.LVL16:
	.loc 1 157 0
	[R0]	SBR		.L31
	|	VFMULAS32.M3	VR7,VR4,VR9,VR9
	.loc 1 185 0
		SNOP		5
.LVL17:
	.loc 1 186 0
		VSTW.LS 		VR9,*AR4
	;; condjump to .L31 occurs
.LVL18:
.L37:
	.loc 1 153 0
		SADD.M2		2,R2,R2
	|	SADD.M1		8,R56,R41
.LVL19:
		SLT		R2, R20, R1
	[R1]	SBR		.L32
	|	SLTU		R41, R56, R44
	|	SMOV.M2		R41, R56
		SADD.M2		R57,R44,R57
		SNOP		5
	;; condjump to .L32 occurs
.LVL20:
.L1:
.LBE7:
	.loc 1 190 0
		SLDDW		*+AR15[5], R31:R30
	|	SMOVIL		256, R6
		SLDDW		*+AR15[6], R33:R32
	|	SMOVIL		0, R7
		SLDDW		*+AR15[7], R35:R34
	|	SADDA.M2		R7:R6,AR7,AR7
.LVL21:
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIL		88, R6
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIL		0, R7
		SMVCGC.L		R63, BRReg
		SNOP		3
		SBR		R62
		SLDDW		*+AR15[10], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL22:
.L65:
.LBB8:
	.loc 1 182 0
		VMOV		VR8,	VR9
.LVL23:
	.loc 1 184 0
		VFMULAS32.M3	VR6,VR5,VR9,VR9
		SNOP		5
.LVL24:
	.loc 1 157 0
	[R0]	SBR		.L31
	|	VFMULAS32.M3	VR7,VR4,VR9,VR9
	.loc 1 185 0
		SNOP		5
.LVL25:
	.loc 1 186 0
		VSTW.LS 		VR9,*AR4
	;; condjump to .L31 occurs
		SBR		.L37
		SNOP		6
	;; jump to .L37 occurs
.LVL26:
.L63:
	.loc 1 180 0
		SSHFAR		31, R60, R38
	|	SMOV.M2		R60, R42
	|	VLDW.LS 		*AR6,VR5
	|	VLDW.LS 		*+AR6[1],VR4
	|	SMOV.M1		R60, R44
.LVL27:
	.loc 1 186 0
		SMOV.M2		R38, R53
	|	SMOV.M1		R38, R45
	.loc 1 180 0
		SMOV.M2		R53, R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SSHFLR		30, R44, R39
	|	SADD.M1		16,R60,R60
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R40
	|	SADD.M2		16,R37,R37
.LVL28:
		SSHFLL		2, R43, R47
		SOR		R47, R40, R47
		SSHFLL		2, R42, R46
		SADDA.M2		R47:R46,AR0,AR6
	|	SSHFLL		2, R45, R49
.LVL29:
	.loc 1 186 0
		SOR		R49, R39, R49
		SSHFLL		2, R44, R48
	.loc 1 180 0
		VLDW.LS 		*AR6,VR9
.LVL30:
	.loc 1 181 0
	[R2]	SBR		.L36
	|	SADDA.M2		R49:R48,AR0,AR4
	|	SLT		R60, R22, R0
	.loc 1 157 0
		SNOP		6
	.loc 1 181 0
	;; condjump to .L36 occurs
		SBR		.L65
		SNOP		6
	;; jump to .L65 occurs
.LVL31:
.L64:
	.loc 1 167 0
		VLDW.LS 		*+AR6[1],VR1
	|	VLDW.LS 		*AR6,VR5
	|	SSHFAR		31, R60, R38
	|	SMOV.M2		R60, R42
	|	SMOV.M1		R60, R44
.LVL32:
	.loc 1 186 0
		SMOV.M2		R38, R53
	|	SMOV.M1		R38, R45
	|	SMOVIL		0, R37
	.loc 1 180 0
		SMOV.M2		R53, R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SSHFLR		30, R44, R39
	|	SADD.M1		16,R60,R60
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R40
		SSHFLL		2, R43, R47
		SOR		R47, R40, R47
		SSHFLL		2, R42, R46
		SADDA.M2		R47:R46,AR0,AR6
	|	SSHFLL		2, R45, R49
.LVL33:
	.loc 1 167 0
		VSTW.LS 		VR1,*AR2
	|	SOR		R49, R39, R49
.LVL34:
	.loc 1 169 0
		VLDW.LS 		*AR1,VR2
	|	SSHFLL		2, R44, R48
	.loc 1 186 0
		SADDA.M2		R49:R48,AR0,AR4
	|	SLT		R60, R22, R0
	.loc 1 157 0
		SNOP		6
	.loc 1 169 0
		VSTW.LS 		VR2,*+AR2[15]
	.loc 1 170 0
		VLDW.LS 		*AR2,VR4
	|	VLDW.LS 		*AR6,VR9
.LVL35:
	.loc 1 181 0
	[R2]	SBR		.L36
		SNOP		6
	;; condjump to .L36 occurs
		SBR		.L65
		SNOP		6
	;; jump to .L65 occurs
.LVL36:
.L59:
.LBE8:
.LBB9:
	.loc 1 43 0
		VLDW.LS 		*AR1,VR36
		SNOP		7
		VMVCGC.L		VR36,SVR
		SNOP		2
	.loc 1 44 0
		SMVCCG.L		SVR0,R36
		SNOP		1
.LVL37:
	.loc 1 10 0
		SMVAGA36.M1		R13:R12, OR2
	|	SMOVIL		0, R37
	|	SVBCAST.M2 		 R36,VR37
.LVL38:
	.loc 1 46 0
		SLT		R37, R20, R0
	.loc 1 10 0
		SADDA.M1		4,OR2,OR3
	|[!R0]	SBR		.L1
	|	SMOVIL		0, R1
		SLT		R1, R22, R38
		SNOP		1
		SMVAAGL.M2		OR3, R51:R50
		SNOP		1
		SMVAAGH.M2		OR3, R51:R50
		SNOP		1
	.loc 1 46 0
	;; condjump to .L1 occurs
.LVL39:
.L6:
	.loc 1 10 0
		SMVAGA36.M2		R51:R50, AR10
	|	SMOV.M1		R38, R2
	|	SMOVIL		0, R52
	.loc 1 49 0
	[!R2]	SBR		.L9
	.loc 1 47 0
		SLDW		*-AR10[1], R39
	.loc 1 48 0
	[R2]	SLDW		*AR10, R53
		SNOP		4
	.loc 1 49 0
	;; condjump to .L9 occurs
	.loc 1 47 0
		SVBCAST.M2 		 R39,VR38
.LVL40:
	.loc 1 48 0
		SVBCAST.M1 		 R53,VR39
		SNOP		3
.LVL41:
.L5:
	.loc 1 50 0
		SSHFAR		31, R52, R49
	|	SMOV.M2		R52, R46
	|	SMOV.M1		R52, R48
	.loc 1 56 0
		SMOV.M2		R49, R41
	|	SADDU.M1		32,R52,R52
	;no-op trunc di R49:R48 to pdi R49:R48
	|	SSHFLR		30, R48, R54
	.loc 1 50 0
		SMOV.M2		R41, R47
	|	SLT		R52, R22, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SSHFLR		30, R46, R56
		SSHFLL		2, R47, R57
		SOR		R57, R56, R43
		SSHFLL		2, R46, R42
	|[!R1]	SBR		.L66
		SADDA.M2		R43:R42,AR0,AR4
	|	SSHFLL		2, R49, R55
	.loc 1 56 0
		SOR		R55, R54, R45
		SSHFLL		2, R48, R44
		SADDA.M2		R45:R44,AR0,AR2
		SNOP		2
	.loc 1 51 0
	;; condjump to .L66 occurs
	.loc 1 50 0
		VLDW.LS 		*AR4,VR40
		SNOP		7
.LVL42:
	.loc 1 54 0
		VFMULAS32.M3	VR38,VR37,VR40,VR40
		SNOP		5
.LVL43:
	.loc 1 49 0
	[R0]	SBR		.L5
	|	VFMULAS32.M3	VR39,VR37,VR40,VR40
	.loc 1 55 0
		SNOP		5
.LVL44:
	.loc 1 56 0
		VSTW.LS 		VR40,*AR2
	;; condjump to .L5 occurs
.LVL45:
.L9:
	.loc 1 46 0
		SADD.M2		2,R1,R1
	|	SADD.M1		8,R50,R10
.LVL46:
		SLT		R1, R20, R2
	[R2]	SBR		.L6
	|	SLTU		R10, R50, R48
	|	SMOV.M2		R10, R50
		SADD.M2		R51,R48,R51
		SNOP		5
	;; condjump to .L6 occurs
.LBE9:
	.loc 1 190 0
		SLDDW		*+AR15[5], R31:R30
	|	SMOVIL		256, R6
		SLDDW		*+AR15[6], R33:R32
	|	SMOVIL		0, R7
		SLDDW		*+AR15[7], R35:R34
	|	SADDA.M2		R7:R6,AR7,AR7
.LVL47:
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIL		88, R6
.LVL48:
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIL		0, R7
		SMVCGC.L		R63, BRReg
		SNOP		3
		SBR		R62
		SLDDW		*+AR15[10], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL49:
.L66:
.LBB10:
	.loc 1 52 0
		VMOV		VR8,	VR40
.LVL50:
	.loc 1 54 0
		VFMULAS32.M3	VR38,VR37,VR40,VR40
		SNOP		5
.LVL51:
	.loc 1 49 0
	[R0]	SBR		.L5
	|	VFMULAS32.M3	VR39,VR37,VR40,VR40
	.loc 1 55 0
		SNOP		5
.LVL52:
	.loc 1 56 0
		VSTW.LS 		VR40,*AR2
	;; condjump to .L5 occurs
		SBR		.L9
		SNOP		6
	;; jump to .L9 occurs
.LVL53:
.L60:
.LBE10:
.LBB11:
	.loc 1 62 0
		VLDW.LS 		*AR1,VR28
		SNOP		7
		VMVCGC.L		VR28,SVR
		SNOP		2
	.loc 1 63 0
		SAND		1, R16, R46
		SMOV.M2		R46, R0
	[R0]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
	.loc 1 64 0
		SMVCCG.L		SVR0,R21
		SNOP		1
		SSTW		R21, *+AR15[8]
	|	SMVCCG.L		SVR1,R23
	.loc 1 65 0
		SNOP		2
		SSTW		R23, *+AR15[9]
.L12:
	.loc 1 74 0
		SMOVIL		0, R59
	|	SMVAGA36.M1		R13:R12, OR0
		SLT		R59, R20, R61
	|	SLDDW		*+AR15[4], R59:R58
.LVL54:
		SMOV.M1		R61, R1
	|	SADDA.M2		4,OR0,OR1
	|	SMOVIL		0, R12
.LVL55:
	.loc 1 80 0
		SMOVIH		0, R12
		SVBCAST.M1 		 R12,VR32
	|	SMOVIL		0, R33
	.loc 1 74 0
	[!R1]	SBR		.L1
	|	SMVAAGL.M1		OR1, R47:R46
	|	SLT		R33, R22, R13
		SNOP		1
	.loc 1 70 0
		SVBCAST2.M2 		 R59:R58,VR31:VR30
	|	SMVAAGH.M1		OR1, R47:R46
		SNOP		3
	.loc 1 71 0
		VSTDWM16.LS 		VR31:VR30,*AR7
	;; condjump to .L1 occurs
.LVL56:
	.loc 1 72 0
		VLDW.LS 		*AR7,VR29
	|	VLDW.LS 		*+AR7[1],VR31
.LVL57:
	.loc 1 73 0
		SNOP		7
.LVL58:
.L15:
	.loc 1 10 0
		SMVAGA36.M2		R47:R46, AR10
	|	SMOV.M1		R13, R2
	|	SMOVIL		0, R29
	.loc 1 77 0
	[!R2]	SBR		.L18
	.loc 1 75 0
		SLDW		*-AR10[1], R43
	.loc 1 76 0
	[R2]	SLDW		*AR10, R24
		SNOP		4
	.loc 1 77 0
	;; condjump to .L18 occurs
	.loc 1 75 0
		SVBCAST.M2 		 R43,VR33
.LVL59:
	.loc 1 76 0
		SVBCAST.M1 		 R24,VR34
		SNOP		3
.LVL60:
.L14:
	.loc 1 78 0
		SSHFAR		31, R29, R25
	|	SSTW		R29, *+AR15[2]
	|	SMOV.M2		R29, R44
	|	SADD.M1		16,R29,R29
		SSTW		R25, *+AR15[3]
	|	SMOV.M2		R25, R45
	|	SLT		R29, R22, R16
	|	SMOV.M1		R33, R0
	.loc 1 84 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLL		2, R45, R30
	|	SMOV.M2		R16, R1
	|[!R0]	SBR		.L67
		SSHFLR		30, R44, R27
	.loc 1 78 0
	[R0]	SLDDW		*+AR15[1], R43:R42
	|	SOR		R30, R27, R57
	.loc 1 84 0
		SSHFLL		2, R44, R56
		SADDA.M2		R57:R56,AR0,AR2
		SNOP		3
	.loc 1 79 0
	;; condjump to .L67 occurs
	.loc 1 78 0
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R45
		SSHFLL		2, R43, R31
		SOR		R31, R45, R55
		SSHFLL		2, R42, R54
		SADDA.M2		R55:R54,AR0,AR4
		SNOP		2
		VLDW.LS 		*AR4,VR35
		SNOP		7
.LVL61:
	.loc 1 82 0
		VFMULAS32.M3	VR33,VR29,VR35,VR35
		SNOP		5
.LVL62:
	.loc 1 77 0
	[R1]	SBR		.L14
	|	VFMULAS32.M3	VR34,VR31,VR35,VR35
	.loc 1 83 0
		SNOP		5
.LVL63:
	.loc 1 84 0
		VSTW.LS 		VR35,*AR2
	;; condjump to .L14 occurs
.LVL64:
.L18:
	.loc 1 74 0
		SADD.M2		2,R33,R33
	|	SADD.M1		8,R46,R32
.LVL65:
		SLT		R33, R20, R35
		SMOV.M2		R35, R2
	|	SLTU		R32, R46, R19
	|	SMOV.M1		R32, R46
	[R2]	SBR		.L15
	|	SADD.M2		R47,R19,R47
		SNOP		6
	;; condjump to .L15 occurs
.LBE11:
	.loc 1 190 0
		SLDDW		*+AR15[5], R31:R30
	|	SMOVIL		256, R6
		SLDDW		*+AR15[6], R33:R32
	|	SMOVIL		0, R7
		SLDDW		*+AR15[7], R35:R34
	|	SADDA.M2		R7:R6,AR7,AR7
.LVL66:
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIL		88, R6
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIL		0, R7
		SMVCGC.L		R63, BRReg
		SNOP		3
		SBR		R62
		SLDDW		*+AR15[10], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL67:
.L67:
.LBB12:
	.loc 1 80 0
		VMOV		VR32,	VR35
	|	SMOV.M2		R16, R1
.LVL68:
	.loc 1 82 0
		VFMULAS32.M3	VR33,VR29,VR35,VR35
		SNOP		5
.LVL69:
	.loc 1 77 0
	[R1]	SBR		.L14
	|	VFMULAS32.M3	VR34,VR31,VR35,VR35
	.loc 1 83 0
		SNOP		5
.LVL70:
	.loc 1 84 0
		VSTW.LS 		VR35,*AR2
	;; condjump to .L14 occurs
		SBR		.L18
		SNOP		6
	;; jump to .L18 occurs
.LVL71:
.L61:
.LBE12:
.LBB13:
	.loc 1 88 0
		VLDW.LS 		*AR1,VR20
	|	SADD.M2		1,R16,R45
	|	SADD.M1		2,R16,R30
	|	SAND		R16, R19, R31
.LVL72:
	.loc 1 10 0
		SMVAGA36.M1		R13:R12, OR6
	|	SAND		R45, R19, R32
	|	SADD.M2		3,R16,R16
.LVL73:
	.loc 1 96 0
		SAND		R30, R19, R33
	|	SMOV.M2		R32, R54
		SMOV.M1		R33, R52
	|	SSHFAR		31, R32, R55
	|	SADDA.M2		12,OR6,OR7
		SSHFAR		31, R33, R53
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SMOV.M1		R31, R56
	;no-op trunc di R53:R52 to pdi R53:R52
	.loc 1 95 0
		SSHFLR		30, R54, R36
	.loc 1 96 0
		SSHFLR		30, R52, R38
		SSHFLL		2, R52, R44
	.loc 1 95 0
		SSHFLL		2, R55, R37
	|	VSTW.LS 		VR20,*AR2
	.loc 1 100 0
		SMOVIL		0, R52
	|	VSTW.LS 		VR20,*+AR2[4]
	.loc 1 95 0
		SOR		R37, R36, R47
	|	VSTW.LS 		VR20,*+AR2[8]
		SSHFLL		2, R54, R46
	|	VSTW.LS 		VR20,*+AR2[12]
	.loc 1 100 0
		SLT		R52, R20, R0
	|	SADDA.M2		R47:R46,AR2,AR6
	|	SMVAAGL.M1		OR7, R47:R46
	|	VSTW.LS 		VR20,*AR4
	[!R0]	SBR		.L1
	|	SAND		R16, R19, R19
	.loc 1 97 0
		SMOV.M1		R19, R50
	|	SSHFAR		31, R31, R57
	|	SMVAAGH.M2		OR7, R47:R46
		SSHFAR		31, R19, R51
	;no-op trunc di R57:R56 to pdi R57:R56
	;no-op trunc di R51:R50 to pdi R51:R50
	.loc 1 96 0
		SSHFLL		2, R53, R39
	|	SMVAGA36.M2		R47:R46, AR10
	.loc 1 97 0
		SSHFLR		30, R50, R53
	.loc 1 94 0
		SSHFLR		30, R56, R34
		SSHFLL		2, R57, R35
	;; condjump to .L1 occurs
	.loc 1 97 0
		SSHFLL		2, R51, R51
	|	SLDW		*-AR10[3], R40
	|	VLDW.LS 		*AR6,VR22
	.loc 1 94 0
		SOR		R35, R34, R49
	|	SLDW		*-AR10[2], R41
	.loc 1 97 0
		SSHFLL		2, R50, R42
	.loc 1 96 0
		SOR		R39, R38, R45
	.loc 1 97 0
		SOR		R51, R53, R43
	|	SADDA.M2		R45:R44,AR2,AR4
	.loc 1 94 0
		SSHFLL		2, R56, R48
		SADDA.M1		R49:R48,AR2,AR1
	|	SADDA.M2		R43:R42,AR2,AR2
	|	SMOVIL		0, R1
.LVL74:
	.loc 1 103 0
		SMOVIL		2, R49
	|	VLDW.LS 		*AR4,VR23
	.loc 1 101 0
		SVBCAST.M1 		 R40,VR25
	|	SVBCAST.M2 		 R41,VR26
	|	SLT		R1, R22, R50
	.loc 1 10 0
		SSUB.M1		R1, R20, R60
	|	VLDW.LS 		*AR1,VR21
	|	VLDW.LS 		*AR2,VR24
.LVL75:
	.loc 1 103 0
		SLT		R49, R60, R2
	[R2]	SBR		.L68
		SNOP		6
	;; condjump to .L68 occurs
.LVL76:
.L40:
	.loc 1 108 0
		SMOVIL		0, R2
.L20:
.LVL77:
	.loc 1 110 0
		SMOV.M2		R50, R0
	|	SMOVIL		0, R3
	[!R0]	SBR		.L25
		SNOP		6
	;; condjump to .L25 occurs
.LVL78:
.L21:
	.loc 1 111 0
		SSHFAR		31, R3, R55
	|	SMOV.M2		R3, R42
	|	SMOV.M1		R3, R44
		SMOV.M2		R55, R43
	|	SMOV.M1		R55, R45
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R8
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADD.M2		16,R3,R3
		SSHFLL		2, R43, R9
		SOR		R9, R8, R59
		SSHFLL		2, R42, R58
		SADDA.M2		R59:R58,AR0,AR4
	|	SSHFLR		30, R44, R11
	.loc 1 112 0
	[!R1]	SBR		.L69
	|	SLT		R3, R22, R0
	.loc 1 121 0
		SSHFLL		2, R45, R14
		SOR		R14, R11, R61
		SSHFLL		2, R44, R60
		SADDA.M2		R61:R60,AR0,AR2
		SNOP		2
	.loc 1 112 0
	;; condjump to .L69 occurs
	.loc 1 111 0
		VLDW.LS 		*AR4,VR27
		SNOP		7
.LVL79:
	.loc 1 115 0
		VFMULAS32.M3	VR25,VR21,VR27,VR27
		SNOP		4
.LVL80:
	.loc 1 117 0
	[R2]	SBR		.L70
	.loc 1 116 0
		VFMULAS32.M3	VR26,VR22,VR27,VR27
		SNOP		5
.LVL81:
	.loc 1 117 0
	;; condjump to .L70 occurs
.L24:
.LVL82:
	.loc 1 110 0
	[R0]	SBR		.L21
	|	VSTW.LS 		VR27,*AR2
	.loc 1 121 0
		SNOP		6
	.loc 1 110 0
	;; condjump to .L21 occurs
.LVL83:
.L25:
	.loc 1 100 0
		SADD.M2		4,R1,R1
	|	SADD.M1		16,R46,R42
	|	SMOVIL		2, R49
.LVL84:
		SLT		R1, R20, R2
	|	SSUB.M2		R1, R20, R60
.LVL85:
	[!R2]	SBR		.L1
	|	SLTU		R42, R46, R15
	|	SMOV.M2		R42, R46
		SADD.M2		R47,R15,R47
	|	SLT		R49, R60, R2
	.loc 1 10 0
		SMVAGA36.M2		R47:R46, AR10
		SNOP		4
	.loc 1 100 0
	;; condjump to .L1 occurs
	.loc 1 101 0
		SLDW		*-AR10[3], R40
	.loc 1 102 0
		SLDW		*-AR10[2], R41
		SNOP		2
	.loc 1 103 0
	[!R2]	SBR		.L40
		SNOP		1
	.loc 1 101 0
		SVBCAST.M2 		 R40,VR25
.LVL86:
	.loc 1 102 0
		SVBCAST.M1 		 R41,VR26
		SNOP		3
.LVL87:
	.loc 1 103 0
	;; condjump to .L40 occurs
.LVL88:
.L68:
	.loc 1 104 0
		SLDW		*-AR10[1], R44
	|	SMOVIL		1, R2
	.loc 1 105 0
		SLDW		*AR10, R48
		SNOP		2
		SBR		.L20
		SNOP		1
	.loc 1 104 0
		SVBCAST.M2 		 R44,VR9
.LVL89:
	.loc 1 105 0
		SVBCAST.M1 		 R48,VR10
		SNOP		3
.LVL90:
	;; jump to .L20 occurs
.LVL91:
.L70:
	.loc 1 118 0
		VFMULAS32.M3	VR9,VR23,VR27,VR27
		SNOP		5
.LVL92:
	.loc 1 110 0
	[R0]	SBR		.L21
	|	VFMULAS32.M3	VR10,VR24,VR27,VR27
	.loc 1 119 0
		SNOP		5
.LVL93:
	.loc 1 121 0
		VSTW.LS 		VR27,*AR2
	;; condjump to .L21 occurs
		SBR		.L25
		SNOP		6
	;; jump to .L25 occurs
.LVL94:
.L69:
	.loc 1 113 0
		VMOV		VR8,	VR27
.LVL95:
	.loc 1 115 0
		VFMULAS32.M3	VR25,VR21,VR27,VR27
		SNOP		4
.LVL96:
	.loc 1 117 0
	[!R2]	SBR		.L24
	.loc 1 116 0
		VFMULAS32.M3	VR26,VR22,VR27,VR27
		SNOP		5
.LVL97:
	.loc 1 117 0
	;; condjump to .L24 occurs
		SBR		.L70
		SNOP		6
	;; jump to .L70 occurs
.LVL98:
.L62:
.LBE13:
	.loc 1 125 0
		VLDW.LS 		*AR1,VR10
	|	SMVAGA36.M1		R13:R12, OR3
	|	SMOVIL		0, R48
	|	SMVAAGL.M2		AR2, R55:R54
.LVL99:
	.loc 1 129 0
		SLT		R48, R20, R0
	.loc 1 10 0
		SADDA.M2		4,OR3,OR4
	|	SMVAAGH.M1		AR2, R55:R54
	|	SMOVIL		0, R1
.LBB14:
	.loc 1 129 0
		SNOP		1
.LBE14:
	[!R0]	SBR		.L1
	|	SMVAGA36.M1		R55:R54, OR5
	|	SLT		R1, R22, R55
		SMVAAGL.M1		OR4, R47:R46
	|	SADD.M2		1,R16,R56
		SNOP		1
		SMVAAGH.M2		OR4, R47:R46
	.loc 1 126 0
		VSTW.LS 		VR10,*AR2
	.loc 1 127 0
		VSTW.LS 		VR10,*+AR2[8]
	.loc 1 128 0
		VSTW.LS 		VR10,*AR4
	;; condjump to .L1 occurs
.LVL100:
.L28:
	.loc 1 10 0
		SADD.M2		R16,R1,R57
	|	SADD.M1		R1,R56,R10
	|	SMOVIL		0, R58
	.loc 1 131 0
		SAND		R10, R19, R42
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOV.M1		R55, R2
	.loc 1 130 0
		SAND		R57, R19, R11
	|	SSTW		R42, *+AR15[6]
	|[!R2]	SBR		.L30
.LVL101:
	.loc 1 134 0
		SSTW		R11, *+AR15[4]
	|	SSHFAR		31, R42, R8
		SSHFAR		31, R11, R3
		SNOP		1
		SSTW		R3, *+AR15[5]
	.loc 1 135 0
		SSTW		R8, *+AR15[7]
		SNOP		2
	.loc 1 138 0
	;; condjump to .L30 occurs
	.loc 1 134 0
		SLDDW		*+AR15[2], R45:R44
	.loc 1 135 0
		SLDDW		*+AR15[3], R43:R42
	.loc 1 132 0
		SLDW		*-AR10[1], R14
	.loc 1 133 0
		SLDW		*AR10, R9
		SNOP		2
	.loc 1 134 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R15
	.loc 1 135 0
	;no-op trunc di R43:R42 to pdi R43:R42
	.loc 1 134 0
		SSHFLL		2, R45, R17
	.loc 1 135 0
		SSHFLR		30, R42, R18
	|	SVBCAST.M2 		 R14,VR11
.LVL102:
		SSHFLL		2, R43, R12
	|	SVBCAST.M1 		 R9,VR12
.LVL103:
	.loc 1 134 0
		SOR		R17, R15, R39
	.loc 1 135 0
		SOR		R12, R18, R41
	.loc 1 134 0
		SSHFLL		2, R44, R38
	.loc 1 135 0
		SSHFLL		2, R42, R40
	|	SADDA.M2		R39:R38,OR5,AR6
		SADDA.M1		R41:R40,OR5,AR4
		SNOP		1
	.loc 1 134 0
		VLDW.LS 		*AR6,VR13
.LVL104:
	.loc 1 135 0
		VLDW.LS 		*AR4,VR14
		SNOP		6
.LVL105:
	.loc 1 136 0
		VFMULS32.M3	VR11,VR13,VR15
.LVL106:
	.loc 1 137 0
		VFMULS32.M1	VR12,VR14,VR16
		SNOP		3
.LVL107:
.L27:
	.loc 1 139 0
		SSHFAR		31, R58, R23
	|	SMOV.M2		R58, R44
	|	SMOV.M1		R58, R42
	.loc 1 145 0
		SMOV.M2		R23, R45
	|	SMOV.M1		R23, R43
	;no-op trunc di R45:R44 to pdi R45:R44
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLL		2, R45, R24
	|	SADD.M2		16,R58,R58
		SSHFLR		30, R44, R61
	.loc 1 139 0
		SSHFLR		30, R42, R28
		SSHFLL		2, R43, R25
	.loc 1 145 0
		SOR		R24, R61, R27
	.loc 1 139 0
		SOR		R25, R28, R25
	|[!R1]	SBR		.L71
	.loc 1 138 0
		SLT		R58, R22, R0
	.loc 1 139 0
		SSHFLL		2, R42, R24
		SADDA.M2		R25:R24,AR0,AR6
	|	SSHFLL		2, R44, R26
	.loc 1 145 0
		SADDA.M1		R27:R26,AR0,AR4
		SNOP		2
	.loc 1 140 0
	;; condjump to .L71 occurs
	.loc 1 139 0
		VLDW.LS 		*AR6,VR17
		SNOP		7
.LVL108:
	.loc 1 138 0
	[R0]	SBR		.L27
	|	VFADDS32.M1 		VR15,VR17,VR18
	.loc 1 143 0
		SNOP		2
.LVL109:
	.loc 1 144 0
		VFADDS32.M1 		VR16,VR18,VR19
		SNOP		2
.LVL110:
	.loc 1 145 0
		VSTW.LS 		VR19,*AR4
	;; condjump to .L27 occurs
.LVL111:
.L30:
	.loc 1 129 0
		SADD.M2		2,R1,R1
	|	SADD.M1		8,R46,R26
.LVL112:
		SLT		R1, R20, R2
	[R2]	SBR		.L28
	|	SLTU		R26, R46, R27
	|	SMOV.M2		R26, R46
		SADD.M2		R47,R27,R47
		SNOP		5
	;; condjump to .L28 occurs
	.loc 1 190 0
		SLDDW		*+AR15[5], R31:R30
	|	SMOVIL		256, R6
		SLDDW		*+AR15[6], R33:R32
	|	SMOVIL		0, R7
		SLDDW		*+AR15[7], R35:R34
	|	SADDA.M2		R7:R6,AR7,AR7
.LVL113:
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIL		88, R6
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIL		0, R7
		SMVCGC.L		R63, BRReg
		SNOP		3
		SBR		R62
		SLDDW		*+AR15[10], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL114:
.L71:
	.loc 1 141 0
		VMOV		VR8,	VR17
.LVL115:
	.loc 1 143 0
		VFADDS32.M1 		VR15,VR17,VR18
	|[R0]	SBR		.L27
.LVL116:
	.loc 1 138 0
		SNOP		2
	.loc 1 144 0
		VFADDS32.M1 		VR16,VR18,VR19
		SNOP		2
.LVL117:
	.loc 1 145 0
		VSTW.LS 		VR19,*AR4
	;; condjump to .L27 occurs
		SBR		.L30
		SNOP		6
	;; jump to .L30 occurs
.LVL118:
.L11:
		SBR		.L12
	|	SMVCCG.L		SVR1,R17
.LBB15:
	.loc 1 67 0
		SNOP		1
		SSTW		R17, *+AR15[8]
	|	SMVCCG.L		SVR0,R18
	.loc 1 68 0
		SNOP		2
		SSTW		R18, *+AR15[9]
		SNOP		1
	;; jump to .L12 occurs
.LBE15:
	.cfi_endproc
.LFE3:
	.size	DSPF_sp_fircirc_vc4, .-DSPF_sp_fircirc_vc4
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x33f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0x120
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
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x30e
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x322
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0x328
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0x322
	.4byte	.LLST3
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xf
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x7
	.string	"nh"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x7
	.string	"nr"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x13
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x13
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0x13
	.4byte	0x62
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x16
	.4byte	0x328
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x17
	.4byte	0x322
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x18
	.4byte	0x30e
	.4byte	.LLST10
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x18
	.4byte	0x30e
	.4byte	.LLST11
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.4byte	0x30e
	.4byte	.LLST12
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.4byte	0x30e
	.4byte	.LLST13
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.4byte	0x30e
	.4byte	.LLST14
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.4byte	.LLST15
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.4byte	.LLST16
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.4byte	.LLST17
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.4byte	.LLST18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.4byte	0x30e
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1b
	.4byte	0x322
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1b
	.4byte	0x322
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST19
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1e
	.4byte	0x30e
	.4byte	.LLST21
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1e
	.4byte	0x30e
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1e
	.4byte	0x30e
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x20
	.4byte	0x32e
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x21
	.4byte	0x322
	.4byte	.LLST22
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x22
	.4byte	0x322
	.4byte	.LLST23
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0x23
	.4byte	0x328
	.4byte	.LLST22
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x26
	.4byte	0x62
	.uleb128 0x9
	.string	"mod"
	.byte	0x1
	.byte	0x27
	.4byte	0x62
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2b7
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x97
	.4byte	0x62
	.4byte	.LLST25
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x98
	.4byte	0x322
	.4byte	.LLST26
	.byte	0
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x2d0
	.uleb128 0x8
	.string	"x_0"
	.byte	0x1
	.byte	0x2a
	.4byte	0x31b
	.4byte	.LLST27
	.byte	0
	.uleb128 0xd
	.4byte	.Ldebug_ranges0+0xb0
	.4byte	0x2f8
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3c
	.4byte	0x33b
	.4byte	.LLST28
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3d
	.4byte	0x32e
	.4byte	.LLST29
	.byte	0
	.uleb128 0xe
	.4byte	.Ldebug_ranges0+0xf0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x63
	.4byte	0x62
	.4byte	.LLST30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	0x31b
	.4byte	0x31b
	.uleb128 0x10
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF43
	.uleb128 0x11
	.byte	0x8
	.4byte	0x30e
	.uleb128 0x11
	.byte	0x8
	.4byte	0x31b
	.uleb128 0xf
	.byte	0x1
	.4byte	0x33b
	.4byte	0x33b
	.uleb128 0x10
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF44
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.2byte	0x3
	.byte	0x7f
	.sleb128 88
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LVL20
	.2byte	0x1
	.byte	0x51
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL74
	.2byte	0x1
	.byte	0x51
	.llong	.LVL74
	.llong	.LVL98
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	.LVL98
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL7
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL36
	.llong	.LVL55
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL55
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL71
	.llong	.LVL100
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL100
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL118
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL58
	.llong	.LVL71
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	.LVL71
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL73
	.llong	.LVL98
	.2byte	0x4
	.byte	0x92
	.uleb128 0x20
	.sleb128 -3
	.byte	0x9f
	.llong	.LVL98
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL6
	.llong	.LVL20
	.2byte	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.llong	.LVL20
	.llong	.LVL36
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	.LVL36
	.llong	.LVL53
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL53
	.llong	.LVL76
	.2byte	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.llong	.LVL76
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x1
	.byte	0x62
	.llong	.LVL36
	.llong	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL46
	.llong	.LVL49
	.2byte	0x1
	.byte	0x61
	.llong	.LVL53
	.llong	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL65
	.llong	.LVL67
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL71
	.llong	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL84
	.llong	.LVL88
	.2byte	0x1
	.byte	0x61
	.llong	.LVL98
	.llong	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL112
	.llong	.LVL114
	.2byte	0x1
	.byte	0x61
	.llong	.LVL118
	.llong	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL44
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x44
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x90
	.uleb128 0x44
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL70
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL77
	.llong	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL82
	.llong	.LVL83
	.2byte	0x1
	.byte	0x63
	.llong	.LVL93
	.llong	.LVL94
	.2byte	0x1
	.byte	0x63
	.llong	.LVL110
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL117
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LVL20
	.2byte	0x1
	.byte	0x51
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL74
	.2byte	0x1
	.byte	0x51
	.llong	.LVL74
	.llong	.LVL98
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	.LVL98
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x1
	.byte	0x56
	.llong	.LVL26
	.llong	.LVL29
	.2byte	0x1
	.byte	0x56
	.llong	.LVL31
	.llong	.LVL33
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL27
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL32
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL57
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7d
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x75
	.llong	.LVL104
	.llong	.LVL106
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	.LVL106
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL27
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL58
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7f
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	.LVL105
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6e
	.llong	.LVL107
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x70
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x70
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x77
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x78
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL38
	.llong	.LVL53
	.2byte	0x3
	.byte	0x90
	.uleb128 0x85
	.llong	.LVL72
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x74
	.llong	.LVL99
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL9
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL22
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL40
	.llong	.LVL45
	.2byte	0x3
	.byte	0x90
	.uleb128 0x86
	.llong	.LVL49
	.llong	.LVL53
	.2byte	0x3
	.byte	0x90
	.uleb128 0x86
	.llong	.LVL59
	.llong	.LVL64
	.2byte	0x3
	.byte	0x90
	.uleb128 0x81
	.llong	.LVL67
	.llong	.LVL71
	.2byte	0x3
	.byte	0x90
	.uleb128 0x81
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x79
	.llong	.LVL102
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL10
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	.LVL22
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	.LVL41
	.llong	.LVL45
	.2byte	0x3
	.byte	0x90
	.uleb128 0x87
	.llong	.LVL49
	.llong	.LVL53
	.2byte	0x3
	.byte	0x90
	.uleb128 0x87
	.llong	.LVL60
	.llong	.LVL64
	.2byte	0x3
	.byte	0x90
	.uleb128 0x82
	.llong	.LVL67
	.llong	.LVL71
	.2byte	0x3
	.byte	0x90
	.uleb128 0x82
	.llong	.LVL75
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7a
	.llong	.LVL103
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL77
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL89
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL77
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	.LVL90
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL10
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	.LVL22
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL100
	.llong	.LVL101
	.2byte	0xb
	.byte	0x81
	.sleb128 0
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x22
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.llong	.LVL101
	.llong	.LVL118
	.2byte	0x1
	.byte	0x6b
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL100
	.llong	.LVL112
	.2byte	0xd
	.byte	0x81
	.sleb128 0
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.llong	.LVL112
	.llong	.LVL114
	.2byte	0xd
	.byte	0x81
	.sleb128 0
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0xd
	.byte	0x81
	.sleb128 0
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL42
	.llong	.LVL45
	.2byte	0x3
	.byte	0x90
	.uleb128 0x88
	.llong	.LVL50
	.llong	.LVL53
	.2byte	0x3
	.byte	0x90
	.uleb128 0x88
	.llong	.LVL61
	.llong	.LVL64
	.2byte	0x3
	.byte	0x90
	.uleb128 0x83
	.llong	.LVL68
	.llong	.LVL71
	.2byte	0x3
	.byte	0x90
	.uleb128 0x83
	.llong	.LVL79
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7b
	.llong	.LVL91
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7b
	.llong	.LVL95
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7b
	.llong	.LVL108
	.llong	.LVL109
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	.LVL109
	.llong	.LVL110
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	.LVL110
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
	.llong	.LVL115
	.llong	.LVL116
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	.LVL116
	.llong	.LVL117
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	.LVL117
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL2
	.llong	.LVL21
	.2byte	0x4
	.byte	0x77
	.sleb128 128
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL47
	.2byte	0x4
	.byte	0x77
	.sleb128 128
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL66
	.2byte	0x4
	.byte	0x77
	.sleb128 128
	.byte	0x9f
	.llong	.LVL67
	.llong	.LVL113
	.2byte	0x4
	.byte	0x77
	.sleb128 128
	.byte	0x9f
	.llong	.LVL114
	.llong	.LFE3
	.2byte	0x4
	.byte	0x77
	.sleb128 128
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL2
	.llong	.LVL21
	.2byte	0x4
	.byte	0x77
	.sleb128 192
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL47
	.2byte	0x4
	.byte	0x77
	.sleb128 192
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL66
	.2byte	0x4
	.byte	0x77
	.sleb128 192
	.byte	0x9f
	.llong	.LVL67
	.llong	.LVL113
	.2byte	0x4
	.byte	0x77
	.sleb128 192
	.byte	0x9f
	.llong	.LVL114
	.llong	.LFE3
	.2byte	0x4
	.byte	0x77
	.sleb128 192
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL11
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL22
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x4
	.byte	0x77
	.sleb128 188
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL37
	.llong	.LVL48
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL49
	.llong	.LVL53
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x8
	.byte	0x90
	.uleb128 0x4a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL54
	.llong	.LVL71
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x8
	.byte	0x90
	.uleb128 0x7e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x7f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL56
	.llong	.LVL71
	.2byte	0x8
	.byte	0x90
	.uleb128 0x7e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x7f
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL75
	.llong	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL77
	.llong	.LVL85
	.2byte	0x1
	.byte	0x62
	.llong	.LVL90
	.llong	.LVL91
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	.LVL91
	.llong	.LVL98
	.2byte	0x1
	.byte	0x62
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
	.llong	.LBB2
	.llong	.LBE2
	.llong	.LBB3
	.llong	.LBE3
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
	.llong	.LBB8
	.llong	.LBE8
	.llong	0
	.llong	0
	.llong	.LBB9
	.llong	.LBE9
	.llong	.LBB10
	.llong	.LBE10
	.llong	0
	.llong	0
	.llong	.LBB11
	.llong	.LBE11
	.llong	.LBB12
	.llong	.LBE12
	.llong	.LBB15
	.llong	.LBE15
	.llong	0
	.llong	0
	.llong	.LBB13
	.llong	.LBE13
	.llong	.LBB14
	.llong	.LBE14
	.llong	0
	.llong	0
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"x1_offset"
.LASF12:
	.string	"csize"
.LASF14:
	.string	"x_addr"
.LASF33:
	.string	"db_space"
.LASF47:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fircirc/test/vector/Release"
.LASF32:
	.string	"temp_vr_index_0"
.LASF31:
	.string	"temp_vr_index_1"
.LASF15:
	.string	"temp_vx_0_15"
.LASF39:
	.string	"ptr_temp_x"
.LASF19:
	.string	"temp_vx"
.LASF18:
	.string	"temp_vx_3_18"
.LASF43:
	.string	"float"
.LASF37:
	.string	"block_length"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"../DSPF_sp_fircirc_vc.c"
.LASF4:
	.string	"long unsigned int"
.LASF40:
	.string	"x_0_1"
.LASF2:
	.string	"short unsigned int"
.LASF41:
	.string	"vx_0_1"
.LASF24:
	.string	"temp_h_x_0"
.LASF25:
	.string	"temp_h_x_1"
.LASF21:
	.string	"temp_vh_1"
.LASF22:
	.string	"temp_vh_2"
.LASF23:
	.string	"temp_vh_3"
.LASF44:
	.string	"double"
.LASF13:
	.string	"ptr_x"
.LASF6:
	.string	"short int"
.LASF34:
	.string	"temp_vx_0_15_db"
.LASF48:
	.string	"DSPF_sp_fircirc_vc4"
.LASF42:
	.string	"flag"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"temp_vh_0"
.LASF36:
	.string	"f_space"
.LASF0:
	.string	"long long unsigned int"
.LASF29:
	.string	"h1_x_offset"
.LASF26:
	.string	"x0_offset"
.LASF17:
	.string	"temp_vx_2_17"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF45:
	.string	"GNU C 4.7.0"
.LASF30:
	.string	"temp_vr"
.LASF16:
	.string	"temp_vx_1_16"
.LASF35:
	.string	"temp_vx_16_31_db"
.LASF28:
	.string	"h0_x_offset"
.LASF38:
	.string	"diff_hoff_bl"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"signed char"
.LASF11:
	.string	"index"

	.file	"DSPF_sp_fir_clpx_v1.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_cplx_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_cplx_vc
	.type	DSPF_sp_fir_cplx_vc, @function
DSPF_sp_fir_cplx_vc:
.LFB0:
	.file 1 "../DSPF_sp_fir_clpx_v1.c"
	.loc 1 16 0
.LVL0:
		SADD.M2		-2,R16,R1
	|	SMVAGA36.M1		R15:R14, AR3
	|	SSHFLL		1, R16, R15
.LVL1:
		SMVAGA36.M1		R13:R12, AR0
	|	SSHFLL		1, R1, R17
	|	SADD.M2		-1,R16,R43
	.loc 1 12 0
		SSHFAR		31, R1, R13
	|	SMVAAGL.M1		AR3, R27:R26
		SSHFAR		31, R16, R12
	|	SMVAAA.M1		AR0, OR11
.LVL2:
	.loc 1 16 0
		SMOVIL		-24, R6
		SMOVIL		-1, R7
	.loc 1 12 0
		SLTU		R17, R1, R21
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SLTU		R15, R16, R20
	|	SMVAAGL.M1		AR14, R7:R6
	|	SMVAAGH.M2		AR3, R27:R26
		SSHFLL		1, R13, R8
		SSHFLL		1, R12, R22
	|	SADD.M1		R8,R21,R9
	|	SMVAAGH.M2		AR14, R7:R6
	.loc 1 28 0
		SMOVIL		0, R42
	|	SADD.M1		R22,R20,R24
.LCFI1:
	.loc 1 12 0
		SSHFLL		1, R43, R19
	|	SSTDW		R7:R6, *+AR15[2]
		SSHFLL		2, R1, R25
	|	SMVAAGL.M2		AR8, R7:R6
		SSHFLL		2, R16, R29
		SSHFAR		31, R43, R14
	|	SMVAAGH.M2		AR8, R7:R6
.LVL3:
	.loc 1 28 0
		SLT		R42, R16, R0
.LCFI2:
	.loc 1 12 0
		SLTU		R19, R43, R28
	|[!R0]	SBR		.L10
	|	SSTDW		R7:R6, *+AR15[1]
	.loc 1 12 0
		SSHFLL		1, R14, R2
		SSHFLL		1, R9, R48
	|	SADD.M2		R2,R28,R3
		SLTU		R29, R15, R49
		SSHFLL		1, R24, R50
		SLTU		R25, R17, R46
	|	SADD.M2		R50,R49,R53
		SSHFLL		2, R43, R23
	|	SADD.M2		R48,R46,R52
	;; condjump to .L10 occurs
		SSHFLL		3, R16, R48
		SLTU		R23, R19, R44
		SSHFLL		3, R1, R50
		SLTU		R48, R29, R56
		SSHFLL		1, R3, R45
		SSHFLL		1, R53, R57
	|	SADD.M2		R45,R44,R47
		SSHFLL		3, R43, R60
	|	SADD.M2		R57,R56,R49
		SLTU		R50, R25, R55
	;no-op trunc di R49:R48 to pdi R49:R48
	|	SADDA.M2		R49:R48,AR0,AR1
		SSHFLL		1, R52, R51
		SLTU		R60, R23, R54
	|	SADD.M1		R51,R55,R51
		SSHFLL		1, R47, R61
	;no-op trunc di R51:R50 to pdi R51:R50
	|	SADDA.M2		R51:R50,OR11,AR8
		SADD.M1		R61,R54,R61
	|	SMOVIL		0, R19
	;no-op trunc di R61:R60 to pdi R61:R60
		SMOVIL		0, R20
	|	SADDA.M2		R61:R60,OR11,AR14
		SMOVIL		0, R21
	.loc 1 25 0
		SMOVIL		0, R0
		SLT		R19, R18, R2
		SMOVIL		128, R60
.LVL4:
.L9:
	.loc 1 12 0
		SMOV.M2		R20, R48
	|	SMOV.M1		R21, R49
	|	SMOVIL		2, R59
	;no-op trunc di R49:R48 to pdi R49:R48
		SSUB.M1		R19, R16, R58
	|	SADDA.M2		R49:R48,AR14,AR12
		SADDA.M1		R49:R48,AR8,AR10
	|	SLT		R59, R58, R1
	.loc 1 30 0
		SLDDW		*AR12, R43:R42
	.loc 1 31 0
		SLDDW		*AR10, R15:R14
		SNOP		3
	.loc 1 33 0
	[R1]	SBR		.L24
	.loc 1 30 0
		SVBCAST2.M2 		 R43:R42,VR9:VR8
.LVL5:
	.loc 1 31 0
		SVBCAST2.M1 		 R15:R14,VR11:VR10
		SNOP		4
.LVL6:
	.loc 1 33 0
	;; condjump to .L24 occurs
.L5:
.LVL7:
	.loc 1 40 0
	[!R2]	SBR		.L6
	|	SSUB.M2		R20, R10, R48
	|	SSUB.M1		R21, R11, R15
	|	SMOVIL		0, R61
	.loc 1 12 0
		SLTU		R10, R48, R43
	|	SMOV.M2		R26, R42
		SSUB.M2		R43, R15, R49
	|	SMOV.M1		R27, R43
		SMVAGA36.M1		R49:R48, AR4
		SNOP		3
.LVL8:
	.loc 1 40 0
	;; condjump to .L6 occurs
.LVL9:
.L8:
	.loc 1 44 0
		SSHFAR		31, R61, R3
	|	SMVAGA36.M1		R43:R42, AR0
	|	SMOV.M2		R61, R50
.LVL10:
		SMOV.M2		R3, R51
	|	SMOVIL		64, R44
	.loc 1 12 0
		SADD.M2		1,R61,R13
	;no-op trunc di R51:R50 to pdi R51:R50
	|	SMOVIL		0, R45
	|	SADD.M1		R60,R42,R22
	.loc 1 44 0
		SSHFLR		29, R50, R25
	|	SADDA.M2		R45:R44,AR0,AR2
	|	SMOV.M1		R13, R48
.LVL11:
		SSHFLL		3, R51, R29
		SOR		R29, R25, R45
		SSHFLL		3, R50, R44
	|	VLDW.LS 		*AR2,VR1
	.loc 1 51 0
		SSHFAR		31, R13, R9
	|	SADDA.M2		R45:R44,AR4,AR6
		SMOV.M1		R9, R49
	|	SLTU		R22, R42, R23
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLR		29, R48, R44
	|	SMOV.M1		R22, R42
		SSHFLL		3, R49, R45
	|	VLDDWM2.LS 		*AR6,VR7:VR6
	|	SADD.M2		R43,R23,R43
.LVL12:
		SOR		R45, R44, R47
		SSHFLL		3, R48, R46
		SADDA.M2		R47:R46,AR4,AR6
		SNOP		2
		VLDDWM2.LS 		*AR6,VR5:VR4
		SNOP		1
	.loc 1 45 0
		VFCREAL32.M1		VR9:VR8,VR7:VR6,VR3
	|	VFCIMAG32.M3		VR9:VR8,VR7:VR6,VR6
.LVL13:
	.loc 1 46 0
		SNOP		5
.LVL14:
	.loc 1 52 0
		VFCREAL32.M1		VR11:VR10,VR5:VR4,VR7
	|	VFCIMAG32.M3		VR11:VR10,VR5:VR4,VR4
	|	VLDW.LS 		*AR0,VR5
	.loc 1 47 0
		SNOP		1
	.loc 1 48 0
		VFADDS32.M1 		VR6,VR1,VR2
		SNOP		4
	.loc 1 57 0
	[R0]	SBR		.L25
	|	VFADDS32.M1 		VR4,VR2,VR23
	|	SMOVIL		0, R0
	.loc 1 47 0
		VFADDS32.M1 		VR3,VR5,VR0
		SNOP		2
.LVL15:
	.loc 1 54 0
		VFADDS32.M1 		VR7,VR0,VR22
		SNOP		2
.LVL16:
	.loc 1 57 0
	;; condjump to .L25 occurs
	.loc 1 40 0
		SADD.M2		16,R61,R61
	|	VSTW.LS 		VR22,*AR0
.LVL17:
		SLT		R61, R18, R1
	|	VSTW.LS 		VR23,*AR2
	[R1]	SBR		.L8
		SNOP		6
	;; condjump to .L8 occurs
.LVL18:
.L6:
	.loc 1 28 0
		SADD.M2		4,R19,R19
	|	SADD.M1		-32,R20,R56
.LVL19:
		SLT		R19, R16, R1
	|	SADD.M2		-1,R21,R21
	[R1]	SBR		.L9
	|	SLTU		R56, R20, R51
	|	SMOV.M2		R56, R20
		SADD.M2		R21,R51,R21
		SNOP		5
	;; condjump to .L9 occurs
.LVL20:
.L10:
	.loc 1 84 0
		SADD.M1		15,R18,R18
	|	SMVAAGL.M2		AR3, R43:R42
	|	SMOVIL		0, R11
.LVL21:
		SSHFAR		31, R18, R16
.LVL22:
		SSHFLR		28, R16, R26
	|	SMVAAGH.M2		AR3, R43:R42
		SADD.M1		R18,R26,R27
	|	SMOVIL		128, R58
		SSHFAR		4, R27, R10
	|	SADD.M2		R58,R42,R59
.LVL23:
	.loc 1 85 0
		SLT		R11, R10, R2
	|	SADD.M2		-1,R10,R57
	[!R2]	SBR		.L1
	|	SSHFLL		7, R57, R14
	.loc 1 12 0
		SLTU		R59, R42, R12
	|	SADD.M2		R14,R59,R28
		SADD.M2		R43,R12,R15
	|	SSHFLR		25, R57, R17
		SLTU		R28, R59, R13
	|	SADD.M2		R17,R15,R3
		SADD.M2		R3,R13,R8
	|	SMOVIL		128, R9
		SNOP		2
	.loc 1 85 0
	;; condjump to .L1 occurs
.LVL24:
.L11:
	.loc 1 86 0
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R9,R42,R22
		SLTU		R22, R42, R23
	|	SMOV.M2		R22, R42
		SADD.M2		R43,R23,R43
	|	SEQ		R22, R28, R0
	|	VLDDW.LS 		*AR0,VR17:VR16
	.loc 1 85 0
	[R0]	SEQ		R43, R8, R0
	[!R0]	SBR		.L11
		SNOP		5
	.loc 1 86 0
		VSTDWM16.LS 		VR17:VR16,*AR0
	;; condjump to .L11 occurs
.L1:
	.loc 1 88 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL25:
.L25:
	.loc 1 12 0
		SADD.M2		2,R61,R0
	|	SADD.M1		3,R61,R46
	.loc 1 60 0
		SSHFAR		31, R0, R49
	|	SMOV.M2		R0, R50
	|	SMOV.M1		R46, R48
		SMOV.M2		R49, R51
	|	SSHFAR		31, R46, R52
	|	SADD.M1		16,R61,R61
	;no-op trunc di R51:R50 to pdi R51:R50
		SSHFLR		29, R50, R53
	|	SMOV.M2		R52, R49
		SSHFLL		3, R51, R54
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLL		3, R50, R56
		SOR		R54, R53, R57
		SADDA.M2		R57:R56,AR4,AR6
	|	SSHFLR		29, R48, R50
.LVL26:
	.loc 1 67 0
		SSHFLL		3, R49, R55
		SOR		R55, R50, R59
		SSHFLL		3, R48, R58
	|	VLDDWM2.LS 		*AR6,VR15:VR14
.LVL27:
		SADDA.M2		R59:R58,AR4,AR6
	|	SLT		R61, R18, R1
		SMOVIL		0, R0
		SNOP		1
		VLDDWM2.LS 		*AR6,VR13:VR12
		SNOP		3
	.loc 1 61 0
		VFCREAL32.M1		VR17:VR16,VR15:VR14,VR20
	|	VFCIMAG32.M3		VR17:VR16,VR15:VR14,VR14
.LVL28:
	.loc 1 62 0
		SNOP		3
.LVL29:
	.loc 1 68 0
		VFCREAL32.M1		VR19:VR18,VR13:VR12,VR15
	|	VFCIMAG32.M3		VR19:VR18,VR13:VR12,VR12
	.loc 1 69 0
		SNOP		4
	.loc 1 63 0
		VFADDS32.M1 		VR20,VR22,VR13
.LVL30:
	.loc 1 64 0
		VFADDS32.M1 		VR14,VR23,VR21
	|[R1]	SBR		.L8
.LVL31:
	.loc 1 40 0
		SNOP		1
	.loc 1 70 0
		VFADDS32.M1 		VR15,VR13,VR22
.LVL32:
	.loc 1 71 0
		VFADDS32.M1 		VR12,VR21,VR23
		SNOP		1
.LVL33:
	.loc 1 75 0
		VSTW.LS 		VR22,*AR0
	.loc 1 76 0
		VSTW.LS 		VR23,*AR2
	;; condjump to .L8 occurs
		SBR		.L6
		SNOP		6
	;; jump to .L6 occurs
.LVL34:
.L24:
	.loc 1 12 0
		SMVAAA.M2		AR1, OR12
	|	SMOVIL		1, R0
	.loc 1 36 0
		SNOP		1
	.loc 1 12 0
		SADDA.M2		R49:R48,OR12,AR10
		SNOP		1
	.loc 1 34 0
		SLDDW		*-AR10[3], R13:R12
	.loc 1 35 0
		SLDDW		*-AR10[4], R29:R28
		SNOP		3
		SBR		.L5
	.loc 1 34 0
		SVBCAST2.M2 		 R13:R12,VR17:VR16
.LVL35:
	.loc 1 35 0
		SVBCAST2.M1 		 R29:R28,VR19:VR18
		SNOP		4
.LVL36:
	;; jump to .L5 occurs
.LFE0:
	.size	DSPF_sp_fir_cplx_vc, .-DSPF_sp_fir_cplx_vc
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x4e
	.byte	0xc
	.byte	0xf
	.byte	0
	.align	3
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x88
	.byte	0x4
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x417
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_clpx_v1.c"
	.string	"/cygdrive/e/project/function  demo/DSPF_sp_fir_cplx/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_fir_cplx_vc"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x3ee
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x3fb
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xd
	.4byte	0x401
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0x3fb
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0xf
	.4byte	0x106
	.4byte	.LLST5
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST6
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST7
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST8
	.byte	0x5
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x12
	.4byte	0x3fb
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x13
	.4byte	0x3ee
	.4byte	.LLST10
	.byte	0x5
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x13
	.4byte	0x3ee
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x13
	.4byte	0x3ee
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x13
	.4byte	0x3ee
	.4byte	.LLST13
	.byte	0x5
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x14
	.4byte	0x3ee
	.4byte	.LLST14
	.byte	0x6
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x14
	.4byte	0x3ee
	.byte	0x5
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x14
	.4byte	0x3ee
	.4byte	.LLST15
	.byte	0x6
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x14
	.4byte	0x3ee
	.byte	0x5
	.string	"temp_real_0_15"
	.byte	0x1
	.byte	0x15
	.4byte	0x407
	.4byte	.LLST16
	.byte	0x5
	.string	"temp_imag_0_15"
	.byte	0x1
	.byte	0x15
	.4byte	0x407
	.4byte	.LLST17
	.byte	0x5
	.string	"temp_real_1_16"
	.byte	0x1
	.byte	0x15
	.4byte	0x407
	.4byte	.LLST18
	.byte	0x5
	.string	"temp_imag_1_16"
	.byte	0x1
	.byte	0x15
	.4byte	0x407
	.4byte	.LLST19
	.byte	0x5
	.string	"temp_real_2_17"
	.byte	0x1
	.byte	0x16
	.4byte	0x407
	.4byte	.LLST20
	.byte	0x5
	.string	"temp_imag_2_17"
	.byte	0x1
	.byte	0x16
	.4byte	0x407
	.4byte	.LLST21
	.byte	0x5
	.string	"temp_real_3_18"
	.byte	0x1
	.byte	0x16
	.4byte	0x407
	.4byte	.LLST22
	.byte	0x5
	.string	"temp_imag_3_18"
	.byte	0x1
	.byte	0x16
	.4byte	0x407
	.4byte	.LLST23
	.byte	0x5
	.string	"r_temp"
	.byte	0x1
	.byte	0x17
	.4byte	0x414
	.4byte	.LLST24
	.byte	0x5
	.string	"temp_r_real"
	.byte	0x1
	.byte	0x18
	.4byte	0x407
	.4byte	.LLST25
	.byte	0x5
	.string	"temp_r_imag"
	.byte	0x1
	.byte	0x18
	.4byte	0x407
	.4byte	.LLST26
	.byte	0x5
	.string	"h23_flag"
	.byte	0x1
	.byte	0x19
	.4byte	0x106
	.4byte	.LLST27
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x54
	.4byte	0x106
	.4byte	.LLST28
	.byte	0
	.byte	0x7
	.byte	0x1
	.4byte	0x147
	.4byte	0x3fb
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x3ee
	.byte	0x9
	.byte	0x8
	.4byte	0x147
	.byte	0x7
	.byte	0x1
	.4byte	0x13e
	.4byte	0x414
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x407
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x87,0x42
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.llong	.LCFI0
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.byte	0x18
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL23
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x1
	.byte	0x50
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x5b
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x53
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL22
	.llong	.LVL25
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL21
	.llong	.LVL25
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x71
	.byte	0x9f
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL1
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL23
	.llong	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x4d
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x4d
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL8
	.llong	.LVL20
	.2byte	0x1
	.byte	0x54
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL5
	.llong	.LVL20
	.2byte	0x8
	.byte	0x90
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL6
	.llong	.LVL20
	.2byte	0x8
	.byte	0x90
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL7
	.llong	.LVL20
	.2byte	0x8
	.byte	0x90
	.byte	0x70
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x71
	.byte	0x93
	.byte	0x4
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x8
	.byte	0x90
	.byte	0x70
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x71
	.byte	0x93
	.byte	0x4
	.llong	.LVL35
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.byte	0x70
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x71
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL7
	.llong	.LVL20
	.2byte	0x8
	.byte	0x90
	.byte	0x72
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x73
	.byte	0x93
	.byte	0x4
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x8
	.byte	0x90
	.byte	0x72
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x73
	.byte	0x93
	.byte	0x4
	.llong	.LVL36
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.byte	0x72
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x73
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL12
	.llong	.LVL14
	.2byte	0x8
	.byte	0x90
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL27
	.llong	.LVL29
	.2byte	0x8
	.byte	0x90
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL13
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL28
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x74
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL29
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL31
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL31
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x53
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL10
	.llong	.LVL15
	.2byte	0x2
	.byte	0x70
	.byte	0
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	.LVL25
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	.LVL30
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL11
	.llong	.LVL15
	.2byte	0x2
	.byte	0x72
	.byte	0
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	.LVL25
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	.LVL31
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL1
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x1
	.byte	0x60
	.llong	.LVL9
	.llong	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x1
	.byte	0x60
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL36
	.llong	.LFE0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x1
	.byte	0x6a
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

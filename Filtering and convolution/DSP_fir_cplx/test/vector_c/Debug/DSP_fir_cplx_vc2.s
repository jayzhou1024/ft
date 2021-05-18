	.file	"DSP_fir_cplx_vc2.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_cplx_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_vc1
	.type	DSP_fir_cplx_vc1, @function
DSP_fir_cplx_vc1:
.LFB3:
	.file 1 "../DSP_fir_cplx_vc2.c"
	.loc 1 31 0
.LVL0:
	.loc 1 50 0
		SADD.M2		-1,R16,R42
	|	SSHFAR		31, R16, R43
	|	SMVAGA36.M1		R15:R14, AR1
	|	VMOVIL		 0,VR12
.LVL1:
		SSHFLL		1, R42, R0
	|	SADD.M2		-1,R43,R48
	|	SMVAGA36.M1		R13:R12, OR11
		SSHFLL		2, R42, R46
	|	SMVAAGL.M1		AR1, R53:R52
		SLTU		R42, R16, R49
	.loc 1 52 0
		SMOVIL		0, R14
	|	SADD.M1		R48,R49,R1
	|	SMVAAGH.M2		AR1, R53:R52
.LVL2:
	.loc 1 50 0
		SLTU		R46, R0, R9
		SLTU		R0, R42, R2
	.loc 1 52 0
		SLT		R14, R16, R0
	.loc 1 50 0
		SSHFLL		1, R1, R3
	.loc 1 52 0
	[!R0]	SBR		.L8
	|	SADD.M2		R3,R2,R8
	|	SSHFLL		1, R18, R59
	.loc 1 50 0
		SSHFLL		1, R8, R47
	|	SADD.M2		-1,R59,R58
		SADD.M2		R47,R9,R47
	|	SSHFLR		5, R58, R12
.LVL3:
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,OR11,AR12
	|	SADD.M1		1,R12,R13
	|	SMOVIL		0, R1
	.loc 1 31 0
		SMOVIL		128, R6
		SMOVIL		0, R7
	[R0]	SSUBA.L		R7:R6, AR7, AR7
	;; condjump to .L8 occurs
.LVL4:
	.loc 1 25 0
		SMOVIL		0, R50
		SNOP		1
		SMOVIL		0, R48
		SSHFLL		1, R13, R15
		SLT		R1, R59, R17
		SMOVIL		128, R19
.LVL5:
.L7:
		SMOV.M2		R50, R46
	|	SMOV.M1		R48, R47
	|	SMOVIL		2, R21
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR12,AR10
	|	SSUB.M1		R1, R16, R20
.LVL6:
	.loc 1 60 0
		SLT		R21, R20, R2
	.loc 1 55 0
		SLDW		*-AR10[1], R22
.LVL7:
	.loc 1 56 0
		SLDW		*AR10, R23
		SNOP		2
	.loc 1 60 0
	[R2]	SBR		.L26
	|	SMOVIL		0, R2
	.loc 1 53 0
		SNOP		1
	.loc 1 57 0
		SVBCAST.M2 		 R22,VR11
	.loc 1 56 0
		SVBCAST.M1 		 R23,VR10
		SNOP		3
.LVL8:
	.loc 1 60 0
	;; condjump to .L26 occurs
.LVL9:
.L5:
	.loc 1 71 0
		SMOV.M2		R17, R0
	|	SSUB.M1		R50, R10, R46
	|	SMOVIL		0, R54
	[!R0]	SBR		.L13
	|	SLTU		R10, R46, R26
	|	SSUB.M2		R48, R11, R27
	|	SMOV.M1		R52, R42
	.loc 1 25 0
		SSUB.M2		R26, R27, R47
	|	SMOV.M1		R53, R43
		SMVAGA36.M1		R47:R46, AR6
		SNOP		4
.LVL10:
	.loc 1 71 0
	;; condjump to .L13 occurs
.LVL11:
.L12:
	.loc 1 73 0
	[!R1]	SBR		.L27
	|	SMVAGA36.M1		R43:R42, AR0
	|	SSHFAR		1, R54, R46
	|	SADD.M2		R19,R42,R55
.LVL12:
	.loc 1 25 0
		SMOVIL		0, R57
		SMOVIL		64, R56
		SADDA.M2		R57:R56,AR0,AR2
	|	SMOVIL		64, R44
	.loc 1 80 0
		SSHFAR		31, R46, R57
	.loc 1 25 0
		SMOVIL		0, R45
	[R1]	SADDA.M2		R45:R44,AR0,AR4
	|	SSHFLR		26, R46, R28
	;; condjump to .L27 occurs
	.loc 1 80 0
		SSHFLL		6, R57, R45
	|	VLDW.LS 		*AR2,VR9
	|	VLDW.LS 		*AR0,VR8
	|	SADD.M1		2,R54,R54
.LVL13:
		SOR		R45, R28, R29
		SSHFLL		6, R46, R44
	|	SMOV.M2		R29, R47
		SMOV.M2		R44, R46
	|	SLTU		R55, R42, R60
	|	SMOV.M1		R55, R42
.LVL14:
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR2
	|	SEQ		R15, R54, R0
	|	SADD.M1		R43,R60,R43
.LVL15:
		SNOP		2
	.loc 1 83 0
		VLDW.LS 		*AR2,VR3
	|	VLDW.LS 		*+AR2[1],VR0
	.loc 1 89 0
		SNOP		7
	.loc 1 83 0
		VCMUL16T.M1		 VR3,VR10,VR7:VR6
	|	VCMUL16T.M3		 VR0,VR11,VR5:VR4
.LVL16:
	.loc 1 89 0
		SNOP		3
	.loc 1 83 0
		VSTDW.LS 		VR7:VR6,*AR7
.LVL17:
	.loc 1 85 0
		VLDW.LS 		*+AR7[16],VR1
	|	VLDW.LS 		*AR7,VR2
.LVL18:
	.loc 1 89 0
		VSTDW.LS 		VR5:VR4,*AR7
	.loc 1 92 0
		VLDW.LS 		*AR7,VR15
	|	VLDW.LS 		*+AR7[16],VR16
	.loc 1 93 0
		SNOP		1
	.loc 1 94 0
	[R2]	SBR		.L28
		SNOP		3
	.loc 1 86 0
		VADD.M2		VR8,VR2,VR5
	|	VADD.M1		VR9,VR1,VR7
.LVL19:
	.loc 1 87 0
		SNOP		1
.LVL20:
	.loc 1 92 0
		VADD.M2		VR5,VR15,VR26
	|	VADD.M1		VR7,VR16,VR28
	;; condjump to .L28 occurs
.LVL21:
.L11:
	.loc 1 71 0
	[!R0]	SBR		.L12
	|	VSTW.LS 		VR26,*AR0
	.loc 1 112 0
		VSTW.LS 		VR28,*AR4
		SNOP		5
	.loc 1 71 0
	;; condjump to .L12 occurs
.LVL22:
.L13:
	.loc 1 52 0
		SADD.M2		4,R1,R1
	|	SADD.M1		-16,R50,R61
.LVL23:
		SLT		R1, R16, R2
	|	SADD.M2		-1,R48,R51
.LVL24:
	[R2]	SBR		.L7
	|	SLTU		R61, R50, R42
	|	SMOV.M2		R61, R50
		SADD.M2		R51,R42,R48
		SNOP		5
	;; condjump to .L7 occurs
.LVL25:
.L8:
	.loc 1 116 0
		SADD.M2		15,R18,R18
	|	SMOVIL		0, R3
.LVL26:
		SSHFAR		31, R18, R16
.LVL27:
		SSHFLR		28, R16, R52
		SADD.M2		R18,R52,R53
	|	SMOVIL		128, R47
		SSHFAR		4, R53, R43
		SSHFLL		1, R43, R49
	|	SMVAAGL.M2		AR1, R43:R42
.LVL28:
	.loc 1 118 0
		SLT		R3, R49, R0
	|	SADD.M1		-1,R49,R8
		SMVAAGH.M2		AR1, R43:R42
	|[!R0]	SBR		.L1
	|	SSHFLR		1, R8, R59
	.loc 1 25 0
		SSHFLL		7, R59, R11
		SADD.M2		R47,R42,R14
	|	SSHFLR		26, R8, R12
	|	SMOV.M1		R42, R44
		SLTU		R14, R42, R10
	|	SADD.M2		R11,R14,R13
	|	SMOV.M1		R43, R45
.LVL29:
		SADD.M2		R43,R10,R58
	|	SLTU		R13, R14, R15
		SADD.M2		R12,R58,R17
	|	SMOVIL		128, R20
		SADD.M2		R17,R15,R19
	;; condjump to .L1 occurs
.LVL30:
.L14:
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R20,R42,R21
	|	SMOVIL		64, R24
		SLTU		R21, R42, R22
	|	SMOV.M2		R43, R23
	|	SMVAGA36.M1		R45:R44, AR2
		SMOVIL		64, R42
	|	VLDW.LS 		*AR0,VR13
	|	SADD.M2		R24,R44,R25
.LVL31:
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR0,AR4
	|	SEQ		R21, R13, R1
	|	SADD.M1		R23,R22,R43
	.loc 1 118 0
	[R1]	SEQ		R43, R19, R1
	|	SMOV.M1		R21, R42
		SLTU		R25, R44, R27
	|	SMOV.M1		R25, R44
	.loc 1 120 0
		VLDW.LS 		*AR4,VR14
	|	SADD.M2		R45,R27,R45
.LVL32:
		SNOP		2
	.loc 1 122 0
		VSHFAR		15,VR13, VR29
.LVL33:
	.loc 1 118 0
	[!R1]	SBR		.L14
		SNOP		3
	.loc 1 123 0
		VSHFAR		15,VR14, VR30
.LVL34:
	.loc 1 124 0
		VSBALE2		VR29,VR30,VR31
.LVL35:
	.loc 1 126 0
		VSTW.LS 		VR31,*AR2
	;; condjump to .L14 occurs
.LVL36:
.L1:
	.loc 1 129 0
		SMOVIL		128, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
.LVL37:
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL38:
.L28:
	.loc 1 95 0
		VLDW.LS 		*+AR2[2],VR17
	|	VLDW.LS 		*+AR2[3],VR18
.LVL39:
	.loc 1 96 0
		SNOP		7
.LVL40:
	.loc 1 98 0
		VCMUL16T.M1		 VR17,VR13,VR21:VR20
	|	VCMUL16T.M3		 VR18,VR14,VR23:VR22
.LVL41:
	.loc 1 104 0
		SNOP		3
	.loc 1 98 0
		VSTDW.LS 		VR21:VR20,*AR7
.LVL42:
	.loc 1 100 0
		VLDW.LS 		*+AR7[16],VR19
	|	VLDW.LS 		*AR7,VR21
.LVL43:
	.loc 1 104 0
		VSTDW.LS 		VR23:VR22,*AR7
	.loc 1 107 0
		VLDW.LS 		*AR7,VR25
	|	VLDW.LS 		*+AR7[16],VR27
	.loc 1 108 0
		SNOP		3
	.loc 1 71 0
	[!R0]	SBR		.L12
		SNOP		1
	.loc 1 101 0
		VADD.M2		VR26,VR21,VR23
	|	VADD.M1		VR28,VR19,VR24
.LVL44:
	.loc 1 102 0
		SNOP		1
.LVL45:
	.loc 1 107 0
		VADD.M2		VR23,VR25,VR26
	|	VADD.M1		VR24,VR27,VR28
.LVL46:
	.loc 1 111 0
		VSTW.LS 		VR26,*AR0
	.loc 1 112 0
		VSTW.LS 		VR28,*AR4
	;; condjump to .L12 occurs
		SBR		.L13
		SNOP		6
	;; jump to .L13 occurs
.LVL47:
.L27:
	.loc 1 80 0
		SSHFAR		31, R46, R57
	|	SADD.M2		R19,R42,R55
	|	VMOV		VR12,	VR8
	|	SADD.M1		2,R54,R54
.LVL48:
	.loc 1 25 0
		SMOVIL		64, R44
	|	VMOV		VR12,	VR9
.LVL49:
		SMOVIL		0, R45
		SADDA.M2		R45:R44,AR0,AR4
	|	SSHFLR		26, R46, R28
	.loc 1 80 0
		SSHFLL		6, R57, R45
		SOR		R45, R28, R29
		SSHFLL		6, R46, R44
	|	SMOV.M2		R29, R47
		SMOV.M2		R44, R46
	|	SLTU		R55, R42, R60
	|	SMOV.M1		R55, R42
.LVL50:
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR2
	|	SEQ		R15, R54, R0
	|	SADD.M1		R43,R60,R43
.LVL51:
		SNOP		2
	.loc 1 83 0
		VLDW.LS 		*AR2,VR3
	|	VLDW.LS 		*+AR2[1],VR0
	.loc 1 89 0
		SNOP		7
	.loc 1 83 0
		VCMUL16T.M1		 VR3,VR10,VR7:VR6
	|	VCMUL16T.M3		 VR0,VR11,VR5:VR4
.LVL52:
	.loc 1 89 0
		SNOP		3
	.loc 1 83 0
		VSTDW.LS 		VR7:VR6,*AR7
.LVL53:
	.loc 1 85 0
		VLDW.LS 		*+AR7[16],VR1
	|	VLDW.LS 		*AR7,VR2
.LVL54:
	.loc 1 89 0
		VSTDW.LS 		VR5:VR4,*AR7
	.loc 1 92 0
		VLDW.LS 		*AR7,VR15
	|	VLDW.LS 		*+AR7[16],VR16
	.loc 1 93 0
		SNOP		1
	.loc 1 94 0
	[!R2]	SBR		.L11
		SNOP		3
	.loc 1 86 0
		VADD.M2		VR8,VR2,VR5
	|	VADD.M1		VR9,VR1,VR7
.LVL55:
	.loc 1 87 0
		SNOP		1
.LVL56:
	.loc 1 92 0
		VADD.M2		VR5,VR15,VR26
	|	VADD.M1		VR7,VR16,VR28
	;; condjump to .L11 occurs
.LVL57:
		SBR		.L28
		SNOP		6
	;; jump to .L28 occurs
.LVL58:
.L26:
	.loc 1 62 0
		SLDW		*-AR10[3], R24
	|	SMOVIL		1, R2
.LVL59:
	.loc 1 63 0
		SLDW		*-AR10[2], R25
		SNOP		2
		SBR		.L5
		SNOP		1
	.loc 1 64 0
		SVBCAST.M2 		 R24,VR14
	.loc 1 63 0
		SVBCAST.M1 		 R25,VR13
		SNOP		3
.LVL60:
	;; jump to .L5 occurs
.LFE3:
	.size	DSP_fir_cplx_vc1, .-DSP_fir_cplx_vc1
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
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x501
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_cplx_vc2.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_cplx/test/vector_c/Debug"
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
	.byte	0x3
	.byte	0x1
	.string	"DSP_fir_cplx_vc1"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x4c5
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.4byte	0x4d2
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4d8
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4d2
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x1d
	.4byte	0x136
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x1e
	.4byte	0x136
	.4byte	.LLST4
	.byte	0x5
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x21
	.4byte	0x4c5
	.4byte	.LLST5
	.byte	0x5
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x21
	.4byte	0x4c5
	.4byte	.LLST6
	.byte	0x5
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x21
	.4byte	0x4c5
	.4byte	.LLST7
	.byte	0x5
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x21
	.4byte	0x4c5
	.4byte	.LLST8
	.byte	0x5
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c5
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c5
	.4byte	.LLST10
	.byte	0x5
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c5
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x23
	.4byte	0x4c5
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x25
	.4byte	0x4eb
	.4byte	.LLST13
	.byte	0x5
	.string	"temp_vr_0_15_real"
	.byte	0x1
	.byte	0x26
	.4byte	0x4de
	.4byte	.LLST14
	.byte	0x5
	.string	"temp_vr_0_15_imag"
	.byte	0x1
	.byte	0x26
	.4byte	0x4de
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_vr_computer"
	.byte	0x1
	.byte	0x28
	.4byte	0x4f1
	.4byte	.LLST16
	.byte	0x5
	.string	"temp_vr_computer_int"
	.byte	0x1
	.byte	0x29
	.4byte	0x4eb
	.4byte	.LLST17
	.byte	0x5
	.string	"temp_vr_computer_real"
	.byte	0x1
	.byte	0x2a
	.4byte	0x4de
	.4byte	.LLST18
	.byte	0x5
	.string	"temp_vr_computer_imag"
	.byte	0x1
	.byte	0x2a
	.4byte	0x4de
	.4byte	.LLST19
	.byte	0x5
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x2b
	.4byte	0x4d2
	.4byte	.LLST20
	.byte	0x5
	.string	"tmpx"
	.byte	0x1
	.byte	0x2c
	.4byte	0x4fe
	.4byte	.LLST21
	.byte	0x5
	.string	"int_h_0"
	.byte	0x1
	.byte	0x2e
	.4byte	0x136
	.4byte	.LLST22
	.byte	0x5
	.string	"int_h_1"
	.byte	0x1
	.byte	0x2e
	.4byte	0x136
	.4byte	.LLST23
	.byte	0x6
	.string	"int_h_2"
	.byte	0x1
	.byte	0x2e
	.4byte	0x136
	.byte	0x2
	.byte	0x7a
	.byte	0x78
	.byte	0x6
	.string	"int_h_3"
	.byte	0x1
	.byte	0x2e
	.4byte	0x136
	.byte	0x2
	.byte	0x90
	.byte	0x28
	.byte	0x5
	.string	"svb_temp_h_0"
	.byte	0x1
	.byte	0x2f
	.4byte	0x4de
	.4byte	.LLST5
	.byte	0x5
	.string	"svb_temp_h_1"
	.byte	0x1
	.byte	0x2f
	.4byte	0x4de
	.4byte	.LLST6
	.byte	0x6
	.string	"svb_temp_h_2"
	.byte	0x1
	.byte	0x2f
	.4byte	0x4de
	.byte	0x2
	.byte	0x90
	.byte	0x6d
	.byte	0x6
	.string	"svb_temp_h_3"
	.byte	0x1
	.byte	0x2f
	.4byte	0x4de
	.byte	0x2
	.byte	0x90
	.byte	0x6e
	.byte	0x5
	.string	"offset"
	.byte	0x1
	.byte	0x31
	.4byte	0x136
	.4byte	.LLST26
	.byte	0x5
	.string	"flag_h23"
	.byte	0x1
	.byte	0x31
	.4byte	0x136
	.4byte	.LLST27
	.byte	0x6
	.string	"int_h"
	.byte	0x1
	.byte	0x32
	.4byte	0x4fe
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x33
	.4byte	0x136
	.4byte	.LLST28
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x33
	.4byte	0x136
	.4byte	.LLST29
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x33
	.4byte	0x136
	.4byte	.LLST30
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x74
	.4byte	0x136
	.4byte	.LLST31
	.byte	0x5
	.string	"num"
	.byte	0x1
	.byte	0x74
	.4byte	0x136
	.4byte	.LLST32
	.byte	0x5
	.string	"vr"
	.byte	0x1
	.byte	0x75
	.4byte	0x4eb
	.4byte	.LLST33
	.byte	0
	.byte	0x7
	.byte	0x1
	.4byte	0x129
	.4byte	0x4d2
	.byte	0x8
	.byte	0x1f
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x4c5
	.byte	0x9
	.byte	0x8
	.4byte	0x129
	.byte	0x7
	.byte	0x1
	.4byte	0x136
	.4byte	0x4eb
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x4de
	.byte	0x7
	.byte	0x1
	.4byte	0x136
	.4byte	0x4fe
	.byte	0x8
	.byte	0x1f
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x136
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
	.byte	0xa
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
	.byte	0x2
	.byte	0xa
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
	.llong	.LVL0
	.llong	.LVL29
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL29
	.llong	.LVL38
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x5b
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL27
	.llong	.LVL38
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL26
	.llong	.LVL38
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x71
	.byte	0x9f
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL8
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL8
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL9
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL38
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL60
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL38
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL60
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL15
	.llong	.LVL21
	.2byte	0x2
	.byte	0x72
	.byte	0
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL38
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL51
	.llong	.LVL58
	.2byte	0x2
	.byte	0x72
	.byte	0
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL15
	.llong	.LVL21
	.2byte	0x2
	.byte	0x72
	.byte	0x4
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL38
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL51
	.llong	.LVL58
	.2byte	0x2
	.byte	0x72
	.byte	0x4
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL39
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL40
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL1
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL19
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	.LVL31
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL33
	.llong	.LVL35
	.2byte	0x2
	.byte	0x90
	.byte	0x7d
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.byte	0x7f
	.llong	.LVL38
	.llong	.LVL44
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	.LVL44
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	.LVL48
	.llong	.LVL55
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL55
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.byte	0x7e
	.llong	.LVL38
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	.LVL45
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.byte	0x78
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	.LVL49
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL56
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL5
	.llong	.LVL16
	.2byte	0x8
	.byte	0x90
	.byte	0x76
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x77
	.byte	0x93
	.byte	0x4
	.llong	.LVL17
	.llong	.LVL22
	.2byte	0x8
	.byte	0x90
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.llong	.LVL22
	.llong	.LVL38
	.2byte	0x8
	.byte	0x90
	.byte	0x76
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x77
	.byte	0x93
	.byte	0x4
	.llong	.LVL38
	.llong	.LVL41
	.2byte	0x8
	.byte	0x90
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.llong	.LVL42
	.llong	.LVL47
	.2byte	0x8
	.byte	0x90
	.byte	0x74
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x75
	.byte	0x93
	.byte	0x4
	.llong	.LVL47
	.llong	.LVL52
	.2byte	0x8
	.byte	0x90
	.byte	0x76
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x77
	.byte	0x93
	.byte	0x4
	.llong	.LVL53
	.llong	.LVL58
	.2byte	0x8
	.byte	0x90
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.llong	.LVL58
	.llong	.LFE3
	.2byte	0x8
	.byte	0x90
	.byte	0x76
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x77
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL4
	.llong	.LVL37
	.2byte	0x1
	.byte	0x57
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x1
	.byte	0x57
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	.LVL38
	.llong	.LVL42
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	.LVL42
	.llong	.LVL45
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL45
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x79
	.llong	.LVL53
	.llong	.LVL56
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL56
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL18
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL20
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL38
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL43
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	.LVL45
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x7b
	.llong	.LVL54
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL56
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL10
	.llong	.LVL25
	.2byte	0x1
	.byte	0x56
	.llong	.LVL38
	.llong	.LVL58
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL4
	.llong	.LVL29
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL29
	.llong	.LVL38
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL6
	.llong	.LVL25
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL7
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x26
	.llong	.LVL38
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x26
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL12
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x3e
	.llong	.LVL14
	.llong	.LVL21
	.2byte	0x6
	.byte	0x92
	.byte	0x46
	.byte	0x7e
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.llong	.LVL47
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.byte	0x3e
	.llong	.LVL50
	.llong	.LVL58
	.2byte	0x6
	.byte	0x92
	.byte	0x46
	.byte	0x7e
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL4
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL9
	.llong	.LVL24
	.2byte	0x1
	.byte	0x62
	.llong	.LVL38
	.llong	.LVL58
	.2byte	0x1
	.byte	0x62
	.llong	.LVL58
	.llong	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL60
	.llong	.LFE3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x1
	.byte	0x61
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x46
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x46
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL28
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL28
	.llong	.LVL38
	.2byte	0x1
	.byte	0x51
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

	.file	"DSP_fir_cplx_hM4X4_vc.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_cplx_hM4X4_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_hM4X4_vc1
	.type	DSP_fir_cplx_hM4X4_vc1, @function
DSP_fir_cplx_hM4X4_vc1:
.LFB3:
	.file 1 "../DSP_fir_cplx_hM4X4_vc.c"
	.loc 1 30 0
.LVL0:
	.loc 1 49 0
		SADD.M2		-1,R16,R42
	|	SSHFAR		31, R16, R43
	|	SMVAGA36.M1		R15:R14, AR1
	|	VMOVIL		 0,VR14
.LVL1:
		SSHFLL		1, R42, R0
	|	SADD.M2		-1,R43,R48
	|	SMVAGA36.M1		R13:R12, OR11
		SSHFLL		2, R42, R46
	|	SMVAAGL.M1		AR1, R55:R54
		SLTU		R42, R16, R49
	.loc 1 51 0
		SMOVIL		0, R14
	|	SADD.M1		R48,R49,R1
	|	SMVAAGH.M2		AR1, R55:R54
.LVL2:
	.loc 1 49 0
		SLTU		R0, R42, R2
		SLTU		R46, R0, R9
	.loc 1 51 0
		SLT		R14, R16, R0
	.loc 1 49 0
		SSHFLL		1, R1, R3
	.loc 1 51 0
	[!R0]	SBR		.L7
	|	SADD.M2		R3,R2,R8
	|	SSHFLL		1, R18, R12
.LVL3:
	.loc 1 49 0
		SSHFLL		1, R8, R47
	|	SADD.M2		-1,R12,R58
		SADD.M2		R47,R9,R47
	|	SSHFLR		5, R58, R13
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,OR11,AR12
	|	SADD.M1		1,R13,R15
	|	SMOVIL		0, R1
	.loc 1 30 0
		SMOVIL		128, R6
		SMOVIL		0, R7
	[R0]	SSUBA.L		R7:R6, AR7, AR7
	;; condjump to .L7 occurs
.LVL4:
	.loc 1 24 0
		SMOVIL		0, R50
		SNOP		1
		SMOVIL		0, R60
		SSHFLL		1, R15, R17
		SLT		R1, R12, R2
		SMOVIL		128, R19
.LVL5:
.L6:
		SSUB.M2		R50, R10, R46
	|	SMOV.M1		R50, R52
	|[!R2]	SBR		.L11
		SMOV.M2		R60, R53
	|	SLTU		R10, R46, R20
	|	SSUB.M1		R60, R11, R21
	;no-op trunc di R53:R52 to pdi R53:R52
		SADDA.M2		R53:R52,AR12,AR10
	|	SSUB.M1		R20, R21, R47
	|	SMOVIL		0, R52
.LVL6:
		SMVAGA36.M1		R47:R46, AR6
	.loc 1 53 0
	[R2]	SLDW		*-AR10[1], R22
	|	SMOV.M2		R54, R42
.LVL7:
	.loc 1 54 0
	[R2]	SLDW		*-AR10[2], R23
	|	SMOV.M2		R55, R43
.LVL8:
	.loc 1 55 0
	[R2]	SLDW		*-AR10[3], R24
	;; condjump to .L11 occurs
.LVL9:
	.loc 1 56 0
		SLDW		*AR10, R46
		SNOP		2
	.loc 1 57 0
		SVBCAST.M2 		 R22,VR11
	.loc 1 58 0
		SVBCAST.M1 		 R23,VR12
	.loc 1 59 0
		SVBCAST.M1 		 R24,VR13
	.loc 1 56 0
		SVBCAST.M1 		 R46,VR10
		SNOP		3
.LVL10:
.L10:
	.loc 1 72 0
		SMVAGA36.M1		R43:R42, AR2
	|[!R1]	SBR		.L20
	|	SSHFAR		1, R52, R25
	|	SADD.M2		R19,R42,R53
.LVL11:
	.loc 1 24 0
		SMOVIL		0, R57
		SMOVIL		64, R56
		SADDA.M2		R57:R56,AR2,AR0
	|	SMOVIL		64, R44
		SMOVIL		0, R45
	.loc 1 75 0
		SSHFAR		31, R25, R57
	|[R1]	SADDA.M1		R45:R44,AR2,AR4
		SSHFLR		26, R25, R26
	;; condjump to .L20 occurs
		SSHFLL		6, R57, R45
	|	VLDW.LS 		*AR0,VR9
	|	VLDW.LS 		*AR2,VR8
	|	SADD.M2		2,R52,R52
.LVL12:
		SOR		R45, R26, R27
		SSHFLL		6, R25, R44
	|	SMOV.M2		R27, R47
		SMOV.M2		R44, R46
	|	SEQ		R17, R52, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR0
	|	SLTU		R53, R42, R28
	|	SMOV.M1		R53, R42
.LVL13:
		SADD.M1		R43,R28,R43
		SNOP		1
	.loc 1 78 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*+AR0[1],VR0
	.loc 1 84 0
		SNOP		7
	.loc 1 78 0
		VCMUL16T.M1		 VR3,VR10,VR7:VR6
	|	VCMUL16T.M3		 VR0,VR11,VR5:VR4
.LVL14:
	.loc 1 84 0
		SNOP		3
	.loc 1 78 0
		VSTDW.LS 		VR7:VR6,*AR7
.LVL15:
	.loc 1 80 0
		VLDW.LS 		*+AR7[16],VR1
	|	VLDW.LS 		*AR7,VR7
.LVL16:
	.loc 1 84 0
		VSTDW.LS 		VR5:VR4,*AR7
	.loc 1 89 0
		VLDW.LS 		*+AR0[2],VR2
	|	VLDW.LS 		*+AR0[3],VR5
	.loc 1 87 0
		VLDW.LS 		*AR7,VR17
	|	VLDW.LS 		*+AR7[16],VR23
	.loc 1 88 0
		SNOP		4
	.loc 1 81 0
		VADD.M2		VR8,VR7,VR15
	|	VADD.M1		VR9,VR1,VR16
.LVL17:
	.loc 1 82 0
		SNOP		1
.LVL18:
	.loc 1 92 0
		VCMUL16T.M1		 VR2,VR12,VR19:VR18
	|	VCMUL16T.M3		 VR5,VR13,VR21:VR20
.LVL19:
	.loc 1 87 0
		VADD.M2		VR15,VR17,VR22
	|	VADD.M1		VR16,VR23,VR24
.LVL20:
	.loc 1 88 0
		SNOP		2
.LVL21:
	.loc 1 92 0
		VSTDW.LS 		VR19:VR18,*AR7
.LVL22:
	.loc 1 94 0
		VLDW.LS 		*+AR7[16],VR19
	|	VLDW.LS 		*AR7,VR25
.LVL23:
	.loc 1 98 0
		VSTDW.LS 		VR21:VR20,*AR7
	.loc 1 101 0
		VLDW.LS 		*AR7,VR27
	|	VLDW.LS 		*+AR7[16],VR29
	.loc 1 102 0
		SNOP		3
	.loc 1 66 0
	[!R0]	SBR		.L10
		SNOP		1
	.loc 1 95 0
		VADD.M2		VR22,VR25,VR21
	|	VADD.M1		VR24,VR19,VR26
.LVL24:
	.loc 1 96 0
		SNOP		1
.LVL25:
	.loc 1 101 0
		VADD.M2		VR21,VR27,VR28
	|	VADD.M1		VR26,VR29,VR30
.LVL26:
	.loc 1 104 0
		VSTW.LS 		VR28,*AR2
	.loc 1 105 0
		VSTW.LS 		VR30,*AR4
	;; condjump to .L10 occurs
.LVL27:
.L11:
	.loc 1 51 0
		SADD.M2		4,R1,R1
	|	SADD.M1		-16,R50,R29
.LVL28:
		SLT		R1, R16, R0
	|	SADD.M2		-1,R60,R51
	[R0]	SBR		.L6
	|	SLTU		R29, R50, R59
	|	SMOV.M2		R29, R50
		SADD.M2		R51,R59,R60
		SNOP		5
	;; condjump to .L6 occurs
.LVL29:
.L7:
	.loc 1 109 0
		SADD.M2		15,R18,R18
	|	SMOVIL		0, R42
.LVL30:
		SSHFAR		31, R18, R16
.LVL31:
		SSHFLR		28, R16, R54
		SADD.M2		R18,R54,R55
	|	SMOVIL		128, R3
		SSHFAR		4, R55, R61
		SSHFLL		1, R61, R43
.LVL32:
	.loc 1 111 0
		SLT		R42, R43, R2
	|	SADD.M1		-1,R43,R49
	|	SMVAAGL.M2		AR1, R43:R42
	[!R2]	SBR		.L1
	|	SSHFLR		1, R49, R9
		SMVAAGH.M2		AR1, R43:R42
	|	SSHFLL		7, R9, R14
	.loc 1 24 0
		SSHFLR		26, R49, R10
.LVL33:
		SADD.M2		R3,R42,R8
	|	SMOV.M1		R42, R44
	|	SMOVIL		128, R17
		SLTU		R8, R42, R47
	|	SADD.M2		R14,R8,R11
	|	SMOV.M1		R43, R45
		SADD.M2		R43,R47,R12
	|	SLTU		R11, R8, R58
		SADD.M2		R10,R12,R13
	;; condjump to .L1 occurs
		SADD.M2		R13,R58,R15
.LVL34:
.L12:
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R17,R42,R19
	|	SMOVIL		64, R22
		SLTU		R19, R42, R20
	|	SMOV.M2		R43, R21
	|	SMVAGA36.M1		R45:R44, AR2
		SMOVIL		64, R42
	|	VLDW.LS 		*AR0,VR31
	|	SADD.M2		R22,R44,R23
.LVL35:
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR0,AR4
	|	SEQ		R19, R11, R1
	|	SADD.M1		R21,R20,R43
	.loc 1 111 0
	[R1]	SEQ		R43, R15, R1
	|	SMOV.M1		R19, R42
		SLTU		R23, R44, R46
	|	SMOV.M1		R23, R44
	.loc 1 113 0
		VLDW.LS 		*AR4,VR32
	|	SADD.M2		R45,R46,R45
.LVL36:
		SNOP		2
	.loc 1 115 0
		VSHFAR		15,VR31, VR33
.LVL37:
	.loc 1 111 0
	[!R1]	SBR		.L12
		SNOP		3
	.loc 1 116 0
		VSHFAR		15,VR32, VR34
.LVL38:
	.loc 1 117 0
		VSBALE2		VR33,VR34,VR35
.LVL39:
	.loc 1 119 0
		VSTW.LS 		VR35,*AR2
	;; condjump to .L12 occurs
.LVL40:
.L1:
	.loc 1 122 0
		SMOVIL		128, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
.LVL41:
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL42:
.L20:
	.loc 1 24 0
		SMOVIL		64, R44
	|	SADD.M2		2,R52,R52
	|	VMOV		VR14,	VR8
	|	SADD.M1		R19,R42,R53
.LVL43:
		SMOVIL		0, R45
	|	VMOV		VR14,	VR9
.LVL44:
	.loc 1 75 0
		SSHFAR		31, R25, R57
	|	SADDA.M2		R45:R44,AR2,AR4
		SSHFLR		26, R25, R26
		SSHFLL		6, R57, R45
		SOR		R45, R26, R27
		SSHFLL		6, R25, R44
	|	SMOV.M2		R27, R47
		SMOV.M2		R44, R46
	|	SEQ		R17, R52, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR0
	|	SLTU		R53, R42, R28
	|	SMOV.M1		R53, R42
.LVL45:
		SADD.M1		R43,R28,R43
		SNOP		1
	.loc 1 78 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*+AR0[1],VR0
	.loc 1 84 0
		SNOP		7
	.loc 1 78 0
		VCMUL16T.M1		 VR3,VR10,VR7:VR6
	|	VCMUL16T.M3		 VR0,VR11,VR5:VR4
.LVL46:
	.loc 1 84 0
		SNOP		3
	.loc 1 78 0
		VSTDW.LS 		VR7:VR6,*AR7
.LVL47:
	.loc 1 80 0
		VLDW.LS 		*+AR7[16],VR1
	|	VLDW.LS 		*AR7,VR7
.LVL48:
	.loc 1 84 0
		VSTDW.LS 		VR5:VR4,*AR7
	.loc 1 89 0
		VLDW.LS 		*+AR0[2],VR2
	|	VLDW.LS 		*+AR0[3],VR5
	.loc 1 87 0
		VLDW.LS 		*AR7,VR17
	|	VLDW.LS 		*+AR7[16],VR23
	.loc 1 88 0
		SNOP		4
	.loc 1 81 0
		VADD.M2		VR8,VR7,VR15
	|	VADD.M1		VR9,VR1,VR16
.LVL49:
	.loc 1 82 0
		SNOP		1
.LVL50:
	.loc 1 92 0
		VCMUL16T.M1		 VR2,VR12,VR19:VR18
	|	VCMUL16T.M3		 VR5,VR13,VR21:VR20
.LVL51:
	.loc 1 87 0
		VADD.M2		VR15,VR17,VR22
	|	VADD.M1		VR16,VR23,VR24
.LVL52:
	.loc 1 88 0
		SNOP		2
.LVL53:
	.loc 1 92 0
		VSTDW.LS 		VR19:VR18,*AR7
.LVL54:
	.loc 1 94 0
		VLDW.LS 		*+AR7[16],VR19
	|	VLDW.LS 		*AR7,VR25
.LVL55:
	.loc 1 98 0
		VSTDW.LS 		VR21:VR20,*AR7
	.loc 1 101 0
		VLDW.LS 		*AR7,VR27
	|	VLDW.LS 		*+AR7[16],VR29
	.loc 1 102 0
		SNOP		3
	.loc 1 66 0
	[!R0]	SBR		.L10
		SNOP		1
	.loc 1 95 0
		VADD.M2		VR22,VR25,VR21
	|	VADD.M1		VR24,VR19,VR26
.LVL56:
	.loc 1 96 0
		SNOP		1
.LVL57:
	.loc 1 101 0
		VADD.M2		VR21,VR27,VR28
	|	VADD.M1		VR26,VR29,VR30
.LVL58:
	.loc 1 104 0
		VSTW.LS 		VR28,*AR2
	.loc 1 105 0
		VSTW.LS 		VR30,*AR4
	;; condjump to .L10 occurs
		SBR		.L11
		SNOP		6
	;; jump to .L11 occurs
.LFE3:
	.size	DSP_fir_cplx_hM4X4_vc1, .-DSP_fir_cplx_hM4X4_vc1
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
	.4byte	0x4fe
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_cplx_hM4X4_vc.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_cplx_hM4X4/test/vector_c/Debug"
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
	.string	"DSP_fir_cplx_hM4X4_vc1"
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x4c2
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x19
	.4byte	0x4cf
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x1a
	.4byte	0x4d5
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x1b
	.4byte	0x4cf
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x1c
	.4byte	0x141
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x1d
	.4byte	0x141
	.4byte	.LLST4
	.byte	0x5
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x20
	.4byte	0x4c2
	.4byte	.LLST5
	.byte	0x5
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x20
	.4byte	0x4c2
	.4byte	.LLST6
	.byte	0x5
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x20
	.4byte	0x4c2
	.4byte	.LLST7
	.byte	0x5
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x20
	.4byte	0x4c2
	.4byte	.LLST8
	.byte	0x5
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x22
	.4byte	0x4c2
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x22
	.4byte	0x4c2
	.4byte	.LLST10
	.byte	0x5
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x22
	.4byte	0x4c2
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x22
	.4byte	0x4c2
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x24
	.4byte	0x4e8
	.4byte	.LLST13
	.byte	0x5
	.string	"temp_vr_0_15_real"
	.byte	0x1
	.byte	0x25
	.4byte	0x4db
	.4byte	.LLST14
	.byte	0x5
	.string	"temp_vr_0_15_imag"
	.byte	0x1
	.byte	0x25
	.4byte	0x4db
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_vr_computer"
	.byte	0x1
	.byte	0x27
	.4byte	0x4ee
	.4byte	.LLST16
	.byte	0x5
	.string	"temp_vr_computer_int"
	.byte	0x1
	.byte	0x28
	.4byte	0x4e8
	.4byte	.LLST17
	.byte	0x5
	.string	"temp_vr_computer_real"
	.byte	0x1
	.byte	0x29
	.4byte	0x4db
	.4byte	.LLST18
	.byte	0x5
	.string	"temp_vr_computer_imag"
	.byte	0x1
	.byte	0x29
	.4byte	0x4db
	.4byte	.LLST19
	.byte	0x5
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x2a
	.4byte	0x4cf
	.4byte	.LLST20
	.byte	0x5
	.string	"tmpx"
	.byte	0x1
	.byte	0x2b
	.4byte	0x4fb
	.4byte	.LLST21
	.byte	0x5
	.string	"int_h_0"
	.byte	0x1
	.byte	0x2d
	.4byte	0x141
	.4byte	.LLST22
	.byte	0x5
	.string	"int_h_1"
	.byte	0x1
	.byte	0x2d
	.4byte	0x141
	.4byte	.LLST23
	.byte	0x5
	.string	"int_h_2"
	.byte	0x1
	.byte	0x2d
	.4byte	0x141
	.4byte	.LLST24
	.byte	0x5
	.string	"int_h_3"
	.byte	0x1
	.byte	0x2d
	.4byte	0x141
	.4byte	.LLST25
	.byte	0x5
	.string	"svb_temp_h_0"
	.byte	0x1
	.byte	0x2e
	.4byte	0x4db
	.4byte	.LLST5
	.byte	0x5
	.string	"svb_temp_h_1"
	.byte	0x1
	.byte	0x2e
	.4byte	0x4db
	.4byte	.LLST6
	.byte	0x5
	.string	"svb_temp_h_2"
	.byte	0x1
	.byte	0x2e
	.4byte	0x4db
	.4byte	.LLST7
	.byte	0x5
	.string	"svb_temp_h_3"
	.byte	0x1
	.byte	0x2e
	.4byte	0x4db
	.4byte	.LLST8
	.byte	0x5
	.string	"offset"
	.byte	0x1
	.byte	0x30
	.4byte	0x141
	.4byte	.LLST30
	.byte	0x6
	.string	"int_h"
	.byte	0x1
	.byte	0x31
	.4byte	0x4fb
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x32
	.4byte	0x141
	.4byte	.LLST31
	.byte	0x7
	.string	"j"
	.byte	0x1
	.byte	0x32
	.4byte	0x141
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x32
	.4byte	0x141
	.4byte	.LLST32
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x6d
	.4byte	0x141
	.4byte	.LLST33
	.byte	0x5
	.string	"num"
	.byte	0x1
	.byte	0x6d
	.4byte	0x141
	.4byte	.LLST34
	.byte	0x5
	.string	"vr"
	.byte	0x1
	.byte	0x6e
	.4byte	0x4e8
	.4byte	.LLST35
	.byte	0
	.byte	0x8
	.byte	0x1
	.4byte	0x134
	.4byte	0x4cf
	.byte	0x9
	.byte	0x1f
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x4c2
	.byte	0xa
	.byte	0x8
	.4byte	0x134
	.byte	0x8
	.byte	0x1
	.4byte	0x141
	.4byte	0x4e8
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x4db
	.byte	0x8
	.byte	0x1
	.4byte	0x141
	.4byte	0x4fb
	.byte	0x9
	.byte	0x1f
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x141
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.llong	.LVL33
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL33
	.llong	.LVL42
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL42
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
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL31
	.llong	.LVL42
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL30
	.llong	.LVL42
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x71
	.byte	0x9f
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL10
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL10
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL10
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL10
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL13
	.llong	.LVL27
	.2byte	0x2
	.byte	0x70
	.byte	0
	.llong	.LVL45
	.llong	.LFE3
	.2byte	0x2
	.byte	0x70
	.byte	0
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL13
	.llong	.LVL27
	.2byte	0x2
	.byte	0x70
	.byte	0x4
	.llong	.LVL45
	.llong	.LFE3
	.2byte	0x2
	.byte	0x70
	.byte	0x4
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL21
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL53
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL21
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL53
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x65
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
	.llong	.LVL12
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	.LVL20
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	.LVL24
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	.LVL35
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x7f
	.llong	.LVL37
	.llong	.LVL39
	.2byte	0x3
	.byte	0x90
	.byte	0x81,0x1
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x3
	.byte	0x90
	.byte	0x83,0x1
	.llong	.LVL43
	.llong	.LVL49
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL49
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	.LVL52
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	.LVL56
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	.LVL58
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x7c
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL12
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	.LVL18
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL21
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x78
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x7e
	.llong	.LVL36
	.llong	.LVL38
	.2byte	0x3
	.byte	0x90
	.byte	0x80,0x1
	.llong	.LVL38
	.llong	.LVL40
	.2byte	0x3
	.byte	0x90
	.byte	0x82,0x1
	.llong	.LVL44
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL50
	.llong	.LVL53
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL53
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x78
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	.LVL58
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x7e
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL5
	.llong	.LVL14
	.2byte	0x8
	.byte	0x90
	.byte	0x74
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x75
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LVL19
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
	.llong	.LVL46
	.2byte	0x8
	.byte	0x90
	.byte	0x72
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x73
	.byte	0x93
	.byte	0x4
	.llong	.LVL47
	.llong	.LVL51
	.2byte	0x8
	.byte	0x90
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.llong	.LVL54
	.llong	.LFE3
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
.LLST17:
	.llong	.LVL4
	.llong	.LVL41
	.2byte	0x1
	.byte	0x57
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x1
	.byte	0x57
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL18
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	.LVL22
	.llong	.LVL25
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x7b
	.llong	.LVL47
	.llong	.LVL50
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL50
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	.LVL54
	.llong	.LVL57
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL57
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x7b
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL18
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x7d
	.llong	.LVL48
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL50
	.llong	.LVL55
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	.LVL55
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	.LVL57
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x7d
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL10
	.llong	.LVL27
	.2byte	0x1
	.byte	0x56
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL4
	.llong	.LVL33
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL33
	.llong	.LVL42
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL42
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
	.llong	.LVL29
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL7
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x26
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x26
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL8
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL9
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL11
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL28
	.llong	.LVL29
	.2byte	0x1
	.byte	0x61
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL58
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x3b
	.llong	.LVL34
	.llong	.LVL42
	.2byte	0x4
	.byte	0x92
	.byte	0x41
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL32
	.llong	.LVL42
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

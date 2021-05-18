	.file	"DSP_fir_cplx_vc.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_cplx_vc,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_vc
	.type	DSP_fir_cplx_vc, @function
DSP_fir_cplx_vc:
.LFB3:
	.file 1 "../DSP_fir_cplx_vc.c"
	.loc 1 31 0
.LVL0:
	.loc 1 47 0
		SADD.M2		-1,R16,R42
	|	SSHFAR		31, R16, R43
	|	SMVAGA36.M1		R13:R12, OR0
	|	VMOVIL		 0,VR8
		SLTU		R42, R16, R49
	|	SADD.M2		-1,R43,R48
	|	SMVAGA36.M1		R15:R14, AR1
.LVL1:
		SSHFLL		1, R42, R0
	|	SADD.M2		R48,R49,R1
		SLTU		R0, R42, R2
	|	SMVAAGL.M2		AR1, R53:R52
		SSHFLL		1, R1, R3
		SSHFLL		2, R42, R46
	|	SADD.M1		R3,R2,R8
	|	SMVAAGH.M2		AR1, R53:R52
		SLTU		R46, R0, R9
		SSHFLL		1, R8, R47
		SADD.M2		R47,R9,R47
	|	SMOVIL		0, R14
.LVL2:
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,OR0,AR0
	|	SLT		R14, R16, R0
.LVL3:
	.loc 1 49 0
	[!R0]	SBR		.L7
	|	SSHFLL		1, R18, R12
.LVL4:
	.loc 1 25 0
		SADD.M1		-1,R12,R58
	|	SMOVIL		0, R1
		SADDA.M2		4,AR0,OR1
	|	SSHFLR		5, R58, R13
		SADD.M1		1,R13,R15
	|	SMOVIL		128, R6
	.loc 1 31 0
		SMOVIL		0, R7
	[R0]	SSUBA.L		R7:R6, AR7, AR7
	[R0]	SMVAAGL.M2		OR1, R51:R50
	|	SLT		R1, R12, R2
		SNOP		1
	;; condjump to .L7 occurs
		SMVAAGH.M2		OR1, R51:R50
	|	SSHFLL		1, R15, R17
		SMOVIL		128, R19
.LVL5:
.L6:
		SADD.M2		-4,R50,R20
	|	SADD.M1		-1,R51,R21
	|[!R2]	SBR		.L11
	|	SMOVIL		0, R54
		SLTU		R20, R50, R46
	|	SMOV.M2		R20, R50
	|	SMVAGA36.M1		R11:R10, AR6
		SADD.M2		R21,R46,R51
.LVL6:
	.loc 1 25 0
		SMVAGA36.M2		R51:R50, AR10
	|	SMOV.M1		R52, R42
		SMOV.M1		R53, R43
	.loc 1 51 0
	[R2]	SLDW		*AR10, R22
		SNOP		5
	.loc 1 55 0
	;; condjump to .L11 occurs
	.loc 1 51 0
		SVBCAST.M2 		 R22,VR7
		SNOP		3
.LVL7:
.L10:
	.loc 1 57 0
	[!R1]	SBR		.L20
	|	SMVAGA36.M1		R43:R42, AR0
	|	SSHFAR		1, R54, R23
	|	SADD.M2		R19,R42,R55
.LVL8:
	.loc 1 25 0
		SMOVIL		0, R57
		SMOVIL		64, R56
		SADDA.M2		R57:R56,AR0,AR2
	|	SMOVIL		64, R44
		SMOVIL		0, R45
	.loc 1 64 0
		SSHFAR		31, R23, R57
		SSHFLR		26, R23, R24
	;; condjump to .L20 occurs
	.loc 1 62 0
		VLDW.LS 		*AR2,VR3
	|	SADDA.M2		R45:R44,AR0,AR2
	|	SSHFLL		6, R57, R45
	|	VLDW.LS 		*AR0,VR6
	|	SADD.M1		2,R54,R54
.LVL9:
	.loc 1 64 0
		SOR		R45, R24, R25
		SSHFLL		6, R23, R44
	|	SMOV.M1		R25, R47
		SMOV.M2		R44, R46
	|	SEQ		R17, R54, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR4
	|	SLTU		R55, R42, R26
	|	SMOV.M1		R55, R42
		SADD.M1		R43,R26,R43
		SNOP		1
		VLDW.LS 		*AR4,VR4
		SNOP		7
.LVL10:
	.loc 1 66 0
		VCMUL16T.M3		 VR4,VR7,VR1:VR0
		SNOP		3
.LVL11:
		VSTDW.LS 		VR1:VR0,*AR7
.LVL12:
	.loc 1 72 0
		VLDW.LS 		*AR7,VR5
	|	VLDW.LS 		*+AR7[16],VR2
	.loc 1 73 0
		SNOP		3
	.loc 1 55 0
	[!R0]	SBR		.L10
		SNOP		3
	.loc 1 72 0
		VADD.M2		VR6,VR5,VR1
	|	VADD.M1		VR3,VR2,VR9
.LVL13:
	.loc 1 75 0
		VSTW.LS 		VR1,*AR0
	.loc 1 76 0
		VSTW.LS 		VR9,*AR2
	;; condjump to .L10 occurs
.LVL14:
.L11:
	.loc 1 49 0
		SADD.M2		1,R1,R1
	|	SADD.M1		4,R10,R27
.LVL15:
		SEQ		R16, R1, R0
	[!R0]	SBR		.L6
	|	SLTU		R27, R10, R28
	|	SMOV.M2		R27, R10
		SADD.M2		R11,R28,R11
		SNOP		5
	;; condjump to .L6 occurs
.LVL16:
.L7:
	.loc 1 80 0
		SADD.M1		15,R18,R18
	|	SMVAAGL.M2		AR1, R43:R42
	|	SMOVIL		0, R52
.LVL17:
		SSHFAR		31, R18, R10
		SSHFLR		28, R10, R16
	|	SMVAAGH.M2		AR1, R43:R42
.LVL18:
		SADD.M1		R18,R16,R29
	|	SMOVIL		128, R60
		SSHFAR		4, R29, R50
	|	SADD.M2		R60,R42,R61
	|	SMOV.M1		R42, R44
		SSHFLL		1, R50, R51
	|	SMOV.M2		R43, R45
.LVL19:
	.loc 1 82 0
		SLT		R52, R51, R2
	|	SADD.M2		-1,R51,R53
	[!R2]	SBR		.L1
	|	SSHFLR		1, R53, R49
	.loc 1 25 0
		SLTU		R61, R42, R48
		SSHFLL		7, R49, R3
	|	SADD.M2		R43,R48,R8
		SSHFLR		26, R53, R9
	|	SADD.M2		R3,R61,R14
		SLTU		R14, R61, R47
	|	SADD.M2		R9,R8,R12
		SADD.M2		R12,R47,R58
	|	SMOVIL		128, R13
		SNOP		1
	.loc 1 82 0
	;; condjump to .L1 occurs
.LVL20:
.L12:
	.loc 1 25 0
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R13,R42,R15
	|	SMOVIL		64, R20
		SLTU		R15, R42, R17
	|	SMOV.M2		R43, R19
	|	SMVAGA36.M1		R45:R44, AR2
		SMOVIL		64, R42
	|	VLDW.LS 		*AR0,VR10
	|	SADD.M2		R20,R44,R21
.LVL21:
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR0,AR4
	|	SEQ		R15, R14, R1
	|	SADD.M1		R19,R17,R43
	.loc 1 82 0
	[R1]	SEQ		R43, R58, R1
	|	SMOV.M1		R15, R42
		SLTU		R21, R44, R22
	|	SMOV.M1		R21, R44
	.loc 1 84 0
		VLDW.LS 		*AR4,VR11
	|	SADD.M2		R45,R22,R45
.LVL22:
		SNOP		2
	.loc 1 86 0
		VSHFAR		15,VR10, VR12
.LVL23:
	.loc 1 82 0
	[!R1]	SBR		.L12
		SNOP		3
	.loc 1 87 0
		VSHFAR		15,VR11, VR13
.LVL24:
	.loc 1 88 0
		VSBALE2		VR12,VR13,VR14
.LVL25:
	.loc 1 90 0
		VSTW.LS 		VR14,*AR2
	;; condjump to .L12 occurs
.LVL26:
.L1:
	.loc 1 93 0
		SMOVIL		128, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL27:
.L20:
	.loc 1 25 0
		SMOVIL		64, R44
	|	SADD.M2		2,R54,R54
	|	VMOV		VR8,	VR6
	|	SADD.M1		R19,R42,R55
.LVL28:
		SMOVIL		0, R45
	|	VMOV		VR8,	VR3
.LVL29:
	.loc 1 64 0
		SSHFAR		31, R23, R57
	|	SADDA.M2		R45:R44,AR0,AR2
		SSHFLR		26, R23, R24
		SSHFLL		6, R57, R45
		SOR		R45, R24, R25
		SSHFLL		6, R23, R44
	|	SMOV.M2		R25, R47
		SMOV.M2		R44, R46
	|	SEQ		R17, R54, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR6,AR4
	|	SLTU		R55, R42, R26
	|	SMOV.M1		R55, R42
		SADD.M1		R43,R26,R43
		SNOP		1
		VLDW.LS 		*AR4,VR4
		SNOP		7
.LVL30:
	.loc 1 66 0
		VCMUL16T.M3		 VR4,VR7,VR1:VR0
		SNOP		3
.LVL31:
		VSTDW.LS 		VR1:VR0,*AR7
.LVL32:
	.loc 1 72 0
		VLDW.LS 		*AR7,VR5
	|	VLDW.LS 		*+AR7[16],VR2
	.loc 1 73 0
		SNOP		3
	.loc 1 55 0
	[!R0]	SBR		.L10
		SNOP		3
	.loc 1 72 0
		VADD.M2		VR6,VR5,VR1
	|	VADD.M1		VR3,VR2,VR9
.LVL33:
	.loc 1 75 0
		VSTW.LS 		VR1,*AR0
	.loc 1 76 0
		VSTW.LS 		VR9,*AR2
	;; condjump to .L10 occurs
.LVL34:
		SBR		.L11
		SNOP		6
	;; jump to .L11 occurs
.LFE3:
	.size	DSP_fir_cplx_vc, .-DSP_fir_cplx_vc
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
	.4byte	0x395
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_cplx_vc.c"
	.string	"/cygdrive/e/project/function  demo/function/DSP_fir_cplx/Debug"
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
	.string	"DSP_fir_cplx_vc"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x359
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.4byte	0x366
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x1b
	.4byte	0x36c
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x1c
	.4byte	0x366
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x1d
	.4byte	0x107
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x1e
	.4byte	0x107
	.4byte	.LLST4
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x20
	.4byte	0x107
	.4byte	.LLST5
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x20
	.4byte	0x107
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x20
	.4byte	0x107
	.4byte	.LLST6
	.byte	0x5
	.string	"svb_temp_h"
	.byte	0x1
	.byte	0x22
	.4byte	0x372
	.4byte	.LLST7
	.byte	0x5
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x23
	.4byte	0x359
	.4byte	.LLST7
	.byte	0x5
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x24
	.4byte	0x359
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x26
	.4byte	0x37f
	.4byte	.LLST10
	.byte	0x5
	.string	"temp_vr_0_15_real"
	.byte	0x1
	.byte	0x27
	.4byte	0x372
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vr_0_15_imag"
	.byte	0x1
	.byte	0x27
	.4byte	0x372
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_vr_computer"
	.byte	0x1
	.byte	0x29
	.4byte	0x385
	.4byte	.LLST13
	.byte	0x5
	.string	"temp_vr_computer_real"
	.byte	0x1
	.byte	0x2a
	.4byte	0x372
	.4byte	.LLST14
	.byte	0x5
	.string	"temp_vr_computer_imag"
	.byte	0x1
	.byte	0x2a
	.4byte	0x372
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x2b
	.4byte	0x366
	.4byte	.LLST16
	.byte	0x5
	.string	"tmpx"
	.byte	0x1
	.byte	0x2c
	.4byte	0x392
	.4byte	.LLST17
	.byte	0x5
	.string	"int_h_0"
	.byte	0x1
	.byte	0x2e
	.4byte	0x107
	.4byte	.LLST18
	.byte	0x5
	.string	"offset"
	.byte	0x1
	.byte	0x2e
	.4byte	0x107
	.4byte	.LLST19
	.byte	0x5
	.string	"int_h"
	.byte	0x1
	.byte	0x2f
	.4byte	0x392
	.4byte	.LLST20
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x50
	.4byte	0x107
	.4byte	.LLST21
	.byte	0x5
	.string	"num"
	.byte	0x1
	.byte	0x50
	.4byte	0x107
	.4byte	.LLST22
	.byte	0x5
	.string	"vr"
	.byte	0x1
	.byte	0x51
	.4byte	0x37f
	.4byte	.LLST23
	.byte	0
	.byte	0x7
	.byte	0x1
	.4byte	0xfa
	.4byte	0x366
	.byte	0x8
	.byte	0x1f
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x359
	.byte	0x9
	.byte	0x8
	.4byte	0xfa
	.byte	0x7
	.byte	0x1
	.4byte	0x107
	.4byte	0x37f
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x372
	.byte	0x7
	.byte	0x1
	.4byte	0x107
	.4byte	0x392
	.byte	0x8
	.byte	0x1f
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x107
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
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x50
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
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL18
	.llong	.LVL27
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL17
	.llong	.LVL27
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x71
	.byte	0x9f
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x1
	.byte	0x61
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x46
	.llong	.LVL33
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x46
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL10
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL30
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST10:
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
.LLST11:
	.llong	.LVL9
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL28
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL34
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL9
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL22
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	.LVL24
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL29
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL34
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL5
	.llong	.LVL11
	.2byte	0x8
	.byte	0x90
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.llong	.LVL12
	.llong	.LVL31
	.2byte	0x8
	.byte	0x90
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.llong	.LVL32
	.llong	.LFE3
	.2byte	0x8
	.byte	0x90
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL33
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.llong	.LVL33
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL7
	.llong	.LVL14
	.2byte	0x1
	.byte	0x56
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL1
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL6
	.llong	.LVL16
	.2byte	0x3
	.byte	0x92
	.byte	0x42
	.byte	0
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x3
	.byte	0x92
	.byte	0x42
	.byte	0
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL8
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x1
	.byte	0x50
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.byte	0x51
	.byte	0x7c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL19
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x43
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL19
	.llong	.LVL27
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

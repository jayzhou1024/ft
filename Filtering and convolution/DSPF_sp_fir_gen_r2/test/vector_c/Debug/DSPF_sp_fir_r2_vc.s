	.file	"DSPF_sp_fir_r2_vc.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_r2_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_r2_vc
	.type	DSPF_sp_fir_r2_vc, @function
DSPF_sp_fir_r2_vc:
.LFB0:
	.file 1 "../DSPF_sp_fir_r2_vc.c"
	.loc 1 17 0
.LVL0:
	.loc 1 11 0
		SMVAGA36.M1		R15:R14, OR0
	|	SMOVIL		0, R42
	.loc 1 17 0
		SMVAGA36.M1		R13:R12, AR6
	|	SMOVIL		-64, R12
.LVL1:
	.loc 1 11 0
		SMOVIL		-1, R13
	.loc 1 23 0
		SLT		R42, R16, R0
	|	SADDA.M2		R13:R12,OR0,AR0
	[!R0]	SBR		.L1
	|	SMOVIL		0, R19
		SMOVIL		0, R60
		SMVAAGL.M2		AR0, R13:R12
	|	SMOVIL		0, R61
		SLT		R19, R18, R2
		SMVAAGH.M2		AR0, R13:R12
		SNOP		2
	;; condjump to .L1 occurs
.LVL2:
.L2:
	.loc 1 11 0
		SMVAAA.M2		AR6, OR11
	|	SMOV.M1		R60, R42
	|	SMOVIL		2, R48
		SMOV.M1		R61, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR11,AR10
	|	SSUB.M1		R19, R16, R1
	.loc 1 27 0
		SLT		R48, R1, R0
	.loc 1 25 0
		SLDW		*AR10, R43
	|	SMOVIL		0, R1
	.loc 1 26 0
		SLDW		*+AR10[1], R3
		SNOP		2
	.loc 1 27 0
	[R0]	SBR		.L17
		SNOP		1
	.loc 1 25 0
		SVBCAST.M2 		 R43,VR6
.LVL3:
	.loc 1 26 0
		SVBCAST.M1 		 R3,VR7
		SNOP		3
.LVL4:
	.loc 1 27 0
	;; condjump to .L17 occurs
.LVL5:
.L3:
	.loc 1 33 0
	[!R2]	SBR		.L8
	|	SADD.M2		R10,R60,R42
	|	SADD.M1		R11,R61,R15
	|	SMOVIL		0, R3
	.loc 1 11 0
		SLTU		R42, R60, R14
		SADD.M2		R15,R14,R43
		SMVAGA36.M1		R43:R42, AR2
	|	SMOV.M2		R12, R42
.LVL6:
		SMOV.M2		R13, R43
		SNOP		2
	.loc 1 33 0
	;; condjump to .L8 occurs
.LVL7:
.L7:
	.loc 1 36 0
		SSHFAR		31, R3, R51
	|	SMOV.M2		R3, R48
	|	SADD.M1		1,R3,R58
		SMOVIL		64, R44
	|	SMOV.M2		R51, R49
	;no-op trunc di R49:R48 to pdi R49:R48
		SADD.M2		R44,R42,R59
	|	SSHFLR		30, R48, R21
		SSHFLL		2, R49, R45
		SLTU		R59, R42, R17
	|	SMOV.M2		R59, R42
		SSHFLL		2, R48, R44
	|	SADD.M2		R43,R17,R43
	|	SMOV.M1		R58, R48
		SOR		R45, R21, R45
	|	SMVAGA36.M1		R43:R42, AR0
		SADDA.M1		R45:R44,AR2,AR4
	|	SSHFAR		31, R58, R53
	.loc 1 34 0
		VLDW.LS 		*AR0,VR3
	|	SMOV.M2		R53, R49
.LVL8:
	.loc 1 39 0
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLR		30, R48, R22
	.loc 1 36 0
		VLDW.LS 		*AR4,VR5
	|	SSHFLL		2, R49, R47
.LVL9:
	.loc 1 39 0
		SOR		R47, R22, R47
		SSHFLL		2, R48, R46
		SADDA.M2		R47:R46,AR2,AR4
		SNOP		2
		VLDW.LS 		*AR4,VR4
		SNOP		1
	.loc 1 37 0
		VFMULAS32.M3	VR5,VR6,VR3,VR3
		SNOP		4
.LVL10:
	.loc 1 41 0
	[R1]	SBR		.L18
	.loc 1 40 0
		VFMULAS32.M3	VR4,VR7,VR3,VR3
		SNOP		5
.LVL11:
	.loc 1 41 0
	;; condjump to .L18 occurs
	.loc 1 33 0
		SADD.M2		16,R3,R3
	|	VSTW.LS 		VR3,*AR0
.LVL12:
		SLT		R3, R18, R0
	[R0]	SBR		.L7
		SNOP		6
	;; condjump to .L7 occurs
.LVL13:
.L8:
	.loc 1 23 0
		SADD.M2		4,R19,R19
	|	SADD.M1		16,R60,R46
.LVL14:
		SLT		R19, R16, R1
.LVL15:
	[R1]	SBR		.L2
	|	SLTU		R46, R60, R54
	|	SMOV.M2		R46, R60
		SADD.M2		R61,R54,R61
		SNOP		5
	;; condjump to .L2 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL16:
.L18:
	.loc 1 11 0
		SADD.M2		2,R3,R49
	|	SADD.M1		3,R3,R23
	.loc 1 42 0
		SSHFAR		31, R49, R26
	|	SMOV.M2		R49, R58
	|	SMOV.M1		R23, R48
		SMOV.M2		R26, R59
	|	SSHFAR		31, R23, R27
	|	SADD.M1		16,R3,R3
	;no-op trunc di R59:R58 to pdi R59:R58
		SSHFLR		30, R58, R28
	|	SMOV.M2		R27, R49
		SSHFLL		2, R59, R55
	;no-op trunc di R49:R48 to pdi R49:R48
		SOR		R55, R28, R55
		SSHFLL		2, R58, R54
		SADDA.M2		R55:R54,AR2,AR4
	|	SSHFLR		30, R48, R29
	.loc 1 45 0
		SSHFLL		2, R49, R57
		SOR		R57, R29, R57
	.loc 1 42 0
		VLDW.LS 		*AR4,VR0
	|	SSHFLL		2, R48, R56
.LVL17:
	.loc 1 45 0
		SADDA.M2		R57:R56,AR2,AR4
	|	SLT		R3, R18, R0
	.loc 1 33 0
		SNOP		2
	.loc 1 45 0
		VLDW.LS 		*AR4,VR1
		SNOP		3
	.loc 1 43 0
		VFMULAS32.M3	VR0,VR8,VR3,VR3
		SNOP		5
.LVL18:
	.loc 1 33 0
	[R0]	SBR		.L7
	|	VFMULAS32.M3	VR1,VR9,VR3,VR3
	.loc 1 46 0
		SNOP		5
.LVL19:
	.loc 1 49 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L7 occurs
		SBR		.L8
		SNOP		6
	;; jump to .L8 occurs
.LVL20:
.L17:
	.loc 1 29 0
		SLDW		*+AR10[2], R8
	|	SMOVIL		1, R1
	.loc 1 30 0
		SLDW		*+AR10[3], R9
		SNOP		2
		SBR		.L3
		SNOP		1
	.loc 1 29 0
		SVBCAST.M2 		 R8,VR8
.LVL21:
	.loc 1 30 0
		SVBCAST.M1 		 R9,VR9
		SNOP		3
.LVL22:
	;; jump to .L3 occurs
.LVL23:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSPF_sp_fir_r2_vc, .-DSPF_sp_fir_r2_vc
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
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x300
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_r2_vc.c"
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fir_r2/Debug"
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
	.string	"DSPF_sp_fir_r2_vc"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x2ea
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xc
	.4byte	0x2f7
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x5
	.string	"h"
	.byte	0x1
	.byte	0xd
	.4byte	0x2fd
	.4byte	.LLST0
	.byte	0x5
	.string	"r"
	.byte	0x1
	.byte	0xe
	.4byte	0x2f7
	.4byte	.LLST1
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0xf
	.4byte	0x10b
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x10b
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x10b
	.4byte	.LLST2
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x10b
	.4byte	.LLST3
	.byte	0x6
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0x10b
	.4byte	.LLST4
	.byte	0x6
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x13
	.4byte	0x2f7
	.4byte	.LLST5
	.byte	0x6
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x14
	.4byte	0x2ea
	.4byte	.LLST6
	.byte	0x6
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x14
	.4byte	0x2ea
	.4byte	.LLST7
	.byte	0x6
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x14
	.4byte	0x2ea
	.4byte	.LLST8
	.byte	0x6
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x14
	.4byte	0x2ea
	.4byte	.LLST9
	.byte	0x6
	.string	"temp_vr"
	.byte	0x1
	.byte	0x14
	.4byte	0x2ea
	.4byte	.LLST10
	.byte	0x6
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x15
	.4byte	0x2ea
	.4byte	.LLST11
	.byte	0x6
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x15
	.4byte	0x2ea
	.4byte	.LLST12
	.byte	0x6
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x15
	.4byte	0x2ea
	.4byte	.LLST13
	.byte	0x6
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x15
	.4byte	0x2ea
	.4byte	.LLST14
	.byte	0x6
	.string	"flag_h23"
	.byte	0x1
	.byte	0x16
	.4byte	0x10b
	.4byte	.LLST15
	.byte	0
	.byte	0x7
	.byte	0x1
	.4byte	0x143
	.4byte	0x2f7
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x2ea
	.byte	0x9
	.byte	0x8
	.4byte	0x143
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST1:
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
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	.LVL23
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL14
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL23
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x1
	.byte	0x63
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x1
	.byte	0x63
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL6
	.llong	.LVL20
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL4
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL5
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	.LVL22
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL8
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL9
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL18
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL2
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL5
	.llong	.LVL15
	.2byte	0x1
	.byte	0x61
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x1
	.byte	0x61
	.llong	.LVL20
	.llong	.LVL23
	.2byte	0x2
	.byte	0x31
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

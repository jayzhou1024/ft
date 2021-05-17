	.file	"DSPF_sp_fir_gen_vc.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_gen_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc
	.type	DSPF_sp_fir_gen_vc, @function
DSPF_sp_fir_gen_vc:
.LFB0:
	.file 1 "../DSPF_sp_fir_gen_vc.c"
	.loc 1 17 0
.LVL0:
	.loc 1 11 0
		SMVAGA36.M1		R15:R14, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R16,R1
	.loc 1 17 0
		SMVAGA36.M1		R13:R12, AR6
	|	SMOVIL		-64, R12
.LVL1:
	.loc 1 11 0
		SMOVIL		-1, R13
	.loc 1 22 0
		SLT		R42, R16, R0
	|	SADDA.M2		R13:R12,OR0,AR0
	[!R0]	SBR		.L1
	|	SSHFLR		2, R1, R2
	.loc 1 11 0
		SADD.M1		1,R2,R24
	|	SMOVIL		0, R14
.LVL2:
		SMVAAGL.M2		AR0, R13:R12
	|	SLTU		R24, R2, R3
		SSHFLR		28, R24, R43
		SSHFLL		4, R3, R19
	|	SMVAAGH.M2		AR0, R13:R12
		SMOVIL		0, R16
.LVL3:
		SMOVIL		0, R17
	;; condjump to .L1 occurs
		SOR		R19, R43, R8
		SSHFLL		4, R24, R9
		SLT		R14, R18, R1
.LVL4:
.L4:
		SMVAAA.M2		AR6, OR11
	|	SMOV.M1		R16, R52
	|[!R1]	SBR		.L7
	|	SMOVIL		0, R29
		SMOV.M1		R17, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SADDA.M2		R53:R52,OR11,AR10
	|	SADD.M1		R10,R16,R42
		SLTU		R42, R16, R54
	|	SADD.M1		R11,R17,R15
	.loc 1 23 0
	[R1]	SLDW		*AR10, R53
	|	SADD.M2		R15,R54,R43
	.loc 1 24 0
	[R1]	SLDW		*+AR10[1], R52
	|	SMVAGA36.M1		R43:R42, OR1
	|	SMOV.M2		R12, R42
	.loc 1 25 0
	[R1]	SLDW		*+AR10[2], R20
	|	SMOV.M2		R13, R43
	;; condjump to .L7 occurs
	.loc 1 26 0
		SLDW		*+AR10[3], R21
		SNOP		2
	.loc 1 23 0
		SVBCAST.M2 		 R53,VR6
.LVL5:
	.loc 1 24 0
		SVBCAST.M1 		 R52,VR7
.LVL6:
	.loc 1 25 0
		SVBCAST.M1 		 R20,VR8
.LVL7:
	.loc 1 26 0
		SVBCAST.M1 		 R21,VR9
		SNOP		3
.LVL8:
.L6:
	.loc 1 31 0
		SSHFAR		31, R29, R59
	|	SMOV.M2		R29, R52
	|	SADD.M1		1,R29,R55
		SMOVIL		64, R44
	|	SMOV.M2		R59, R53
	|	SADD.M1		2,R29,R25
	;no-op trunc di R53:R52 to pdi R53:R52
		SADD.M2		R44,R42,R22
	|	SSHFLR		30, R52, R23
	|	SADD.M1		3,R29,R27
		SSHFLL		2, R53, R45
	|	SMOV.M2		R55, R56
	|	SMOV.M1		R25, R54
		SLTU		R22, R42, R57
	|	SMOV.M2		R22, R42
	|	SADD.M1		16,R29,R29
		SSHFLL		2, R52, R44
	|	SADD.M2		R43,R57,R43
	|	SMOV.M1		R27, R52
		SOR		R45, R23, R45
	|	SMVAGA36.M1		R43:R42, AR2
		SADDA.M1		R45:R44,OR1,AR4
	|	SSHFAR		31, R55, R61
	.loc 1 29 0
		VLDW.LS 		*AR2,VR3
	|	SMOV.M2		R61, R57
	|	SSHFAR		31, R25, R46
.LVL9:
	.loc 1 34 0
	;no-op trunc di R57:R56 to pdi R57:R56
	.loc 1 40 0
		SSHFAR		31, R27, R47
	|	SMOV.M2		R46, R55
	.loc 1 31 0
		VLDW.LS 		*AR4,VR5
	|	SSHFLR		30, R56, R48
	|	SMOV.M2		R47, R53
	;no-op trunc di R55:R54 to pdi R55:R54
.LVL10:
	.loc 1 34 0
		SSHFLL		2, R57, R49
	;no-op trunc di R53:R52 to pdi R53:R52
		SOR		R49, R48, R47
		SSHFLL		2, R56, R46
		SADDA.M2		R47:R46,OR1,AR4
	|	SSHFLR		30, R54, R50
	.loc 1 37 0
		SSHFLL		2, R55, R51
		SOR		R51, R50, R49
	.loc 1 34 0
		VLDW.LS 		*AR4,VR4
	|	SSHFLL		2, R54, R48
	.loc 1 32 0
		VFMULAS32.M3	VR5,VR6,VR3,VR3
	|	SADDA.M2		R49:R48,OR1,AR4
	|	SSHFLR		30, R52, R0
.LVL11:
	.loc 1 40 0
		SSHFLL		2, R53, R2
		SOR		R2, R0, R51
	.loc 1 37 0
		VLDW.LS 		*AR4,VR0
	|	SSHFLL		2, R52, R50
	.loc 1 40 0
		SADDA.M2		R51:R50,OR1,AR4
	|	SLT		R29, R18, R0
	.loc 1 28 0
		SNOP		2
	.loc 1 35 0
		VFMULAS32.M3	VR4,VR7,VR3,VR3
	|	VLDW.LS 		*AR4,VR1
.LVL12:
	.loc 1 40 0
		SNOP		5
	.loc 1 38 0
		VFMULAS32.M3	VR0,VR8,VR3,VR3
		SNOP		5
.LVL13:
	.loc 1 28 0
	[R0]	SBR		.L6
	|	VFMULAS32.M3	VR1,VR9,VR3,VR3
	.loc 1 41 0
		SNOP		5
.LVL14:
	.loc 1 43 0
		VSTW.LS 		VR3,*AR2
	;; condjump to .L6 occurs
.LVL15:
.L7:
		SADD.M2		16,R16,R42
		SLTU		R42, R16, R24
	|	SMOV.M2		R42, R16
		SADD.M2		R17,R24,R17
	|	SEQ		R42, R9, R2
	.loc 1 22 0
	[R2]	SEQ		R17, R8, R2
	[!R2]	SBR		.L4
		SNOP		6
	;; condjump to .L4 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL16:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSPF_sp_fir_gen_vc, .-DSPF_sp_fir_gen_vc
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
	.4byte	0x31a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_gen_vc.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/vector_c/Debug"
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
	.string	"DSPF_sp_fir_gen_vc"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x304
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xc
	.4byte	0x311
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
	.4byte	0x317
	.4byte	.LLST0
	.byte	0x5
	.string	"r"
	.byte	0x1
	.byte	0xe
	.4byte	0x311
	.4byte	.LLST1
	.byte	0x5
	.string	"nh"
	.byte	0x1
	.byte	0xf
	.4byte	0x13b
	.4byte	.LLST2
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x13b
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.4byte	.LLST3
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.4byte	.LLST4
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.byte	0x6
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x13
	.4byte	0x311
	.4byte	.LLST5
	.byte	0x6
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x14
	.4byte	0x304
	.4byte	.LLST6
	.byte	0x6
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x14
	.4byte	0x304
	.4byte	.LLST7
	.byte	0x6
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x14
	.4byte	0x304
	.4byte	.LLST8
	.byte	0x6
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x14
	.4byte	0x304
	.4byte	.LLST9
	.byte	0x6
	.string	"temp_vr"
	.byte	0x1
	.byte	0x14
	.4byte	0x304
	.4byte	.LLST10
	.byte	0x6
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x15
	.4byte	0x304
	.4byte	.LLST11
	.byte	0x6
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x15
	.4byte	0x304
	.4byte	.LLST12
	.byte	0x6
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x15
	.4byte	0x304
	.4byte	.LLST13
	.byte	0x6
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x15
	.4byte	0x304
	.4byte	.LLST14
	.byte	0
	.byte	0x8
	.byte	0x1
	.4byte	0x173
	.4byte	0x311
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x304
	.byte	0xa
	.byte	0x8
	.4byte	0x173
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL16
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x2d
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL8
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL7
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL8
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL9
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL10
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL11
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x61
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

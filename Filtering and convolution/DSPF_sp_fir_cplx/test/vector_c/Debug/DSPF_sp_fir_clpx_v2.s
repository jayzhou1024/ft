	.file	"DSPF_sp_fir_clpx_v2.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_cplx_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_cplx_vc1
	.type	DSPF_sp_fir_cplx_vc1, @function
DSPF_sp_fir_cplx_vc1:
.LFB0:
	.file 1 "../DSPF_sp_fir_clpx_v2.c"
	.loc 1 18 0
.LVL0:
	.loc 1 12 0
		SADD.M2		-1,R16,R8
	|	SMVAGA36.M1		R13:R12, OR0
	|	SMOVIL		0, R43
	.loc 1 18 0
		SMVAGA36.M1		R15:R14, AR4
	|	SSHFLL		1, R8, R14
	|	SADD.M2		15,R18,R42
.LVL1:
	.loc 1 25 0
		SLT		R43, R16, R0
	|	SADDA.M1		-8,OR0,AR0
	|	SADD.M2		-1,R18,R9
	.loc 1 12 0
		SSHFLL		2, R8, R44
	|	SADD.M2		8,R10,R55
		SLTU		R14, R8, R47
		SLTU		R44, R14, R12
	|	SMVAAGL.M2		AR0, R51:R50
.LVL2:
		SSHFLL		1, R47, R13
	.loc 1 25 0
	[!R0]	SBR		.L7
	|	SSHFAR		31, R42, R1
	|	SADD.M1		R13,R12,R16
	|	SMVAAGH.M2		AR0, R51:R50
.LVL3:
	.loc 1 12 0
		SSHFLL		3, R8, R15
		SSHFLR		4, R9, R17
	|	SADD.M2		R15,R55,R56
		SMOVIL		0, R45
	|	SADD.M2		1,R17,R54
	.loc 1 19 0
		SSHFLR		28, R1, R2
	.loc 1 12 0
		SLTU		R15, R44, R19
	|	SADD.M2		R42,R2,R3
	.loc 1 19 0
		SSHFAR		4, R3, R58
	;; condjump to .L7 occurs
.LVL4:
		SLT		R45, R18, R1
	.loc 1 12 0
		SSHFLL		1, R16, R21
		SLTU		R55, R10, R18
	|	SADD.M2		R21,R19,R22
.LVL5:
		SADD.M2		R11,R18,R20
	|	SLTU		R54, R17, R23
		SLTU		R56, R55, R57
	|	SADD.M2		R22,R20,R24
		SSHFLR		25, R54, R25
	|	SADD.M2		R24,R57,R26
		SSHFLL		7, R23, R53
		SOR		R53, R25, R27
		SSHFLL		7, R54, R28
		SMOVIL		128, R48
.LVL6:
.L6:
		SADD.M2		8,R50,R29
	|[!R1]	SBR		.L8
	|	SMOVIL		0, R42
		SLTU		R29, R50, R52
	|	SMOV.M2		R29, R50
		SADD.M2		R51,R52,R51
	|	SMOVIL		0, R3
		SMVAGA36.M2		R51:R50, AR10
		SNOP		1
	.loc 1 26 0
	[R1]	SLDDW		*AR10, R61:R60
		SNOP		5
	.loc 1 27 0
	;; condjump to .L8 occurs
	.loc 1 26 0
		SVBCAST2.M2 		 R61:R60,VR7:VR6
		SNOP		4
.LVL7:
.L5:
	.loc 1 12 0
		SADD.M2		R42,R10,R44
	|	SADD.M1		R3,R11,R61
		SLTU		R44, R10, R59
	|	SMOV.M2		R42, R46
	|	SMOV.M1		R3, R47
		SADD.M1		R61,R59,R45
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,AR4,AR0
		SMVAGA36.M1		R45:R44, AR6
	|	SMOVIL		64, R44
		SMOVIL		0, R45
	.loc 1 29 0
		VLDDWM2.LS 		*AR6,VR5:VR4
	|	SADDA.M2		R45:R44,AR0,AR2
	|	SADD.M1		R48,R42,R0
.LVL8:
		SLTU		R0, R42, R2
	|	SMOV.M1		R0, R42
		SADD.M1		R3,R2,R3
	|	SEQ		R0, R28, R0
	.loc 1 27 0
	[R0]	SEQ		R3, R27, R0
		SNOP		4
	.loc 1 30 0
		VFCREAL32.M1		VR7:VR6,VR5:VR4,VR3
	|	VFCIMAG32.M3		VR7:VR6,VR5:VR4,VR4
	|	VLDW.LS 		*AR0,VR5
.LVL9:
	.loc 1 32 0
		SNOP		7
		VFADDS32.M1 		VR3,VR5,VR0
		SNOP		2
		VSTW.LS 		VR0,*AR0
	.loc 1 33 0
		VLDW.LS 		*AR2,VR1
		SNOP		4
	.loc 1 27 0
	[!R0]	SBR		.L5
		SNOP		2
	.loc 1 33 0
		VFADDS32.M1 		VR4,VR1,VR2
		SNOP		2
		VSTW.LS 		VR2,*AR2
	;; condjump to .L5 occurs
.LVL10:
.L8:
		SLTU		R55, R10, R8
	|	SMOV.M2		R55, R10
	.loc 1 25 0
		SEQ		R55, R56, R2
	|	SADD.M2		R11,R8,R11
	|	SADD.M1		8,R55,R55
	[R2]	SEQ		R11, R26, R2
	[R2]	SBR		.L7
	[!R2]	SBR		.L6
		SNOP		6
	;; condjump to .L7 occurs
	;; jump to .L6 occurs
.L7:
.LVL11:
		SMVAAGL.M2		AR4, R43:R42
	|	SMOVIL		0, R50
	|	SADD.M1		-1,R58,R51
	.loc 1 37 0
		SLT		R50, R58, R1
		SMVAAGH.M2		AR4, R43:R42
	|[!R1]	SBR		.L22
	|	SMOVIL		128, R58
.LVL12:
	.loc 1 12 0
		SSHFLL		7, R51, R14
		SADD.M2		R58,R42,R9
	|	SSHFLR		25, R51, R46
.LVL13:
		SLTU		R9, R42, R45
	|	SADD.M2		R14,R9,R12
		SADD.M2		R43,R45,R47
	|	SLTU		R12, R9, R44
		SADD.M2		R46,R47,R13
	|	SMOVIL		128, R16
		SADD.M2		R13,R44,R15
	;; condjump to .L22 occurs
.LVL14:
.L9:
	.loc 1 38 0
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R16,R42,R17
		SLTU		R17, R42, R56
	|	SMOV.M2		R17, R42
		SADD.M2		R43,R56,R43
	|	SEQ		R17, R12, R0
	|	VLDDW.LS 		*AR0,VR9:VR8
	.loc 1 37 0
	[R0]	SEQ		R43, R15, R0
	[!R0]	SBR		.L9
		SNOP		5
	.loc 1 38 0
		VSTDWM16.LS 		VR9:VR8,*AR0
	;; condjump to .L9 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL15:
.L22:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSPF_sp_fir_cplx_vc1, .-DSPF_sp_fir_cplx_vc1
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
	.4byte	0x2b7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_clpx_v2.c"
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
	.string	"DSPF_sp_fir_cplx_vc1"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x28e
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x29b
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xe
	.4byte	0x2a1
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xf
	.4byte	0x29b
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x10
	.4byte	0x106
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST4
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x13
	.4byte	0x106
	.4byte	.LLST5
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x13
	.4byte	0x106
	.byte	0x6
	.string	"k"
	.byte	0x1
	.byte	0x13
	.4byte	0x106
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x13
	.4byte	0x106
	.4byte	.LLST6
	.byte	0x6
	.string	"tmpr"
	.byte	0x1
	.byte	0x14
	.4byte	0x29b
	.byte	0x6
	.string	"temp_x"
	.byte	0x1
	.byte	0x14
	.4byte	0x29b
	.byte	0x5
	.string	"temp_h"
	.byte	0x1
	.byte	0x15
	.4byte	0x28e
	.4byte	.LLST7
	.byte	0x5
	.string	"temp_vx"
	.byte	0x1
	.byte	0x15
	.4byte	0x28e
	.4byte	.LLST8
	.byte	0x5
	.string	"temp_real"
	.byte	0x1
	.byte	0x16
	.4byte	0x2a7
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_imag"
	.byte	0x1
	.byte	0x16
	.4byte	0x2a7
	.4byte	.LLST10
	.byte	0x7
	.string	"r_temp"
	.byte	0x1
	.byte	0x17
	.4byte	0x2b4
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.string	"tmpx"
	.byte	0x1
	.byte	0x18
	.4byte	0x2a1
	.4byte	.LLST11
	.byte	0x6
	.string	"count"
	.byte	0x1
	.byte	0x24
	.4byte	0x106
	.byte	0
	.byte	0x8
	.byte	0x1
	.4byte	0x147
	.4byte	0x29b
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x28e
	.byte	0xa
	.byte	0x8
	.4byte	0x147
	.byte	0x8
	.byte	0x1
	.4byte	0x13e
	.4byte	0x2b4
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x2a7
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
	.llong	.LVL6
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL6
	.llong	.LFE0
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
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
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
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL3
	.llong	.LVL6
	.2byte	0x3
	.byte	0x88
	.byte	0x1
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL5
	.llong	.LVL13
	.2byte	0x3
	.byte	0x89
	.byte	0x1
	.byte	0x9f
	.llong	.LVL13
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL11
	.llong	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL15
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL4
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x4a
	.llong	.LVL12
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.byte	0x43
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL10
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
.LLST8:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x8
	.byte	0x90
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
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

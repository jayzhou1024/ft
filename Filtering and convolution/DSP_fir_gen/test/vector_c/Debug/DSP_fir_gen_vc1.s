	.file	"DSP_fir_gen_vc1.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_vc1
	.type	DSP_fir_gen_vc1, @function
DSP_fir_gen_vc1:
.LFB3:
	.file 1 "../DSP_fir_gen_vc1.c"
	.loc 1 15 0
.LVL0:
		SMVAGA36.M1		R11:R10, AR1
	|	SMOVIL		0, R43
	|	SADD.M2		-1,R16,R3
	|	VMOVIL		 0,VR3
		SMVAGA36.M1		R15:R14, AR4
	|	SMOVIL		-64, R52
	|	SADD.M2		15,R18,R42
	.loc 1 9 0
		SMOVIL		-1, R53
	|	SMVAAGL.M2		AR1, R51:R50
	|	SMVAGA36.M1		R13:R12, AR6
	.loc 1 41 0
		SLT		R43, R16, R0
	|	SADDA.M1		R53:R52,AR4,AR0
	.loc 1 9 0
		SSHFLR		1, R3, R8
	|	SMVAAGH.M2		AR1, R51:R50
	.loc 1 15 0
		SMOVIL		128, R6
	.loc 1 9 0
		SADD.M1		1,R8,R10
	|	SMOVIL		0, R7
	|	SMVAAGL.M2		AR0, R53:R52
.LVL1:
		SSHFLL		1, R10, R11
	|	SADD.M1		-1,R18,R13
		SLTU		R10, R8, R12
	|	SADDU.M1		32,R50,R60
	|	SMVAAGH.M2		AR0, R53:R52
.LVL2:
	.loc 1 15 0
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		-24, R6
		SNOP		1
		SMOVIL		-1, R7
	.loc 1 9 0
		SLTU		R11, R10, R45
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.loc 1 41 0
	[!R0]	SBR		.L2
	|	SSHFLL		1, R12, R14
.LVL3:
	.loc 1 15 0
		SSTDW		R63:R62, *+AR15[2]
.LCFI1:
	.loc 1 38 0
		VSTW.LS 		VR3,*AR7
	|	VSTW.LS 		VR3,*+AR7[16]
	|	SSHFAR		31, R42, R1
	|	SADD.M2		R14,R45,R15
	.loc 1 18 0
		SSHFLR		28, R1, R43
	.loc 1 9 0
		SSHFLL		2, R10, R17
	|	SADD.M2		R42,R43,R2
	.loc 1 18 0
		SSHFAR		4, R2, R59
.LVL4:
	.loc 1 9 0
		SLTU		R60, R50, R21
	;; condjump to .L2 occurs
		SSHFLR		4, R13, R9
	|	SADD.M2		R51,R21,R24
		SLTU		R17, R11, R19
		SSHFLL		1, R15, R20
		SMOVIL		0, R25
	|	SADD.M2		R20,R19,R22
		SSHFLL		4, R9, R23
		SMOVIL		0, R48
		SMOVIL		0, R49
		SMOVIL		0, R46
		SMOVIL		0, R21
		SLT		R25, R18, R1
.LVL5:
.L4:
		SMVAAA.M2		AR6, OR11
	|	SMOV.M1		R46, R42
	|	SMOVIL		0, R54
		SMOV.M1		R21, R43
	|	SMOVIL		0, R55
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR11,AR10
	|	SMVAGA36.M1		R55:R54, AR0
	.loc 1 45 0
		SNOP		1
	.loc 1 43 0
		SLDH		*AR10, R26
	|	SADD.M2		R23,R48,R54
	|	SADD.M1		R50,R46,R55
	.loc 1 9 0
		SLTU		R54, R48, R61
	|	SADD.M2		R51,R21,R56
	|	SMOV.M1		R52, R44
		SSHFLL		1, R54, R57
	|	SADD.M2		R49,R61,R28
	|	SMOV.M1		R53, R45
		SSHFLL		1, R28, R43
	|	SADD.M2		R57,R60,R2
	|	SMOV.M1		R55, R42
		SLTU		R57, R54, R29
		SADD.M2		R43,R29,R0
	|	SLTU		R55, R46, R3
	.loc 1 43 0
		SSTH		R26, *+AR15[6]
	|	SLTU		R2, R60, R13
	|	SADD.M2		R0,R24,R8
	|	SADD.M1		R56,R3,R43
	.loc 1 44 0
		SSTH		R26, *+AR15[7]
	|	SADD.M2		R8,R13,R10
	.loc 1 9 0
		SNOP		2
	.loc 1 45 0
		SLDW		*+AR15[3], R27
		SNOP		3
.LVL6:
	.loc 1 48 0
	[!R1]	SBR		.L7
		SNOP		1
	.loc 1 45 0
		SVBCAST.M2 		 R27,VR0
		SNOP		3
		VSTW.LS 		VR0,*AR0
	;; condjump to .L7 occurs
	.loc 1 46 0
		VLDH.LS 		*AR0,VR5
		SNOP		7
.LVL7:
.L6:
		SMOVIL		64, R9
	|	SMVAGA36.M1		R43:R42, AR2
	|	SADDU.M2		32,R42,R15
		SADD.M2		R9,R44,R11
	|	SLTU		R15, R42, R19
		SLTU		R11, R44, R14
	|	SMOV.M2		R11, R44
	|	VLDH.LS 		*AR2,VR4
	|	SADD.M1		R43,R19,R43
		SADD.M2		R45,R14,R45
	|	SEQ		R15, R2, R0
	|	SMOV.M1		R15, R42
	.loc 1 9 0
		SMVAGA36.M1		R45:R44, AR0
	|[R0]	SEQ		R43, R10, R0
	.loc 1 48 0
		SNOP		1
	.loc 1 50 0
		VLDW.LS 		*AR0,VR1
		SNOP		4
.LVL8:
	.loc 1 48 0
	[!R0]	SBR		.L6
		SNOP		2
	.loc 1 53 0
		VMULAS16T.M3		 VR4,VR5,VR1,VR1
		SNOP		2
.LVL9:
	.loc 1 54 0
		VSTW.LS 		VR1,*AR0
	;; condjump to .L6 occurs
.LVL10:
.L7:
		SADD.M2		4,R46,R42
	|	SADD.M1		2,R48,R45
		SLTU		R42, R46, R44
	|	SMOV.M2		R49, R43
	|	SMOV.M1		R42, R46
		SADD.M2		R21,R44,R21
	|	SEQ		R42, R17, R2
	.loc 1 41 0
	[R2]	SEQ		R21, R22, R2
	[!R2]	SBR		.L4
	|	SLTU		R45, R48, R25
	|	SMOV.M2		R45, R48
		SADD.M2		R49,R25,R49
		SNOP		5
	;; condjump to .L4 occurs
.LVL11:
	.loc 1 58 0
		SMOVIL		1, R50
	|	SADDA.M1		2,AR6,OR0
	|	SADDA.M2		2,AR1,OR1
		SLT		R50, R16, R1
	[!R1]	SBR		.L2
	|	SADDA.M1		-4,AR4,OR2
	|	SMOVIL		0, R51
	.loc 1 9 0
		SADD.M2		-2,R16,R16
	|	SLT		R18, R51, R2
.LVL12:
		SSHFLR		1, R16, R17
	|	SMVAAGL.M1		OR0, R47:R46
	|	SMVAAGL.M2		OR1, R49:R48
		SSHFLL		1, R17, R22
	|	SMVAAGL.M1		OR2, R51:R50
		SSHFLL		2, R17, R52
	|	SMVAAGH.M1		OR0, R47:R46
	|	SMVAAGH.M2		OR1, R49:R48
		SLTU		R22, R17, R23
	|	SMVAAGH.M1		OR2, R51:R50
		SLTU		R52, R22, R27
	;; condjump to .L2 occurs
		SMVAAGL.M2		AR6, R43:R42
	|	SSHFLL		1, R23, R58
		SADD.M1		R58,R27,R61
		SMVAAGH.M2		AR6, R43:R42
		SNOP		1
		SADD.M2		6,R42,R60
		SLTU		R60, R42, R26
	|	SADD.M2		R52,R60,R24
		SADD.M2		R43,R26,R54
	|	SLTU		R24, R60, R55
		SADD.M2		R61,R54,R56
		SADD.M2		R56,R55,R28
.LVL13:
.L11:
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		0, R54
	|	SMOV.M1		R50, R44
	.loc 1 62 0
		SMOVIL		0, R55
	|	SMOV.M1		R51, R45
	.loc 1 60 0
		SLDH		*AR10, R57
	|	SMVAGA36.M1		R55:R54, AR0
	|	SMOV.M2		R48, R42
	|	SMOVIL		0, R0
	.loc 1 9 0
		SMOV.M2		R49, R43
		SNOP		4
	.loc 1 60 0
		SSTH		R57, *+AR15[6]
	.loc 1 61 0
		SSTH		R57, *+AR15[7]
		SNOP		2
	.loc 1 62 0
		SLDW		*+AR15[3], R29
		SNOP		3
	.loc 1 68 0
	[R2]	SBR		.L15
		SNOP		1
	.loc 1 62 0
		SVBCAST.M2 		 R29,VR2
		SNOP		3
		VSTW.LS 		VR2,*AR0
	;; condjump to .L15 occurs
	.loc 1 64 0
		VLDH.LS 		*AR0,VR8
	|	VLDW.LS 		*+AR7[16],VR9
.LVL14:
		SNOP		7
.LVL15:
.L14:
	.loc 1 9 0
		SMVAGA36.M1		R43:R42, AR2
	|	VMOV		VR9,	VR6
		SMVAGA36.M1		R45:R44, AR0
	.loc 1 71 0
		VLDH.LS 		*AR2,VR7
		SNOP		4
	.loc 1 72 0
	[R0]	SBR		.L12
		SNOP		2
	.loc 1 71 0
		VMULAS16T.M3		 VR7,VR8,VR6,VR6
		SNOP		2
		VSTW.LS 		VR6,*AR7
	;; condjump to .L12 occurs
	.loc 1 74 0
		VLDW.LS 		*AR4,VR14
	|	VLDW.LS 		*+AR7[1],VR13
	|	SADD.M2		16,R0,R0
	|	SMOVIL		64, R13
	|	SADDU.M1		32,R42,R3
.LVL16:
	.loc 1 68 0
		SLT		R18, R0, R1
	|	SADD.M2		R13,R44,R8
		SLTU		R3, R42, R10
	|	SMOV.M2		R3, R42
.LVL17:
	[!R1]	SBR		.L14
	|	SADD.M2		R43,R10,R43
	|	SLTU		R8, R44, R9
	|	SMOV.M1		R8, R44
		SADD.M2		R45,R9,R45
		SNOP		3
	.loc 1 74 0
		VADD.M3		VR13,VR14,VR15
		VSTW.LS 		VR15,*AR4
	;; condjump to .L14 occurs
.LVL18:
.L15:
		SADD.M2		4,R46,R12
	|	SADD.M1		4,R48,R19
		SLTU		R12, R46, R15
	|	SMOV.M2		R49, R43
	|	SMOV.M1		R12, R46
		SADD.M2		R47,R15,R47
	|	SEQ		R12, R24, R0
	.loc 1 58 0
	[R0]	SEQ		R47, R28, R0
	[!R0]	SBR		.L11
	|	SLTU		R19, R48, R20
	|	SMOV.M2		R19, R48
		SADD.M2		R49,R20,R49
		SNOP		5
	;; condjump to .L11 occurs
.LVL19:
.L2:
	.loc 1 88 0
		SADD.M2		1,R59,R18
	|	SMOVIL		0, R47
.LVL20:
		SSHFLR		31, R18, R59
.LVL21:
		SADD.M2		R18,R59,R42
	|	SMOVIL		64, R21
		SSHFAR		1, R42, R44
		SLT		R47, R44, R2
	|	SMVAAGL.M2		AR4, R47:R46
	|	SADD.M1		-1,R44,R45
	[!R2]	SBR		.L9
	|	SSHFLL		6, R45, R50
		SMVAAGH.M2		AR4, R47:R46
	|	SSHFLR		26, R45, R60
	.loc 1 9 0
		SNOP		1
		SADD.M2		R21,R46,R25
	|	SMOV.M1		R46, R42
		SLTU		R25, R46, R49
	|	SADD.M2		R50,R25,R17
		SADD.M2		R47,R49,R16
	|	SLTU		R17, R25, R51
		SADD.M2		R60,R16,R53
	;; condjump to .L9 occurs
		SADD.M2		R53,R51,R22
	|	SMOV.M1		R47, R43
.LVL22:
.L16:
		SSHFLL		1, R42, R23
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R23, R42, R26
	|	SSUB.M2		R46, R23, R44
		SSHFLL		1, R43, R27
		SADD.M2		R27,R26,R58
	|	SLTU		R23, R44, R61
		SSUB.M2		R47, R58, R55
	|	SMOVIL		64, R52
		SSUB.M2		R61, R55, R45
	|	SADD.M1		R52,R42,R24
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R24, R42, R56
	|	SMOV.M2		R24, R42
		SADD.M2		R43,R56,R43
	|	SEQ		R24, R17, R1
	.loc 1 90 0
		VLDDWM2.LS 		*AR2,VR17:VR16
	|[R1]	SEQ		R43, R22, R1
	.loc 1 88 0
		SNOP		7
	.loc 1 90 0
		VSTDW.LS 		VR17:VR16,*AR7
	.loc 1 92 0
		VLDW.LS 		*AR7,VR17
	|	VLDW.LS 		*+AR7[16],VR19
	.loc 1 93 0
		SNOP		4
	.loc 1 88 0
	[!R1]	SBR		.L16
		SNOP		2
	.loc 1 92 0
		VSHFAR		15,VR17, VR18
		VSTW.LS 		VR18,*AR7
	|	VSHFAR		15,VR19, VR20
	.loc 1 93 0
		VSTW.LS 		VR20,*+AR7[16]
	|	VSBALE2		VR18,VR20,VR21
	.loc 1 95 0
		VSTW.LS 		VR21,*AR0
	;; condjump to .L16 occurs
.L9:
	.loc 1 97 0
		SMOVIL.L		vfree, R42
	|	SMVAAA.M2		AR7, OR12
		SMOVIH.L		vfree, R42
		SMOVIH4.L		vfree, R43
	|	SMVAAGL.M2		OR12, R11:R10
		SMVCGC.L		R43:R42, BRReg
		SMVAAGH.M2		OR12, R11:R10
		SBR		R43:R42
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL23:
	.loc 1 98 0
.L37:
		SLDDW		*+AR15[2], R63:R62
	|	SMOVIL		128, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
		SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL24:
.L12:
	.loc 1 77 0
		VLDW.LS 		*AR0,VR11
	|	SADD.M2		16,R0,R0
	|	SMOVIL		64, R13
	|	SADDU.M1		32,R42,R3
.LVL25:
	.loc 1 68 0
		SLT		R18, R0, R1
	|	SADD.M2		R13,R44,R8
		SLTU		R3, R42, R10
	|	SMOV.M2		R3, R42
.LVL26:
	[!R1]	SBR		.L14
	|	SADD.M2		R43,R10,R43
	|	SLTU		R8, R44, R9
	|	SMOV.M1		R8, R44
		SADD.M2		R45,R9,R45
		SNOP		3
	.loc 1 77 0
		VADD.M3		VR6,VR11,VR12
		VSTW.LS 		VR12,*AR0
	;; condjump to .L14 occurs
		SBR		.L15
		SNOP		6
	;; jump to .L15 occurs
.LFE3:
	.size	DSP_fir_gen_vc1, .-DSP_fir_gen_vc1
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
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x379
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_gen_vc1.c"
	.string	"/cygdrive/e/project/function  demo/function/DSP_fir_gen/Debug"
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
	.string	"DSP_fir_gen_vc1"
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x32a
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0x337
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xb
	.4byte	0x33d
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xc
	.4byte	0x337
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0xd
	.4byte	0x106
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST5
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x10
	.4byte	0x106
	.4byte	.LLST6
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x10
	.4byte	0x106
	.4byte	.LLST7
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x10
	.4byte	0x106
	.4byte	.LLST8
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x12
	.4byte	0x106
	.4byte	.LLST9
	.byte	0x5
	.string	"temp_h"
	.byte	0x1
	.byte	0x12
	.4byte	0x106
	.4byte	.LLST10
	.byte	0x6
	.string	"tmpx"
	.byte	0x1
	.byte	0x13
	.4byte	0x33d
	.byte	0x5
	.string	"temp_vh"
	.byte	0x1
	.byte	0x14
	.4byte	0x32a
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vx"
	.byte	0x1
	.byte	0x14
	.4byte	0x32a
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_even_vr"
	.byte	0x1
	.byte	0x15
	.4byte	0x343
	.4byte	.LLST13
	.byte	0x6
	.string	"temp_old_vr"
	.byte	0x1
	.byte	0x16
	.4byte	0x350
	.byte	0x5
	.string	"tmpr"
	.byte	0x1
	.byte	0x19
	.4byte	0x350
	.4byte	.LLST14
	.byte	0x7
	.string	"svb_int_h1"
	.byte	0x1
	.byte	0x1a
	.4byte	0x350
	.byte	0x1
	.byte	0x50
	.byte	0x7
	.string	"ttt"
	.byte	0x1
	.byte	0x21
	.4byte	0x356
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x5
	.string	"temp_in_r"
	.byte	0x1
	.byte	0x22
	.4byte	0x363
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_in_r_high"
	.byte	0x1
	.byte	0x24
	.4byte	0x350
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_in_r_low"
	.byte	0x1
	.byte	0x25
	.4byte	0x350
	.4byte	.LLST17
	.byte	0x6
	.string	"M2LD_temp1"
	.byte	0x1
	.byte	0x53
	.4byte	0x350
	.byte	0x6
	.string	"M2LD_temp2"
	.byte	0x1
	.byte	0x53
	.4byte	0x350
	.byte	0x6
	.string	"M2LD_Dst"
	.byte	0x1
	.byte	0x54
	.4byte	0x376
	.byte	0x8
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x61
	.4byte	0x106
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0xf9
	.4byte	0x337
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x32a
	.byte	0xc
	.byte	0x8
	.4byte	0xf9
	.byte	0xa
	.byte	0x1
	.4byte	0x106
	.4byte	0x350
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x343
	.byte	0xa
	.byte	0x1
	.4byte	0x106
	.4byte	0x363
	.byte	0xb
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x356
	.byte	0xa
	.byte	0x1
	.4byte	0x147
	.4byte	0x376
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x369
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
	.byte	0x96,0x42
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.llong	.LFB3
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI0
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7f
	.byte	0x18
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x51
	.llong	.LVL23-1
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x1
	.byte	0x51
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
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x56
	.llong	.LVL23-1
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
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
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x54
	.llong	.LVL23-1
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL12
	.llong	.LVL19
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x2
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x2
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL20
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x1
	.byte	0x60
	.llong	.LVL25
	.llong	.LFE3
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL4
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x4b
	.llong	.LVL21
	.llong	.LVL23-1
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x7f
	.byte	0x9f
	.llong	.LVL23-1
	.llong	.LVL24
	.2byte	0x14
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x23
	.byte	0xf
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x22
	.byte	0x23
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x4b
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.byte	0x2b
	.llong	.LVL6
	.llong	.LVL24
	.2byte	0x2
	.byte	0x91
	.byte	0x74
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x2d
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL15
	.llong	.LVL17
	.2byte	0x3
	.byte	0x92
	.byte	0x3a
	.byte	0
	.llong	.LVL24
	.llong	.LVL26
	.2byte	0x3
	.byte	0x92
	.byte	0x3a
	.byte	0
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL4
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x54
	.llong	.LVL23-1
	.llong	.LVL24
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL4
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x57
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x1
	.byte	0x57
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL4
	.llong	.LVL23-1
	.2byte	0x4
	.byte	0x77
	.byte	0xc0,0
	.byte	0x9f
	.llong	.LVL24
	.llong	.LFE3
	.2byte	0x4
	.byte	0x77
	.byte	0xc0,0
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

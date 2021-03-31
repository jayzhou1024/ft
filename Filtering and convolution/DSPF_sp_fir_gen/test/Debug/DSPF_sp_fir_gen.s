	.file	"DSPF_sp_fir_gen.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_gen_cn_v2,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn_v2
	.type	DSP_fir_gen_cn_v2, @function
DSP_fir_gen_cn_v2:
.LFB0:
	.file 1 "../DSPF_sp_fir_gen.c"
	.loc 1 10 0
.LVL0:
	.loc 1 4 0
		SMVAGA36.M1		R13:R12, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R16,R2
	.loc 1 14 0
		SLT		R42, R16, R0
	|	SADD.M2		4,R10,R55
	|	SMVAGA36.M1		R15:R14, AR5
	.loc 1 4 0
		SADDA.M1		-4,OR0,AR0
	|[!R0]	SBR		.L1
	|	SSHFLL		1, R2, R3
		SSHFLL		2, R2, R44
		SLTU		R3, R2, R8
	|	SADD.M2		R44,R55,R56
		SLTU		R55, R10, R46
	|	SMVAAGL.M2		AR0, R51:R50
		SLTU		R44, R3, R9
	|	SADD.M1		R11,R46,R12
.LVL1:
		SSHFLL		1, R8, R13
	|	SMVAAGH.M2		AR0, R51:R50
		SADD.M1		R13,R9,R14
	|	SMOVIL		0, R43
	;; condjump to .L1 occurs
.LVL2:
		SLTU		R56, R55, R57
	|	SADD.M2		R14,R12,R15
		SLT		R43, R18, R1
	|	SADD.M2		R15,R57,R16
.LVL3:
		SMOVIL		128, R46
		SMOVIL		0, R47
		SMOVIL		192, R48
.LVL4:
.L4:
		SADD.M2		4,R50,R17
	|[!R1]	SBR		.L6
	|	SMVAGA36.M1		R11:R10, AR3
	|	SMOVIL		0, R23
		SLTU		R17, R50, R20
	|	SMOV.M2		R17, R50
		SADD.M2		R51,R20,R51
	|	SMOVIL		0, R24
		SMVAGA36.M2		R51:R50, AR10
	|	SMOVIL		0, R52
	.loc 1 16 0
		SNOP		1
	.loc 1 15 0
	[R1]	SLDW		*AR10, R21
		SNOP		5
	.loc 1 16 0
	;; condjump to .L6 occurs
	.loc 1 15 0
		SVBCAST.M2 		 R21,VR4
		SNOP		3
.LVL5:
.L3:
	.loc 1 4 0
		SMOV.M2		R23, R44
	|	SMOV.M1		R24, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR5,AR0
	|	SADDA.M2		R45:R44,AR3,AR2
	|	SMOVIL		64, R44
.LVL6:
		SMOVIL		0, R45
		SNOP		1
	.loc 1 21 0
		VLDW.LS 		*AR2,VR7
	|	VLDW.LS 		*AR0,VR3
	|	SADDA.M1		R45:R44,AR2,AR1
	|	SADDA.M2		R47:R46,AR2,AR2
	.loc 1 4 0
		SNOP		1
.LVL7:
		SADDA.M1		R45:R44,AR0,AR6
	|	SADDA.M2		R47:R46,AR0,AR4
	.loc 1 19 0
		VLDW.LS 		*AR1,VR6
	|	VLDW.LS 		*AR2,VR5
.LVL8:
	.loc 1 20 0
		SNOP		1
.LVL9:
	.loc 1 16 0
		SADDU.M2		48,R52,R52
	|	SADD.M1		R48,R23,R53
.LVL10:
		SLT		R52, R18, R0
		SLTU		R53, R23, R54
	|	SMOV.M2		R53, R23
	.loc 1 21 0
		VFMULAS32.M3	VR7,VR4,VR3,VR3
	|	SADD.M2		R24,R54,R24
		SNOP		5
		VSTW.LS 		VR3,*AR0
	.loc 1 22 0
		VLDW.LS 		*AR6,VR0
		SNOP		7
		VFMULAS32.M3	VR6,VR4,VR0,VR0
		SNOP		5
		VSTW.LS 		VR0,*AR6
	.loc 1 23 0
		VLDW.LS 		*AR4,VR1
		SNOP		7
	.loc 1 16 0
	[R0]	SBR		.L3
	|	VFMULAS32.M3	VR5,VR4,VR1,VR1
	.loc 1 23 0
		SNOP		5
		VSTW.LS 		VR1,*AR4
	;; condjump to .L3 occurs
.LVL11:
.L6:
		SLTU		R55, R10, R25
	|	SMOV.M2		R55, R10
	.loc 1 14 0
		SEQ		R55, R56, R2
	|	SADD.M2		R11,R25,R11
	|	SADD.M1		4,R55,R55
	[R2]	SEQ		R11, R16, R2
	[R2]	SBR		.L1
	[!R2]	SBR		.L4
		SNOP		6
	;; condjump to .L1 occurs
	;; jump to .L4 occurs
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSP_fir_gen_cn_v2, .-DSP_fir_gen_cn_v2
	.section	.text.DSPF_sp_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc1
	.type	DSPF_sp_fir_gen_vc1, @function
DSPF_sp_fir_gen_vc1:
.LFB1:
	.loc 1 33 0
.LVL12:
	.loc 1 33 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 35 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL13:
	.loc 1 39 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 27 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R2
	.loc 1 39 0
	[!R1]	SBR		.L17
	|	SADD.M2		-1,R18,R43
	|	SSHFLL		1, R2, R3
	.loc 1 27 0
		SADDA.M2		-4,OR0,AR0
	|	SADD.M1		4,R10,R53
	|	SSHFLL		2, R2, R45
		SSHFLR		2, R43, R8
	|	SADD.M1		R45,R53,R54
		SLTU		R3, R2, R9
	|	SADD.M1		1,R8,R52
		SMVAAGL.M2		AR0, R47:R46
	|	SLTU		R53, R10, R49
		SLTU		R45, R3, R12
	|	SADD.M1		R11,R49,R13
.LVL14:
		SSHFLL		1, R9, R14
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L17 occurs
.LVL15:
		SMOVIL		0, R44
	|	SADD.M1		R14,R12,R15
		SLTU		R52, R8, R16
	|	SADD.M2		R15,R13,R17
.LVL16:
		SLT		R44, R18, R1
		SLTU		R54, R53, R55
		SSHFLR		28, R52, R18
	|	SADD.M2		R17,R55,R19
.LVL17:
		SSHFLL		4, R16, R51
		SOR		R51, R18, R20
		SSHFLL		4, R52, R21
.LVL18:
.L16:
		SADD.M2		4,R46,R22
	|[!R1]	SBR		.L18
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R28
		SLTU		R22, R46, R24
	|	SMOV.M2		R22, R46
		SADD.M2		R47,R24,R47
	|	SMOVIL		0, R43
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 40 0
	[R1]	SLDW		*AR10, R25
		SNOP		5
	.loc 1 41 0
	;; condjump to .L18 occurs
	.loc 1 40 0
		SVBCAST.M2 		 R25,VR5
		SNOP		3
.LVL19:
.L15:
	.loc 1 27 0
		SMOV.M2		R28, R44
	|	SMOV.M1		R43, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
		SNOP		2
	.loc 1 44 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*AR2,VR4
	|	SADD.M2		16,R28,R26
		SLTU		R26, R28, R50
	|	SMOV.M2		R26, R28
		SADD.M2		R43,R50,R43
	|	SEQ		R26, R21, R0
	.loc 1 41 0
	[R0]	SEQ		R43, R20, R0
		SNOP		4
	.loc 1 44 0
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[!R0]	SBR		.L15
	.loc 1 41 0
		SNOP		5
	.loc 1 44 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L15 occurs
.LVL20:
.L18:
		SLTU		R53, R10, R29
	|	SMOV.M2		R53, R10
	.loc 1 39 0
		SEQ		R53, R54, R2
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R53,R53
	[R2]	SEQ		R11, R19, R2
	[R2]	SBR		.L17
	[!R2]	SBR		.L16
		SNOP		6
	;; condjump to .L17 occurs
	;; jump to .L16 occurs
.L17:
	.loc 1 47 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE1:
	.size	DSPF_sp_fir_gen_vc1, .-DSPF_sp_fir_gen_vc1
	.section	.text.DSPF_sp_fir_gen_vc3,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc3
	.type	DSPF_sp_fir_gen_vc3, @function
DSPF_sp_fir_gen_vc3:
.LFB2:
	.loc 1 56 0
.LVL21:
	.loc 1 56 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 57 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL22:
	.loc 1 62 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 50 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R3
	.loc 1 62 0
	[!R1]	SBR		.L33
	|	SSHFLL		1, R3, R8
	|	SADD.M2		4,R10,R52
	.loc 1 50 0
		SADDA.M2		-4,OR0,AR0
	|	SSHFLL		2, R3, R44
		SLTU		R8, R3, R9
	|	SADD.M1		R44,R52,R53
		SLTU		R52, R10, R48
		SMVAAGL.M2		AR0, R47:R46
	|	SLTU		R44, R8, R12
	|	SADD.M1		R11,R48,R13
.LVL23:
		SSHFLL		1, R9, R14
.LVL24:
		SADD.M1		R14,R12,R15
	|	SMOVIL		0, R43
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L33 occurs
		SLTU		R53, R52, R54
	|	SADD.M1		R15,R13,R16
.LVL25:
		SLT		R43, R18, R2
	|	SADD.M2		R16,R54,R17
.LVL26:
.L32:
		SADD.M2		4,R46,R19
	|[!R2]	SBR		.L38
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R25
		SLTU		R19, R46, R21
	|	SMOV.M2		R19, R46
		SADD.M2		R47,R21,R47
	|	SMOV.M1		R18, R28
	|	SMOVIL		0, R26
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		0, R49
	.loc 1 66 0
		SNOP		1
	.loc 1 63 0
	[R2]	SLDW		*AR10, R22
		SNOP		5
	.loc 1 66 0
	;; condjump to .L38 occurs
	.loc 1 63 0
		SVBCAST.M2 		 R22,VR5
		SNOP		3
.LVL27:
.L37:
	.loc 1 50 0
		SMOV.M2		R25, R44
	|	SMOV.M1		R26, R45
	|	SMOVIL		4, R51
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
	|	SLT		R51, R28, R1
	.loc 1 75 0
		SNOP		2
	.loc 1 74 0
		VLDW.LS 		*AR2,VR4
	|	VLDW.LS 		*AR0,VR3
	|	SADDU.M2		48,R25,R50
	|	SADD.M1		12,R49,R49
.LVL28:
	.loc 1 68 0
		VLDW.LS 		*+AR2[4],VR7
	|	VLDW.LS 		*+AR2[8],VR6
	|	SLTU		R50, R25, R23
	|	SMOV.M2		R50, R25
.LVL29:
	.loc 1 66 0
		SLT		R49, R18, R0
	|	SADD.M2		R26,R23,R26
		SNOP		5
	.loc 1 74 0
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[R1]	SBR		.L44
	.loc 1 75 0
		SNOP		5
	.loc 1 74 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L44 occurs
.L35:
	.loc 1 66 0
	[R0]	SBR		.L37
	|	SADD.M2		-12,R28,R28
		SNOP		6
	;; condjump to .L37 occurs
.LVL30:
.L38:
		SLTU		R52, R10, R29
	|	SMOV.M2		R52, R10
	.loc 1 62 0
		SEQ		R52, R53, R0
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R52,R52
	[R0]	SEQ		R11, R17, R0
	[R0]	SBR		.L33
	[!R0]	SBR		.L32
		SNOP		6
	;; condjump to .L33 occurs
	;; jump to .L32 occurs
.LVL31:
.L44:
	.loc 1 76 0
		VLDW.LS 		*+AR0[4],VR0
	|	SMOVIL		8, R27
	.loc 1 78 0
		SLT		R27, R28, R1
		SNOP		6
	.loc 1 76 0
		VFMULAS32.M3	VR7,VR5,VR0,VR0
	|[!R1]	SBR		.L35
	.loc 1 78 0
		SNOP		5
	.loc 1 76 0
		VSTW.LS 		VR0,*+AR0[4]
	;; condjump to .L35 occurs
	.loc 1 79 0
		VLDW.LS 		*+AR0[8],VR1
	|	SADD.M2		-12,R28,R28
		SNOP		7
		VFMULAS32.M3	VR6,VR5,VR1,VR1
	|[R0]	SBR		.L37
	.loc 1 66 0
		SNOP		5
	.loc 1 79 0
		VSTW.LS 		VR1,*+AR0[8]
	;; condjump to .L37 occurs
		SBR		.L38
		SNOP		6
	;; jump to .L38 occurs
.LVL32:
.L33:
	.loc 1 83 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE2:
	.size	DSPF_sp_fir_gen_vc3, .-DSPF_sp_fir_gen_vc3
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.align	3
.LEFDE4:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_gen.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/Debug"
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
	.string	"DSP_fir_gen_cn_v2"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x276
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x5
	.4byte	0x283
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x6
	.4byte	0x289
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x7
	.4byte	0x283
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x8
	.4byte	0x12f
	.4byte	.LLST3
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x9
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.4byte	.LLST4
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.4byte	.LLST5
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.byte	0x7
	.string	"t"
	.byte	0x1
	.byte	0xc
	.4byte	0x12f
	.byte	0x6
	.string	"temp1"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.4byte	.LLST6
	.byte	0x7
	.string	"temp2"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.byte	0x7
	.string	"temp3"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.byte	0x6
	.string	"temp4"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.4byte	.LLST7
	.byte	0x6
	.string	"temp5"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.4byte	.LLST8
	.byte	0x6
	.string	"temp6"
	.byte	0x1
	.byte	0xd
	.4byte	0x276
	.4byte	.LLST9
	.byte	0
	.byte	0x8
	.byte	0x1
	.4byte	0x167
	.4byte	0x283
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x276
	.byte	0xa
	.byte	0x8
	.4byte	0x167
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc1"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x35f
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x1c
	.4byte	0x283
	.4byte	.LLST10
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x1d
	.4byte	0x289
	.4byte	.LLST11
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x1e
	.4byte	0x283
	.4byte	.LLST12
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x1f
	.4byte	0x12f
	.4byte	.LLST13
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x20
	.4byte	0x12f
	.4byte	.LLST14
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x12f
	.4byte	.LLST15
	.byte	0x7
	.string	"j"
	.byte	0x1
	.byte	0x22
	.4byte	0x12f
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x22
	.4byte	0x12f
	.byte	0x6
	.string	"tempr"
	.byte	0x1
	.byte	0x24
	.4byte	0x36f
	.4byte	.LLST16
	.byte	0x6
	.string	"temp1"
	.byte	0x1
	.byte	0x25
	.4byte	0x276
	.4byte	.LLST17
	.byte	0x7
	.string	"temp2"
	.byte	0x1
	.byte	0x25
	.4byte	0x276
	.byte	0x7
	.string	"temp3"
	.byte	0x1
	.byte	0x26
	.4byte	0x283
	.byte	0
	.byte	0xb
	.4byte	0x167
	.4byte	0x36f
	.byte	0xc
	.4byte	0x153
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x35f
	.byte	0xd
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc3"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x33
	.4byte	0x283
	.4byte	.LLST18
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x34
	.4byte	0x289
	.4byte	.LLST19
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x35
	.4byte	0x283
	.4byte	.LLST20
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x36
	.4byte	0x12f
	.4byte	.LLST21
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x37
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.4byte	0x12f
	.4byte	.LLST22
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x3a
	.4byte	0x12f
	.4byte	.LLST23
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x3a
	.4byte	0x12f
	.byte	0x6
	.string	"t"
	.byte	0x1
	.byte	0x3a
	.4byte	0x12f
	.4byte	.LLST24
	.byte	0x6
	.string	"temp1"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST25
	.byte	0x6
	.string	"temp2"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST25
	.byte	0x6
	.string	"temp3"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST25
	.byte	0x6
	.string	"temp4"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST28
	.byte	0x6
	.string	"temp5"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST29
	.byte	0x6
	.string	"temp6"
	.byte	0x1
	.byte	0x3b
	.4byte	0x276
	.4byte	.LLST30
	.byte	0x7
	.string	"temp7"
	.byte	0x1
	.byte	0x3c
	.4byte	0x283
	.byte	0x7
	.string	"temp8"
	.byte	0x1
	.byte	0x3c
	.4byte	0x283
	.byte	0x7
	.string	"temp9"
	.byte	0x1
	.byte	0x3c
	.4byte	0x283
	.byte	0x6
	.string	"tempr"
	.byte	0x1
	.byte	0x3d
	.4byte	0x36f
	.4byte	.LLST31
	.byte	0
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
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
	.llong	.LFE0
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x3
	.byte	0x82
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
.LLST4:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x72
	.byte	0
	.llong	.LVL7
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL12
	.llong	.LVL18
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL18
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL12
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL14
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LFE1
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL12
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x9f
	.llong	.LVL18
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL12
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
	.llong	.LVL18
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LFE1
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL21
	.llong	.LVL26
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL26
	.llong	.LFE2
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL23
	.llong	.LFE2
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL21
	.llong	.LVL24
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL24
	.llong	.LFE2
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL21
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL25
	.llong	.LFE2
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x8
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x41
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x8
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x41
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL27
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL22
	.llong	.LVL24
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL24
	.llong	.LFE2
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	.LFB2
	.llong	.LFE2
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:

	.file	"DSPF_sp_fir_gen_vc2.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fir_gen_cn_v2,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_cn_v2
	.type	DSPF_sp_fir_gen_cn_v2, @function
DSPF_sp_fir_gen_cn_v2:
.LFB0:
	.file 1 "../verson/DSPF_sp_fir_gen_vc2.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 19 0
		SMOVIL		0, R42
	|	SADD.M1		-1,R16,R1
	|	SMVAGA36.M2		R13:R12, AR12
		SLT		R42, R16, R0
	[!R0]	SBR		.L1
	|	SSHFLR		2, R1, R3
	.loc 1 7 0
		SADD.M2		1,R3,R8
	|	SMOVIL		0, R43
		SLTU		R8, R3, R9
		SSHFLR		28, R8, R12
.LVL1:
		SSHFLL		4, R9, R13
		SMOVIL		0, R22
		SMOVIL		0, R23
	;; condjump to .L1 occurs
		SLT		R43, R18, R2
		SOR		R13, R12, R16
.LVL2:
		SSHFLL		4, R8, R17
		SMOVIL		128, R28
		SMOVIL		0, R29
		SMOVIL		192, R26
		SMOVIL		0, R27
		SMOVIL		256, R24
.LVL3:
.L4:
		SMOV.M2		R22, R52
	|	SMOV.M1		R23, R53
	|[!R2]	SBR		.L7
	|	SMOVIL		0, R1
	;no-op trunc di R53:R52 to pdi R53:R52
		SADDA.M2		R53:R52,AR12,AR10
	|	SADD.M1		R10,R22,R42
		SLTU		R42, R22, R54
	|	SADD.M1		R11,R23,R19
	.loc 1 20 0
	[R2]	SLDW		*AR10, R53
	|	SADD.M2		R19,R54,R43
	.loc 1 21 0
	[R2]	SLDW		*+AR10[1], R52
	|	SMVAGA36.M1		R43:R42, AR2
	|	SMOV.M2		R14, R42
	.loc 1 22 0
	[R2]	SLDW		*+AR10[2], R20
	|	SMOV.M2		R15, R43
	.loc 1 23 0
	[R2]	SLDW		*+AR10[3], R21
		SNOP		2
	;; condjump to .L7 occurs
	.loc 1 20 0
		SVBCAST.M2 		 R53,VR5
.LVL4:
	.loc 1 21 0
		SVBCAST.M1 		 R52,VR6
.LVL5:
	.loc 1 22 0
		SVBCAST.M1 		 R20,VR7
.LVL6:
	.loc 1 23 0
		SVBCAST.M1 		 R21,VR8
		SNOP		3
.LVL7:
.L6:
	.loc 1 7 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR0
	|	SSHFAR		31, R1, R57
	|	SMOV.M2		R1, R54
		SMOVIL		64, R44
	|	SMOV.M2		R57, R55
		SMOVIL		0, R45
	;no-op trunc di R55:R54 to pdi R55:R54
	|	VLDW.LS 		*AR0,VR3
	|	SADD.M1		1,R1,R25
	|	SADDA.M2		R29:R28,AR0,AR6
		SADDA.M1		R45:R44,AR0,AR1
	|	SSHFLR		30, R54, R44
	.loc 1 29 0 discriminator 2
		SSHFLL		2, R55, R45
	|	SADDA.M2		R27:R26,AR0,AR4
		SOR		R45, R44, R45
		SSHFLL		2, R54, R44
	|	SMOV.M1		R25, R52
		SADDA.M2		R45:R44,AR2,AR3
	|	SSHFAR		31, R25, R59
	|	SADD.M1		2,R1,R48
	.loc 1 31 0 discriminator 2
		SMOV.M1		R59, R53
	|	SSHFAR		31, R48, R61
	;no-op trunc di R53:R52 to pdi R53:R52
		SSHFLR		30, R52, R46
	|	SMOV.M1		R48, R54
	.loc 1 29 0 discriminator 2
		VLDW.LS 		*AR3,VR4
	|	SSHFLL		2, R53, R47
	|	SMOV.M2		R61, R55
	|	SADD.M1		3,R1,R49
.LVL8:
	.loc 1 31 0 discriminator 2
		SOR		R47, R46, R47
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SADD.M2		R24,R42,R51
	|	SADD.M1		16,R1,R1
.LVL9:
		SSHFLL		2, R52, R46
	|	SMOV.M2		R49, R52
		SADDA.M2		R47:R46,AR2,OR0
	|	SSHFLR		30, R54, R9
	.loc 1 33 0 discriminator 2
		SSHFLL		2, R55, R55
	.loc 1 35 0 discriminator 2
		SSHFAR		31, R49, R3
	.loc 1 33 0 discriminator 2
		SSHFLL		2, R54, R48
	|	SMOV.M2		R3, R53
		SOR		R55, R9, R49
	;no-op trunc di R53:R52 to pdi R53:R52
	.loc 1 30 0 discriminator 2
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|	SADDA.M2		R49:R48,AR2,AR5
	|	SSHFLR		30, R52, R12
	.loc 1 35 0 discriminator 2
		SSHFLL		2, R53, R13
		SLTU		R51, R42, R8
	|	SMOV.M1		R51, R42
		SSHFLL		2, R52, R50
	|	SADD.M2		R43,R8,R43
		SOR		R13, R12, R51
		SADDA.M2		R51:R50,AR2,AR3
	|	SLT		R1, R18, R0
	.loc 1 30 0 discriminator 2
		VSTW.LS 		VR3,*AR0
	|	SMVAAA.M1		OR0, AR0
	.loc 1 32 0 discriminator 2
		VLDW.LS 		*AR1,VR1
	.loc 1 31 0 discriminator 2
		VLDW.LS 		*AR0,VR0
		SNOP		7
.LVL10:
	.loc 1 32 0 discriminator 2
		VFMULAS32.M3	VR0,VR6,VR1,VR1
		SNOP		5
		VSTW.LS 		VR1,*AR1
	.loc 1 33 0 discriminator 2
		VLDW.LS 		*AR5,VR2
	|	VLDW.LS 		*AR6,VR9
.LVL11:
	.loc 1 34 0 discriminator 2
		SNOP		7
		VFMULAS32.M3	VR2,VR7,VR9,VR9
		SNOP		5
		VSTW.LS 		VR9,*AR6
	.loc 1 35 0 discriminator 2
		VLDW.LS 		*AR3,VR10
	|	VLDW.LS 		*AR4,VR11
.LVL12:
	.loc 1 36 0 discriminator 2
		SNOP		7
	.loc 1 25 0 discriminator 2
	[R0]	SBR		.L6
	|	VFMULAS32.M3	VR10,VR8,VR11,VR11
	.loc 1 36 0 discriminator 2
		SNOP		5
		VSTW.LS 		VR11,*AR4
	;; condjump to .L6 occurs
.LVL13:
.L7:
		SADD.M2		16,R22,R42
		SLTU		R42, R22, R43
	|	SMOV.M2		R42, R22
		SADD.M2		R23,R43,R23
	|	SEQ		R42, R17, R1
	.loc 1 19 0
	[R1]	SEQ		R23, R16, R1
	[!R1]	SBR		.L4
		SNOP		6
	;; condjump to .L4 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL14:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fir_gen_cn_v2, .-DSPF_sp_fir_gen_cn_v2
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1db
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x1
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x1c5
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x8
	.4byte	0x1d2
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0x9
	.4byte	0x1d8
	.4byte	.LLST0
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xa
	.4byte	0x1d2
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.string	"nh"
	.byte	0x1
	.byte	0xb
	.4byte	0x62
	.4byte	.LLST1
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xc
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0xf
	.4byte	0x1d8
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.4byte	0x1d2
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.4byte	0x1c5
	.4byte	.LLST7
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x11
	.4byte	0x1c5
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x11
	.4byte	0x1c5
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x11
	.4byte	0x1c5
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x12
	.4byte	0x1c5
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x12
	.4byte	0x1c5
	.4byte	.LLST12
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x12
	.4byte	0x1c5
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x12
	.4byte	0x1c5
	.4byte	.LLST14
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x85
	.4byte	0x1d2
	.uleb128 0xb
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x1c5
	.uleb128 0xc
	.byte	0x8
	.4byte	0x85
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x3
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.llong	.LVL3
	.llong	.LVL14
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	.LVL14
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL14
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x1
	.byte	0x61
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x7
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL9
	.llong	.LVL13
	.2byte	0x9
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x81
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL7
	.llong	.LVL13
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL4
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL6
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL7
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL8
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
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
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"tmpx"
.LASF21:
	.string	"temp_vx_1_16"
.LASF13:
	.string	"diff"
.LASF6:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF25:
	.string	"../verson/DSPF_sp_fir_gen_vc2.c"
.LASF20:
	.string	"temp_vx_0_15"
.LASF11:
	.string	"float"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF26:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/vector_c/Debug"
.LASF24:
	.string	"GNU C 4.7.0"
.LASF15:
	.string	"temp_x"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF22:
	.string	"temp_vx_2_17"
.LASF4:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF16:
	.string	"temp_vh_1"
.LASF17:
	.string	"temp_vh_2"
.LASF18:
	.string	"temp_vh_3"
.LASF19:
	.string	"temp_vh_4"
.LASF27:
	.string	"DSPF_sp_fir_gen_cn_v2"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"temp_vx_3_18"

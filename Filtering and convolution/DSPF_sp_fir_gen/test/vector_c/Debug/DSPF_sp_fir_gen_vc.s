	.file	"DSPF_sp_fir_gen_vc.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fir_gen_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc
	.type	DSPF_sp_fir_gen_vc, @function
DSPF_sp_fir_gen_vc:
.LFB0:
	.file 1 "../DSPF_sp_fir_gen_vc.c"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
	.loc 1 9 0
		SMVAGA36.M1		R15:R14, OR0
	|	SMVAGA36.M2		R13:R12, AR12
	|	SMOVIL		0, R42
		SMOVIL		-64, R12
.LVL1:
		SMOVIL		-1, R13
	.loc 1 22 0
		SLT		R42, R16, R0
	|	SADDA.M2		R13:R12,OR0,AR0
	[!R0]	SBR		.L1
	|	SMOVIL		0, R1
	.loc 1 21 0
		SMOVIH		0, R1
		SMVAAGL.M1		AR0, R13:R12
	|	SVBCAST.M2 		 R1,VR12
	|	SMOVIL		0, R1
.LVL2:
	.loc 1 22 0
		SMOVIL		0, R24
		SMVAAGH.M1		AR0, R13:R12
	|	SMOVIL		0, R25
		SLT		R1, R18, R2
		SNOP		1
	;; condjump to .L1 occurs
.LVL3:
.L2:
	.loc 1 9 0
		SMOV.M2		R24, R52
	|	SMOV.M1		R25, R53
	|[!R2]	SBR		.L7
	|	SMOVIL		0, R14
	;no-op trunc di R53:R52 to pdi R53:R52
		SADDA.M2		R53:R52,AR12,AR10
	|	SADD.M1		R10,R24,R42
		SLTU		R42, R24, R54
	|	SADD.M1		R11,R25,R43
	.loc 1 23 0
	[R2]	SLDW		*AR10, R53
	|	SADD.M2		R43,R54,R43
	.loc 1 24 0
	[R2]	SLDW		*+AR10[1], R52
	|	SMVAGA36.M1		R43:R42, OR1
	|	SMOV.M2		R12, R42
	.loc 1 25 0
	[R2]	SLDW		*+AR10[2], R3
	|	SMOV.M2		R13, R43
	.loc 1 26 0
	[R2]	SLDW		*+AR10[3], R8
		SNOP		2
	;; condjump to .L7 occurs
	.loc 1 23 0
		SVBCAST.M2 		 R53,VR8
.LVL4:
	.loc 1 24 0
		SVBCAST.M1 		 R52,VR9
.LVL5:
	.loc 1 25 0
		SVBCAST.M1 		 R3,VR10
.LVL6:
	.loc 1 26 0
		SVBCAST.M1 		 R8,VR11
		SNOP		3
.LVL7:
.L6:
	.loc 1 35 0
		SSHFAR		31, R14, R59
	|	SMOV.M2		R14, R56
	|	SADD.M1		1,R14,R9
		SMOVIL		64, R46
	|	SMOV.M2		R59, R57
	|	SADD.M1		2,R14,R15
	;no-op trunc di R57:R56 to pdi R57:R56
		SSHFLL		2, R57, R45
	|	SADD.M2		R46,R42,R57
	|	SMOV.M1		R9, R54
		SLTU		R57, R42, R29
	|	SMOV.M2		R57, R42
	|	SMOV.M1		R15, R52
		SADD.M2		R43,R29,R43
	|	SSHFAR		31, R9, R61
	|	SADD.M1		3,R14,R19
	.loc 1 9 0
		SMVAGA36.M1		R43:R42, AR2
	|	SSHFAR		31, R15, R21
	|	SMOV.M2		R61, R55
	.loc 1 41 0
		SMOV.M2		R21, R53
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SSHFLR		30, R56, R17
	.loc 1 29 0
		VLDW.LS 		*AR2,VR3
.LVL8:
	.loc 1 41 0
	;no-op trunc di R53:R52 to pdi R53:R52
	.loc 1 38 0
		SSHFLR		30, R54, R23
	|	SADD.M2		16,R14,R14
	.loc 1 41 0
		SSHFLR		30, R52, R27
		SSHFLL		2, R53, R49
	.loc 1 38 0
		SSHFLL		2, R55, R47
	.loc 1 35 0
		SSHFLL		2, R56, R44
	.loc 1 41 0
		SSHFLL		2, R52, R48
	|	SMOV.M2		R19, R52
	.loc 1 35 0
		SOR		R45, R17, R45
	.loc 1 38 0
		SOR		R47, R23, R47
	|	SADDA.M2		R45:R44,OR1,AR3
		SSHFLL		2, R54, R46
	.loc 1 31 0
	[R1]	SBR		.L5
	|	SADDA.M1		R47:R46,OR1,AR1
	|	SLT		R14, R18, R0
	.loc 1 41 0
		SOR		R49, R27, R49
		SADDA.M1		R49:R48,OR1,AR6
	|	SSHFAR		31, R19, R28
	.loc 1 44 0
		SMOV.M2		R28, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SSHFLR		30, R52, R44
		SSHFLL		2, R53, R51
		SOR		R51, R44, R51
	;; condjump to .L5 occurs
	.loc 1 32 0
		VMOV		VR12,	VR3
.LVL9:
.L5:
	.loc 1 35 0
		VLDW.LS 		*AR3,VR7
	|	VLDW.LS 		*AR1,VR6
	|	SSHFLL		2, R52, R50
.LVL10:
	.loc 1 41 0
		VLDW.LS 		*AR6,VR5
	|	SADDA.M2		R51:R50,OR1,AR4
	.loc 1 44 0
		SNOP		2
		VLDW.LS 		*AR4,VR4
		SNOP		3
	.loc 1 36 0
		VFMULAS32.M3	VR7,VR8,VR3,VR3
		SNOP		5
.LVL11:
	.loc 1 39 0
		VFMULAS32.M3	VR6,VR9,VR3,VR3
		SNOP		5
.LVL12:
	.loc 1 42 0
		VFMULAS32.M3	VR5,VR10,VR3,VR3
		SNOP		5
.LVL13:
	.loc 1 28 0
	[R0]	SBR		.L6
	|	VFMULAS32.M3	VR4,VR11,VR3,VR3
	.loc 1 45 0
		SNOP		5
.LVL14:
	.loc 1 47 0
		VSTW.LS 		VR3,*AR2
	;; condjump to .L6 occurs
.LVL15:
.L7:
	.loc 1 22 0
		SADD.M2		4,R1,R1
	|	SADD.M1		16,R24,R48
.LVL16:
		SLT		R1, R16, R0
	[R0]	SBR		.L2
	|	SLTU		R48, R24, R50
	|	SMOV.M2		R48, R24
		SADD.M2		R25,R50,R25
		SNOP		5
	;; condjump to .L2 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL17:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fir_gen_vc, .-DSPF_sp_fir_gen_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x1
	.4byte	.LASF26
	.4byte	.LASF27
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
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x1d0
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0x1dd
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
	.byte	0xb
	.4byte	0x1e3
	.4byte	.LLST0
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0xc
	.4byte	0x1dd
	.4byte	.LLST1
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xd
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x11
	.4byte	0x1dd
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x12
	.4byte	0x1d0
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.4byte	0x1d0
	.4byte	.LLST6
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x12
	.4byte	0x1d0
	.4byte	.LLST7
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x12
	.4byte	0x1d0
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x12
	.4byte	0x1d0
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.4byte	0x1d0
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x13
	.4byte	0x1d0
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x13
	.4byte	0x1d0
	.4byte	.LLST12
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x13
	.4byte	0x1d0
	.4byte	.LLST13
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x14
	.4byte	0x85
	.byte	0x4
	.4byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x15
	.4byte	0x1d0
	.byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x85
	.4byte	0x1dd
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x1d0
	.uleb128 0xe
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL17
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x1
	.byte	0x61
	.llong	.LVL17
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x1
	.byte	0x6e
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL7
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL4
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL7
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL8
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL10
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL11
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
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
.LASF20:
	.string	"temp_vx_1_16"
.LASF23:
	.string	"temp"
.LASF6:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF13:
	.string	"temp_x_offset_addr"
.LASF19:
	.string	"temp_vx_0_15"
.LASF11:
	.string	"float"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long int"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"../DSPF_sp_fir_gen_vc.c"
.LASF5:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF27:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/vector_c/Debug"
.LASF25:
	.string	"GNU C 4.7.0"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF18:
	.string	"temp_vr"
.LASF28:
	.string	"DSPF_sp_fir_gen_vc"
.LASF21:
	.string	"temp_vx_2_17"
.LASF4:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF14:
	.string	"temp_vh_0"
.LASF15:
	.string	"temp_vh_1"
.LASF16:
	.string	"temp_vh_2"
.LASF17:
	.string	"temp_vh_3"
.LASF24:
	.string	"vtemp"
.LASF3:
	.string	"unsigned int"
.LASF22:
	.string	"temp_vx_3_18"

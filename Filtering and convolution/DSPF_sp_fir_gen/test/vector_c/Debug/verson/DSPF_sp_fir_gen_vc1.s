	.file	"DSPF_sp_fir_gen_vc1.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc1
	.type	DSPF_sp_fir_gen_vc1, @function
DSPF_sp_fir_gen_vc1:
.LFB0:
	.file 1 "../verson/DSPF_sp_fir_gen_vc1.c"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
	.loc 1 15 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 17 0
		SNOP		1
	; ;APP 
;# 17 "../verson/DSPF_sp_fir_gen_vc1.c" 1
	  SMVCGC   R42, VLR         
	  SNOP      3              
	
;# 0 "" 2
.LVL1:
	.loc 1 9 0
	; ;NO_APP 
		SMVAGA36.M1		R13:R12, OR0
	|	SMOVIL		0, R0
	|	SADD.M2		-1,R16,R2
	.loc 1 21 0
		SLT		R0, R16, R1
	|	SADD.M2		-1,R18,R43
	.loc 1 9 0
		SADDA.M2		-4,OR0,AR0
	|[!R1]	SBR		.L5
	|	SSHFLL		1, R2, R3
	|	SADD.M1		4,R10,R53
		SSHFLL		2, R2, R45
		SSHFLR		2, R43, R8
	|	SADD.M1		R45,R53,R54
		SLTU		R3, R2, R9
	|	SADD.M1		1,R8,R52
	|	SMVAAGL.M2		AR0, R47:R46
		SLTU		R53, R10, R49
		SLTU		R45, R3, R12
	|	SADD.M1		R11,R49,R13
	|	SMVAAGH.M2		AR0, R47:R46
.LVL2:
		SSHFLL		1, R9, R14
	;; condjump to .L5 occurs
.LVL3:
		SMOVIL		0, R44
	|	SADD.M2		R14,R12,R15
		SLTU		R52, R8, R16
	|	SADD.M2		R15,R13,R17
.LVL4:
		SLT		R44, R18, R1
		SLTU		R54, R53, R55
		SSHFLR		28, R52, R18
	|	SADD.M2		R17,R55,R19
.LVL5:
		SSHFLL		4, R16, R51
		SOR		R51, R18, R20
		SSHFLL		4, R52, R21
.LVL6:
.L4:
		SADD.M2		4,R46,R22
	|[!R1]	SBR		.L6
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R28
		SLTU		R22, R46, R24
	|	SMOV.M2		R22, R46
		SADD.M2		R47,R24,R47
	|	SMOVIL		0, R43
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 22 0
	[R1]	SLDW		*AR10, R25
		SNOP		5
	.loc 1 23 0
	;; condjump to .L6 occurs
	.loc 1 22 0
		SVBCAST.M2 		 R25,VR5
		SNOP		3
.LVL7:
.L3:
	.loc 1 9 0 discriminator 2
		SMOV.M2		R28, R44
	|	SMOV.M1		R43, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
		SNOP		2
	.loc 1 26 0 discriminator 2
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*AR2,VR4
	|	SADD.M2		16,R28,R26
		SLTU		R26, R28, R50
	|	SMOV.M2		R26, R28
		SADD.M2		R43,R50,R43
	|	SEQ		R26, R21, R0
	.loc 1 23 0 discriminator 2
	[R0]	SEQ		R43, R20, R0
		SNOP		4
	.loc 1 26 0 discriminator 2
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[!R0]	SBR		.L3
	.loc 1 23 0 discriminator 2
		SNOP		5
	.loc 1 26 0 discriminator 2
		VSTW.LS 		VR3,*AR0
	;; condjump to .L3 occurs
.LVL8:
.L6:
		SLTU		R53, R10, R29
	|	SMOV.M2		R53, R10
	.loc 1 21 0
		SEQ		R53, R54, R2
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R53,R53
	[R2]	SEQ		R11, R19, R2
	[R2]	SBR		.L5
	[!R2]	SBR		.L4
		SNOP		6
	;; condjump to .L5 occurs
	;; jump to .L4 occurs
.L5:
	.loc 1 29 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
	; ;APP 
;# 29 "../verson/DSPF_sp_fir_gen_vc1.c" 1
	  SMVCGC   R10, VLR         
	  SNOP      3              
	
;# 0 "" 2
	; ;NO_APP 
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fir_gen_vc1, .-DSPF_sp_fir_gen_vc1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x177
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x1
	.4byte	.LASF18
	.4byte	.LASF19
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
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x14b
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0x158
	.4byte	.LLST0
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xb
	.4byte	0x15e
	.4byte	.LLST1
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xc
	.4byte	0x158
	.4byte	.LLST2
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x174
	.4byte	.LLST6
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x13
	.4byte	0x14b
	.4byte	.LLST7
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	0x158
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x85
	.4byte	0x158
	.uleb128 0xb
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x14b
	.uleb128 0xc
	.byte	0x8
	.4byte	0x85
	.uleb128 0xd
	.4byte	0x85
	.4byte	0x174
	.uleb128 0xe
	.4byte	0x77
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x164
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST2:
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
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3b
	.sleb128 1
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL1
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
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
.LASF7:
	.string	"long long int"
.LASF16:
	.string	"temp_vr"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/vector_c/Debug"
.LASF17:
	.string	"GNU C 4.7.0"
.LASF20:
	.string	"DSPF_sp_fir_gen_vc1"
.LASF4:
	.string	"long unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF12:
	.string	"double"
.LASF18:
	.string	"../verson/DSPF_sp_fir_gen_vc1.c"
.LASF2:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF15:
	.string	"temp_vx"
.LASF13:
	.string	"tempr"
.LASF11:
	.string	"float"
.LASF6:
	.string	"short int"
.LASF14:
	.string	"temp_vh"
.LASF9:
	.string	"sizetype"

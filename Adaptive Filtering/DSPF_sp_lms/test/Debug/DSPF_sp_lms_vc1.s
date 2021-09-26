	.file	"DSPF_sp_lms_vc1.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_lms_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_lms_vc1
	.type	DSPF_sp_lms_vc1, @function
DSPF_sp_lms_vc1:
.LFB3:
	.file 1 "../DSPF_sp_lms_vc1.c"
	.loc 1 19 0
	.cfi_startproc
.LVL0:
	.loc 1 19 0
		SMVAGA36.M1		R11:R10, AR2
	|	SMOVIL		15, R50
	|	SMOV.M2		R20, R10
.LVL1:
		SMVAGA36.M1		R13:R12, AR0
		SNOP		1
	.loc 1 32 0
	; ;APP 
;# 32 "../DSPF_sp_lms_vc1.c" 1
	  SMVCGC   R50, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 10 0
	; ;NO_APP 
		SMVAGA36.M1		R17:R16, OR0
	|	SMVAAGL.M2		AR2, R13:R12
	|	SMOVIL		0, R0
.LVL2:
		SMVAGA36.M1		R15:R14, OR1
	|	SLT		R0, R24, R1
	|	SVBCAST.M2 		 R18,VR9
.LVL3:
		SADD.M2		-1,R24,R51
	|	SMVAAGH.M1		AR2, R13:R12
	|[!R1]	SBR		.L2
	|	SMOVIL		0, R54
		SADDA.M1		-4,OR0,AR4
	|	SSHFLL		1, R51, R52
		SADDA.M2		-4,OR1,OR2
	|	SSHFLL		2, R51, R11
		SLTU		R52, R51, R2
	|	SMVAGA36.M1		R13:R12, AR6
	.loc 1 44 0
		SMOVIH		0, R54
	|	SMVAAGL.M1		AR4, R17:R16
.LVL4:
	.loc 1 10 0
		SADD.M2		4,R12,R28
	|	SSHFLL		1, R2, R18
	|	SMVAAGL.M1		OR2, R15:R14
.LVL5:
		SLTU		R28, R12, R3
	|	SADD.M2		R11,R28,R19
	|[R1]	SMVAAGH.M1		AR4, R17:R16
	;; condjump to .L2 occurs
		SLTU		R11, R52, R8
	|	SVBCAST.M1 		 R54,VR8
	|	SADD.M2		R13,R3,R9
		SADD.M1		R18,R8,R20
	|	SLTU		R19, R28, R21
	|	SMVAAGH.M2		OR2, R15:R14
.LVL6:
		SADD.M1		R20,R9,R23
	|	SMOVIL		0, R24
.LVL7:
		SLT		R24, R22, R2
	|	SADD.M2		R23,R21,R25
.LVL8:
.L6:
	.loc 1 37 0
		SVBCAST.M2 		 R10,VR7
	|[!R2]	SBR		.L3
	|	SLTU		R28, R12, R10
	|	SMOV.M1		R28, R12
.LVL9:
	.loc 1 10 0
		SADD.M1		R13,R10,R13
	|	SMVAAGL.M2		AR6, R29:R28
	|	SMOVIL		0, R0
	.loc 1 42 0
		SNOP		1
	.loc 1 39 0
		SMVAAGH.M2		AR6, R29:R28
	|	SMVAGA36.M1		R13:R12, AR6
	.loc 1 10 0
		SNOP		1
	.loc 1 39 0
		SMVAGA36.M1		R29:R28, AR1
		SNOP		1
	.loc 1 42 0
	;; condjump to .L3 occurs
	.loc 1 38 0
		VFMULS32.M3	VR7,VR9,VR0
		SNOP		3
.LVL10:
.L5:
	.loc 1 46 0
		SSHFAR		31, R0, R29
	|	SMOV.M2		R0, R58
	|	SMOV.M1		R0, R60
	|[!R0]	SBR		.L13
		SMOV.M2		R58, R56
	|	SMOV.M1		R29, R57
	.loc 1 47 0
		SMOV.M2		R60, R54
	|	SMOV.M1		R29, R55
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SSHFLR		30, R56, R42
	;no-op trunc di R55:R54 to pdi R55:R54
	.loc 1 46 0
		SSHFLL		2, R57, R43
	|	SMOV.M2		R0, R52
	|	SMOV.M1		R29, R53
	.loc 1 47 0
		SSHFLL		2, R55, R47
	;no-op trunc di R53:R52 to pdi R53:R52
	|	SMOV.M2		R0, R50
	|	SMOV.M1		R29, R51
		SSHFLR		30, R54, R57
	;no-op trunc di R51:R50 to pdi R51:R50
	.loc 1 46 0
		SOR		R43, R42, R43
	;; condjump to .L13 occurs
	.loc 1 47 0
		SOR		R47, R57, R45
	|	SADD.M2		4,R0,R0
	.loc 1 46 0
		SSHFLL		2, R56, R42
	.loc 1 47 0
		SSHFLL		2, R54, R44
	|	SADDA.M2		R43:R42,AR0,AR4
		SADDA.M1		R45:R44,AR1,AR2
	|	SSHFLR		30, R52, R48
	.loc 1 48 0
		SSHFLL		2, R53, R49
	.loc 1 46 0
		VLDW.LS 		*AR4,VR3
	|	SOR		R49, R48, R47
.LVL11:
	.loc 1 47 0
		VLDW.LS 		*AR2,VR6
	|	SSHFLL		2, R52, R46
.LVL12:
	.loc 1 48 0
		SADDA.M2		R47:R46,AR6,AR2
	|	SLT		R0, R22, R1
	.loc 1 51 0
		SSHFLR		30, R50, R55
		SSHFLL		2, R51, R56
	.loc 1 48 0
		VLDW.LS 		*AR2,VR5
	|	SOR		R56, R55, R49
.LVL13:
	.loc 1 51 0
		SSHFLL		2, R50, R48
		SADDA.M2		R49:R48,AR0,AR2
		SNOP		1
	.loc 1 49 0
		VFMULAS32.M3	VR0,VR6,VR3,VR3
		SNOP		4
.LVL14:
	.loc 1 42 0
	[R1]	SBR		.L5
	.loc 1 50 0
		VFMULAS32.M3	VR3,VR5,VR4,VR4
	|	VSTW.LS 		VR3,*AR2
.LVL15:
	.loc 1 51 0
		SNOP		5
	.loc 1 42 0
	;; condjump to .L5 occurs
.LVL16:
.L3:
	.loc 1 55 0
		VMVCGC.L		VR4,SVR
		SNOP		2
	.loc 1 56 0
		SMVCCG.L		SVR0,R51
		SNOP		1
	.loc 1 57 0
		SMVCCG.L		SVR1,R50
		SNOP		1
	.loc 1 58 0
		SMVCCG.L		SVR2,R11
		SNOP		1
	.loc 1 59 0
		SMVCCG.L		SVR3,R53
		SNOP		1
	.loc 1 61 0
		SFADDS32.M2		R51, R50, R3
	|	SADD.M1		4,R16,R52
	|	SEQ		R12, R19, R0
.LVL17:
		SLTU		R52, R16, R8
	|	SMOV.M2		R52, R16
	|	SADD.M1		4,R14,R18
		SADD.M1		R17,R8,R17
	|	SLTU		R18, R14, R54
	.loc 1 62 0
		SFADDS32.M2		R3, R11, R20
	|	SMVAGA36.M1		R17:R16, AR12
	|[R0]	SEQ		R13, R25, R0
.LVL18:
		SMOV.M2		R18, R14
		SADD.M1		R15,R54,R15
	.loc 1 63 0
		SFADDS32.M2		R20, R53, R23
	|	SMVAGA36.M1		R15:R14, AR10
.LVL19:
		SADD.M2		4,R12,R28
		SNOP		1
	.loc 1 65 0
		SSTW		R23, *AR12
		SNOP		2
	.loc 1 66 0
		SLDW		*AR10, R24
		SNOP		1
	.loc 1 36 0
	[R0]	SBR		.L2
	[!R0]	SBR		.L6
		SNOP		2
	.loc 1 66 0
		SFSUBS32.M2		R23, R24, R10
		SNOP		3
.LVL20:
	.loc 1 36 0
	;; condjump to .L2 occurs
	;; jump to .L6 occurs
.LVL21:
.L13:
	.loc 1 46 0
		SMOV.M2		R58, R56
	|	SMOV.M1		R29, R57
	|	VMOV		VR8,	VR4
.LVL22:
	.loc 1 47 0
		SMOV.M2		R60, R54
	|	SMOV.M1		R29, R55
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SSHFLR		30, R56, R42
	;no-op trunc di R55:R54 to pdi R55:R54
	.loc 1 46 0
		SSHFLL		2, R57, R43
	|	SMOV.M2		R0, R52
	|	SMOV.M1		R29, R53
	.loc 1 47 0
		SSHFLL		2, R55, R47
	;no-op trunc di R53:R52 to pdi R53:R52
	|	SMOV.M2		R0, R50
	|	SADD.M1		4,R0,R0
		SSHFLR		30, R54, R57
	|	SMOV.M2		R29, R51
	.loc 1 46 0
		SOR		R43, R42, R43
	;no-op trunc di R51:R50 to pdi R51:R50
	.loc 1 47 0
		SOR		R47, R57, R45
	.loc 1 46 0
		SSHFLL		2, R56, R42
	.loc 1 47 0
		SSHFLL		2, R54, R44
	|	SADDA.M2		R43:R42,AR0,AR4
		SADDA.M1		R45:R44,AR1,AR2
	|	SSHFLR		30, R52, R48
	.loc 1 48 0
		SSHFLL		2, R53, R49
	.loc 1 46 0
		VLDW.LS 		*AR4,VR3
	|	SOR		R49, R48, R47
.LVL23:
	.loc 1 47 0
		VLDW.LS 		*AR2,VR6
	|	SSHFLL		2, R52, R46
.LVL24:
	.loc 1 48 0
		SADDA.M2		R47:R46,AR6,AR2
	|	SLT		R0, R22, R1
	.loc 1 51 0
		SSHFLR		30, R50, R55
		SSHFLL		2, R51, R56
	.loc 1 48 0
		VLDW.LS 		*AR2,VR5
	|	SOR		R56, R55, R49
.LVL25:
	.loc 1 51 0
		SSHFLL		2, R50, R48
		SADDA.M2		R49:R48,AR0,AR2
		SNOP		1
	.loc 1 49 0
		VFMULAS32.M3	VR0,VR6,VR3,VR3
		SNOP		4
.LVL26:
	.loc 1 42 0
	[R1]	SBR		.L5
	.loc 1 50 0
		VFMULAS32.M3	VR3,VR5,VR4,VR4
	|	VSTW.LS 		VR3,*AR2
.LVL27:
	.loc 1 51 0
		SNOP		5
	.loc 1 42 0
	;; condjump to .L5 occurs
		SBR		.L3
		SNOP		6
	;; jump to .L3 occurs
.LVL28:
.L2:
	.loc 1 69 0
		SMOVIL		65535, R12
		SMOVIH		65535, R12
	; ;APP 
;# 69 "../DSPF_sp_lms_vc1.c" 1
	  SMVCGC   R12, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 71 0
	; ;NO_APP 
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE3:
	.size	DSPF_sp_lms_vc1, .-DSPF_sp_lms_vc1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x31
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x24d
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x25a
	.4byte	.LLST0
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0x25a
	.4byte	.LLST1
	.uleb128 0x5
	.string	"y_i"
	.byte	0x1
	.byte	0xd
	.4byte	0x260
	.4byte	.LLST2
	.uleb128 0x5
	.string	"y_o"
	.byte	0x1
	.byte	0xe
	.4byte	0x260
	.4byte	.LLST3
	.uleb128 0x5
	.string	"ar"
	.byte	0x1
	.byte	0xf
	.4byte	0x31
	.4byte	.LLST4
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x10
	.4byte	0x31
	.4byte	.LLST5
	.uleb128 0x7
	.string	"nh"
	.byte	0x1
	.byte	0x11
	.4byte	0x69
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x5
	.string	"nx"
	.byte	0x1
	.byte	0x12
	.4byte	0x69
	.4byte	.LLST6
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x69
	.4byte	.LLST7
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x14
	.4byte	0x69
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x15
	.4byte	0x69
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x16
	.4byte	0x24d
	.4byte	.LLST9
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x16
	.4byte	0x24d
	.byte	0x2
	.byte	0x90
	.uleb128 0x69
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x16
	.4byte	0x24d
	.4byte	.LLST10
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x17
	.4byte	0x24d
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x17
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x17
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x17
	.4byte	0x24d
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.4byte	.LLST12
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x19
	.4byte	0x25a
	.4byte	.LLST14
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1a
	.4byte	0x25a
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1b
	.4byte	0x24d
	.4byte	.LLST15
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1c
	.4byte	0x266
	.uleb128 0x8
	.string	"sum"
	.byte	0x1
	.byte	0x1d
	.4byte	0x31
	.4byte	.LLST16
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x31
	.4byte	0x25a
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x24d
	.uleb128 0xe
	.byte	0x8
	.4byte	0x31
	.uleb128 0xf
	.4byte	0x31
	.uleb128 0x10
	.4byte	0x7e
	.byte	0x3
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1
	.llong	.LFE3
	.2byte	0x1
	.byte	0x52
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
	.llong	.LFE3
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x22
	.uleb128 0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL6
	.llong	.LVL9
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x4
	.byte	0x92
	.uleb128 0x43
	.sleb128 1
	.byte	0x9f
	.llong	.LVL8
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x28
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x1
	.byte	0x60
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL10
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL21
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL11
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	.LVL23
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL13
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL25
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL12
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL24
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL10
	.llong	.LVL16
	.2byte	0x1
	.byte	0x56
	.llong	.LVL21
	.llong	.LVL28
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL10
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL20
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL0
	.llong	.LVL8
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x1
	.byte	0x63
	.llong	.LVL18
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL19
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
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
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"vec_x1"
.LASF14:
	.string	"vec_error"
.LASF15:
	.string	"vec_ar"
.LASF36:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/NEW Porject/DSPF_sp_lms/Debug"
.LASF13:
	.string	"error"
.LASF22:
	.string	"vec_x0_1"
.LASF32:
	.string	"vec_sum"
.LASF0:
	.string	"float"
.LASF25:
	.string	"vec_x3_1"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.string	"DSPF_sp_lms_vc1"
.LASF19:
	.string	"vec_h1"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"vec_h2"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"vec_h3"
.LASF17:
	.string	"vec_h0"
.LASF29:
	.string	"vec_x3"
.LASF12:
	.string	"double"
.LASF35:
	.string	"../DSPF_sp_lms_vc1.c"
.LASF33:
	.string	"sum_list"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"vec_x1_1"
.LASF1:
	.string	"long long unsigned int"
.LASF16:
	.string	"vec_error_ar"
.LASF26:
	.string	"vec_x0"
.LASF28:
	.string	"vec_x2"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF34:
	.string	"GNU C 4.7.0"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"temp_x_offset"
.LASF9:
	.string	"long int"
.LASF18:
	.string	"h_remain"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"temp_x_offset_1"
.LASF24:
	.string	"vec_x2_1"

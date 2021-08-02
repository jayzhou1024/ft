	.file	"DSP_fir_r4_vc1.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_r4_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_r4_vc1
	.type	DSP_fir_r4_vc1, @function
DSP_fir_r4_vc1:
.LFB3:
	.file 1 "../DSP_fir_r4_vc1.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	.loc 1 20 0
		SMOVIL		1075183616, R50
	|	SMVAGA36.M2		R13:R12, AR12
	|	SMVAGA36.M1		R15:R14, AR5
		SMOVIH		1075183616, R50
		SMOVIL		0, R51
		SMVAGA36.M2		R51:R50, AR10
	|	SMOVIL		67305985, R42
	.loc 1 21 0
		SMOVIL		1075183620, R52
	.loc 1 20 0
		SMOVIH		67305985, R42
	.loc 1 21 0
		SMOVIH		1075183620, R52
	|	SSTW		R42, *AR10
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		134678021, R0
	.loc 1 22 0
		SMOVIL		1075183624, R50
	.loc 1 21 0
		SMOVIH		134678021, R0
	.loc 1 22 0
		SMOVIH		1075183624, R50
	|	SSTW		R0, *AR10
		SMOVIL		0, R51
		SMVAGA36.M2		R51:R50, AR10
	|	SMOVIL		202050057, R1
	.loc 1 23 0
		SMOVIL		1075183628, R52
	.loc 1 22 0
		SMOVIH		202050057, R1
	.loc 1 23 0
		SMOVIH		1075183628, R52
	|	SSTW		R1, *AR10
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		269422093, R2
	.loc 1 25 0
		SMOVIL		1075183632, R50
		SMOVIH		1075183632, R50
		SMOVIL		0, R51
	.loc 1 23 0
		SMOVIH		269422093, R2
		SSTW		R2, *AR10
	|	SMOVIL		100992003, R3
	|	SMVAGA36.M2		R51:R50, AR10
	.loc 1 26 0
		SMOVIL		1075183636, R52
		SMOVIH		1075183636, R52
		SMOVIL		0, R53
	.loc 1 25 0
		SMOVIH		100992003, R3
		SSTW		R3, *AR10
	|	SMOVIL		168364039, R8
	|	SMVAGA36.M2		R53:R52, AR10
	.loc 1 27 0
		SMOVIL		1075183640, R50
		SMOVIH		1075183640, R50
		SMOVIL		0, R51
	.loc 1 26 0
		SMOVIH		168364039, R8
		SSTW		R8, *AR10
	|	SMOVIL		256, R6
	|	SMVAGA36.M2		R51:R50, AR10
	|	SADD.M1		-1,R16,R50
	.loc 1 16 0
		SMOVIL		0, R7
	.loc 1 27 0
		SMOVIL		235736075, R9
	.loc 1 28 0
		SMOVIL		1075183644, R52
	.loc 1 16 0
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 28 0
		SMOVIH		1075183644, R52
		SNOP		1
		SMOVIL		0, R53
	.loc 1 27 0
		SMOVIH		235736075, R9
		SSTW		R9, *AR10
	|	SMOVIL		303108111, R12
	|	SMVAGA36.M2		R53:R52, AR10
.LVL1:
	.loc 1 28 0
		SMOVIH		303108111, R12
	.loc 1 29 0
		SMOVIL		0, R13
	.loc 1 10 0
		SSHFLR		2, R50, R14
	|	SSTW		R12, *AR10
.LVL2:
	.loc 1 87 0
		SMOVIL		128, R42
	|	SADD.M2		1,R14,R21
		SMOVIL		0, R43
	.loc 1 48 0
		SMOVIL		0, R53
	|	SADDA.M2		R43:R42,AR7,AR6
	.loc 1 29 0
		SMVCGC.L		R13, SMR
.LVL3:
	.loc 1 52 0
		SMOVIL		0, R43
		SNOP		1
	.loc 1 10 0
		SMOVIL		-64, R12
		SMOVIL		-1, R13
	.loc 1 52 0
		SMOVIL		192, R42
	|	SADDA.M2		R13:R12,AR5,AR0
	.loc 1 48 0
		SLT		R53, R16, R0
	|	SADDA.M1		R43:R42,AR7,AR3
	.loc 1 10 0
		SLTU		R21, R14, R15
	|[!R0]	SBR		.L7
	.loc 1 16 0
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 24
	.loc 1 10 0
		SSHFLL		1, R21, R43
	|	SMVAAGL.M1		AR0, R13:R12
		SSHFLL		1, R15, R16
.LVL4:
		SLTU		R43, R21, R51
	|[R0]	SMVAAGH.M2		AR0, R13:R12
	;; condjump to .L7 occurs
		SSHFLL		2, R21, R17
	|	SADD.M1		R16,R51,R19
		SSHFLL		1, R19, R22
	.loc 1 88 0
		SMOVIL		32, R52
		SMOVIL		0, R53
	.loc 1 10 0
		SLTU		R17, R43, R20
	|	SADDA.M2		R53:R52,AR6,AR1
		SADD.M1		R22,R20,R23
	|	SSHFLL		3, R21, R24
		SLTU		R24, R17, R25
		SSHFLL		1, R23, R26
		SMOVIL		0, R28
	|	SADD.M2		R26,R25,R27
		SMOVIL		0, R16
		SMOVIL		0, R22
		SLT		R28, R18, R1
.LVL5:
.L6:
		SMOV.M2		R16, R50
	|	SMOV.M1		R22, R51
	|	SMOVIL		0, R14
	;no-op trunc di R51:R50 to pdi R51:R50
		SADDA.M2		R51:R50,AR12,AR10
	|	SADD.M1		R10,R16,R42
		SLTU		R42, R16, R52
	|	SADD.M1		R11,R22,R29
	.loc 1 49 0
		SLDH		*AR10, R44
	|	SADD.M2		R29,R52,R43
	.loc 1 54 0
		SLDH		*+AR10[1], R45
	|	SMVAGA36.M1		R43:R42, OR0
	|	SMOV.M2		R12, R42
	.loc 1 59 0
		SLDH		*+AR10[2], R46
	|	SMOV.M2		R13, R43
	.loc 1 64 0
		SLDH		*+AR10[3], R47
		SNOP		5
	.loc 1 49 0
		SSTH		R44, *+AR15[4]
	.loc 1 50 0
		SSTH		R44, *+AR15[5]
		SNOP		2
	.loc 1 51 0
		SLDW		*+AR15[2], R48
		SNOP		5
		SVBCAST.M2 		 R48,VR3
		SNOP		3
.LVL6:
		VSTW.LS 		VR3,*+AR7[48]
.LVL7:
	.loc 1 52 0
		VLDH.LS 		*AR3,VR7
	|	SSTH		R45, *+AR15[6]
.LVL8:
	.loc 1 55 0
		SSTH		R45, *+AR15[7]
		SNOP		2
	.loc 1 56 0
		SLDW		*+AR15[3], R49
		SNOP		5
		SVBCAST.M2 		 R49,VR0
		SNOP		3
.LVL9:
		VSTW.LS 		VR0,*+AR7[48]
.LVL10:
	.loc 1 57 0
		VLDH.LS 		*AR3,VR8
	|	SSTH		R46, *+AR15[8]
.LVL11:
	.loc 1 60 0
		SSTH		R46, *+AR15[9]
		SNOP		2
	.loc 1 61 0
		SLDW		*+AR15[4], R54
		SNOP		5
		SVBCAST.M2 		 R54,VR1
		SNOP		3
.LVL12:
		VSTW.LS 		VR1,*+AR7[48]
.LVL13:
	.loc 1 62 0
		VLDH.LS 		*AR3,VR9
	|	SSTH		R47, *+AR15[10]
.LVL14:
	.loc 1 65 0
		SSTH		R47, *+AR15[11]
		SNOP		2
	.loc 1 66 0
		SLDW		*+AR15[5], R55
		SNOP		3
	.loc 1 72 0
	[!R1]	SBR		.L9
		SNOP		1
	.loc 1 66 0
		SVBCAST.M2 		 R55,VR2
		SNOP		3
.LVL15:
		VSTW.LS 		VR2,*+AR7[48]
	;; condjump to .L9 occurs
.LVL16:
	.loc 1 67 0
		VLDH.LS 		*AR3,VR10
		SNOP		7
.LVL17:
.L8:
	.loc 1 76 0 discriminator 2
		SSHFAR		31, R14, R59
	|	SMOV.M2		R43, R21
	|	SMOV.M1		R14, R52
	.loc 1 83 0 discriminator 2
		SSHFAR		1, R14, R60
	|	SMOV.M2		R59, R55
	|	SMOV.M1		R59, R53
		SMOV.M2		R60, R54
	|	SMOVIL		64, R8
	|	SADD.M1		2,R14,R2
	;no-op trunc di R53:R52 to pdi R53:R52
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLR		30, R54, R43
	|	SADD.M2		R8,R42,R9
	|	SMOV.M1		R2, R50
		SSHFLL		2, R55, R15
	|	SADD.M2		16,R14,R14
		SOR		R15, R43, R49
		SSHFLL		2, R54, R48
		SADDA.M2		R49:R48,OR0,AR2
	|	SSHFLL		1, R53, R19
	.loc 1 76 0 discriminator 2
		SSHFLR		31, R52, R0
	.loc 1 79 0 discriminator 2
		SSHFAR		31, R2, R3
	.loc 1 83 0 discriminator 2
		VLDW.LS 		*AR2,VR4
	|	SLTU		R9, R42, R53
	|	SMOV.M2		R3, R51
	|	SMOV.M1		R9, R42
	.loc 1 76 0 discriminator 2
		SOR		R19, R0, R45
	|	SADD.M2		R21,R53,R43
	;no-op trunc di R51:R50 to pdi R51:R50
		SSHFLL		1, R52, R44
	|	SMVAGA36.M1		R43:R42, AR2
		SADDA.M1		R45:R44,OR0,AR4
	|	SSHFLR		31, R50, R20
	.loc 1 79 0 discriminator 2
		SSHFLL		1, R51, R51
	|	VLDW.LS 		*AR2,VR11
.LVL18:
		SOR		R51, R20, R47
		SSHFLL		1, R50, R46
	|	VLDH.LS 		*AR4,VR6
.LVL19:
		SADDA.M2		R47:R46,OR0,AR4
	|	SLT		R14, R18, R2
	.loc 1 85 0 discriminator 2
		VSHUFH		 VR4,VR4,VR12
		SNOP		1
.LVL20:
	.loc 1 79 0 discriminator 2
		VLDH.LS 		*AR4,VR5
	.loc 1 85 0 discriminator 2
		VSTW.LS 		VR12,*+AR7[32]
.LVL21:
	.loc 1 90 0 discriminator 2
		VLDH.LS 		*AR6,VR13
	|	VLDH.LS 		*AR1,VR14
	.loc 1 91 0 discriminator 2
		SNOP		1
	.loc 1 77 0 discriminator 2
		VMULAS16T.M3		 VR6,VR7,VR11,VR11
		SNOP		3
.LVL22:
	.loc 1 80 0 discriminator 2
		VMULAS16T.M3		 VR5,VR9,VR11,VR11
		SNOP		2
.LVL23:
	.loc 1 72 0 discriminator 2
	[R2]	SBR		.L8
	|	VMULAS16T.M3		 VR13,VR8,VR11,VR11
	.loc 1 90 0 discriminator 2
		SNOP		2
.LVL24:
	.loc 1 91 0 discriminator 2
		VMULAS16T.M3		 VR14,VR10,VR11,VR11
		SNOP		2
.LVL25:
	.loc 1 93 0 discriminator 2
		VSTW.LS 		VR11,*AR2
	;; condjump to .L8 occurs
.LVL26:
.L9:
		SADD.M2		8,R16,R42
		SLTU		R42, R16, R50
	|	SMOV.M2		R42, R16
		SADD.M2		R22,R50,R22
	|	SEQ		R42, R24, R0
	.loc 1 48 0
	[R0]	SEQ		R22, R27, R0
	[!R0]	SBR		.L6
		SNOP		6
	;; condjump to .L6 occurs
.LVL27:
.L7:
	.loc 1 97 0
		SADD.M1		15,R18,R18
	|	SMVAAGL.M2		AR5, R47:R46
	|	SMOVIL		0, R27
.LVL28:
		SSHFAR		31, R18, R12
		SSHFLR		28, R12, R13
	|	SMVAAGH.M2		AR5, R47:R46
		SADD.M1		R18,R13,R10
	|	SMOVIL		64, R52
.LVL29:
		SSHFAR		4, R10, R11
	|	SADD.M2		R52,R46,R29
	|	SMOV.M1		R46, R42
	.loc 1 101 0
		SADD.M2		1,R11,R23
	|	SLTU		R29, R46, R44
	|	SMOV.M1		R47, R43
		SSHFLR		31, R23, R24
	|	SADD.M2		R47,R44,R48
		SADD.M2		R23,R24,R25
		SSHFAR		1, R25, R26
		SLT		R27, R26, R1
	|	SADD.M2		-1,R26,R28
	[!R1]	SBR		.L1
	|	SSHFLL		6, R28, R49
	.loc 1 10 0
		SSHFLR		26, R28, R54
	|	SADD.M2		R49,R29,R55
		SLTU		R55, R29, R59
	|	SADD.M2		R54,R48,R56
		SADD.M2		R56,R59,R60
		SNOP		3
	.loc 1 101 0
	;; condjump to .L1 occurs
.LVL30:
.L10:
	.loc 1 10 0 discriminator 2
		SSHFLL		1, R42, R57
	|	SMVAGA36.M1		R43:R42, AR0
	|	SMOV.M2		R43, R9
		SLTU		R57, R42, R3
	|	SSUB.M2		R46, R57, R44
		SSHFLL		1, R43, R8
		SADD.M2		R8,R3,R21
	|	SLTU		R57, R44, R43
		SSUB.M2		R47, R21, R14
	|	SMOVIL		64, R58
		SSUB.M2		R43, R14, R45
	|	SADD.M1		R58,R42,R61
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R61, R42, R15
	|	SMOV.M2		R61, R42
		SADD.M2		R9,R15,R43
	|	SEQ		R61, R55, R2
	.loc 1 103 0 discriminator 2
		VLDDWM2.LS 		*AR2,VR17:VR16
	|[R2]	SEQ		R43, R60, R2
	.loc 1 101 0 discriminator 2
		SNOP		7
	.loc 1 103 0 discriminator 2
		VSTDW.LS 		VR17:VR16,*AR7
	.loc 1 108 0 discriminator 2
		VLDW.LS 		*AR7,VR15
	|	VLDW.LS 		*+AR7[16],VR18
	.loc 1 109 0 discriminator 2
		SNOP		4
	.loc 1 101 0 discriminator 2
	[!R2]	SBR		.L10
		SNOP		2
	.loc 1 108 0 discriminator 2
		VSHFAR		15,VR15, VR17
.LVL31:
	.loc 1 109 0 discriminator 2
		VSHFAR		15,VR18, VR19
.LVL32:
	.loc 1 111 0 discriminator 2
		VSBALE2		VR17,VR19,VR20
		VSTW.LS 		VR20,*AR0
	;; condjump to .L10 occurs
.LVL33:
.L1:
	.loc 1 113 0
		SMOVIL		256, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
.LVL34:
		SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE3:
	.size	DSP_fir_r4_vc1, .-DSP_fir_r4_vc1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x1
	.4byte	.LASF39
	.4byte	.LASF40
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
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x287
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x294
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0x29a
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0x294
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xf
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x2a0
	.4byte	0x40160000
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x1f
	.4byte	0x62
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.4byte	0x287
	.4byte	.LLST8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x23
	.4byte	0x287
	.4byte	.LLST9
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x23
	.4byte	0x287
	.4byte	.LLST10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x23
	.4byte	0x287
	.4byte	.LLST11
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.4byte	0x2a6
	.4byte	.LLST12
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x26
	.4byte	0x2a6
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0x2b3
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x29
	.4byte	0x287
	.4byte	.LLST14
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.4byte	0x287
	.4byte	.LLST15
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x29
	.4byte	0x287
	.4byte	.LLST16
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x287
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2a
	.4byte	0x2b9
	.4byte	.LLST17
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2c
	.4byte	0x2b3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2d
	.4byte	0x294
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2e
	.4byte	0x2c6
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x61
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x62
	.4byte	0x2cc
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x63
	.4byte	0x2a6
	.4byte	.LLST21
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0x63
	.4byte	0x2a6
	.4byte	.LLST22
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.byte	0x64
	.4byte	0x2b3
	.4byte	.LLST23
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x5b
	.4byte	0x294
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x287
	.uleb128 0xe
	.byte	0x8
	.4byte	0x5b
	.uleb128 0xe
	.byte	0x8
	.4byte	0x62
	.uleb128 0xc
	.byte	0x1
	.4byte	0x62
	.4byte	0x2b3
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x2a6
	.uleb128 0xc
	.byte	0x1
	.4byte	0x5b
	.4byte	0x2c6
	.uleb128 0xd
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x2b9
	.uleb128 0xf
	.byte	0x1
	.4byte	0x8c
	.uleb128 0xd
	.byte	0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
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
	.uleb128 0xa
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
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7f
	.sleb128 24
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL29
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL29
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
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
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LFE3
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x4
	.byte	0x92
	.uleb128 0x42
	.sleb128 1
	.byte	0x9f
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 -15
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL27
	.llong	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x1
	.byte	0x6e
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL11
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL14
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL17
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	.LVL10
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x61
	.llong	.LVL16
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL18
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL19
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL23
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL5
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.llong	.LVL21
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL17
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x6
	.byte	0x92
	.uleb128 0x22
	.sleb128 15
	.byte	0x40
	.byte	0x1b
	.byte	0x9f
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x40
	.byte	0x1b
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.llong	.LVL31
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL30
	.llong	.LVL32
	.2byte	0x3
	.byte	0x77
	.sleb128 64
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL27
	.llong	.LVL34
	.2byte	0x1
	.byte	0x57
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
.LASF25:
	.string	"temp_vx_0_15"
.LASF14:
	.string	"int_h_0"
.LASF15:
	.string	"int_h_1"
.LASF28:
	.string	"temp_vx_3_18"
.LASF17:
	.string	"int_h_3"
.LASF34:
	.string	"temp_in_r"
.LASF11:
	.string	"float"
.LASF22:
	.string	"svb_temp_h"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF18:
	.string	"temp_vh_0"
.LASF19:
	.string	"temp_vh_1"
.LASF20:
	.string	"temp_vh_2"
.LASF21:
	.string	"temp_vh_3"
.LASF12:
	.string	"double"
.LASF37:
	.string	"M2LD_Dst"
.LASF30:
	.string	"temp_r_offset_addr"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"DSP_fir_r4_vc1"
.LASF29:
	.string	"temp_vx_0_31"
.LASF0:
	.string	"long long unsigned int"
.LASF40:
	.string	"/cygdrive/c/MyProject/DONE/DSP_fir_r4/Debug"
.LASF31:
	.string	"temp_x_offset_addr"
.LASF32:
	.string	"temp_x_offset_addr_p_d"
.LASF23:
	.string	"temp_vr_0_15"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF24:
	.string	"tmpr"
.LASF10:
	.string	"char"
.LASF38:
	.string	"GNU C 4.7.0"
.LASF16:
	.string	"int_h_2"
.LASF13:
	.string	"MW_config_Addr"
.LASF26:
	.string	"temp_vx_1_16"
.LASF6:
	.string	"short int"
.LASF39:
	.string	"../DSP_fir_r4_vc1.c"
.LASF27:
	.string	"temp_vx_2_17"
.LASF8:
	.string	"long int"
.LASF35:
	.string	"M2LD_temp1"
.LASF36:
	.string	"M2LD_temp2"
.LASF5:
	.string	"signed char"
.LASF33:
	.string	"vr_len"

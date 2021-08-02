	.file	"DSP_fir_r8_vc2.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_r8_vc2,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_vc2
	.type	DSP_fir_r8_vc2, @function
DSP_fir_r8_vc2:
.LFB3:
	.file 1 "../DSP_fir_r8_vc2.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	.loc 1 22 0
		SMOVIL		1075183616, R52
	|	SADD.M1		15,R18,R42
	|	SMVAGA36.M2		R13:R12, AR12
		SMOVIH		1075183616, R52
	|	SMVAGA36.M1		R15:R14, AR5
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		67305985, R50
	.loc 1 23 0
		SMOVIL		1075183620, R52
		SMOVIH		1075183620, R52
		SMOVIL		0, R53
	.loc 1 22 0
		SMOVIH		67305985, R50
		SSTW		R50, *AR10
	|	SMOVIL		134678021, R0
	|	SMVAGA36.M2		R53:R52, AR10
	.loc 1 24 0
		SMOVIL		1075183624, R52
	.loc 1 23 0
		SMOVIH		134678021, R0
	.loc 1 24 0
		SMOVIH		1075183624, R52
	|	SSTW		R0, *AR10
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		202050057, R1
	.loc 1 25 0
		SMOVIL		1075183628, R52
	.loc 1 24 0
		SMOVIH		202050057, R1
	.loc 1 25 0
		SMOVIH		1075183628, R52
	|	SSTW		R1, *AR10
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		269422093, R2
	.loc 1 27 0
		SMOVIL		1075183632, R52
	.loc 1 25 0
		SMOVIH		269422093, R2
	.loc 1 27 0
		SMOVIH		1075183632, R52
	|	SSTW		R2, *AR10
		SMOVIL		0, R53
		SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		100992003, R3
	.loc 1 28 0
		SMOVIL		1075183636, R52
		SMOVIH		1075183636, R52
		SMOVIL		0, R53
	.loc 1 27 0
		SMOVIH		100992003, R3
		SSTW		R3, *AR10
	|	SMOVIL		168364039, R8
	|	SMVAGA36.M2		R53:R52, AR10
	.loc 1 29 0
		SMOVIL		1075183640, R52
		SMOVIH		1075183640, R52
		SMOVIL		0, R53
	.loc 1 28 0
		SMOVIH		168364039, R8
		SSTW		R8, *AR10
	|	SMOVIL		235736075, R9
	|	SMVAGA36.M2		R53:R52, AR10
	.loc 1 30 0
		SMOVIL		1075183644, R52
		SMOVIH		1075183644, R52
		SMOVIL		0, R53
	.loc 1 29 0
		SMOVIH		235736075, R9
		SSTW		R9, *AR10
	|	SMVAGA36.M2		R53:R52, AR10
	|	SMOVIL		0, R53
	.loc 1 35 0
		SSHFAR		31, R42, R43
	.loc 1 52 0
		SLT		R53, R16, R0
	|	SADD.M2		-1,R16,R16
.LVL1:
	.loc 1 18 0
		SMOVIL		256, R6
		SMOVIL		0, R7
	.loc 1 30 0
		SMOVIL		303108111, R13
	.loc 1 18 0
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 35 0
		SSHFLR		28, R43, R12
.LVL2:
		SADD.M2		R42,R12,R14
	|[!R0]	SBR		.L7
.LVL3:
	.loc 1 18 0
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 24
	.loc 1 35 0
		SSHFAR		4, R14, R22
.LVL4:
	.loc 1 30 0
		SMOVIH		303108111, R13
		SSTW		R13, *AR10
	|	SSHFLR		2, R16, R17
	;; condjump to .L7 occurs
	.loc 1 12 0
		SADD.M2		1,R17,R21
	|	SMOVIL		-64, R12
		SMOVIL		-1, R13
	.loc 1 90 0
		SMOVIL		128, R42
	|	SADDA.M2		R13:R12,AR5,AR0
		SMOVIL		0, R43
	.loc 1 12 0
		SSHFLL		1, R21, R19
	|	SADDA.M1		R43:R42,AR7,AR6
		SLTU		R21, R17, R20
	|	SMVAAGL.M2		AR0, R13:R12
		SLTU		R19, R21, R51
		SSHFLL		1, R20, R23
	|	SMVAAGH.M2		AR0, R13:R12
		SSHFLL		2, R21, R24
	|	SADD.M1		R23,R51,R25
	.loc 1 31 0
		SMOVIL		0, R15
	.loc 1 56 0
		SMOVIL		192, R42
		SMOVIL		0, R43
	.loc 1 91 0
		SMOVIL		32, R52
	|	SADDA.M2		R43:R42,AR7,AR3
		SMOVIL		0, R53
	.loc 1 12 0
		SLTU		R24, R19, R26
	|	SADDA.M1		R53:R52,AR6,AR1
		SSHFLL		1, R25, R27
	.loc 1 31 0
		SMVCGC.L		R15, SMR
	|	SADD.M2		R27,R26,R28
	.loc 1 12 0
		SSHFLL		3, R21, R29
		SNOP		1
		SSHFLL		1, R28, R45
		SLTU		R29, R24, R44
		SMOVIL		0, R46
	|	SADD.M2		R45,R44,R2
		SMOVIL		0, R16
.LVL5:
		SMOVIL		0, R28
		SLT		R46, R18, R1
.LVL6:
.L6:
		SMOV.M2		R16, R50
	|	SMOV.M1		R28, R51
	|	SMOVIL		0, R14
	;no-op trunc di R51:R50 to pdi R51:R50
		SADDA.M2		R51:R50,AR12,AR10
	|	SADD.M1		R10,R16,R42
		SLTU		R42, R16, R52
	|	SADD.M1		R11,R28,R47
	.loc 1 53 0
		SLDH		*AR10, R48
	|	SADD.M2		R47,R52,R43
	.loc 1 58 0
		SLDH		*+AR10[1], R49
	|	SMVAGA36.M1		R43:R42, OR0
	|	SMOV.M2		R12, R42
	.loc 1 63 0
		SLDH		*+AR10[2], R54
	|	SMOV.M2		R13, R43
	.loc 1 68 0
		SLDH		*+AR10[3], R55
		SNOP		5
	.loc 1 53 0
		SSTH		R48, *+AR15[4]
	.loc 1 54 0
		SSTH		R48, *+AR15[5]
		SNOP		2
	.loc 1 55 0
		SLDW		*+AR15[2], R56
		SNOP		5
.LVL7:
		SVBCAST.M2 		 R56,VR3
		SNOP		3
.LVL8:
		VSTW.LS 		VR3,*+AR7[48]
.LVL9:
	.loc 1 56 0
		VLDH.LS 		*AR3,VR7
	|	SSTH		R49, *+AR15[6]
.LVL10:
	.loc 1 59 0
		SSTH		R49, *+AR15[7]
		SNOP		2
	.loc 1 60 0
		SLDW		*+AR15[3], R57
		SNOP		5
.LVL11:
		SVBCAST.M2 		 R57,VR0
		SNOP		3
.LVL12:
		VSTW.LS 		VR0,*+AR7[48]
.LVL13:
	.loc 1 61 0
		VLDH.LS 		*AR3,VR8
	|	SSTH		R54, *+AR15[8]
.LVL14:
	.loc 1 64 0
		SSTH		R54, *+AR15[9]
		SNOP		2
	.loc 1 65 0
		SLDW		*+AR15[4], R58
		SNOP		5
.LVL15:
		SVBCAST.M2 		 R58,VR1
		SNOP		3
.LVL16:
		VSTW.LS 		VR1,*+AR7[48]
.LVL17:
	.loc 1 66 0
		VLDH.LS 		*AR3,VR9
	|	SSTH		R55, *+AR15[10]
.LVL18:
	.loc 1 69 0
		SSTH		R55, *+AR15[11]
		SNOP		2
	.loc 1 70 0
		SLDW		*+AR15[5], R59
		SNOP		3
.LVL19:
	.loc 1 76 0
	[!R1]	SBR		.L9
		SNOP		1
	.loc 1 70 0
		SVBCAST.M2 		 R59,VR2
		SNOP		3
.LVL20:
		VSTW.LS 		VR2,*+AR7[48]
	;; condjump to .L9 occurs
.LVL21:
	.loc 1 71 0
		VLDH.LS 		*AR3,VR10
		SNOP		7
.LVL22:
.L8:
	.loc 1 80 0 discriminator 2
		SSHFAR		31, R14, R61
	|	SMOV.M2		R43, R19
	|	SMOV.M1		R14, R52
	.loc 1 86 0 discriminator 2
		SSHFAR		1, R14, R60
	|	SMOV.M2		R61, R55
	|	SMOV.M1		R61, R53
		SMOV.M2		R60, R54
	|	SMOVIL		64, R15
	;no-op trunc di R53:R52 to pdi R53:R52
	|	SADD.M1		2,R14,R50
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLR		30, R54, R43
	|	SADD.M2		R15,R42,R23
	|	SADD.M1		16,R14,R14
		SSHFLL		2, R55, R24
		SOR		R24, R43, R49
		SSHFLL		2, R54, R48
		SADDA.M2		R49:R48,OR0,AR2
	|	SSHFLL		1, R53, R25
	.loc 1 80 0 discriminator 2
		SSHFLR		31, R52, R20
	.loc 1 82 0 discriminator 2
		SSHFAR		31, R50, R21
	.loc 1 86 0 discriminator 2
		VLDW.LS 		*AR2,VR4
	|	SLTU		R23, R42, R53
	|	SMOV.M2		R21, R51
	|	SMOV.M1		R23, R42
	.loc 1 80 0 discriminator 2
		SOR		R25, R20, R45
	|	SADD.M2		R19,R53,R43
	;no-op trunc di R51:R50 to pdi R51:R50
		SSHFLL		1, R52, R44
	|	SMVAGA36.M1		R43:R42, AR2
		SADDA.M1		R45:R44,OR0,AR4
	|	SSHFLR		31, R50, R26
	.loc 1 82 0 discriminator 2
		SSHFLL		1, R51, R51
	|	VLDW.LS 		*AR2,VR11
.LVL23:
		SOR		R51, R26, R47
		SSHFLL		1, R50, R46
	|	VLDH.LS 		*AR4,VR6
.LVL24:
		SADDA.M2		R47:R46,OR0,AR4
	|	SLT		R14, R18, R0
	.loc 1 89 0 discriminator 2
		VSHUFH		 VR4,VR4,VR12
		SNOP		1
	.loc 1 82 0 discriminator 2
		VLDH.LS 		*AR4,VR5
	.loc 1 89 0 discriminator 2
		VSTW.LS 		VR12,*+AR7[32]
	.loc 1 92 0 discriminator 2
		VLDH.LS 		*AR6,VR13
	|	VLDH.LS 		*AR1,VR14
	.loc 1 93 0 discriminator 2
		SNOP		1
	.loc 1 81 0 discriminator 2
		VMULAS16T.M3		 VR6,VR7,VR11,VR11
		SNOP		3
.LVL25:
	.loc 1 83 0 discriminator 2
		VMULAS16T.M3		 VR5,VR9,VR11,VR11
		SNOP		2
.LVL26:
	.loc 1 76 0 discriminator 2
	[R0]	SBR		.L8
	|	VMULAS16T.M3		 VR13,VR8,VR11,VR11
	.loc 1 92 0 discriminator 2
		SNOP		2
.LVL27:
	.loc 1 93 0 discriminator 2
		VMULAS16T.M3		 VR14,VR10,VR11,VR11
		SNOP		2
.LVL28:
	.loc 1 95 0 discriminator 2
		VSTW.LS 		VR11,*AR2
	;; condjump to .L8 occurs
.LVL29:
.L9:
		SADD.M2		8,R16,R42
		SLTU		R42, R16, R27
	|	SMOV.M2		R42, R16
		SADD.M2		R28,R27,R28
	|	SEQ		R42, R29, R0
	.loc 1 52 0
	[R0]	SEQ		R28, R2, R0
	[!R0]	SBR		.L6
		SNOP		6
	;; condjump to .L6 occurs
.LVL30:
.L7:
	.loc 1 102 0
		SADD.M1		1,R22,R18
	|	SMVAAGL.M2		AR5, R47:R46
	|	SMOVIL		0, R10
.LVL31:
		SSHFLR		31, R18, R12
		SADD.M1		R18,R12,R13
	|	SMVAAGH.M2		AR5, R47:R46
	|	SMOVIL		64, R29
		SSHFAR		1, R13, R22
.LVL32:
		SLT		R10, R22, R2
	|	SADD.M2		R29,R46,R44
	|	SADD.M1		-1,R22,R11
	[!R2]	SBR		.L1
	|	SLTU		R44, R46, R45
	|	SMOV.M2		R46, R42
	|	SMOV.M1		R47, R43
	.loc 1 12 0
		SSHFLL		6, R11, R52
	|	SADD.M2		R47,R45,R48
		SSHFLR		26, R11, R49
	|	SADD.M2		R52,R44,R55
		SLTU		R55, R44, R54
	|	SADD.M2		R49,R48,R56
		SADD.M2		R56,R54,R57
		SNOP		2
	.loc 1 102 0
	;; condjump to .L1 occurs
.LVL33:
.L10:
	.loc 1 12 0 discriminator 2
		SSHFLL		1, R42, R58
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R58, R42, R3
	|	SSUB.M2		R46, R58, R44
		SSHFLL		1, R43, R60
		SADD.M2		R60,R3,R8
	|	SLTU		R58, R44, R9
		SSUB.M2		R47, R8, R21
	|	SMOVIL		64, R59
		SSUB.M2		R9, R21, R45
	|	SADD.M1		R59,R42,R61
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R61, R42, R15
	|	SMOV.M2		R61, R42
		SADD.M2		R43,R15,R43
	|	SEQ		R61, R55, R0
	.loc 1 104 0 discriminator 2
		VLDDWM2.LS 		*AR2,VR17:VR16
	|[R0]	SEQ		R43, R57, R0
	.loc 1 102 0 discriminator 2
		SNOP		7
	.loc 1 104 0 discriminator 2
		VSTDW.LS 		VR17:VR16,*AR7
	.loc 1 109 0 discriminator 2
		VLDW.LS 		*AR7,VR15
	|	VLDW.LS 		*+AR7[16],VR18
	.loc 1 110 0 discriminator 2
		SNOP		4
	.loc 1 102 0 discriminator 2
	[!R0]	SBR		.L10
		SNOP		2
	.loc 1 109 0 discriminator 2
		VSHFAR		15,VR15, VR17
.LVL34:
	.loc 1 110 0 discriminator 2
		VSHFAR		15,VR18, VR19
.LVL35:
	.loc 1 112 0 discriminator 2
		VSBALE2		VR17,VR19,VR20
		VSTW.LS 		VR20,*AR0
	;; condjump to .L10 occurs
.LVL36:
.L1:
	.loc 1 114 0
		SMOVIL		256, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
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
	.size	DSP_fir_r8_vc2, .-DSP_fir_r8_vc2
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
	.byte	0xc
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x287
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x294
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xe
	.4byte	0x29a
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xf
	.4byte	0x294
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x14
	.4byte	0x2a0
	.4byte	0x40160000
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x23
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x25
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x25
	.4byte	0x62
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x25
	.4byte	0x62
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x25
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.4byte	0x287
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x26
	.4byte	0x287
	.4byte	.LLST14
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	0x287
	.4byte	.LLST15
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.4byte	0x287
	.4byte	.LLST16
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x27
	.4byte	0x2a6
	.4byte	.LLST17
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x29
	.4byte	0x2a6
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2a
	.4byte	0x2b3
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.4byte	0x287
	.4byte	.LLST19
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2c
	.4byte	0x287
	.4byte	.LLST20
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2c
	.4byte	0x287
	.4byte	.LLST21
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2c
	.4byte	0x287
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2d
	.4byte	0x2b9
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.4byte	0x294
	.4byte	.LLST22
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x31
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x32
	.4byte	0x2c6
	.4byte	.LLST22
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x63
	.4byte	0x2cc
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x64
	.4byte	0x2a6
	.4byte	.LLST24
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x64
	.4byte	0x2a6
	.4byte	.LLST25
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x65
	.4byte	0x2b3
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
	.uleb128 0x2
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
	.llong	.LVL31
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL31
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
	.byte	0x5c
	.llong	0
	.llong	0
.LLST3:
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
	.llong	.LFE3
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL1
	.llong	.LVL5
	.2byte	0x4
	.byte	0x92
	.uleb128 0x20
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
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL31
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL30
	.llong	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL28
	.llong	.LVL29
	.2byte	0x1
	.byte	0x6e
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL4
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL32
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 -1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL7
	.llong	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL6
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.llong	.LVL11
	.llong	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL6
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL15
	.llong	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL6
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL19
	.llong	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL10
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL14
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL18
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL22
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	.LVL13
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL17
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x61
	.llong	.LVL21
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL23
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL24
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL26
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL25
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL22
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL35
	.2byte	0x3
	.byte	0x77
	.sleb128 64
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
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
.LASF33:
	.string	"temp_x_offset_addr_0_31"
.LASF26:
	.string	"temp_vx_0_15"
.LASF15:
	.string	"int_h_0"
.LASF16:
	.string	"int_h_1"
.LASF29:
	.string	"temp_vx_3_18"
.LASF18:
	.string	"int_h_3"
.LASF34:
	.string	"temp_in_r"
.LASF11:
	.string	"float"
.LASF23:
	.string	"svb_temp_h"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF39:
	.string	"../DSP_fir_r8_vc2.c"
.LASF19:
	.string	"temp_vh_0"
.LASF20:
	.string	"temp_vh_1"
.LASF21:
	.string	"temp_vh_2"
.LASF22:
	.string	"temp_vh_3"
.LASF12:
	.string	"double"
.LASF37:
	.string	"M2LD_Dst"
.LASF32:
	.string	"temp_r_offset_addr"
.LASF41:
	.string	"DSP_fir_r8_vc2"
.LASF3:
	.string	"unsigned int"
.LASF30:
	.string	"temp_vx_0_31"
.LASF0:
	.string	"long long unsigned int"
.LASF31:
	.string	"temp_x_offset_addr"
.LASF24:
	.string	"temp_vr_0_15"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"tmpr"
.LASF10:
	.string	"char"
.LASF38:
	.string	"GNU C 4.7.0"
.LASF17:
	.string	"int_h_2"
.LASF13:
	.string	"MW_config_Addr"
.LASF27:
	.string	"temp_vx_1_16"
.LASF6:
	.string	"short int"
.LASF28:
	.string	"temp_vx_2_17"
.LASF8:
	.string	"long int"
.LASF35:
	.string	"M2LD_temp1"
.LASF36:
	.string	"M2LD_temp2"
.LASF5:
	.string	"signed char"
.LASF14:
	.string	"vr_len"
.LASF40:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/\345\233\275\347\247\221\345\244\247DSP/MyProject/DONE/DSP_fir_r8/Debug"

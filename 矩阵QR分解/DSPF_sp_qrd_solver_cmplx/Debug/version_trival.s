	.file	"version_trival.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.complex_sp_div_cn,"ax",@progbits
	.align	2
	.type	complex_sp_div_cn, @function
complex_sp_div_cn:
.LFB4:
	.file 1 "../version_trival.c"
	.loc 1 324 0
	.cfi_startproc
.LVL0:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R33:R32, *+AR15[2]
	.cfi_offset 48, -48
	.cfi_offset 49, -44
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMOV.M1		R10, R32
	|	SFMULS32.M2		R12, R12, R10
	|	SSTDW		R63:R62, *+AR15[6]
.LVL1:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R19:R18, AR14
		SNOP		1
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 52, -32
	.cfi_offset 53, -28
	.loc 1 329 0
		SFMULAS32.M2	R32, R32, R10, R10
	|	SMVAAGL.M1		AR8, R7:R6
	|	SSTDW		R37:R36, *+AR15[4]
		SBR		sqrt
	|	SMOV.M2		R14, R36
	.loc 1 324 0
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R21:R20, AR8
	|	SMOVIL		.L2, R62
		SSTDW		R35:R34, *+AR15[3]
	|	SMOVIH		.L2, R62
	.cfi_offset 50, -40
	.cfi_offset 51, -36
		SSTDW		R7:R6, *+AR15[5]
	|	SMOVIH4.L		.L2, R63
		SMOV.M1		R16, R37
	.cfi_offset 8, -24
	.loc 1 329 0
		SFSPDP32T.M2		R10, R11:R10
	|	SMOV.M1		R12, R33
	.cfi_offset 46, -56
	.cfi_offset 47, -52
	;; call to sqrt occurs, with return value
		SSTDW		R31:R30, *+AR15[1]
.LVL2:
.L2:
	.loc 1 330 0
		SFMULS32.M2		R37, R37, R0
	|	SMOV.M1		R11, R31
	.loc 1 329 0
		SMOV.M1		R10, R30
		SNOP		2
.LVL3:
	.loc 1 330 0
		SFMULAS32.M2	R36, R36, R0, R0
		SBR		sqrt
		SMOVIL		.L3, R62
		SMOVIH		.L3, R62
		SMOVIH4.L		.L3, R63
		SNOP		1
		SFSPDP32T.M2		R0, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.LVL4:
.L3:
	.loc 1 334 0
		SBR		atan2
	|	SFSPDP32T.M2		R32, R13:R12
	|	SMOV.M1		R11, R35
	.loc 1 330 0
		SMOV.M1		R10, R34
	|	SMOVIL		.L4, R62
.LVL5:
	.loc 1 334 0
		SFSPDP32T.M2		R33, R11:R10
	|	SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to atan2 occurs, with return value
		SNOP		3
.LVL6:
.L4:
	.loc 1 335 0
		SBR		atan2
	|	SFSPDP32T.M2		R36, R13:R12
	|	SMOV.M1		R10, R32
.LVL7:
	.loc 1 334 0
		SMOV.M1		R11, R33
	|	SMOVIL		.L5, R62
.LVL8:
	.loc 1 335 0
		SFSPDP32T.M2		R37, R11:R10
	|	SMOVIH		.L5, R62
		SMOVIH4.L		.L5, R63
	;; call to atan2 occurs, with return value
		SNOP		3
.LVL9:
.L5:
	.loc 1 334 0
		SFDPSP32.M1		R33:R32, R1
	|	SFDPSP32.M2		R11:R10, R2
.LVL10:
	.loc 1 335 0
		SNOP		1
.LVL11:
	.loc 1 330 0
		SFDPSP32.M1		R35:R34, R34
	|	SFDPSP32.M2		R31:R30, R30
.LVL12:
	.loc 1 339 0
		SBR		cos
	.loc 1 336 0
		SFSUBS32.M1		R2, R1, R3
	|	SMOVIL		.L6, R62
.LVL13:
		SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
	.loc 1 339 0
		SFSPDP32T.M2		R3, R33:R32
		SNOP		1
	;; call to cos occurs, with return value
		SMOV.M2		R32, R10
	|	SMOV.M1		R33, R11
.LVL14:
.L6:
	.loc 1 331 0
		SFRCPS32.M2		R34, R42
	|	SMOVIL		1073741824, R44
		SFMULS32.M2		R34, R42, R43
	|	SMOVIH		1073741824, R44
		SNOP		3
		SFSUBS32.M2		R43, R44, R8
		SNOP		2
		SFMULS32.M2		R42, R8, R9
		SNOP		3
		SFMULS32.M2		R34, R9, R12
		SNOP		3
		SFSUBS32.M2		R12, R44, R13
		SNOP		2
		SFMULS32.M2		R9, R13, R14
		SNOP		3
		SFMULS32.M2		R30, R14, R15
		SNOP		3
	.loc 1 339 0
		SFSPDP32T.M2		R15, R37:R36
		SNOP		1
.LVL15:
		SFMULD.M2		R11:R10, R37:R36, R43:R42
		SNOP		1
	.loc 1 340 0
		SMOV.M2		R32, R10
	|	SMOV.M1		R33, R11
		SBR		sin
		SMOVIL		.L7, R62
		SMOVIH		.L7, R62
	.loc 1 339 0
		SFDPSP32.M2		R43:R42, R16
	|	SMOVIH4.L		.L7, R63
		SNOP		2
	.loc 1 340 0
	;; call to sin occurs, with return value
		SSTW		R16, *AR14
.LVL16:
.L7:
		SFMULD.M2		R37:R36, R11:R10, R19:R18
	|	SLDDW		*+AR15[5], R7:R6
	.loc 1 341 0
		SNOP		1
		SLDDW		*+AR15[6], R63:R62
		SLDDW		*+AR15[1], R31:R30
.LVL17:
		SLDDW		*+AR15[2], R33:R32
		SNOP		1
	.loc 1 340 0
		SFDPSP32.M2		R19:R18, R11
	|	SLDDW		*+AR15[3], R35:R34
	.loc 1 341 0
		SNOP		1
.LVL18:
		SMVCGC.L		R63, BRReg
		SNOP		1
	.loc 1 340 0
		SSTW		R11, *AR8
	|	SMVAGA36.M2		R7:R6, AR8
	.loc 1 341 0
		SNOP		2
.LVL19:
		SLDDW		*+AR15[7], R7:R6
		SLDDW		*+AR15[4], R37:R36
		SNOP		1
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL20:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE4:
	.size	complex_sp_div_cn, .-complex_sp_div_cn
	.section	.text.DSPF_sp_qrd_cmplx_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_cmplx_cn
	.type	DSPF_sp_qrd_cmplx_cn, @function
DSPF_sp_qrd_cmplx_cn:
.LFB0:
	.loc 1 11 0
	.cfi_startproc
.LVL21:
		SMOVIL		-216, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 216
		SMVAAGL.M1		AR14, R7:R6
	|	SSHFLL		1, R10, R0
	|	SMVAGA36.M2		R21:R20, OR12
		SSTW		R12, *+AR15[30]
	|	SSHFAR		31, R10, R42
	|	SMVAGA36.M1		R15:R14, OR11
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGH.M1		AR14, R7:R6
	|	SLTU		R0, R10, R44
	|	SSTDW		R63:R62, *+AR15[25]
	.loc 1 20 0
		SSHFLL		1, R42, R1
	|	SMVAAGL.M1		OR11, R13:R12
.LVL22:
		SSHFLL		2, R10, R43
	|	SADD.M2		R1,R44,R2
		SLDW		*+AR15[30], R11
	|	SLTU		R43, R0, R45
	|	SMVAAGH.M2		OR11, R13:R12
	.loc 1 11 0
		SSTDW		R7:R6, *+AR15[26]
	.cfi_offset 14, -8
	.cfi_offset 52, -56
	.cfi_offset 53, -52
		SMVAAGL.M2		OR8, R7:R6
	|	SSHFLL		1, R2, R3
	|	SSTDW		R37:R36, *+AR15[20]
	.loc 1 20 0
		SSHFLL		3, R10, R8
	|	SADD.M1		R3,R45,R9
	.loc 1 11 0
		SMVAAGH.M2		OR8, R7:R6
	|	SMOV.M1		R10, R37
	|	SLTU		R8, R43, R10
.LVL23:
		SMVAGA36.M1		R17:R16, OR8
	|	SSHFLL		1, R9, R16
.LVL24:
		SSTDW		R7:R6, *+AR15[24]
	.cfi_offset 88, -24
	.cfi_offset 46, -80
	.cfi_offset 47, -76
		SMVAAGL.M1		AR8, R7:R6
	|	SMULU.M2		R11,R8,R15:R14
	|	SSTDW		R31:R30, *+AR15[17]
.LVL25:
	.loc 1 20 0
		SADD.M2		R16,R10,R17
	|	SMVAAGL.M1		OR12, R31:R30
	|	SMOVIL		0, R20
.LVL26:
	.loc 1 11 0
		SMVAAGH.M1		AR8, R7:R6
	|	SLT		R20, R37, R22
	.cfi_offset 54, -48
	.cfi_offset 55, -44
		SMVAGA36.M1		R19:R18, AR8
	|	SSHFAR		31, R11, R18
	|	SMULIS.M2		R11,R17,R19
	|	SSTDW		R39:R38, *+AR15[21]
.LVL27:
	.cfi_offset 50, -64
	.cfi_offset 51, -60
	.loc 1 20 0
		SMULIS.M2		R8,R18,R21
	|	SMVAAGH.M1		OR12, R31:R30
	|	SSTDW		R35:R34, *+AR15[19]
		SMVAAGL.M1		AR8, R11:R10
		SNOP		1
	.cfi_offset 48, -72
	.cfi_offset 49, -68
		SADD.M1		R21,R19,R24
	|	SMVAAGH.M2		AR8, R11:R10
	|	SSTDW		R33:R32, *+AR15[18]
	.loc 1 11 0
		SSTDW		R7:R6, *+AR15[23]
	.cfi_offset 8, -32
	.loc 1 20 0
		SBR		memcpy
	|	SADD.M2		R15,R24,R15
		SMOVIL		.L85, R62
	.loc 1 11 0
		SSTDW		R41:R40, *+AR15[22]
	|	SMOVIH		.L85, R62
	.cfi_offset 56, -40
	.cfi_offset 57, -36
	.loc 1 20 0
		SSTW		R0, *+AR15[28]
	|	SMOVIH4.L		.L85, R63
		SNOP		2
	;; call to memcpy occurs, with return value
		SSTW		R22, *+AR15[32]
.LVL28:
.L85:
	.loc 1 21 0
		SMULS.M2		R37,R37,R45:R44
	|	SMVAAGL.M1		OR8, R11:R10
	|	SMOVIL		0, R12
		SNOP		1
		SMVAAGH.M1		OR8, R11:R10
		SNOP		1
		SSHFLL		1, R44, R13
		SSHFLL		1, R45, R14
		SLTU		R13, R44, R46
		SSHFLL		1, R13, R15
	|	SADD.M2		R14,R46,R25
		SLTU		R15, R13, R26
		SSHFLL		1, R25, R27
		SBR		memset
	|	SSHFLL		2, R13, R14
	|	SADD.M2		R27,R26,R28
		SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SLTU		R14, R15, R29
		SSHFLL		1, R28, R32
	;; call to memset occurs, with return value
		SADD.M2		R32,R29,R15
.LVL29:
.L86:
	.loc 1 22 0
		SLDW		*+AR15[32], R0
	|	SADD.M1		1,R37,R48
	|	SMVAAGL.M2		OR8, R43:R42
	|	SMOVIL		1065353216, R49
	.loc 1 10 0
		SSHFLL		1, R48, R12
		SSHFLL		2, R48, R33
	|	SMVAAGH.M2		OR8, R43:R42
		SSHFAR		31, R12, R47
		SLTU		R33, R12, R34
		SSHFLL		1, R47, R35
	.loc 1 22 0
	[!R0]	SBR		.L9
	|	SADD.M2		R35,R34,R36
	|	SSHFLL		3, R48, R38
	.loc 1 10 0
		SLTU		R38, R33, R39
		SSHFLL		1, R36, R40
	.loc 1 22 0
		SMOVIL		0, R51
	|	SADD.M2		R40,R39,R50
	.loc 1 24 0
		SMOVIH		1065353216, R49
		SNOP		2
	.loc 1 22 0
	;; condjump to .L9 occurs
.LVL30:
.L10:
	.loc 1 22 0 is_stmt 0 discriminator 2
		SADD.M1		1,R51,R51
	|	SMVAGA36.M2		R43:R42, AR10
.LVL31:
		SEQ		R37, R51, R1
	|	SADD.M1		R42,R38,R41
	[!R1]	SBR		.L10
	|	SSTW		R49, *AR10
	|	SLTU		R41, R42, R52
	|	SMOV.M2		R41, R42
	|	SADD.M1		R43,R50,R53
		SADD.M2		R53,R52,R43
		SNOP		5
	;; condjump to .L10 occurs
.LVL32:
.L9:
	.loc 1 27 0 is_stmt 1
		SLDW		*+AR15[30], R54
		SNOP		5
		SLT		R54, R37, R2
	[R2]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
	.loc 1 29 0
		SADD.M2		-2,R37,R19
.LVL33:
.L12:
	.loc 1 37 0
		SMOVIL		0, R56
	|	SMVAAGL.M1		AR8, R43:R42
	|	SLDW		*+AR15[30], R45
	|	SMVAAGL.M2		OR8, R55:R54
		SLT		R19, R56, R0
	|	SLDW		*+AR15[30], R57
	[R0]	SBR		.L14
	|	SMVAAGH.M2		AR8, R43:R42
	|	SLDW		*+AR15[28], R11
	|	SMOV.M1		R30, R56
	|	SMOVIL		0, R60
	.loc 1 10 0
		SLDW		*+AR15[28], R29
	|	SMOVIL		4, R47
	|	SMVAAGH.M2		OR8, R55:R54
	|	SADD.M1		-1,R37,R14
		SADD.M1		8,R42,R20
	|[!R0]	SLDW		*+AR15[30], R36
		SMOV.M2		R42, R38
	|	SSUB.M1		R56, R47, R53
		SSHFLL		2, R45, R9
	|	SMOV.M2		R43, R32
	|	SMOV.M1		R42, R24
	.loc 1 35 0
		SSHFLL		1, R57, R58
	|	SMOV.M2		R31, R57
	|	SMOV.M1		R43, R25
.LVL34:
	.loc 1 10 0
		SNEG		R58, R59
	|	SADD.M2		2,R58,R17
	;; condjump to .L14 occurs
		SSHFAR		31, R58, R30
		SSTW		R20, *+AR15[31]
	|	SSHFLL		1, R11, R16
		SSHFAR		31, R11, R18
		SLTU		R60, R59, R61
		SLDW		*+AR15[31], R45
	|	SLTU		R17, R58, R31
		SNEG		R30, R44
	|	SADD.M2		R30,R31,R15
		SSHFLL		1, R17, R3
	|	SSUB.M2		R61, R44, R8
		SSHFLL		2, R17, R35
		SSHFLL		1, R18, R33
	|	SSTW		R35, *+AR15[23]
		SLTU		R16, R29, R48
		SADD.M2		R33,R48,R34
	|	SLTU		R35, R3, R50
	|	SMOV.M1		R57, R35
		SLTU		R3, R17, R21
		SSHFLL		3, R36, R33
		SSHFLL		2, R29, R40
		SMOVIL		4, R3
	|	SSTW		R40, *+AR15[26]
		SSHFLL		1, R59, R10
		SLTU		R9, R58, R23
		SSHFLL		2, R59, R39
		SSHFLL		1, R34, R60
	|	SSTW		R39, *+AR15[24]
	|	SMOV.M2		R56, R34
		SSHFLL		1, R30, R46
		SSHFLL		1, R8, R28
	|	SADD.M2		R46,R23,R27
		SLTU		R33, R9, R51
		SLTU		R40, R16, R30
		SNEG		R57, R61
	|	SADD.M2		R60,R30,R44
		SSHFLL		1, R15, R22
	|	SSTW		R44, *+AR15[29]
		SLTU		R3, R53, R8
	|	SADD.M2		R22,R21,R13
		SLTU		R45, R38, R9
		SLTU		R10, R59, R26
	|	SADD.M2		R32,R9,R11
.LVL35:
		SLTU		R39, R10, R2
	|	SSUB.M2		R8, R61, R10
	|	SADD.M1		R28,R26,R12
	|	SSTW		R11, *+AR15[33]
		SNEG		R42, R42
	|	SSTW		R10, *+AR15[27]
		SMOVIL		0, R58
	|	SMOV.M2		R42, R41
.LVL36:
		SSHFLL		1, R13, R49
		SLTU		R58, R42, R59
	|	SADD.M2		R49,R50,R52
		SSHFLL		1, R27, R1
	|	SSTW		R52, *+AR15[25]
		SSHFLL		1, R12, R0
	|	SADD.M2		R1,R51,R36
		SNEG		R43, R43
	|	SADD.M2		R0,R2,R31
		SSUB.M2		R59, R43, R52
	|	SMOVIL		0, R58
		SMOVIL		0, R59
		SMOVIL		2, R60
		SMOVIL		0, R61
	.loc 1 37 0
		SMOVIL		0, R30
.LVL37:
.L32:
	.loc 1 10 0 discriminator 1
		SLDW		*+AR15[27], R18
	|	SLT		R30, R37, R1
	|	SSUB.M2		R34, R56, R40
	|	SADD.M1		R34,R53,R16
	.loc 1 40 0 discriminator 1
	[!R1]	SBR		.L80
	|	SSUB.M2		R35, R57, R21
	|	SLTU		R56, R40, R20
	|	SMOV.M1		R24, R42
	.loc 1 10 0 discriminator 1
		SLTU		R16, R53, R23
	|	SMOV.M2		R25, R43
	|	SMOV.M1		R30, R48
	.loc 1 40 0 discriminator 1
		SMOVIL		0, R51
	|	SSUB.M2		R20, R21, R13
		SMOVIH		0, R51
		SNOP		1
	.loc 1 10 0 discriminator 1
		SADD.M2		R35,R18,R22
		SADD.M2		R22,R23,R26
	;; condjump to .L80 occurs
.LVL38:
.L15:
	.loc 1 10 0 is_stmt 0 discriminator 2
		SADD.M2		R42,R40,R44
	|	SADD.M1		R43,R13,R28
		SLTU		R44, R42, R27
	|	SMOV.M2		R16, R46
	|	SMOV.M1		R26, R47
		SADD.M2		R28,R27,R45
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADD.M1		R42,R33,R12
		SMVAGA36.M1		R45:R44, AR0
	|	SMVAGA36.M2		R43:R42, AR10
	|	SLTU		R12, R42, R39
		SNOP		1
		SMVAAA.M2		AR0, OR13
	|	SLDW		*AR10, R29
	|	SADD.M1		1,R48,R48
.LVL39:
	.loc 1 40 0 is_stmt 1 discriminator 2
		SEQ		R37, R48, R2
	|	SADD.M1		R43,R36,R50
	.loc 1 10 0 discriminator 2
		SADDA.M2		R47:R46,OR13,AR12
	|	SADD.M1		R50,R39,R43
		SNOP		1
	.loc 1 43 0 discriminator 2
		SLDW		*AR12, R42
		SNOP		5
.LVL40:
	.loc 1 44 0 discriminator 2
		SFMULS32.M2		R42, R42, R49
	|	SMOV.M1		R12, R42
		SNOP		3
.LVL41:
		SFMULAS32.M2	R29, R29, R49, R49
		SNOP		1
	.loc 1 40 0 discriminator 2
	[!R2]	SBR		.L15
		SNOP		3
	.loc 1 44 0 discriminator 2
		SFADDS32.M2		R51, R49, R51
		SNOP		2
.LVL42:
	.loc 1 40 0 discriminator 2
	;; condjump to .L15 occurs
	.loc 1 46 0
		SMOVIL		0, R39
		SMOVIH		0, R39
		SFCMPES32.M2		R51, R39, R0
	[!R0]	SBR		.L76
		SNOP		6
	;; condjump to .L76 occurs
.LVL43:
.L80:
		SADD.M2		1,R30,R18
	|	SADD.M1		2,R58,R39
.LVL44:
.L16:
		SLDW		*+AR15[23], R30
	|	SADD.M2		8,R34,R3
	|	SLTU		R39, R58, R10
	|	SADD.M1		8,R54,R16
		SLTU		R3, R34, R40
	|	SLDW		*+AR15[24], R34
	|	SADD.M2		R60,R17,R58
	|	SADD.M1		R33,R38,R22
		SLTU		R16, R54, R23
	|	SADD.M2		R61,R15,R61
	|	SADD.M1		R36,R32,R32
		SLTU		R22, R38, R12
	|	SADD.M2		R31,R52,R52
	|	SMOV.M1		R16, R54
		SADD.M2		R35,R40,R35
	|	SMOV.M1		R22, R38
		SADD.M2		R32,R12,R32
	|	SADD.M1		-1,R14,R14
		SADD.M2		R24,R30,R27
	|	SMOV.M1		R18, R30
	|	SLTU		R58, R60, R18
.LVL45:
		SLTU		R27, R24, R42
	|	SLDW		*+AR15[25], R24
	|	SADD.M2		R34,R41,R43
	|	SMOV.M1		R58, R60
	.loc 1 37 0
		SLT		R19, R30, R1
	|	SMOV.M2		R3, R34
	|	SMOV.M1		R39, R58
	[!R1]	SBR		.L32
	|	SADD.M2		R61,R18,R61
	|	SADD.M1		R59,R10,R59
	|	SLTU		R43, R41, R11
		SADD.M2		R52,R11,R52
	|	SMOV.M1		R43, R41
		SADD.M2		R55,R23,R55
		SNOP		1
		SADD.M2		R25,R24,R25
	|	SMOV.M1		R27, R24
		SADD.M2		R25,R42,R25
		SNOP		1
	;; condjump to .L32 occurs
.LVL46:
.L14:
	.loc 1 138 0 discriminator 1
		SLDW		*+AR15[32], R0
	|	SMVAAA.M2		OR8, OR0
	|	SADD.M1		-1,R37,R38
	|	SMOVIL		-2147483648, R51
	.loc 1 10 0 discriminator 1
		SLDW		*+AR15[28], R19
	|	SSHFLL		1, R38, R36
		SLDW		*+AR15[28], R41
	|	SADDA.M2		4,OR0,OR1
	|	SSHFLL		2, R38, R31
		SLTU		R36, R38, R39
		SLTU		R31, R36, R56
		SSHFLL		1, R39, R57
	|	SMVAAGL.M2		OR1, R45:R44
	.loc 1 138 0 discriminator 1
	[!R0]	SBR		.L45
	|	SSHFLL		3, R38, R14
	|	SADD.M1		R57,R56,R15
	.loc 1 10 0 discriminator 1
		SSHFAR		31, R19, R17
	|	SADD.M1		8,R14,R53
	|	SMVAAGH.M2		OR1, R45:R44
		SSHFLL		1, R41, R33
		SLTU		R33, R19, R60
		SSHFLL		1, R17, R54
		SADD.M2		R54,R60,R50
	|	SSHFLL		2, R19, R30
		SLTU		R14, R31, R20
	;; condjump to .L45 occurs
.LVL47:
	.loc 1 10 0 is_stmt 0
		SSHFLL		1, R15, R26
		SLTU		R30, R33, R29
	|	SADD.M2		R26,R20,R8
		SSHFLL		1, R50, R49
		SLTU		R53, R14, R48
	|	SADD.M2		R49,R29,R3
		SMOVIL		0, R40
	|	SADD.M2		R8,R48,R2
	.loc 1 142 0 is_stmt 1
		SMOVIH		-2147483648, R51
.LVL48:
.L34:
	.loc 1 10 0 discriminator 1
		SADD.M2		R44,R53,R21
	|	SADD.M1		R45,R2,R9
		SLTU		R21, R53, R28
	|	SMOV.M2		R44, R42
	|	SMOV.M1		R45, R43
		SADD.M2		R9,R28,R13
.LVL49:
.L35:
		SADD.M1		8,R42,R46
	|	SMVAGA36.M2		R43:R42, AR10
		SLTU		R46, R42, R27
	|	SMOV.M1		R46, R42
		SADD.M2		R43,R27,R43
	|	SEQ		R46, R21, R1
	|	SLDW		*AR10, R10
	.loc 1 140 0 discriminator 2
	[R1]	SEQ		R43, R13, R1
	[!R1]	SBR		.L35
		SNOP		3
	.loc 1 142 0 discriminator 2
		SXOR		R51, R10, R58
		SSTW		R58, *AR10
		SNOP		1
	.loc 1 140 0 discriminator 2
	;; condjump to .L35 occurs
	.loc 1 138 0
		SADD.M2		1,R40,R40
	|	SADD.M1		R44,R30,R16
.LVL50:
		SEQ		R37, R40, R0
	|	SADD.M2		R45,R3,R45
	[!R0]	SBR		.L34
	|	SLTU		R16, R44, R22
	|	SMOV.M2		R16, R44
		SADD.M2		R45,R22,R45
		SNOP		5
	;; condjump to .L34 occurs
.LVL51:
.L45:
	.loc 1 147 0
		SLDDW		*+AR15[23], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[25], R63:R62
		SLDDW		*+AR15[17], R31:R30
		SLDDW		*+AR15[18], R33:R32
		SLDDW		*+AR15[19], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[24], R7:R6
		SLDDW		*+AR15[20], R37:R36
		SLDDW		*+AR15[21], R39:R38
		SLDDW		*+AR15[22], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, OR8
		SNOP		2
		SLDDW		*+AR15[26], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		216, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL52:
.L76:
	.loc 1 48 0
		SFSPDP32T.M2		R51, R11:R10
	|	SSTW		R14, *+AR15[10]
	|	SMVAGA36.M1		R35:R34, AR8
		SSTW		R15, *+AR15[5]
		SNOP		2
		SSTW		R17, *+AR15[3]
		SSTW		R19, *+AR15[17]
		SNOP		2
		SSTW		R24, *+AR15[14]
		SSTW		R25, *+AR15[13]
		SNOP		2
		SSTW		R46, *+AR15[22]
		SSTW		R47, *+AR15[21]
		SNOP		2
		SSTW		R52, *+AR15[4]
		SSTW		R53, *+AR15[2]
		SNOP		2
		SSTW		R54, *+AR15[7]
		SSTW		R55, *+AR15[6]
		SNOP		2
		SSTW		R56, *+AR15[16]
		SSTW		R57, *+AR15[15]
		SNOP		2
		SSTW		R58, *+AR15[9]
		SSTW		R59, *+AR15[8]
		SBR		sqrt
		SMOVIL		.L87, R62
		SSTW		R60, *+AR15[12]
	|	SMOVIH		.L87, R62
		SSTW		R61, *+AR15[11]
	|	SMOVIH4.L		.L87, R63
		SNOP		2
	;; call to sqrt occurs, with return value
		SSTW		R13, *+AR15[20]
.LVL53:
.L87:
	.loc 1 10 0
		SLDW		*+AR15[14], R24
	|	SFDPSP32.M2		R11:R10, R9
	|	SMOVIL		-2147483648, R54
	|	SADD.M1		1,R30,R18
	.loc 1 48 0
		SMOVIH		-2147483648, R54
	.loc 1 10 0
		SLDW		*+AR15[13], R25
	|	SLT		R18, R37, R2
	.loc 1 49 0
		SLDW		*+AR15[10], R14
	|	SXOR		R54, R9, R43
.LVL54:
		SLDW		*+AR15[5], R15
	|	SMOVIL		0, R10
	.loc 1 56 0
		SMOVIH		0, R10
	.loc 1 49 0
		SLDW		*+AR15[3], R17
		SNOP		1
	.loc 1 10 0
		SMVAGA36.M2		R25:R24, AR10
		SNOP		1
	.loc 1 49 0
		SLDW		*AR10, R3
		SNOP		1
		SLDW		*+AR15[17], R19
		SLDW		*+AR15[4], R52
		SLDW		*+AR15[2], R53
		SNOP		1
		SFCMPGS32.M2		R3, R39, R1
	|	SLDW		*+AR15[7], R54
	[!R1]	SFCMPES32.M2		R3, R39, R1
		SNOP		2
		SLDW		*+AR15[6], R55
		SNOP		1
		SLDW		*+AR15[16], R56
		SLDW		*+AR15[15], R57
		SLDW		*+AR15[9], R58
		SNOP		1
		SLDW		*+AR15[8], R59
		SNOP		3
		SLDW		*+AR15[12], R60
		SNOP		1
		SLDW		*+AR15[11], R61
		SLDW		*+AR15[20], R8
		SLDW		*+AR15[22], R46
	[!R1]	SBR		.L82
		SLDW		*+AR15[21], R47
		SNOP		5
	;; condjump to .L82 occurs
	.loc 1 53 0
		SFADDS32.M2		R9, R3, R45
		SNOP		2
		SSTW		R45, *AR8
		SNOP		2
	.loc 1 54 0
		SLDW		*+AR10[1], R11
		SNOP		3
	.loc 1 59 0
	[!R2]	SBR		.L83
		SNOP		1
	.loc 1 54 0
		SSTW		R11, *+AR8[1]
	.loc 1 55 0
		SSTW		R43, *AR10
		SNOP		2
	.loc 1 56 0
		SSTW		R10, *+AR10[1]
	;; condjump to .L83 occurs
.LVL55:
.L77:
	.loc 1 10 0
		SADD.M2		-2,R37,R16
	|	SADD.M1		2,R58,R39
		SSUB.M2		R30, R16, R21
	|	SLTU		R39, R58, R20
	|	SADD.M1		12,R56,R12
		SSHFLL		1, R21, R23
	|	SADD.M2		R59,R20,R27
	|	SADD.M1		R24,R33,R49
		SADD.M2		R39,R23,R29
	|	SLTU		R23, R21, R13
	|	SADD.M1		12,R34,R0
		SLTU		R29, R23, R28
	|	SADD.M2		R27,R13,R48
	|	SADD.M1		R25,R36,R1
		SSHFLL		1, R29, R51
	|	SADD.M2		R48,R28,R50
	|	SMOV.M1		R49, R42
		SLTU		R51, R29, R3
	|	SMOV.M2		R0, R44
		SSHFLL		1, R50, R43
		SSHFLL		2, R29, R2
	|	SADD.M2		R43,R3,R11
		SLTU		R12, R56, R16
	|	SADD.M2		R2,R12,R22
		SLTU		R2, R51, R21
	|	SADD.M2		R57,R16,R23
		SSHFLL		1, R11, R20
		SADD.M2		R20,R21,R27
	|	SLTU		R49, R24, R29
		SLTU		R0, R34, R13
	|	SADD.M2		R27,R23,R26
	|	SADD.M1		R1,R29,R43
		SLTU		R22, R12, R12
	|	SADD.M2		R35,R13,R45
		SADD.M2		R26,R12,R28
.LVL56:
.L19:
	.loc 1 10 0 is_stmt 0 discriminator 2
		SADD.M1		R42,R40,R48
	|	SMVAGA36.M2		R43:R42, AR10
		SLTU		R48, R42, R51
	|	SADD.M1		R43,R8,R49
	|	SMVAGA36.M2		R45:R44, AR12
		SADD.M1		R49,R51,R49
		SMVAGA36.M1		R49:R48, AR0
	|	SLDW		*AR10, R48
	|	SADD.M2		8,R44,R50
		SLTU		R50, R44, R0
	|	SADD.M2		R42,R33,R2
		SMVAAA.M2		AR0, OR14
	|	SADD.M1		R45,R0,R45
	|	SEQ		R50, R22, R0
	.loc 1 59 0 is_stmt 1 discriminator 2
	[R0]	SEQ		R45, R28, R0
	|	SADD.M1		R43,R36,R43
	.loc 1 10 0 discriminator 2
		SADDA.M2		R47:R46,OR14,AR14
	|	SLTU		R2, R42, R11
	|	SMOV.M1		R50, R44
		SMOV.M1		R2, R42
	.loc 1 61 0 discriminator 2
		SSTW		R48, *-AR12[1]
	|	SADD.M2		R43,R11,R43
		SNOP		2
	.loc 1 62 0 discriminator 2
		SLDW		*AR14, R1
		SNOP		3
	.loc 1 59 0 discriminator 2
	[!R0]	SBR		.L19
		SNOP		1
	.loc 1 62 0 discriminator 2
		SSTW		R1, *AR12
	.loc 1 63 0 discriminator 2
		SSTW		R10, *AR10
		SNOP		2
	.loc 1 64 0 discriminator 2
		SSTW		R10, *AR14
	;; condjump to .L19 occurs
.L18:
	.loc 1 69 0
		SLDW		*+AR8[1], R46
	|	SMOVIL		0, R42
	.loc 1 68 0
		SLDW		*AR8, R47
	|	SMOVIH		0, R42
	.loc 1 70 0
		SMOVIL		0, R44
		SNOP		3
	.loc 1 69 0
		SFMULS32.M2		R9, R46, R8
	.loc 1 68 0
		SFMULS32.M1		R9, R47, R40
		SNOP		2
.LVL57:
	.loc 1 70 0
		SFCMPES32.M2		R8, R42, R1
	[R1]	SBR		.L20
		SNOP		6
	;; condjump to .L20 occurs
		SMOVIL		1, R44
.L20:
		SMOVIL		0, R9
.LVL58:
		SMOVIH		0, R9
		SFCMPES32.M2		R40, R9, R2
	|	SMOVIL		0, R10
	[R2]	SBR		.L21
		SNOP		6
	;; condjump to .L21 occurs
		SMOVIL		1, R10
.L21:
		SOR		R10, R44, R45
		SAND		1, R45, R0
	[!R0]	SBR		.L16
		SNOP		6
	;; condjump to .L16 occurs
.LVL59:
.LBB4:
.LBB5:
	.loc 1 311 0
		SFMULS32.M2		R8, R8, R16
	|	SSTW		R8, *+AR15[21]
		SSTW		R14, *+AR15[10]
		SNOP		2
		SFMULAS32.M2	R40, R40, R16, R16
	|	SSTW		R15, *+AR15[5]
		SSTW		R18, *+AR15[18]
		SNOP		2
		SSTW		R52, *+AR15[4]
		SSTW		R53, *+AR15[2]
		SFSPDP32T.M2		R16, R11:R10
		SNOP		1
		SSTW		R54, *+AR15[7]
		SSTW		R57, *+AR15[15]
		SNOP		2
		SSTW		R58, *+AR15[9]
		SSTW		R59, *+AR15[8]
		SNOP		2
		SSTW		R60, *+AR15[12]
		SSTW		R61, *+AR15[11]
		SNOP		2
		SSTW		R17, *+AR15[3]
		SSTW		R19, *+AR15[17]
		SNOP		1
		SBR		sqrt
		SSTW		R56, *+AR15[16]
	|	SMOVIL		.L88, R62
		SSTW		R24, *+AR15[14]
	|	SMOVIH		.L88, R62
		SMOVIH4.L		.L88, R63
		SNOP		1
		SSTW		R25, *+AR15[13]
	;; call to sqrt occurs, with return value
		SSTW		R55, *+AR15[6]
.LVL60:
.L88:
	.loc 1 315 0
		SFSPDP32T.M2		R40, R13:R12
	|	SMOV.M1		R10, R24
	.loc 1 311 0
		SMOV.M1		R11, R25
	.loc 1 315 0
		SLDW		*+AR15[21], R55
		SBR		atan2
	|	SSTW		R24, *+AR15[20]
		SSTW		R25, *+AR15[19]
	|	SMOVIL		.L89, R62
		SMOVIH		.L89, R62
		SMOVIH4.L		.L89, R63
		SNOP		1
		SFSPDP32T.M2		R55, R11:R10
	;; call to atan2 occurs, with return value
		SNOP		1
.LVL61:
.L89:
		SFDPSP32.M2		R11:R10, R19
	|	SMOVIL		-2147483648, R17
.LVL62:
	.loc 1 316 0
		SMOVIH		-2147483648, R17
		SNOP		1
	.loc 1 319 0
		SBR		cos
	|	SXOR		R17, R19, R56
		SFSPDP32T.M2		R56, R45:R44
	|	SMOVIL		.L90, R62
		SMOVIH		.L90, R62
		SMOV.M2		R44, R10
	|	SMOV.M1		R45, R11
	|	SSTW		R44, *+AR15[21]
	|	SMOVIH4.L		.L90, R63
.LVL63:
		SSTW		R45, *+AR15[22]
	;; call to cos occurs, with return value
		SNOP		2
.LVL64:
.L90:
	.loc 1 311 0
		SLDW		*+AR15[20], R42
	|	SMOVIL		1073741824, R14
		SLDW		*+AR15[19], R43
	|	SMOVIH		1073741824, R14
	.loc 1 320 0
		SLDW		*+AR15[21], R54
		SLDW		*+AR15[22], R22
		SNOP		3
	.loc 1 311 0
		SFDPSP32.M2		R43:R42, R57
		SNOP		2
	.loc 1 312 0
		SFRCPS32.M2		R57, R15
		SFMULS32.M2		R57, R15, R53
		SNOP		3
		SFSUBS32.M2		R53, R14, R52
		SNOP		2
		SFMULS32.M2		R15, R52, R58
		SNOP		3
		SFMULS32.M2		R57, R58, R59
		SNOP		3
		SFSUBS32.M2		R59, R14, R60
		SNOP		2
		SFMULS32.M2		R58, R60, R61
		SNOP		3
	.loc 1 319 0
		SFSPDP32T.M2		R61, R43:R42
		SNOP		1
		SFMULD.M2		R11:R10, R43:R42, R19:R18
	|	SSTW		R42, *+AR15[20]
	.loc 1 320 0
		SSTW		R43, *+AR15[19]
		SBR		sin
	|	SMOV.M2		R54, R10
	|	SMOV.M1		R22, R11
		SMOVIL		.L91, R62
		SMOVIH		.L91, R62
		SMOVIH4.L		.L91, R63
	.loc 1 319 0
		SFDPSP32.M2		R19:R18, R40
	.loc 1 320 0
	;; call to sin occurs, with return value
		SNOP		2
.LVL65:
.L91:
		SLDW		*+AR15[20], R42
		SLDW		*+AR15[19], R43
.LBE5:
.LBE4:
	.loc 1 74 0
		SLDW		*+AR15[10], R14
		SLDW		*+AR15[12], R60
		SLDW		*+AR15[9], R58
		SNOP		2
.LBB8:
.LBB6:
	.loc 1 320 0
		SFMULD.M2		R43:R42, R11:R10, R21:R20
.LBE6:
.LBE8:
	.loc 1 10 0
		SSHFLL		1, R14, R29
		SLTU		R29, R14, R13
	|	SADD.M1		4,R41,R11
	.loc 1 74 0
		SLDW		*+AR15[11], R61
	|	SADD.M1		R58,R29,R26
		SLDW		*+AR15[8], R59
	|	SLTU		R26, R29, R8
	|	SADD.M1		4,R34,R29
		SLDW		*+AR15[18], R18
	|	SSHFLL		1, R26, R45
.LBB9:
.LBB7:
	.loc 1 320 0
		SFDPSP32.M2		R21:R20, R50
	|	SLDW		*+AR15[30], R23
	|	SLTU		R29, R34, R2
.LVL66:
.LBE7:
.LBE9:
	.loc 1 74 0
		SLDW		*+AR15[16], R56
	.loc 1 10 0
		SLTU		R45, R26, R20
		SNOP		1
		SADD.M2		R59,R13,R51
		SADD.M2		R51,R8,R9
	.loc 1 74 0
		SLT		R18, R23, R1
	.loc 1 10 0
		SLDW		*+AR15[30], R21
	|	SSHFLL		1, R9, R23
	|	SADD.M2		12,R56,R28
	.loc 1 74 0
		SLDW		*+AR15[14], R24
		SLDW		*+AR15[15], R57
		SLDW		*+AR15[13], R25
		SLDW		*+AR15[4], R52
		SNOP		1
	.loc 1 10 0
		SADD.M2		-2,R21,R27
	|	SADD.M1		R23,R20,R21
	|	SLTU		R11, R41, R20
		SSUB.M2		R30, R27, R30
	|	SSHFLL		2, R26, R27
	|	SADD.M1		8,R24,R47
		SSHFLL		1, R30, R12
	|	SADD.M2		R27,R28,R26
	|	SMOV.M1		R47, R13
		SADD.M2		R60,R12,R43
	|	SLTU		R12, R30, R49
		SLTU		R43, R12, R48
	|	SADD.M2		R61,R49,R46
	|	SLDW		*+AR15[31], R30
		SADD.M2		R46,R48,R42
	|	SLDW		*+AR15[33], R46
	|	SSHFLL		1, R43, R44
		SLTU		R44, R43, R10
	|	SLDW		*+AR15[5], R15
		SSHFLL		1, R42, R0
	|	SLDW		*+AR15[3], R17
	.loc 1 74 0
		SLDW		*+AR15[17], R19
	|	SADD.M2		R0,R10,R16
	|	SLTU		R27, R45, R42
	|	SADD.M1		R52,R20,R27
	.loc 1 10 0
		SLTU		R28, R56, R49
		SADD.M2		R57,R49,R3
	|	SMOVIL		-2147483648, R12
		SLTU		R47, R24, R47
		SLTU		R26, R28, R28
	.loc 1 81 0
		SMOVIH		-2147483648, R12
	.loc 1 74 0
		SLDW		*+AR15[2], R53
	[!R1]	SBR		.L23
	|	SLDW		*+AR15[7], R54
	|	SSHFLL		2, R43, R1
		SLDW		*+AR15[6], R55
	|	SLTU		R1, R44, R51
	|	SADD.M2		R1,R30,R8
	.loc 1 10 0
		SSHFLL		1, R21, R44
	|	SADD.M2		R25,R47,R21
		SSHFLL		1, R16, R43
	|	SADD.M2		R44,R42,R10
		SADD.M2		R43,R51,R48
	|	SADD.M1		R10,R3,R0
	|	SLTU		R8, R30, R9
		SADD.M2		R48,R46,R45
	|	SADD.M1		R0,R28,R28
		SADD.M2		R45,R9,R9
	|	SADD.M1		R35,R2,R3
	;; condjump to .L23 occurs
.L27:
.LVL67:
		SSUB.M2		R13, R38, R23
	|	SMOVIL		0, R10
	|	SSUB.M1		R21, R32, R2
	.loc 1 10 0 is_stmt 0 discriminator 1
		SMOVIH		0, R10
	|	SMOV.M2		R29, R44
	|	SMOV.M1		R13, R42
		SLTU		R38, R23, R22
	|	SMOV.M2		R3, R45
	|	SMOV.M1		R21, R43
		SMOV.M2		R10, R1
	|	SSUB.M1		R22, R2, R16
.LVL68:
.L24:
	.loc 1 10 0 discriminator 2
		SADD.M2		R42,R23,R48
	|	SADD.M1		R16,R43,R51
		SLTU		R48, R42, R30
	|	SADD.M1		R13,R11,R46
	|	SMVAGA36.M2		R43:R42, AR12
		SADD.M1		R51,R30,R49
	|	SLTU		R46, R11, R0
	|	SMVAGA36.M2		R45:R44, AR10
		SMVAGA36.M1		R49:R48, AR0
	|	SLDW		*AR12, R20
		SADD.M2		R21,R27,R47
	|	SLDW		*AR10, R49
		SMVAAA.M2		AR0, OR11
	|	SADD.M1		R47,R0,R47
		SNOP		1
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,OR11,AR12
	|	SADD.M1		8,R44,R46
		SLTU		R46, R44, R30
	|	SADD.M1		R42,R33,R47
		SADD.M2		R45,R30,R45
	|	SMOV.M1		R46, R44
	.loc 1 83 0 is_stmt 1 discriminator 2
		SLDW		*AR12, R0
	|	SXOR		R12, R49, R22
	.loc 1 80 0 discriminator 2
		SLDW		*-AR10[1], R49
	|	SFMULS32.M2		R22, R20, R48
.LVL69:
	.loc 1 85 0 discriminator 2
		SNOP		4
	.loc 1 84 0 discriminator 2
		SFMULS32.M2		R22, R0, R51
	|	SADD.M1		R43,R36,R22
.LVL70:
	.loc 1 85 0 discriminator 2
		SFMULAS32.M1	R49, R0, R48, R48
	|	SEQ		R46, R26, R0
.LVL71:
	.loc 1 78 0 discriminator 2
	[R0]	SEQ		R45, R28, R0
		SNOP		1
	.loc 1 10 0 discriminator 2
		SXOR		R12, R51, R43
	.loc 1 84 0 discriminator 2
		SFMULAS32.M1	R49, R20, R43, R43
	|	SLTU		R47, R42, R20
	|	SMOV.M2		R47, R42
.LVL72:
		SNOP		1
.LVL73:
	.loc 1 85 0 discriminator 2
		SFADDS32.M1		R10, R48, R10
	.loc 1 78 0 discriminator 2
	[!R0]	SBR		.L24
		SNOP		2
	.loc 1 84 0 discriminator 2
		SMOV.M2		R43, R49
	|	SADD.M1		R22,R20,R43
.LVL74:
		SFADDS32.M2		R1, R49, R1
		SNOP		2
.LVL75:
	.loc 1 78 0 discriminator 2
	;; condjump to .L24 occurs
.LVL76:
	.loc 1 91 0
		SFMULS32.M1		R10, R50, R16
	|	SFMULS32.M2		R10, R40, R10
	|	SMOVIL		-2147483648, R46
.LVL77:
	.loc 1 10 0
		SMOVIH		-2147483648, R46
	|	SMOV.M2		R29, R44
	|	SMOV.M1		R13, R42
		SLTU		R38, R23, R48
	|	SMOV.M2		R3, R45
	|	SMOV.M1		R21, R43
		SNOP		1
		SXOR		R46, R16, R16
	|	SFMULAS32.M2	R1, R50, R10, R10
	|	SSUB.M1		R48, R2, R51
	.loc 1 91 0
		SFMULAS32.M1	R1, R40, R16, R16
		SNOP		5
.LVL78:
.L26:
	.loc 1 10 0 discriminator 2
		SMVAGA36.M2		R45:R44, AR12
	|	SADD.M1		R42,R23,R48
		SLTU		R48, R42, R30
	|	SADD.M1		R51,R43,R0
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 96 0 discriminator 2
		SLDW		*AR12, R1
	|	SADD.M1		R0,R30,R49
	.loc 1 95 0 discriminator 2
		SLDW		*-AR12[1], R2
	|	SMVAGA36.M1		R49:R48, AR0
	|	SADD.M2		R13,R11,R46
.LVL79:
	.loc 1 10 0 discriminator 2
		SLTU		R46, R11, R22
	|	SADD.M2		R21,R27,R47
		SMVAAA.M2		AR0, OR12
	|	SADD.M1		R47,R22,R47
	;no-op trunc di R47:R46 to pdi R47:R46
		SADD.M1		8,R44,R49
		SADDA.M2		R47:R46,OR12,AR12
	|	SLTU		R49, R44, R20
	|	SMOV.M1		R49, R44
	.loc 1 99 0 discriminator 2
		SFMULS32.M1		R10, R1, R48
	|	SEQ		R49, R26, R0
	|	SFMULS32.M2		R16, R1, R1
.LVL80:
		SLDW		*AR10, R47
	|	SADD.M2		R45,R20,R45
	|	SADD.M1		R42,R33,R30
	.loc 1 93 0 discriminator 2
	[R0]	SEQ		R45, R28, R0
	|	SADD.M2		R43,R36,R43
		SLTU		R30, R42, R22
	.loc 1 10 0 discriminator 2
		SXOR		R12, R48, R46
	|	SFMULAS32.M2	R10, R2, R1, R1
	|	SMOV.M1		R30, R42
	.loc 1 99 0 discriminator 2
		SFMULAS32.M2	R16, R2, R46, R46
	|	SADD.M1		R43,R22,R43
		SNOP		5
		SFSUBS32.M2		R46, R47, R49
		SNOP		2
		SSTW		R49, *AR10
		SNOP		2
	.loc 1 100 0 discriminator 2
		SLDW		*AR12, R20
		SNOP		2
	.loc 1 93 0 discriminator 2
	[!R0]	SBR		.L26
		SNOP		2
	.loc 1 100 0 discriminator 2
		SFSUBS32.M2		R1, R20, R48
		SNOP		2
		SSTW		R48, *AR12
	;; condjump to .L26 occurs
		SADD.M2		8,R13,R42
		SLTU		R42, R13, R44
	|	SMOV.M2		R42, R13
		SADD.M2		R21,R44,R21
	|	SEQ		R8, R42, R1
	.loc 1 74 0
	[R1]	SEQ		R9, R21, R1
	[!R1]	SBR		.L27
		SNOP		6
	;; condjump to .L27 occurs
.LVL81:
.L23:
	.loc 1 10 0 discriminator 1
		SADD.M2		1,R14,R11
	|	SMOVIL		-2147483648, R10
	|	SMOV.M1		R54, R46
		SSHFLL		1, R11, R29
	|	SMOV.M2		R55, R47
		SLTU		R11, R14, R12
	|	SMVAGA36.M1		R47:R46, AR0
		SLTU		R29, R11, R13
		SSHFLL		1, R12, R8
		SSHFLL		2, R11, R26
	|	SADD.M2		R8,R13,R21
		SLTU		R26, R29, R9
		SSHFLL		1, R21, R28
		SADD.M2		R28,R9,R3
	|	SSHFLL		3, R11, R11
		SMOVIL		0, R51
	.loc 1 111 0 discriminator 1
		SMOVIH		-2147483648, R10
	.loc 1 10 0 discriminator 1
		SLTU		R11, R26, R27
	|	SMOV.M2		R10, R16
		SSHFLL		1, R3, R23
		SMOVIH		0, R51
	|	SADD.M2		R23,R27,R12
		SMOVIL		0, R13
	|	SMOV.M2		R51, R22
.LVL82:
		SMOVIL		0, R30
		SMOVIL		0, R2
.LVL83:
.L29:
	.loc 1 10 0 is_stmt 0 discriminator 2
		SADD.M2		4,R46,R44
	|	SMOV.M1		R30, R48
		SLTU		R44, R46, R0
	|	SMOV.M1		R2, R49
	|	SMVAAA.M2		AR0, OR13
		SADD.M1		R47,R0,R45
	;no-op trunc di R49:R48 to pdi R49:R48
	|	SADDA.M2		R49:R48,AR8,AR10
		SMVAGA36.M1		R45:R44, AR2
	|	SADDA.M2		R49:R48,OR13,AR12
	.loc 1 111 0 is_stmt 1 discriminator 2
		SLDW		*+AR10[1], R43
	.loc 1 10 0 discriminator 2
		SMVAAA.M2		AR2, OR14
	|	SLDW		*AR12, R20
	.loc 1 112 0 discriminator 2
		SNOP		1
	.loc 1 10 0 discriminator 2
		SADDA.M2		R49:R48,OR14,AR14
	|	SLDW		*AR10, R49
	|	SADD.M1		8,R30,R48
.LVL84:
		SLTU		R48, R30, R1
	|	SMOV.M1		R48, R30
		SADD.M2		R2,R1,R2
	|	SEQ		R48, R11, R0
	.loc 1 111 0 discriminator 2
		SXOR		R10, R43, R29
.LVL85:
	.loc 1 113 0 discriminator 2
		SLDW		*AR14, R42
	|	SFMULS32.M2		R29, R20, R26
	|[R0]	SEQ		R2, R12, R0
.LVL86:
	.loc 1 108 0 discriminator 2
		SNOP		5
	.loc 1 114 0 discriminator 2
		SFMULS32.M1		R29, R42, R8
	|	SFMULAS32.M2	R49, R42, R26, R26
	.loc 1 115 0 discriminator 2
		SNOP		3
	.loc 1 10 0 discriminator 2
		SXOR		R10, R8, R21
	.loc 1 114 0 discriminator 2
		SMOV.M1		R21, R9
		SFMULAS32.M2	R49, R20, R9, R9
	|	SFADDS32.M1		R51, R26, R51
	.loc 1 115 0 discriminator 2
		SNOP		1
	.loc 1 108 0 discriminator 2
	[!R0]	SBR		.L29
		SNOP		3
	.loc 1 114 0 discriminator 2
		SFADDS32.M2		R22, R9, R22
		SNOP		2
.LVL87:
	.loc 1 108 0 discriminator 2
	;; condjump to .L29 occurs
.LVL88:
	.loc 1 121 0
		SFMULS32.M1		R51, R50, R28
	|	SFMULS32.M2		R51, R40, R51
	|	SMOVIL		0, R30
.LVL89:
	.loc 1 122 0
		SMOVIL		0, R3
		SNOP		2
	.loc 1 10 0
		SXOR		R16, R28, R27
	|	SFMULAS32.M2	R22, R50, R51, R51
	.loc 1 121 0
		SFMULAS32.M1	R22, R40, R27, R27
		SNOP		5
.LVL90:
.L31:
	.loc 1 10 0 discriminator 2
		SMOV.M2		R30, R48
	|	SMOV.M1		R3, R49
	;no-op trunc di R49:R48 to pdi R49:R48
		SADDA.M2		R49:R48,AR8,AR12
	|	SADD.M1		4,R46,R44
		SMVAAA.M2		AR0, OR11
	|	SLTU		R44, R46, R23
	|	SADD.M1		8,R30,R26
	.loc 1 126 0 discriminator 2
		SLDW		*+AR12[1], R22
	|	SADD.M1		R47,R23,R45
	|	SEQ		R26, R11, R0
	.loc 1 125 0 discriminator 2
		SLDW		*AR12, R43
	|	SADDA.M2		R49:R48,OR11,AR10
	|	SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R26, R30, R45
.LVL91:
		SNOP		1
	.loc 1 129 0 discriminator 2
		SLDW		*AR10, R1
	|	SMVAAA.M2		AR2, OR12
	|	SADD.M1		R3,R45,R3
	.loc 1 123 0 discriminator 2
	[R0]	SEQ		R3, R12, R0
	|	SMOV.M1		R26, R30
	.loc 1 10 0 discriminator 2
		SADDA.M2		R49:R48,OR12,AR12
	.loc 1 129 0 discriminator 2
		SFMULS32.M1		R51, R22, R42
	|	SFMULS32.M2		R27, R22, R20
	.loc 1 130 0 discriminator 2
		SNOP		3
	.loc 1 10 0 discriminator 2
		SXOR		R10, R42, R44
	|	SFMULAS32.M2	R51, R43, R20, R20
	.loc 1 129 0 discriminator 2
		SFMULAS32.M1	R27, R43, R44, R44
		SNOP		5
		SFSUBS32.M2		R44, R1, R49
		SNOP		2
		SSTW		R49, *AR10
		SNOP		2
	.loc 1 130 0 discriminator 2
		SLDW		*AR12, R48
		SNOP		2
	.loc 1 123 0 discriminator 2
	[!R0]	SBR		.L31
		SNOP		2
	.loc 1 130 0 discriminator 2
		SFSUBS32.M2		R20, R48, R21
		SNOP		2
		SSTW		R21, *AR12
	;; condjump to .L31 occurs
		SLDW		*+AR15[26], R9
	|	SADD.M2		1,R13,R13
	|	SMOVIL		0, R30
.LVL92:
	.loc 1 104 0
		SEQ		R37, R13, R2
	[R2]	SBR		.L16
	|	SMOVIL		0, R2
	.loc 1 10 0
		SNOP		3
		SADD.M2		R46,R9,R28
		SLTU		R28, R46, R51
		SNOP		1
.LVL93:
	.loc 1 104 0
	;; condjump to .L16 occurs
		SLDW		*+AR15[29], R46
		SNOP		2
		SBR		.L29
		SNOP		2
		SADD.M2		R47,R46,R47
	|	SMOV.M1		R28, R46
		SADD.M2		R47,R51,R47
	|	SMOVIL		0, R51
	.loc 1 10 0
		SMOVIH		0, R51
	|	SMVAGA36.M1		R47:R46, AR0
		SMOV.M2		R51, R22
	;; jump to .L29 occurs
.LVL94:
.L82:
	.loc 1 49 0
		SMOV.M2		R9, R44
	|	SMOV.M1		R43, R9
	|	SMOVIL		0, R10
.LVL95:
	.loc 1 53 0
		SFADDS32.M2		R9, R3, R45
	|	SMVAGA36.M1		R35:R34, AR8
	|	SMOVIH		0, R10
	.loc 1 10 0
		SADD.M2		1,R30,R18
	.loc 1 59 0
		SLT		R18, R37, R2
	|	SMOV.M1		R44, R43
.LVL96:
	.loc 1 53 0
		SSTW		R45, *AR8
		SNOP		2
	.loc 1 54 0
		SLDW		*+AR10[1], R11
		SNOP		3
	.loc 1 59 0
	[R2]	SBR		.L77
		SNOP		1
	.loc 1 54 0
		SSTW		R11, *+AR8[1]
	.loc 1 55 0
		SSTW		R43, *AR10
		SNOP		2
	.loc 1 56 0
		SSTW		R10, *+AR10[1]
	;; condjump to .L77 occurs
.LVL97:
.L83:
		SBR		.L18
	|	SADD.M2		2,R58,R39
		SNOP		6
	;; jump to .L18 occurs
.LVL98:
.L11:
	.loc 1 33 0
		SLDW		*+AR15[30], R55
	|	SBR		.L12
		SNOP		5
		SADD.M2		-1,R55,R19
	;; jump to .L12 occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_qrd_cmplx_cn, .-DSPF_sp_qrd_cmplx_cn
	.section	.text.DSPF_sp_qrd_solver_cmplx_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_solver_cmplx_cn
	.type	DSPF_sp_qrd_solver_cmplx_cn, @function
DSPF_sp_qrd_solver_cmplx_cn:
.LFB1:
	.loc 1 150 0
	.cfi_startproc
.LVL99:
		SMOVIL		-104, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 104
		SMVAAGL.M2		AR14, R7:R6
	|	SMOVIL		0, R42
	|	SMVAGA36.M1		R15:R14, AR0
	.cfi_offset 46, -84
	.loc 1 155 0
		SLT		R42, R10, R0
	|	SMVAGA36.M1		R19:R18, AR2
	|	SSTW		R30, *+AR15[5]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 150 0
		SMVAAGH.M1		AR14, R7:R6
	|	SMOVIL		-2147483648, R11
	|	SMOV.M2		R12, R30
	|	SSTDW		R63:R62, *+AR15[11]
		SMVAGA36.M1		R21:R20, AR14
	|	SADD.M2		1,R10,R12
	|	SMOVIL		1, R13
.LVL100:
	.loc 1 155 0
		SMOVIL		0, R55
	.loc 1 150 0
		SSTDW		R7:R6, *+AR15[12]
	.cfi_offset 14, -8
	.cfi_offset 56, -48
	.cfi_offset 57, -44
		SMVAAGL.M2		OR8, R7:R6
	|	SMOVIH		-2147483648, R11
	|	SSTDW		R41:R40, *+AR15[7]
		SNOP		1
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R23:R22, OR8
		SSTW		R38, *+AR15[13]
		SSTDW		R7:R6, *+AR15[10]
		SMVAAGL.M2		AR9, R7:R6
		SNOP		1
	.cfi_offset 54, -52
	.cfi_offset 88, -24
	.cfi_offset 53, -56
		SMVAAGH.M1		AR9, R7:R6
	|	SMVAGA36.M2		R17:R16, AR9
	|	SSTW		R37, *+AR15[12]
		SSTW		R36, *+AR15[11]
		SNOP		2
		SSTDW		R7:R6, *+AR15[9]
	.cfi_offset 52, -60
	.cfi_offset 9, -32
	.cfi_offset 51, -64
		SMVAAGL.M2		AR8, R7:R6
	|	SSTW		R35, *+AR15[10]
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SSTW		R34, *+AR15[9]
		SSTDW		R7:R6, *+AR15[8]
	.loc 1 155 0
	[!R0]	SBR		.L93
		SNOP		1
	.loc 1 150 0
		SSTW		R33, *+AR15[8]
		SSTW		R32, *+AR15[7]
		SNOP		2
	.cfi_offset 50, -68
	.cfi_offset 8, -40
	.cfi_offset 49, -72
	.cfi_offset 48, -76
		SSTW		R31, *+AR15[6]
	;; condjump to .L93 occurs
	.cfi_offset 47, -80
.LVL101:
.L94:
	.loc 1 159 0 discriminator 1
		SMOVIL		0, R60
		SSHFLL		1, R55, R14
		SMOVIH		0, R60
	|	SADD.M2		1,R14,R15
	.loc 1 150 0 discriminator 1
		SMOVIL		1, R55
	|	SMOV.M2		R60, R61
	.loc 1 159 0 discriminator 1
		SMOVIL		0, R54
.LVL102:
.L95:
	.loc 1 161 0 discriminator 2
		SSHFLL		1, R54, R50
	|	SMVAAA.M1		AR0, OR11
	|	SMVAAA.M2		AR2, OR12
		SMULIS.M1		R10,R50,R51
	|	SSHFAR		31, R50, R58
	.loc 1 164 0 discriminator 2
		SADD.M1		1,R50,R52
	|	SSHFLL		2, R54, R56
		SLTU		R52, R50, R18
	.loc 1 162 0 discriminator 2
		SADD.M2		R15,R51,R53
	|	SSHFLL		1, R52, R57
	|	SADD.M1		R58,R18,R1
		SSHFLL		1, R53, R59
	|	SADD.M2		R14,R51,R2
		SSHFAR		31, R53, R16
		SLTU		R59, R53, R17
		SSHFLL		1, R16, R3
		SSHFLL		2, R53, R48
	|	SADD.M2		R3,R17,R8
	.loc 1 164 0 discriminator 2
		SLTU		R57, R52, R9
		SSHFLL		1, R1, R19
	.loc 1 162 0 discriminator 2
		SLTU		R48, R59, R20
	|	SADD.M2		R19,R9,R21
	.loc 1 164 0 discriminator 2
		SSHFLL		2, R52, R46
	.loc 1 162 0 discriminator 2
		SSHFLL		1, R8, R49
	.loc 1 164 0 discriminator 2
		SLTU		R46, R57, R25
	|	SADD.M2		R49,R20,R49
	.loc 1 163 0 discriminator 2
		SLTU		R56, R50, R22
	;no-op trunc di R49:R48 to pdi R49:R48
	|	SADDA.M2		R49:R48,OR11,AR10
		SSHFLL		1, R58, R23
	.loc 1 164 0 discriminator 2
		SSHFLL		1, R21, R47
	|	SADD.M2		R23,R22,R24
	|	SLDW		*AR10, R27
	.loc 1 163 0 discriminator 2
		SSHFLL		3, R54, R44
	|	SADD.M2		R47,R25,R47
	|	SMOV.M1		R55, R54
		SLTU		R44, R56, R26
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,OR12,AR12
	|	SADD.M1		1,R55,R55
		SSHFLL		1, R24, R45
	.loc 1 161 0 discriminator 2
		SSHFLL		1, R2, R48
	|	SADD.M2		R45,R26,R45
	|	SLDW		*AR12, R46
		SSHFAR		31, R2, R28
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,OR12,AR10
		SLTU		R48, R2, R29
		SSHFLL		1, R28, R31
	|	SLDW		*AR10, R34
		SSHFLL		2, R2, R42
	|	SADD.M2		R31,R29,R32
		SLTU		R42, R48, R33
		SSHFLL		1, R32, R43
		SADD.M2		R43,R33,R43
	|	SXOR		R11, R27, R44
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,OR11,AR10
	|	SFMULS32.M2		R44, R46, R35
	|	SEQ		R12, R55, R0
	.loc 1 166 0 discriminator 2
		SFMULS32.M1		R44, R34, R36
	.loc 1 161 0 discriminator 2
		SLDW		*AR10, R38
		SNOP		1
.LVL103:
	.loc 1 149 0 discriminator 2
		SXOR		R11, R35, R37
	.loc 1 165 0 discriminator 2
		SMOV.M2		R37, R40
		SNOP		2
		SFMULAS32.M1	R38, R34, R40, R40
	|	SFMULAS32.M2	R38, R46, R36, R36
	.loc 1 166 0 discriminator 2
		SNOP		1
	.loc 1 159 0 discriminator 2
	[!R0]	SBR		.L95
		SNOP		3
	.loc 1 165 0 discriminator 2
		SFADDS32.M1		R61, R40, R61
	|	SFADDS32.M2		R60, R36, R60
.LVL104:
	.loc 1 166 0 discriminator 2
		SNOP		2
.LVL105:
	.loc 1 159 0 discriminator 2
	;; condjump to .L95 occurs
	.loc 1 168 0
		SSHFLL		1, R14, R42
	|	SMOV.M2		R13, R55
	|	SADD.M1		1,R13,R13
		SSHFAR		31, R14, R41
	.loc 1 169 0
		SLTU		R15, R14, R54
		SSHFLL		1, R15, R52
	|	SADD.M2		R41,R54,R50
	.loc 1 168 0
		SLTU		R42, R14, R51
		SSHFLL		1, R41, R58
	.loc 1 155 0
		SEQ		R12, R13, R0
	.loc 1 168 0
		SSHFLL		2, R14, R44
	|	SADD.M2		R58,R51,R14
.LVL106:
	.loc 1 169 0
		SLTU		R52, R15, R18
		SSHFLL		1, R50, R57
	.loc 1 168 0
		SLTU		R44, R42, R1
	|	SADD.M2		R57,R18,R53
	.loc 1 169 0
		SSHFLL		2, R15, R42
	.loc 1 168 0
		SSHFLL		1, R14, R15
	.loc 1 155 0
	[!R0]	SBR		.L94
	|	SLTU		R42, R52, R56
	|	SADD.M2		R15,R1,R45
	.loc 1 169 0
		SSHFLL		1, R53, R2
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR14,AR12
		SADD.M1		R2,R56,R43
	.loc 1 168 0
		SSTW		R61, *AR12
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M2		R43:R42,AR14,AR10
	.loc 1 169 0
		SNOP		2
		SSTW		R60, *AR10
	;; condjump to .L94 occurs
.LVL107:
.L93:
	.loc 1 173 0
		SLT		R10, R30, R1
	[R1]	SBR		.L96
		SNOP		6
	;; condjump to .L96 occurs
	.loc 1 174 0
		SMOV.M2		R30, R35
.LVL108:
.L97:
	.loc 1 177 0
		SSHFLL		1, R30, R10
.LVL109:
		SSHFAR		31, R30, R60
		SLTU		R10, R30, R61
		SSHFLL		1, R60, R11
		SADD.M2		R11,R61,R12
	|	SSHFLL		2, R30, R59
.LVL110:
		SLTU		R59, R10, R16
	|	SMVAAGL.M2		OR8, R11:R10
		SSHFLL		1, R12, R17
		SBR		memset
	|	SSHFLL		3, R30, R14
	|	SADD.M1		R17,R16,R3
	|	SMVAAGH.M2		OR8, R11:R10
		SMOVIL		.L111, R62
		SMOVIH		.L111, R62
		SMOVIH4.L		.L111, R63
		SLTU		R14, R59, R8
		SSHFLL		1, R3, R9
	;; call to memset occurs, with return value
		SADD.M2		R9,R8,R15
	|	SMOVIL		0, R12
.LVL111:
.L111:
	.loc 1 178 0
		SADD.M2		-1,R35,R19
	|	SMOVIL		0, R49
.LVL112:
		SSHFLL		16, R19, R20
		SSHFAR		16, R20, R21
		SLT		R21, R49, R2
	[R2]	SBR		.L107
	|	SSHFLL		1, R21, R33
	.loc 1 149 0
		SMULIS.M2		R33,R30,R36
	|	SNEG		R30, R30
.LVL113:
		SSHFLL		1, R30, R38
		SSHFLL		16, R35, R22
		SMOVIL		-2147483648, R32
	|	SMOV.M2		R36, R34
		SSHFAR		31, R38, R30
.LVL114:
		SSHFAR		31, R36, R37
	;; condjump to .L107 occurs
	.loc 1 182 0
		SSHFAR		16, R22, R31
	.loc 1 149 0
		SMOVIH		-2147483648, R32
.LVL115:
.L102:
	.loc 1 182 0
		SSHFLL		16, R35, R23
	|	SMVAAA.M2		AR9, OR0
	|	SMOV.M1		R35, R59
.LVL116:
		SSHFAR		16, R23, R24
	.loc 1 149 0
		SSHFLL		1, R24, R25
		SADD.M2		1,R25,R47
	|	SADD.M1		R34,R25,R26
	|	SSHFAR		31, R25, R27
		SADD.M2		R34,R47,R45
	|	SSHFAR		31, R47, R48
	|	SADD.M1		R37,R27,R28
		SADD.M2		R37,R48,R46
	|	SLTU		R45, R47, R43
		SLTU		R26, R25, R29
	|	SADD.M2		R46,R43,R41
		SSHFLL		1, R26, R40
	|	SADD.M2		R28,R29,R44
		SSHFLL		1, R45, R55
		SSHFLL		2, R24, R13
		SLTU		R40, R26, R42
		SSHFLL		1, R44, R54
		SLTU		R55, R45, R52
	|	SADD.M2		R54,R42,R51
		SSHFLL		1, R41, R58
		SSHFLL		2, R26, R46
	|	SADD.M2		R58,R52,R18
		SSHFLL		2, R45, R44
		SSHFLL		1, R27, R57
		SLTU		R13, R25, R14
	.loc 1 182 0
		SLT		R24, R31, R0
	|	SADD.M2		R57,R14,R53
	.loc 1 149 0
		SSHFLL		3, R24, R15
	|[!R0]	SBR		.L109
		SLTU		R46, R40, R56
	|	SMOV.M2		R15, R48
		SLTU		R44, R55, R1
		SSHFLL		1, R51, R60
		SSHFLL		1, R18, R61
	|	SADD.M2		R60,R56,R47
		SLTU		R15, R13, R10
	|	SADD.M1		R61,R1,R45
	;no-op trunc di R47:R46 to pdi R47:R46
	|[R0]	SADDA.M2		R47:R46,OR0,AR4
		SSHFLL		1, R53, R11
	;no-op trunc di R45:R44 to pdi R45:R44
	|[R0]	SADDA.M1		R45:R44,OR0,AR2
	;; condjump to .L109 occurs
		SMVAAA.M2		OR8, OR0
	|	SMOVIL		0, R26
	.loc 1 181 0
		SMOVIH		0, R26
	.loc 1 149 0
		SADD.M2		R11,R10,R12
	|	SMOVIL		0, R23
	|	SMOV.M1		R26, R27
		SMOV.M2		R12, R49
	|	SMOVIL		0, R0
	;no-op trunc di R49:R48 to pdi R49:R48
		SADDA.M2		R49:R48,OR0,AR0
		SNOP		2
.LVL117:
.L101:
	.loc 1 149 0 is_stmt 0 discriminator 2
		SMVAAA.M1		AR0, OR14
	|	SMVAAA.M2		AR2, OR11
		SMVAAA.M1		AR4, OR12
		SMOV.M2		R23, R44
		SMOV.M2		R0, R45
	|	SADD.M1		1,R59,R59
.LVL118:
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,OR14,AR10
	|	SADDA.M2		R45:R44,OR11,AR8
	|	SSHFLL		16, R59, R16
		SADDA.M1		R45:R44,OR12,AR12
	|	SSHFAR		16, R16, R17
	.loc 1 185 0 is_stmt 1 discriminator 2
		SLDW		*AR8, R8
	|	SLT		R17, R31, R2
	|	SADD.M2		8,R23,R50
	.loc 1 187 0 discriminator 2
		SLDW		*+AR10[1], R9
	|	SLTU		R50, R23, R3
	|	SMOV.M2		R50, R23
	.loc 1 186 0 discriminator 2
		SLDW		*AR10, R19
	|	SADD.M2		R0,R3,R0
	.loc 1 184 0 discriminator 2
		SLDW		*AR12, R49
		SNOP		3
	.loc 1 188 0 discriminator 2
		SFMULS32.M2		R8, R9, R20
.LVL119:
	.loc 1 189 0 discriminator 2
		SFMULS32.M1		R8, R19, R21
		SNOP		2
	.loc 1 149 0 discriminator 2
		SXOR		R32, R20, R24
	.loc 1 189 0 discriminator 2
		SFMULAS32.M1	R49, R9, R21, R21
	|	SFMULAS32.M2	R49, R19, R24, R24
	.loc 1 188 0 discriminator 2
		SNOP		1
	.loc 1 182 0 discriminator 2
	[R2]	SBR		.L101
		SNOP		3
	.loc 1 189 0 discriminator 2
		SFADDS32.M1		R26, R21, R26
	|	SFADDS32.M2		R27, R24, R27
	.loc 1 188 0 discriminator 2
		SNOP		2
.LVL120:
	.loc 1 182 0 discriminator 2
	;; condjump to .L101 occurs
	.loc 1 191 0
		SSHFAR		31, R33, R45
	|	SADD.M2		1,R33,R47
	|	SADD.M1		R36,R33,R54
		SSHFLL		1, R33, R28
	|	SADD.M1		R36,R47,R53
	|	SADDA.M2		8,AR15,OR13
		SLTU		R28, R33, R46
	|	SADDA.M2		12,AR15,OR14
	|	SADD.M1		-1,R35,R35
		SSHFLL		1, R45, R44
	|	SADD.M1		R30,R37,R37
		SADD.M1		R44,R46,R41
	|	SSHFLL		2, R33, R13
	|	SMVAAGL.M2		OR14, R21:R20
	.loc 1 192 0
		SLTU		R47, R33, R48
	|	SADD.M1		R38,R36,R36
	.loc 1 191 0
		SSHFLL		1, R41, R57
	|	SADD.M2		R45,R48,R29
	|	SMOV.M1		R13, R48
		SLTU		R13, R28, R58
	|	SMVAAGH.M2		OR14, R21:R20
	|	SADD.M1		-2,R33,R33
		SADD.M1		R57,R58,R49
	|	SSHFLL		1, R47, R43
.LVL121:
		SMVAGA36.M2		R49:R48, AR8
	|	SLTU		R43, R47, R40
	.loc 1 192 0
		SSHFLL		1, R29, R55
		SADD.M1		R55,R40,R42
	|	SSHFLL		2, R47, R52
	|	SMVAAGL.M2		AR8, R11:R10
		SLTU		R52, R43, R15
	|	SMOV.M1		R52, R40
		SSHFLL		1, R42, R56
	|	SMVAAGH.M2		AR8, R11:R10
		SADD.M1		R56,R15,R47
	|	SSHFLL		1, R54, R51
.LVL122:
		SMOV.M1		R47, R41
	|	SADDA.M2		R11:R10,AR14,AR12
	|	SSHFLL		1, R53, R18
	;no-op trunc di R41:R40 to pdi R41:R40
		SADDA.M1		R41:R40,AR14,AR10
	|	SSHFAR		31, R54, R1
	.loc 1 191 0
		SLDW		*AR12, R12
	|	SSHFAR		31, R53, R60
	.loc 1 192 0
		SLDW		*AR10, R3
	|	SLTU		R18, R53, R16
	.loc 1 193 0
		SLTU		R51, R54, R61
		SSHFLL		1, R1, R11
	.loc 1 194 0
		SSHFLL		1, R60, R50
	|	SADD.M2		R11,R61,R17
	.loc 1 193 0
		SSHFLL		2, R54, R44
	|	SADD.M2		R50,R16,R54
.LVL123:
	.loc 1 194 0
		SSHFLL		2, R53, R42
	|	SFSUBS32.M2		R27, R12, R10
		SLTU		R42, R18, R8
	|	SMVAAGL.M1		OR13, R19:R18
	|	SFSUBS32.M2		R26, R3, R12
	.loc 1 193 0
		SLTU		R44, R51, R53
.LVL124:
		SSHFLL		1, R17, R2
	|	SMVAAGH.M1		OR13, R19:R18
	.loc 1 194 0
		SSHFLL		1, R54, R9
	|	SADD.M2		R2,R53,R45
		SADD.M1		R9,R8,R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR9,AR12
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR9,AR10
	.loc 1 195 0
		SBR		complex_sp_div_cn
	|	SLDW		*AR12, R14
		SLDW		*AR10, R16
	|	SMOVIL		.L112, R62
		SMOVIH		.L112, R62
		SMOVIH4.L		.L112, R63
	;; call to complex_sp_div_cn occurs
		SNOP		3
.LVL125:
.L112:
	.loc 1 196 0
		SMVAAGL.M2		AR8, R21:R20
	|	SADD.M1		-1,R35,R19
	|	SLDW		*+AR15[2], R23
	.loc 1 178 0
		SSHFLL		16, R19, R49
	|	SLDW		*+AR15[3], R59
	|	SADDA.M1		R41:R40,OR8,AR10
	.loc 1 196 0
		SMVAAGH.M1		AR8, R21:R20
		SNOP		1
		SADDA.M2		R21:R20,OR8,AR12
	|	SADD.M1		R38,R34,R21
		SLTU		R21, R34, R22
	.loc 1 178 0
		SMOVIL		0, R34
	|	SADD.M2		R37,R22,R37
		SLT		R49, R34, R0
	|	SSTW		R23, *AR12
	|	SMOV.M2		R21, R34
	[!R0]	SBR		.L102
	|	SSTW		R59, *AR10
	.loc 1 197 0
		SNOP		6
	.loc 1 178 0
	;; condjump to .L102 occurs
.L107:
	.loc 1 201 0
		SLDDW		*+AR15[8], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[11], R63:R62
		SLDW		*+AR15[5], R30
		SLDW		*+AR15[6], R31
		SLDW		*+AR15[7], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[9], R7:R6
		SLDW		*+AR15[8], R33
		SLDW		*+AR15[9], R34
		SLDW		*+AR15[10], R35
		SLDW		*+AR15[11], R36
		SNOP		1
		SMVAGA36.M2		R7:R6, AR9
		SNOP		3
.LVL126:
		SLDDW		*+AR15[10], R7:R6
		SLDW		*+AR15[12], R37
		SLDW		*+AR15[13], R38
		SLDDW		*+AR15[7], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, OR8
		SNOP		2
.LVL127:
		SLDDW		*+AR15[12], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		104, R6
.LVL128:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL129:
.L109:
	.loc 1 191 0
		SSHFAR		31, R33, R45
	|	SADD.M2		1,R33,R47
	|	SADD.M1		R36,R33,R54
		SSHFLL		1, R33, R28
	|	SADD.M1		R36,R47,R53
	|	SADDA.M2		8,AR15,OR13
		SLTU		R28, R33, R46
	|	SADDA.M2		12,AR15,OR14
	|	SADD.M1		-1,R35,R35
.LVL130:
		SSHFLL		1, R45, R44
	|	SADD.M1		R30,R37,R37
		SADD.M1		R44,R46,R41
	|	SSHFLL		2, R33, R13
	|	SMVAAGL.M2		OR14, R21:R20
	.loc 1 192 0
		SLTU		R47, R33, R48
	|	SADD.M1		R38,R36,R36
	.loc 1 191 0
		SSHFLL		1, R41, R57
	|	SADD.M2		R45,R48,R29
	|	SMOV.M1		R13, R48
		SLTU		R13, R28, R58
	|	SMVAAGH.M2		OR14, R21:R20
	|	SADD.M1		-2,R33,R33
		SADD.M1		R57,R58,R49
	|	SSHFLL		1, R47, R43
		SMVAGA36.M2		R49:R48, AR8
	|	SLTU		R43, R47, R40
	.loc 1 192 0
		SSHFLL		1, R29, R55
		SADD.M1		R55,R40,R42
	|	SSHFLL		2, R47, R52
	|	SMVAAGL.M2		AR8, R11:R10
		SLTU		R52, R43, R15
	|	SMOV.M1		R52, R40
		SSHFLL		1, R42, R56
	|	SMVAAGH.M2		AR8, R11:R10
		SADD.M1		R56,R15,R47
	|	SSHFLL		1, R54, R51
		SMOV.M1		R47, R41
	|	SADDA.M2		R11:R10,AR14,AR12
	|	SSHFLL		1, R53, R18
	;no-op trunc di R41:R40 to pdi R41:R40
		SADDA.M1		R41:R40,AR14,AR10
	|	SSHFAR		31, R54, R1
	.loc 1 191 0
		SLDW		*AR12, R12
	|	SSHFAR		31, R53, R60
	.loc 1 192 0
		SLDW		*AR10, R3
	|	SLTU		R18, R53, R16
	.loc 1 193 0
		SLTU		R51, R54, R61
		SSHFLL		1, R1, R11
	.loc 1 194 0
		SSHFLL		1, R60, R50
	|	SADD.M2		R11,R61,R17
	.loc 1 193 0
		SSHFLL		2, R54, R44
	|	SADD.M2		R50,R16,R54
	.loc 1 194 0
		SSHFLL		2, R53, R42
	.loc 1 181 0
		SMOVIL		0, R26
	.loc 1 194 0
		SLTU		R42, R18, R8
	|	SMVAAGL.M2		OR13, R19:R18
	.loc 1 181 0
		SMOVIH		0, R26
	.loc 1 193 0
		SLTU		R44, R51, R53
	|	SMOV.M1		R26, R27
	|	SMVAAGH.M2		OR13, R19:R18
.LVL131:
		SSHFLL		1, R17, R2
	|	SFSUBS32.M1		R27, R12, R10
	|	SFSUBS32.M2		R26, R3, R12
	.loc 1 194 0
		SSHFLL		1, R54, R9
	|	SADD.M2		R2,R53,R45
	.loc 1 193 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR9,AR12
	.loc 1 194 0
		SADD.M2		R9,R8,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
	|	SLDW		*AR12, R14
	.loc 1 195 0
		SBR		complex_sp_div_cn
		SLDW		*AR10, R16
	|	SMOVIL		.L113, R62
		SMOVIH		.L113, R62
		SMOVIH4.L		.L113, R63
	;; call to complex_sp_div_cn occurs
		SNOP		3
.LVL132:
.L113:
	.loc 1 196 0
		SMVAAGL.M2		AR8, R21:R20
	|	SADD.M1		-1,R35,R19
	|	SLDW		*+AR15[2], R23
	.loc 1 178 0
		SSHFLL		16, R19, R49
	|	SLDW		*+AR15[3], R59
	|	SADDA.M1		R41:R40,OR8,AR10
	.loc 1 196 0
		SMVAAGH.M1		AR8, R21:R20
		SNOP		1
		SADDA.M2		R21:R20,OR8,AR12
	|	SADD.M1		R38,R34,R21
		SLTU		R21, R34, R22
	.loc 1 178 0
		SMOVIL		0, R34
	|	SADD.M2		R37,R22,R37
		SLT		R49, R34, R0
	|	SSTW		R23, *AR12
	|	SMOV.M2		R21, R34
	[!R0]	SBR		.L102
	|	SSTW		R59, *AR10
	.loc 1 197 0
		SNOP		6
	.loc 1 178 0
	;; condjump to .L102 occurs
		SBR		.L107
		SNOP		6
	;; jump to .L107 occurs
.LVL133:
.L96:
		SBR		.L97
	|	SMOV.M2		R10, R35
	.loc 1 176 0
		SNOP		6
.LVL134:
	;; jump to .L97 occurs
	.cfi_endproc
.LFE1:
	.size	DSPF_sp_qrd_solver_cmplx_cn, .-DSPF_sp_qrd_solver_cmplx_cn
	.section	.text.DSPF_sp_qrd_inverse_cmplx_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_inverse_cmplx_cn
	.type	DSPF_sp_qrd_inverse_cmplx_cn, @function
DSPF_sp_qrd_inverse_cmplx_cn:
.LFB2:
	.loc 1 204 0
	.cfi_startproc
.LVL135:
		SMOVIL		-288, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
	.cfi_def_cfa_offset 288
		SMVAAGL.M2		AR14, R7:R6
	|	SMOVIL		0, R0
	|	SMOV.M1		R19, R43
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.loc 1 203 0
		SMOV.M1		R18, R42
	|	SLT		R0, R10, R1
	|	SMVAGA36.M2		R17:R16, OR11
	|	SSTDW		R33:R32, *+AR15[25]
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 204 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMVAGA36.M1		R43:R42, OR0
	|	SSHFLL		1, R12, R46
	|	SSTDW		R41:R40, *+AR15[29]
		SMVAAGL.M1		OR11, R33:R32
	|	SSHFLL		2, R12, R2
	.loc 1 203 0
		SADDA.M1		4,OR0,AR0
	|	SADD.M2		1,R12,R56
	|	SSHFAR		31, R46, R48
	.loc 1 204 0
		SSTDW		R7:R6, *+AR15[35]
	.cfi_offset 14, -8
		SMVAAGL.M1		OR9, R7:R6
	|	SSHFLL		1, R56, R47
	|	SMOV.M2		R12, R40
	|	SSTDW		R15:R14, *+AR15[21]
	.loc 1 203 0
		SSHFLL		2, R56, R43
	|	SMVAAGL.M1		AR0, R45:R44
	|	SMVAAGH.M2		OR11, R33:R32
	.loc 1 204 0
		SMVAAGH.M1		OR9, R7:R6
	|	SSHFAR		31, R47, R49
	.cfi_offset 46, -96
	.cfi_offset 47, -92
	.loc 1 210 0
		SMOVIL		0, R51
	|	SSTDW		R31:R30, *+AR15[24]
	.loc 1 204 0
		SSTDW		R7:R6, *+AR15[33]
	.cfi_offset 89, -24
		SMVAAGL.M1		OR8, R7:R6
	|	SLTU		R43, R47, R3
	|	SMVAAGH.M2		AR0, R45:R44
	.loc 1 203 0
		SSHFLL		1, R49, R8
	.loc 1 204 0
		SMVAAGH.M2		OR8, R7:R6
	|	SLTU		R2, R46, R9
	|	SSTW		R10, *+AR15[33]
	|	SADD.M1		R8,R3,R10
.LVL136:
	.loc 1 203 0
		SSHFLL		1, R48, R11
	|	SSTDW		R19:R18, *+AR15[19]
	|	SMOV.M1		R44, R52
		SLT		R51, R40, R17
	|	SADD.M2		R11,R9,R12
	|	SMOV.M1		R45, R30
.LVL137:
		SSHFLL		3, R56, R19
	.loc 1 204 0
		SSTDW		R7:R6, *+AR15[32]
	.cfi_offset 88, -32
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R63:R62, *+AR15[34]
	.loc 1 203 0
		SSHFLL		3, R40, R55
	.loc 1 204 0
		SMVAAGH.M2		AR9, R7:R6
	|	SLTU		R19, R43, R13
		SSTDW		R39:R38, *+AR15[28]
		SSTDW		R7:R6, *+AR15[31]
	.cfi_offset 54, -64
	.cfi_offset 55, -60
	.cfi_offset 9, -40
		SMVAAGL.M2		AR8, R7:R6
	|	SSHFLL		1, R10, R14
.LVL138:
	.loc 1 210 0
	[!R1]	SBR		.L115
	|	SLTU		R55, R2, R15
	|	SADD.M1		R14,R13,R58
	.loc 1 204 0
		SSTDW		R37:R36, *+AR15[27]
		SSTDW		R35:R34, *+AR15[26]
	.cfi_offset 52, -72
	.cfi_offset 53, -68
	.cfi_offset 50, -80
	.cfi_offset 51, -76
		SMVAAGH.M2		AR8, R7:R6
	|	SSHFLL		1, R12, R16
.LVL139:
	.loc 1 221 0
		SMOVIL		0, R50
	|	SADD.M1		R16,R15,R57
	.loc 1 204 0
		SSTDW		R7:R6, *+AR15[30]
	.cfi_offset 8, -48
	.loc 1 210 0
		SSTW		R1, *+AR15[41]
	|	SMOVIL		1065353216, R53
	;; condjump to .L115 occurs
	.loc 1 221 0
		SMOVIH		0, R50
	.loc 1 216 0
		SMOVIH		1065353216, R53
		SSTW		R17, *+AR15[30]
.LVL140:
.L116:
	.loc 1 212 0 discriminator 1
		SLDW		*+AR15[30], R0
	|	SMVAGA36.M2		R45:R44, AR12
	|	SMOV.M1		R52, R42
	|	SMOVIL		0, R21
		SMOV.M1		R30, R43
		SNOP		4
	[!R0]	SBR		.L120
		SNOP		6
	;; condjump to .L120 occurs
.LVL141:
.L119:
	.loc 1 214 0
		SEQ		R21, R51, R1
	|	SMVAGA36.M2		R43:R42, AR10
	|	SADD.M1		8,R42,R20
	[R1]	SBR		.L163
	|	SLTU		R20, R42, R22
		SNOP		6
	;; condjump to .L163 occurs
	.loc 1 212 0
		SADD.M2		1,R21,R21
	|	SSTW		R50, *-AR10[1]
	|	SMOV.M1		R20, R42
.LVL142:
		SEQ		R40, R21, R2
	|	SSTW		R50, *AR10
	|	SADD.M2		R43,R22,R43
	[!R2]	SBR		.L119
		SNOP		6
	;; condjump to .L119 occurs
.LVL143:
.L120:
	.loc 1 210 0
		SLDW		*+AR15[33], R29
	|	SADD.M2		1,R51,R51
	|	SADD.M1		R44,R19,R24
.LVL144:
		SADD.M2		R55,R52,R25
	|	SLTU		R24, R44, R26
	|	SADD.M1		R45,R58,R27
		SLTU		R25, R52, R28
	|	SADD.M2		R57,R30,R54
	|	SMOV.M1		R24, R44
		SADD.M2		R27,R26,R45
	|	SMOV.M1		R25, R52
		SADD.M2		R54,R28,R30
		SNOP		1
		SEQ		R29, R51, R0
	[!R0]	SBR		.L116
		SNOP		6
	;; condjump to .L116 occurs
.LVL145:
.L115:
	.loc 1 228 0
		SADD.M2		-1,R40,R31
	|	SMOVIL		0, R34
	|	SADD.M1		-2,R40,R35
	.loc 1 203 0
		SSHFLL		1, R31, R38
	|	SMOV.M2		R31, R1
	|	SSTW		R31, *+AR15[35]
	|	SMVAGA36.M1		R33:R32, OR1
.LVL146:
		SMULIS.M1		R38,R40,R36
	|	SLT		R34, R31, R2
	|	SADD.M2		1,R38,R41
		SLTU		R40, R31, R57
	|[!R2]	SBR		.L121
		SLDDW		*+AR15[19], R31:R30
	|	SSHFAR		31, R38, R39
		SADD.M2		R38,R36,R45
	|	SSHFAR		31, R36, R48
		SLTU		R45, R36, R44
	|	SADD.M2		R39,R48,R59
		SADD.M2		R59,R44,R42
	|	SSHFLL		1, R45, R8
		SSHFLL		1, R36, R9
		SLTU		R8, R45, R56
	;; condjump to .L121 occurs
		SLTU		R9, R36, R43
	|	SMVAGA36.M1		R31:R30, OR2
		SSHFLL		1, R35, R37
		SSHFLL		1, R42, R46
	|	SMULIS.M2		R40,R37,R60
		SSHFLL		1, R48, R49
	|	SADD.M2		R46,R56,R15
		SADD.M1		R49,R43,R14
	|	SSHFLL		2, R36, R50
		SSHFLL		2, R45, R42
	|	SMOV.M2		R50, R44
	|	SSUB.M1		R36, R60, R3
		SLTU		R42, R8, R21
		SLTU		R50, R9, R24
		SNEG		R40, R61
		SSHFLL		1, R15, R23
		SSHFLL		1, R14, R26
	|	SADD.M2		R23,R21,R43
		SNEG		R38, R47
	|	SADD.M1		R26,R24,R45
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M2		R43:R42,OR1,AR4
		SSHFLL		1, R61, R13
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M1		R45:R44,OR2,AR2
		SMOVIL		0, R10
	|	SADDA.M2		R45:R44,OR1,OR4
		SLTU		R10, R47, R11
	|	SMVAAGL.M1		AR4, R37:R36
		SSHFLL		2, R61, R17
	|	SMVAAGL.M1		AR2, R35:R34
		SNEG		R39, R12
	|	SMVAAGL.M1		OR4, R31:R30
	|	SMVAAGH.M2		AR4, R37:R36
		SSHFLL		1, R40, R19
	|	SMVAAGH.M1		AR2, R35:R34
		SSHFAR		31, R13, R55
	|	SSUB.M2		R11, R12, R18
	|	SMVAAGH.M1		OR4, R31:R30
.LVL147:
		SSHFAR		31, R60, R16
		SSHFLL		1, R47, R53
	|	SSUB.M2		R48, R16, R20
		SLTU		R17, R13, R58
		SLTU		R60, R3, R51
		SSHFLL		1, R55, R22
	|	SSUB.M2		R51, R20, R28
		SLTU		R19, R40, R29
	|	SADD.M2		R22,R58,R25
		SSHFLL		1, R57, R52
		SSHFLL		2, R1, R60
	|	SADD.M2		R52,R29,R2
		SLTU		R53, R47, R27
		SSHFLL		1, R18, R54
		SSHFLL		3, R61, R61
	|	SADD.M2		R54,R27,R0
		SSHFLL		1, R3, R44
	|	SADD.M2		-8,R61,R24
		SSHFLL		1, R41, R8
		SSHFLL		2, R40, R42
		SSHFAR		31, R41, R48
		SLTU		R60, R38, R38
		SSHFLL		1, R39, R39
		SMOVIL		0, R51
	|	SADD.M2		R39,R38,R9
		SSHFLL		2, R47, R45
		SLTU		R44, R3, R13
	|	SMOV.M2		R45, R54
		SLTU		R61, R17, R59
		SSHFLL		1, R25, R47
		SLTU		R42, R19, R17
	|	SADD.M2		R47,R59,R11
		SLTU		R8, R41, R46
	|	SADD.M2		-1,R11,R43
		SSHFLL		3, R1, R50
		SSHFLL		1, R28, R56
	|	SMOV.M2		R50, R38
		SSHFLL		1, R48, R49
	|	SADD.M2		R56,R13,R15
		SSHFLL		1, R2, R18
	|	SADD.M2		R49,R46,R14
		SLT		R51, R40, R27
		SLTU		R45, R53, R10
	|	SSTW		R27, *+AR15[30]
	|	SADD.M2		R18,R17,R53
		SSHFLL		2, R3, R13
		SSHFLL		2, R41, R23
		SSHFLL		1, R9, R3
		SLTU		R50, R60, R41
		SSHFLL		3, R40, R17
	|	SADD.M2		R3,R41,R39
		SSHFLL		1, R0, R12
		SLTU		R24, R61, R19
	|	SADD.M2		R12,R10,R55
		SLTU		R13, R44, R16
	|	SADD.M2		R43,R19,R26
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLL		1, R15, R57
		SLTU		R23, R8, R20
	|	SADD.M2		R57,R16,R15
		SSHFLL		1, R14, R21
		SLTU		R17, R42, R58
	|	SADD.M2		R21,R20,R25
		SSHFLL		1, R53, R22
		SMOVIL		-2147483648, R41
	|	SADD.M2		R22,R58,R3
		SMOVIH		-2147483648, R41
.LVL148:
.L125:
		SADD.M2		R36,R23,R42
	|	SADD.M1		R37,R25,R52
		SLTU		R42, R36, R0
	|	SADD.M2		R34,R13,R29
	|	SADD.M1		R30,R13,R2
		SADD.M2		R52,R0,R43
	|	SADD.M1		-1,R1,R60
	|	SLTU		R2, R30, R8
.LVL149:
		SMVAGA36.M1		R43:R42, OR5
	|	SLTU		R29, R34, R1
	|	SADD.M2		R35,R15,R44
		SADD.M2		R31,R15,R45
	|	SMVAGA36.M1		R37:R36, OR9
		SADDA.M2		R55:R54,OR5,OR6
	|	SMVAGA36.M1		R35:R34, OR8
		SMVAGA36.M1		R31:R30, AR9
		SNOP		1
		SMVAAGL.M2		OR6, R57:R56
	|	SMOV.M1		R29, R48
		SMOV.M1		R38, R58
		SMVAAGH.M2		OR6, R57:R56
	|	SMOV.M1		R39, R59
		SMOV.M1		R2, R27
	;no-op trunc di R59:R58 to pdi R59:R58
		SADD.M2		R44,R1,R28
	|	SADD.M1		R45,R8,R29
	.loc 1 230 0
		SMOV.M2		R60, R22
.LVL150:
.L124:
	.loc 1 203 0
		SMOV.M2		R29, R53
	|	SMOV.M1		R27, R52
	|	SMOVIL		184, R44
	.loc 1 236 0
		SMOVIL		0, R45
	;no-op trunc di R53:R52 to pdi R53:R52
	|	SMVAGA36.M1		R57:R56, AR10
	|	SMVAGA36.M2		R53:R52, OR13
.LVL151:
		SADDA.M1		R45:R44,AR15,OR12
	|	SMOVIL		188, R44
	|	SMVAAA.M2		OR9, AR11
		SMOVIL		0, R45
	|	SLDW		*AR10, R16
	|	SADDA.M1		R59:R58,OR13,AR10
		SADDA.M1		R45:R44,AR15,OR14
	|	SADD.M2		4,R38,R42
	|	SLDW		*AR11, R14
	.loc 1 203 0
		SLTU		R42, R38, R9
	|	SMVAAGL.M1		OR12, R19:R18
	|	SLDW		*AR10, R10
		SADD.M2		R39,R9,R43
	|	SMVAAGL.M1		OR14, R21:R20
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,OR13,AR10
	|	SMVAAGH.M2		OR12, R19:R18
	.loc 1 236 0
		SMVAAGH.M1		OR14, R21:R20
		SNOP		2
		SLDW		*AR10, R12
		SSTW		R11, *+AR15[15]
		SSTW		R13, *+AR15[8]
		SNOP		3
		SSTW		R15, *+AR15[13]
		SSTW		R17, *+AR15[6]
		SNOP		2
		SSTW		R3, *+AR15[11]
		SSTW		R23, *+AR15[7]
		SNOP		2
		SSTW		R24, *+AR15[9]
		SSTW		R25, *+AR15[12]
		SNOP		2
		SSTW		R26, *+AR15[14]
		SSTW		R22, *+AR15[22]
		SNOP		2
		SSTW		R29, *+AR15[23]
		SSTW		R48, *+AR15[21]
		SNOP		2
		SSTW		R52, *+AR15[19]
		SSTW		R53, *+AR15[18]
		SNOP		2
		SSTW		R54, *+AR15[5]
		SSTW		R55, *+AR15[4]
		SNOP		2
		SSTW		R56, *+AR15[17]
		SSTW		R57, *+AR15[16]
		SNOP		2
		SSTW		R58, *+AR15[3]
		SSTW		R59, *+AR15[2]
		SNOP		1
		SBR		complex_sp_div_cn
		SSTW		R60, *+AR15[25]
	|	SMOVIL		.L166, R62
		SSTW		R61, *+AR15[10]
	|	SMOVIH		.L166, R62
		SMOVIH4.L		.L166, R63
		SNOP		1
		SSTW		R27, *+AR15[24]
	;; call to complex_sp_div_cn occurs
		SSTW		R28, *+AR15[20]
.LVL152:
.L166:
	.loc 1 237 0
		SMOVIL		0, R42
		SMOVIL		0, R29
		SLDW		*+AR15[30], R0
		SLDW		*+AR15[21], R48
		SLDW		*+AR15[20], R49
		SLDW		*+AR15[19], R52
		SLDW		*+AR15[18], R53
		SNOP		3
		SMVAGA36.M1		R49:R48, AR0
		SNOP		1
		SLDW		*+AR15[46], R22
		SLDW		*+AR15[47], R50
		SLDW		*+AR15[15], R11
		SLDW		*+AR15[8], R13
		SLDW		*+AR15[13], R15
		SNOP		5
		SLDW		*+AR15[6], R17
		SLDW		*+AR15[11], R3
		SLDW		*+AR15[7], R23
		SLDW		*+AR15[9], R24
		SLDW		*+AR15[12], R25
		SNOP		5
		SLDW		*+AR15[14], R26
		SLDW		*+AR15[22], R21
		SLDW		*+AR15[24], R46
		SLDW		*+AR15[23], R47
		SLDW		*+AR15[5], R54
		SNOP		5
		SLDW		*+AR15[4], R55
		SLDW		*+AR15[17], R56
		SLDW		*+AR15[16], R57
		SLDW		*+AR15[3], R58
		SLDW		*+AR15[2], R59
		SNOP		5
	[!R0]	SBR		.L122
	|	SLDW		*+AR15[25], R60
		SLDW		*+AR15[10], R61
		SNOP		5
	;; condjump to .L122 occurs
.LVL153:
.L123:
	.loc 1 203 0 discriminator 2
		SMOV.M2		R42, R44
	|	SMOV.M1		R29, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,OR8,AR14
	|	SMVAAA.M2		AR0, OR12
		SMVAGA36.M1		R53:R52, OR13
	|	SADDA.M2		R45:R44,AR9,AR8
	.loc 1 242 0 discriminator 2
		SLDW		*+AR14[1], R10
	|	SADDA.M1		R45:R44,OR12,AR12
	.loc 1 241 0 discriminator 2
		SLDW		*AR14, R51
	|	SADDA.M1		R45:R44,OR13,AR10
	|	SADD.M2		8,R42,R12
.LVL154:
	.loc 1 243 0 discriminator 2
		SLDW		*AR12, R14
	|	SLTU		R12, R42, R19
	|	SMOV.M2		R12, R42
	.loc 1 244 0 discriminator 2
		SLDW		*+AR12[1], R16
	|	SEQ		R12, R17, R1
	|	SADD.M2		R29,R19,R29
	.loc 1 237 0 discriminator 2
	[R1]	SEQ		R29, R3, R1
		SNOP		1
	.loc 1 243 0 discriminator 2
		SFMULS32.M2		R10, R50, R20
	.loc 1 244 0 discriminator 2
		SFMULS32.M1		R51, R50, R27
		SNOP		2
	.loc 1 203 0 discriminator 2
		SXOR		R41, R20, R28
	.loc 1 243 0 discriminator 2
		SFMULAS32.M1	R51, R22, R28, R28
	|	SFMULAS32.M2	R10, R22, R27, R27
	.loc 1 244 0 discriminator 2
		SNOP		5
	.loc 1 243 0 discriminator 2
		SFSUBS32.M1		R28, R14, R8
	|	SFSUBS32.M2		R27, R16, R44
	.loc 1 244 0 discriminator 2
		SNOP		2
	.loc 1 243 0 discriminator 2
		SSTW		R8, *AR12
	.loc 1 244 0 discriminator 2
		SSTW		R44, *+AR12[1]
		SNOP		2
	.loc 1 246 0 discriminator 2
		SLDW		*+AR8[1], R45
	.loc 1 245 0 discriminator 2
		SLDW		*AR8, R9
.LVL155:
	.loc 1 247 0 discriminator 2
		SLDW		*AR10, R43
	.loc 1 248 0 discriminator 2
		SLDW		*+AR10[1], R0
		SNOP		2
	.loc 1 247 0 discriminator 2
		SFMULS32.M2		R45, R50, R12
	.loc 1 248 0 discriminator 2
		SFMULS32.M1		R9, R50, R19
		SNOP		2
	.loc 1 203 0 discriminator 2
		SXOR		R41, R12, R18
	.loc 1 247 0 discriminator 2
		SFMULAS32.M1	R9, R22, R18, R18
	|	SFMULAS32.M2	R45, R22, R19, R19
	.loc 1 248 0 discriminator 2
		SNOP		3
	.loc 1 237 0 discriminator 2
	[!R1]	SBR		.L123
		SNOP		1
	.loc 1 247 0 discriminator 2
		SFSUBS32.M1		R18, R43, R51
	|	SFSUBS32.M2		R19, R0, R20
	.loc 1 248 0 discriminator 2
		SNOP		2
	.loc 1 247 0 discriminator 2
		SSTW		R51, *AR10
	.loc 1 248 0 discriminator 2
		SSTW		R20, *+AR10[1]
	;; condjump to .L123 occurs
.LVL156:
.L122:
		SADD.M2		R46,R61,R52
	|	SADD.M1		-1,R21,R22
.LVL157:
		SLTU		R52, R46, R50
	|	SMOV.M2		R60, R1
	|	SADD.M1		R48,R61,R53
	.loc 1 230 0
		SMOVIL		-1, R46
	|	SADD.M2		R49,R11,R49
	|	SADD.M1		R47,R11,R47
		SEQ		R46, R22, R2
	|	SMOV.M2		R52, R27
	|	SADD.M1		R47,R50,R29
	[!R2]	SBR		.L124
	|	SLTU		R53, R48, R21
	|	SMOV.M2		R53, R48
		SADD.M2		R49,R21,R28
		SNOP		5
	;; condjump to .L124 occurs
.LVL158:
		SADD.M2		-8,R38,R59
	|	SADD.M1		R36,R24,R56
		SADD.M2		R34,R61,R57
	|	SADD.M1		R30,R61,R58
	|	SLTU		R59, R38, R14
	.loc 1 228 0 discriminator 1
	[R1]	SBR		.L125
	|	SMOV.M2		R59, R38
	|	SLTU		R56, R36, R16
	|	SMOV.M1		R56, R36
		SLTU		R57, R34, R42
	|	SMOV.M2		R57, R34
	|	SADD.M1		-1,R39,R39
		SADD.M2		R39,R14,R39
	|	SLTU		R58, R30, R44
	|	SMOV.M1		R58, R30
		SADD.M2		R37,R26,R37
	|	SADD.M1		R35,R11,R35
		SADD.M2		R37,R16,R37
	|	SADD.M1		R35,R42,R35
		SADD.M2		R31,R11,R31
		SADD.M2		R31,R44,R31
	;; condjump to .L125 occurs
.LVL159:
.L121:
	.loc 1 254 0
		SLDW		*+AR15[33], R34
	|	SMOVIL		0, R55
	|	SMVAGA36.M1		R33:R32, OR7
	.loc 1 203 0
		SNEG		R40, R13
	|	SLDW		*+AR15[35], R22
		SSHFLL		1, R13, R17
		SSHFLL		2, R13, R18
		SSHFAR		31, R17, R10
		SLTU		R18, R17, R50
	.loc 1 254 0
		SADD.M2		-1,R34,R36
	|	SSHFLL		1, R10, R48
		SLT		R36, R55, R0
	|	SLDDW		*+AR15[19], R17:R16
	|	SADD.M2		R48,R50,R2
	.loc 1 203 0
		SSHFLL		1, R36, R30
	|[R0]	SBR		.L126
	|	SSTW		R36, *+AR15[31]
.LVL160:
		SMULIS.M2		R30,R40,R38
	|	SSHFLL		3, R13, R31
	|	SADD.M1		1,R30,R15
		SLTU		R31, R18, R0
	|	SADD.M2		-8,R31,R44
		SSHFAR		31, R30, R41
		SADD.M2		R30,R38,R3
	|	SSHFLL		1, R38, R26
		SSHFAR		31, R38, R23
	|	SMVAGA36.M1		R17:R16, OR0
		SLTU		R3, R38, R11
	|	SADD.M2		R41,R23,R54
	;; condjump to .L126 occurs
		SLTU		R26, R38, R61
	|	SSTW		R44, *+AR15[36]
	|	SADD.M2		R54,R11,R25
		SSHFLL		2, R38, R20
	|	SSTW		R31, *+AR15[32]
		SSHFLL		1, R2, R38
	|	SMOV.M2		R20, R46
		SADD.M2		R38,R0,R13
	|	SSHFLL		1, R23, R9
		SSTW		R13, *+AR15[34]
	|	SSHFLL		1, R3, R24
	|	SADD.M2		R9,R61,R19
		SLTU		R24, R3, R60
	|	SLDW		*+AR15[32], R61
		SSHFLL		1, R25, R8
		SLTU		R20, R26, R27
	|	SADD.M2		R8,R60,R45
	|	SLDW		*+AR15[34], R17
		SSHFLL		1, R19, R28
	|	SLDW		*+AR15[36], R8
		SADD.M2		R28,R27,R47
	|	SSHFLL		1, R15, R53
	;no-op trunc di R47:R46 to pdi R47:R46
		SSHFLL		2, R3, R42
	|	SADDA.M1		R47:R46,OR0,OR2
	|	SADDA.M2		R47:R46,OR7,OR4
		SSHFAR		31, R15, R52
		SSHFLL		1, R40, R51
		SLTU		R42, R24, R49
	|	SADD.M2		-1,R17,R3
		SLTU		R53, R15, R57
		SSHFLL		1, R45, R43
		SLTU		R40, R22, R21
	|	SADD.M2		R43,R49,R43
		SSHFLL		1, R52, R58
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M2		R43:R42,OR7,OR1
	|	SMVAAGL.M1		OR2, R43:R42
		SLTU		R51, R40, R39
		SSHFLL		2, R15, R55
	|	SADD.M1		R58,R57,R37
	|	SMVAAGH.M2		OR2, R43:R42
		SSHFLL		1, R21, R47
	|	SMOV.M1		R55, R44
	|	SMVAAGL.M2		OR1, R35:R34
		SNEG		R30, R12
	|	SADD.M1		R47,R39,R1
	|	SMVAAGL.M2		OR4, R47:R46
	|	SSTDW		R43:R42, *+AR15[13]
		SLTU		R55, R53, R23
	|	SMVAAGH.M1		OR1, R35:R34
		SMOVIL		0, R29
	|	SMVAAGH.M1		OR4, R47:R46
		SSHFLL		1, R37, R54
		SLTU		R29, R12, R59
	|	SADD.M2		R54,R23,R45
	|	SSTDW		R47:R46, *+AR15[14]
		SNEG		R41, R56
	|	SMVAGA36.M2		R45:R44, OR9
		SSHFLL		1, R12, R36
	|	SSUB.M1		R59, R56, R14
.LVL161:
		SSHFLL		2, R40, R30
		SLTU		R8, R61, R45
		SMOVIL		0, R53
		SLTU		R36, R12, R41
		SSHFLL		2, R12, R26
	|	SADD.M2		R3,R45,R12
		SLTU		R30, R51, R24
	|	SSTW		R26, *+AR15[37]
		SSHFLL		1, R14, R15
	|	SSTW		R12, *+AR15[40]
		SSHFLL		1, R1, R25
	|	SADD.M2		R15,R41,R11
		SLT		R53, R40, R51
	|	SADD.M2		R25,R24,R60
		SSHFLL		3, R40, R41
	|	SSTW		R51, *+AR15[30]
		SLTU		R26, R36, R9
		SSHFLL		1, R11, R19
		SLTU		R41, R30, R18
	|	SADD.M2		R19,R9,R39
		SSHFLL		1, R60, R20
		SADD.M2		R20,R18,R36
.LVL162:
.L129:
		SLDW		*+AR15[37], R52
	|	SADD.M1		R35,R39,R21
	|	SMVAAGL.M2		OR9, R51:R50
	|	SMOVIL		176, R46
	.loc 1 258 0
		SLDW		*+AR15[30], R2
	|	SMVAGA36.M1		R35:R34, AR10
	|	SMOVIL		0, R47
	.loc 1 203 0
		SMVAAGH.M1		OR9, R51:R50
	|	SLDDW		*+AR15[13], R49:R48
	|	SMOVIL		180, R44
	|	SADDA.M2		R47:R46,AR15,OR14
		SLDDW		*+AR15[14], R29:R28
	|	SMOVIL		0, R45
	.loc 1 256 0
		SLDW		*AR10, R37
	|	SADDA.M1		R45:R44,AR15,OR11
	|	SMOVIL		0, R30
	|	SMVAAGL.M2		OR14, R19:R18
	.loc 1 258 0
		SMOVIL		0, R31
	.loc 1 203 0
		SADD.M1		R34,R52,R42
	|	SMVAAGH.M2		OR14, R19:R18
		SLTU		R42, R34, R22
		SADD.M1		R21,R22,R43
	|	SMVAAGL.M2		OR11, R21:R20
		SMVAGA36.M1		R43:R42, AR0
	|	SMVAGA36.M2		R29:R28, AR9
	.loc 1 264 0
		SMVAAGH.M1		OR11, R21:R20
	|	SSTW		R37, *+AR15[46]
	.loc 1 203 0
		SMVAAA.M1		AR0, OR8
	|	SMOV.M2		R30, R42
		SMOV.M2		R31, R43
		SADDA.M1		R51:R50,OR8,AR10
	|	SMVAGA36.M2		R49:R48, OR8
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR9,AR8
	.loc 1 257 0
		SLDW		*AR10, R38
	|[!R2]	SBR		.L127
	|	SADDA.M1		R43:R42,OR8,AR14
	|	SMOV.M2		R37, R14
	.loc 1 264 0
		SNOP		5
	.loc 1 257 0
		SSTW		R38, *+AR15[47]
	|	SMOV.M2		R38, R16
	;; condjump to .L127 occurs
.LVL163:
	.loc 1 264 0
		SLDW		*AR14, R10
		SBR		complex_sp_div_cn
		SLDW		*+AR14[1], R12
	|	SMOVIL		.L167, R62
		SMOVIH		.L167, R62
		SMOVIH4.L		.L167, R63
	;; call to complex_sp_div_cn occurs
		SNOP		3
.LVL164:
.L167:
	.loc 1 269 0
		SMOVIL		176, R42
	|	SLDW		*+AR15[44], R49
	|	SMOV.M2		R37, R14
	|	SMOV.M1		R38, R16
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR15,OR12
	|	SMOVIL		180, R42
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR15,OR13
	|	SLDW		*+AR15[45], R43
	|	SMVAAGL.M2		OR12, R19:R18
		SNOP		1
	.loc 1 265 0
		SSTW		R49, *AR14
	|	SMVAAGL.M1		OR13, R21:R20
	|	SMVAAGH.M2		OR12, R19:R18
	.loc 1 269 0
		SNOP		1
		SMVAAGH.M2		OR13, R21:R20
		SNOP		1
	.loc 1 266 0
		SSTW		R43, *+AR14[1]
		SNOP		2
	.loc 1 269 0
		SBR		complex_sp_div_cn
	|	SLDW		*AR8, R10
		SLDW		*+AR8[1], R12
	|	SMOVIL		.L168, R62
		SMOVIH		.L168, R62
		SMOVIH4.L		.L168, R63
	;; call to complex_sp_div_cn occurs
		SNOP		3
.LVL165:
.L168:
		SADD.M2		8,R30,R27
	|	SLDW		*+AR15[44], R56
		SLTU		R27, R30, R59
	|	SLDW		*+AR15[45], R57
	|	SMOV.M2		R27, R30
		SADD.M2		R31,R59,R31
	|	SEQ		R27, R41, R1
	.loc 1 258 0
	[R1]	SEQ		R31, R36, R1
	[R1]	SBR		.L127
		SNOP		2
	.loc 1 270 0
		SSTW		R56, *AR8
	.loc 1 271 0
		SSTW		R57, *+AR8[1]
		SNOP		2
.LVL166:
	.loc 1 258 0
	;; condjump to .L127 occurs
.L164:
		SLDW		*+AR15[46], R37
	|	SMOVIL		176, R46
	|	SMOV.M2		R30, R42
	|	SMOV.M1		R31, R43
.LVL167:
		SLDW		*+AR15[47], R38
	|	SMOVIL		0, R47
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M1		R43:R42,OR8,AR14
	|	SADDA.M2		R43:R42,AR9,AR8
.LVL168:
	.loc 1 264 0
		SMOVIL		180, R44
	|	SADDA.M1		R47:R46,AR15,OR14
		SMOVIL		0, R45
	|	SBR		complex_sp_div_cn
	|	SLDW		*AR14, R10
		SADDA.M1		R45:R44,AR15,OR11
	|	SMVAAGL.M2		OR14, R19:R18
	|	SLDW		*+AR14[1], R12
	|	SMOVIL		.L169, R62
		SMOVIH		.L169, R62
		SMVAAGL.M1		OR11, R21:R20
	|	SMVAAGH.M2		OR14, R19:R18
	|	SMOVIH4.L		.L169, R63
		SNOP		1
		SMVAAGH.M2		OR11, R21:R20
	|	SMOV.M1		R37, R14
	;; call to complex_sp_div_cn occurs
		SMOV.M1		R38, R16
.LVL169:
.L169:
	.loc 1 269 0
		SMOVIL		176, R42
	|	SLDW		*+AR15[44], R49
	|	SMOV.M2		R37, R14
	|	SMOV.M1		R38, R16
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR15,OR12
	|	SMOVIL		180, R42
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR15,OR13
	|	SLDW		*+AR15[45], R43
	|	SMVAAGL.M2		OR12, R19:R18
		SNOP		1
	.loc 1 265 0
		SSTW		R49, *AR14
	|	SMVAAGL.M1		OR13, R21:R20
	|	SMVAAGH.M2		OR12, R19:R18
	.loc 1 269 0
		SNOP		1
		SMVAAGH.M2		OR13, R21:R20
		SNOP		1
	.loc 1 266 0
		SSTW		R43, *+AR14[1]
		SNOP		2
	.loc 1 269 0
		SBR		complex_sp_div_cn
	|	SLDW		*AR8, R10
		SLDW		*+AR8[1], R12
	|	SMOVIL		.L170, R62
		SMOVIH		.L170, R62
		SMOVIH4.L		.L170, R63
	;; call to complex_sp_div_cn occurs
		SNOP		3
.LVL170:
.L170:
		SADD.M2		8,R30,R27
	|	SLDW		*+AR15[44], R56
		SLTU		R27, R30, R59
	|	SLDW		*+AR15[45], R57
	|	SMOV.M2		R27, R30
		SADD.M2		R31,R59,R31
	|	SEQ		R27, R41, R1
	.loc 1 258 0
	[R1]	SEQ		R31, R36, R1
	[!R1]	SBR		.L164
		SNOP		2
	.loc 1 270 0
		SSTW		R56, *AR8
	.loc 1 271 0
		SSTW		R57, *+AR8[1]
		SNOP		2
	.loc 1 258 0
	;; condjump to .L164 occurs
.L127:
	.loc 1 254 0
		SLDW		*+AR15[31], R47
	|	SMOVIL		-1, R26
		SLDW		*+AR15[36], R58
		SLDW		*+AR15[26], R37
.LVL171:
		SLDW		*+AR15[28], R46
		SLDW		*+AR15[32], R16
		SNOP		1
		SADD.M2		-1,R47,R55
		SADD.M2		R34,R58,R14
		SLTU		R14, R34, R38
		SNOP		1
.LVL172:
		SSTW		R55, *+AR15[31]
	|	SADD.M2		R37,R16,R44
	|	SADD.M1		R46,R16,R42
.LVL173:
		SLDW		*+AR15[34], R15
	|	SLTU		R44, R37, R13
		SLTU		R42, R46, R11
		SLDW		*+AR15[31], R25
		SLDW		*+AR15[27], R17
		SLDW		*+AR15[29], R54
		SNOP		1
		SLDW		*+AR15[40], R34
		SNOP		1
		SEQ		R26, R25, R2
		SADD.M2		R17,R15,R3
		SADD.M2		R54,R15,R24
	|	SADD.M1		R3,R13,R60
	|	SSTW		R44, *+AR15[26]
	[!R2]	SBR		.L129
	|	SADD.M2		R24,R11,R8
		SADD.M2		R35,R34,R35
	|	SMOV.M1		R14, R34
		SSTW		R42, *+AR15[28]
	|	SADD.M2		R35,R38,R35
		SSTW		R60, *+AR15[27]
		SNOP		2
		SSTW		R8, *+AR15[29]
	;; condjump to .L129 occurs
.LVL174:
.L126:
	.loc 1 276 0 discriminator 1
		SLDW		*+AR15[41], R1
	|	SMVAGA36.M1		R33:R32, OR5
	|	SADD.M2		12,R32,R18
	|	SSHFLL		1, R40, R20
	.loc 1 203 0 discriminator 1
		SLDW		*+AR15[35], R41
	|	SLTU		R20, R40, R48
		SLDW		*+AR15[35], R36
	|	SADDA.M2		4,OR5,OR6
	|	SSHFLL		2, R40, R29
		SLDDW		*+AR15[19], R51:R50
	|	SLTU		R18, R32, R58
		SLDDW		*+AR15[21], R15:R14
	|	SSHFAR		31, R20, R31
	|	SADD.M1		R33,R58,R46
		SLTU		R29, R20, R56
	|	SMVAAGL.M2		OR6, R53:R52
	.loc 1 276 0 discriminator 1
	[!R1]	SBR		.L130
	|	SSHFLL		3, R40, R11
	.loc 1 203 0 discriminator 1
		SSHFLL		1, R41, R61
	|	SMVAAGH.M2		OR6, R53:R52
		SSHFLL		2, R36, R10
		SLTU		R40, R36, R21
		SSHFLL		3, R36, R30
		SLTU		R61, R36, R22
	|	SADD.M2		R30,R18,R16
		SLTU		R10, R61, R28
	;; condjump to .L130 occurs
	.loc 1 203 0 is_stmt 0
		SSHFLL		1, R22, R49
		SSHFLL		1, R21, R43
	|	SADD.M2		R49,R28,R27
		SLTU		R16, R18, R17
	|	SADD.M2		R43,R48,R59
		SMOVIL		0, R18
		SSHFLL		1, R31, R57
		SLTU		R30, R10, R44
	|	SADD.M2		R57,R56,R37
		SSHFLL		1, R27, R42
		SSHFLL		1, R59, R47
	|	SADD.M2		R42,R44,R55
		SLT		R18, R40, R40
	|	SADD.M2		R47,R56,R38
	|	SADD.M1		R55,R46,R34
.LVL175:
		SSTW		R40, *+AR15[30]
	|	SLTU		R11, R29, R35
	|	SADD.M2		R34,R17,R41
		SSHFLL		1, R37, R0
		SSHFLL		1, R38, R3
	|	SADD.M2		R0,R35,R13
	.loc 1 287 0 is_stmt 1
		SMOVIL		-2147483648, R9
	|	SADD.M2		R3,R35,R1
		SMOVIH		-2147483648, R9
.LVL176:
.L131:
	.loc 1 278 0 discriminator 1
		SLDW		*+AR15[30], R2
	|	SMVAGA36.M1		R51:R50, AR0
	|	SMOV.M2		R52, R46
		SMOV.M2		R53, R47
		SMOV.M2		R14, R48
	|	SMOV.M1		R15, R49
		SNOP		3
	[!R2]	SBR		.L134
		SNOP		6
	;; condjump to .L134 occurs
.LVL177:
.L135:
	.loc 1 258 0 discriminator 1
		SMOVIL		0, R24
	|	SMVAGA36.M1		R49:R48, AR2
		SMOVIH		0, R24
		SMOVIL		0, R25
	|	SMOV.M2		R24, R8
		SMOVIL		0, R26
.LVL178:
.L132:
	.loc 1 203 0 discriminator 2
		SMVAAA.M2		AR2, OR9
	|	SMOV.M1		R25, R44
		SMOV.M1		R26, R45
	|	SMVAAA.M2		AR0, OR8
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M2		R45:R44,OR9,AR12
	|	SADD.M1		8,R25,R12
		SADDA.M2		R45:R44,OR8,AR10
	|	SLTU		R12, R25, R19
	|	SMOV.M1		R12, R25
	.loc 1 287 0 discriminator 2
		SLDW		*+AR12[1], R54
	|	SADD.M1		R26,R19,R26
	|	SEQ		R12, R11, R0
	.loc 1 285 0 discriminator 2
		SLDW		*+AR10[1], R39
	|[R0]	SEQ		R26, R1, R0
	.loc 1 286 0 discriminator 2
		SLDW		*AR12, R45
	.loc 1 284 0 discriminator 2
		SLDW		*AR10, R36
		SNOP		2
.LVL179:
	.loc 1 287 0 discriminator 2
		SXOR		R9, R54, R20
.LVL180:
	.loc 1 288 0 discriminator 2
		SFMULS32.M2		R39, R20, R60
	.loc 1 289 0 discriminator 2
		SFMULS32.M1		R39, R45, R10
		SNOP		2
	.loc 1 203 0 discriminator 2
		SXOR		R9, R60, R22
	.loc 1 289 0 discriminator 2
		SFMULAS32.M1	R36, R20, R10, R10
	|	SFMULAS32.M2	R36, R45, R22, R22
	.loc 1 288 0 discriminator 2
		SNOP		1
	.loc 1 282 0 discriminator 2
	[!R0]	SBR		.L132
		SNOP		3
	.loc 1 289 0 discriminator 2
		SFADDS32.M1		R24, R10, R24
	|	SFADDS32.M2		R8, R22, R8
	.loc 1 288 0 discriminator 2
		SNOP		2
.LVL181:
	.loc 1 282 0 discriminator 2
	;; condjump to .L132 occurs
		SADD.M1		8,R46,R28
	|	SMVAGA36.M2		R47:R46, AR10
		SLTU		R28, R46, R27
	|	SADD.M1		R48,R11,R29
		SADD.M2		R47,R27,R47
	|	SEQ		R28, R16, R2
	|	SADD.M1		R49,R13,R49
	|	SSTW		R8, *-AR10[1]
	.loc 1 278 0
	[R2]	SEQ		R47, R41, R2
	|	SMOV.M2		R28, R46
	|	SSTW		R24, *AR10
	[!R2]	SBR		.L135
	|	SLTU		R29, R48, R59
	|	SMOV.M2		R29, R48
		SADD.M2		R49,R59,R49
		SNOP		5
	;; condjump to .L135 occurs
		SMOVIL		0, R57
		SMOVIL		0, R58
.LVL182:
.L133:
	.loc 1 203 0 discriminator 2
		SMVAGA36.M2		R33:R32, OR14
	|	SMOV.M1		R57, R44
		SMOV.M1		R58, R45
	|	SMVAAA.M2		AR0, OR11
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M2		R45:R44,OR14,AR12
	|	SADD.M1		8,R57,R30
		SADDA.M2		R45:R44,OR11,AR10
	|	SLTU		R30, R57, R48
	|	SMOV.M1		R30, R57
	.loc 1 297 0 discriminator 2
		SLDW		*AR12, R56
	|	SADD.M1		R58,R48,R58
	|	SEQ		R30, R11, R0
	.loc 1 295 0 discriminator 2
	[R0]	SEQ		R58, R1, R0
		SNOP		4
	.loc 1 297 0 discriminator 2
		SSTW		R56, *AR10
		SNOP		2
	.loc 1 295 0 discriminator 2
	[!R0]	SBR		.L133
	|	SLDW		*+AR12[1], R37
	.loc 1 298 0 discriminator 2
		SNOP		5
		SSTW		R37, *+AR10[1]
	;; condjump to .L133 occurs
.LVL183:
.L134:
	.loc 1 276 0
		SLDW		*+AR15[33], R42
	|	SADD.M2		1,R18,R18
	|	SADD.M1		R50,R11,R46
.LVL184:
		SLTU		R46, R50, R44
	|	SADD.M2		R51,R13,R51
	|	SMOV.M1		R46, R50
		SADD.M2		R51,R44,R51
		SNOP		3
		SEQ		R42, R18, R2
	[!R2]	SBR		.L131
		SNOP		6
	;; condjump to .L131 occurs
.LVL185:
.L130:
	.loc 1 303 0
		SLDDW		*+AR15[30], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[34], R63:R62
		SLDDW		*+AR15[24], R31:R30
		SLDDW		*+AR15[25], R33:R32
		SLDDW		*+AR15[26], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[31], R7:R6
		SLDDW		*+AR15[27], R37:R36
		SLDDW		*+AR15[28], R39:R38
		SLDDW		*+AR15[29], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[32], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[33], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[35], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		288, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL186:
.L163:
	.loc 1 212 0
		SADD.M2		1,R21,R21
	|	SADD.M1		8,R42,R20
	|	SSTW		R53, *-AR12[1]
.LVL187:
		SEQ		R40, R21, R2
	|	SSTW		R50, *AR12
	[!R2]	SBR		.L119
	|	SLTU		R20, R42, R22
	|	SMOV.M2		R20, R42
		SADD.M2		R43,R22,R43
		SNOP		5
	;; condjump to .L119 occurs
		SBR		.L120
		SNOP		6
	;; jump to .L120 occurs
	.cfi_endproc
.LFE2:
	.size	DSPF_sp_qrd_inverse_cmplx_cn, .-DSPF_sp_qrd_inverse_cmplx_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x77f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0x80
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x143
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x187
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x143
	.4byte	0x31
	.4byte	.LLST1
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x143
	.4byte	0x31
	.4byte	.LLST2
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x143
	.4byte	0x31
	.4byte	.LLST3
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x143
	.4byte	0x31
	.4byte	.LLST4
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x143
	.4byte	0x187
	.4byte	.LLST5
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x143
	.4byte	0x187
	.4byte	.LLST6
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x145
	.4byte	0x31
	.4byte	.LLST7
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x145
	.4byte	0x31
	.4byte	.LLST8
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x145
	.4byte	0x31
	.4byte	.LLST9
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x146
	.4byte	0x31
	.4byte	.LLST10
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x146
	.4byte	0x31
	.4byte	.LLST11
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x146
	.4byte	0x31
	.4byte	.LLST12
	.uleb128 0x7
	.llong	.LVL6
	.4byte	0x160
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x30
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x31
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.llong	.LVL9
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x34
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x35
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x31
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.byte	0x1
	.4byte	0x1fc
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x131
	.4byte	0x31
	.uleb128 0xc
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x131
	.4byte	0x31
	.uleb128 0xc
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x131
	.4byte	0x187
	.uleb128 0xc
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x131
	.4byte	0x187
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x133
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x133
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x134
	.4byte	0x31
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x134
	.4byte	0x31
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x3f
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x441
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa
	.4byte	0x441
	.4byte	.LLST14
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.4byte	0x441
	.4byte	.LLST15
	.uleb128 0x10
	.string	"A"
	.byte	0x1
	.byte	0xa
	.4byte	0x187
	.4byte	.LLST16
	.uleb128 0x10
	.string	"Q"
	.byte	0x1
	.byte	0xa
	.4byte	0x187
	.4byte	.LLST17
	.uleb128 0x10
	.string	"R"
	.byte	0x1
	.byte	0xa
	.4byte	0x187
	.4byte	.LLST18
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0xa
	.4byte	0x187
	.4byte	.LLST19
	.uleb128 0x11
	.string	"row"
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST20
	.uleb128 0x11
	.string	"col"
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST21
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST22
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.uleb128 0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST23
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc
	.4byte	0x3f
	.4byte	.LLST25
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST26
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST27
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST28
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST29
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST30
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST31
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST32
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd
	.4byte	0x31
	.4byte	.LLST33
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe
	.4byte	0x31
	.4byte	.LLST34
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xe
	.4byte	0x31
	.4byte	.LLST35
	.uleb128 0x11
	.string	"sum"
	.byte	0x1
	.byte	0xf
	.4byte	0x31
	.4byte	.LLST36
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf
	.4byte	0x31
	.4byte	.LLST37
	.uleb128 0x14
	.4byte	0x18d
	.llong	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x48
	.4byte	0x3ff
	.uleb128 0x15
	.4byte	0x1bf
	.4byte	.LLST38
	.uleb128 0x15
	.4byte	0x1b3
	.4byte	.LLST39
	.uleb128 0x15
	.4byte	0x1a7
	.4byte	.LLST40
	.uleb128 0x15
	.4byte	0x19b
	.4byte	.LLST41
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x17
	.4byte	0x1cb
	.uleb128 0x17
	.4byte	0x1d7
	.uleb128 0x18
	.4byte	0x1e3
	.4byte	.LLST42
	.uleb128 0x18
	.4byte	0x1ef
	.4byte	.LLST43
	.uleb128 0x9
	.llong	.LVL61
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x38
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.llong	.LVL28
	.4byte	0x425
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL29
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x3f
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.4byte	0x3f
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST44
	.byte	0x1
	.4byte	0x5e0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x95
	.4byte	0x441
	.4byte	.LLST45
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x95
	.4byte	0x441
	.4byte	.LLST46
	.uleb128 0x10
	.string	"Q"
	.byte	0x1
	.byte	0x95
	.4byte	0x187
	.4byte	.LLST47
	.uleb128 0x10
	.string	"R"
	.byte	0x1
	.byte	0x95
	.4byte	0x187
	.4byte	.LLST48
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x95
	.4byte	0x187
	.4byte	.LLST49
	.uleb128 0x10
	.string	"y"
	.byte	0x1
	.byte	0x95
	.4byte	0x187
	.4byte	.LLST50
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x95
	.4byte	0x187
	.4byte	.LLST51
	.uleb128 0x11
	.string	"row"
	.byte	0x1
	.byte	0x97
	.4byte	0x5e0
	.4byte	.LLST52
	.uleb128 0x11
	.string	"col"
	.byte	0x1
	.byte	0x97
	.4byte	0x5e0
	.4byte	.LLST53
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x97
	.4byte	0x5e0
	.4byte	.LLST54
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST55
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST56
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST57
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST58
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST59
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST60
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST61
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x98
	.4byte	0x31
	.4byte	.LLST62
	.uleb128 0x7
	.llong	.LVL111
	.4byte	0x58f
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL125
	.4byte	0x5b9
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x9
	.llong	.LVL132
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF38
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.4byte	0x3f
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST63
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xcb
	.4byte	0x441
	.4byte	.LLST64
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xcb
	.4byte	0x441
	.4byte	.LLST65
	.uleb128 0x10
	.string	"Q"
	.byte	0x1
	.byte	0xcb
	.4byte	0x187
	.4byte	.LLST66
	.uleb128 0x10
	.string	"R"
	.byte	0x1
	.byte	0xcb
	.4byte	0x187
	.4byte	.LLST67
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xcb
	.4byte	0x187
	.4byte	.LLST68
	.uleb128 0x11
	.string	"row"
	.byte	0x1
	.byte	0xcd
	.4byte	0x3f
	.4byte	.LLST69
	.uleb128 0x11
	.string	"col"
	.byte	0x1
	.byte	0xcd
	.4byte	0x3f
	.4byte	.LLST70
	.uleb128 0x11
	.string	"k"
	.byte	0x1
	.byte	0xcd
	.4byte	0x3f
	.4byte	.LLST71
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST72
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST73
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST74
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST75
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST76
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0xce
	.4byte	0x31
	.4byte	.LLST77
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0xcf
	.4byte	0x31
	.4byte	.LLST78
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xcf
	.4byte	0x31
	.4byte	.LLST79
	.uleb128 0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xcf
	.4byte	0x31
	.4byte	.LLST80
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xcf
	.4byte	0x31
	.4byte	.LLST81
	.uleb128 0x7
	.llong	.LVL164
	.4byte	0x72e
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0xf5
	.uleb128 0x36
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xf5
	.uleb128 0x35
	.uleb128 0x31
	.byte	0
	.uleb128 0x7
	.llong	.LVL165
	.4byte	0x74b
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0xf5
	.uleb128 0x36
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xf5
	.uleb128 0x35
	.uleb128 0x31
	.byte	0
	.uleb128 0x7
	.llong	.LVL169
	.4byte	0x768
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0xf5
	.uleb128 0x36
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xf5
	.uleb128 0x35
	.uleb128 0x31
	.byte	0
	.uleb128 0x9
	.llong	.LVL170
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0xf5
	.uleb128 0x36
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xf5
	.uleb128 0x35
	.uleb128 0x31
	.byte	0
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB4
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE4
	.2byte	0x3
	.byte	0x7f
	.sleb128 64
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL1
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL7
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL2-1
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL8
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL2-1
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL15
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL2-1
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LVL20
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL20
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LVL19
	.2byte	0x1
	.byte	0x58
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL12
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x2e
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.llong	.LVL12
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL12
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x32
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.llong	.LVL12
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL5
	.llong	.LVL12
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x2e
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x32
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1b
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x30
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.llong	.LVL10
	.llong	.LVL14-1
	.2byte	0x1
	.byte	0x61
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL9
	.llong	.LVL11
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.llong	.LVL11
	.llong	.LVL14-1
	.2byte	0x1
	.byte	0x62
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL9
	.llong	.LVL13
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x30
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL13
	.llong	.LVL14-1
	.2byte	0x1
	.byte	0x63
	.llong	0
	.llong	0
.LLST13:
	.llong	.LFB0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE0
	.2byte	0x3
	.byte	0x7f
	.sleb128 216
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL23
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL22
	.llong	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL21
	.llong	.LVL25
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL25
	.llong	.LVL28-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.llong	.LVL28-1
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL21
	.llong	.LVL24
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL24
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL47
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL52
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL21
	.llong	.LVL27
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL27
	.llong	.LVL37
	.2byte	0x1
	.byte	0x58
	.llong	.LVL37
	.llong	.LVL98
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	.LVL98
	.llong	.LFE0
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL21
	.llong	.LVL26
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL26
	.llong	.LVL28-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5c
	.llong	.LVL28-1
	.llong	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL37
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL38
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	.LVL39
	.llong	.LVL42
	.2byte	0x4
	.byte	0x92
	.uleb128 0x40
	.sleb128 -1
	.byte	0x9f
	.llong	.LVL42
	.llong	.LVL44
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	.LVL46
	.llong	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL52
	.llong	.LVL53-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL97
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL34
	.llong	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL44
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL45
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL48
	.llong	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL81
	.llong	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL92
	.llong	.LVL94
	.2byte	0x1
	.byte	0x6d
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL33
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL34
	.llong	.LVL35
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL35
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL37
	.llong	.LVL98
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x4
	.byte	0x92
	.uleb128 0x21
	.sleb128 -2
	.byte	0x9f
	.llong	.LVL37
	.llong	.LVL98
	.2byte	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL67
	.llong	.LVL68
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL75
	.llong	.LVL78
	.2byte	0x1
	.byte	0x61
	.llong	.LVL78
	.llong	.LVL81
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL82
	.llong	.LVL83
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL87
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL90
	.llong	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	.LVL92
	.llong	.LVL94
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL67
	.llong	.LVL68
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL75
	.llong	.LVL77
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL78
	.llong	.LVL81
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL82
	.llong	.LVL83
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL87
	.llong	.LVL89
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL90
	.llong	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL92
	.llong	.LVL94
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL52
	.llong	.LVL53-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL69
	.llong	.LVL74
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL74
	.llong	.LVL76
	.2byte	0x2
	.byte	0x7a
	.sleb128 -4
	.llong	.LVL76
	.llong	.LVL78
	.2byte	0x1
	.byte	0x61
	.llong	.LVL79
	.llong	.LVL81
	.2byte	0x1
	.byte	0x62
	.llong	.LVL84
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL88
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL91
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL40
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	.LVL41
	.llong	.LVL43
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.llong	.LVL52
	.llong	.LVL53-1
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.llong	.LVL69
	.llong	.LVL70
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL76
	.llong	.LVL77
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL79
	.llong	.LVL80
	.2byte	0x1
	.byte	0x61
	.llong	.LVL85
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL88
	.llong	.LVL89
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL91
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL69
	.llong	.LVL72
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL76
	.llong	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL79
	.llong	.LVL81
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL85
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL88
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL91
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x1
	.byte	0x60
	.llong	.LVL71
	.llong	.LVL76
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.llong	.LVL76
	.llong	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	.LVL79
	.llong	.LVL81
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL86
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	.LVL88
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	.LVL91
	.llong	.LVL93
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL57
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL57
	.llong	.LVL60-1
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL65
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL66
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL37
	.llong	.LVL38
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL52
	.llong	.LVL53-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL54
	.llong	.LVL58
	.2byte	0x1
	.byte	0x69
	.llong	.LVL94
	.llong	.LVL95
	.2byte	0x1
	.byte	0x69
	.llong	.LVL95
	.llong	.LVL96
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	.LVL96
	.llong	.LVL98
	.2byte	0x1
	.byte	0x69
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL59
	.llong	.LVL94
	.2byte	0xa
	.byte	0xf2
	.llong	.Ldebug_info0+860
	.sleb128 0
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL59
	.llong	.LVL94
	.2byte	0xa
	.byte	0xf2
	.llong	.Ldebug_info0+845
	.sleb128 0
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL59
	.llong	.LVL60-1
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL59
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST42:
	.llong	.LVL61
	.llong	.LVL62
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x9f
	.llong	.LVL62
	.llong	.LVL64-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST43:
	.llong	.LVL61
	.llong	.LVL63
	.2byte	0x7
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0x1f
	.byte	0x9f
	.llong	0
	.llong	0
.LLST44:
	.llong	.LFB1
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE1
	.2byte	0x3
	.byte	0x7f
	.sleb128 104
	.llong	0
	.llong	0
.LLST45:
	.llong	.LVL99
	.llong	.LVL109
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL109
	.llong	.LVL110
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.llong	.LVL110
	.llong	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL133
	.llong	.LFE1
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST46:
	.llong	.LVL99
	.llong	.LVL100
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL100
	.llong	.LVL113
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL113
	.llong	.LVL114
	.2byte	0x5
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.llong	.LVL114
	.llong	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL133
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST47:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL101
	.llong	.LVL111-1
	.2byte	0x1
	.byte	0x50
	.llong	.LVL111-1
	.llong	.LVL133
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	.LVL133
	.llong	.LFE1
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST48:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL101
	.llong	.LVL126
	.2byte	0x1
	.byte	0x59
	.llong	.LVL126
	.llong	.LVL129
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	.LVL129
	.llong	.LFE1
	.2byte	0x1
	.byte	0x59
	.llong	0
	.llong	0
.LLST49:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL101
	.llong	.LVL111-1
	.2byte	0x1
	.byte	0x52
	.llong	.LVL111-1
	.llong	.LVL133
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	.LVL133
	.llong	.LFE1
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST50:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL101
	.llong	.LVL128
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL128
	.llong	.LVL129
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	.LVL129
	.llong	.LFE1
	.2byte	0x1
	.byte	0x5e
	.llong	0
	.llong	0
.LLST51:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL101
	.llong	.LVL117
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL117
	.llong	.LVL125-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL125-1
	.llong	.LVL127
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL127
	.llong	.LVL129
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	.LVL129
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST52:
	.llong	.LVL99
	.llong	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL112
	.llong	.LVL115
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST53:
	.llong	.LVL101
	.llong	.LVL102
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL116
	.llong	.LVL117
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	.LVL117
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL120
	.llong	.LVL125-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL129
	.llong	.LVL130
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	.LVL130
	.llong	.LVL132-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	0
	.llong	0
.LLST54:
	.llong	.LVL108
	.llong	.LVL115
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	.LVL134
	.llong	.LFE1
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST55:
	.llong	.LVL103
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL119
	.llong	.LVL121
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	0
	.llong	0
.LLST56:
	.llong	.LVL103
	.llong	.LVL106
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.llong	.LVL119
	.llong	.LVL122
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST57:
	.llong	.LVL103
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL119
	.llong	.LVL122
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST58:
	.llong	.LVL103
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL119
	.llong	.LVL122
	.2byte	0x1
	.byte	0x69
	.llong	0
	.llong	0
.LLST59:
	.llong	.LVL115
	.llong	.LVL116
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.llong	.LVL116
	.llong	.LVL133
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.llong	0
	.llong	0
.LLST60:
	.llong	.LVL115
	.llong	.LVL116
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL116
	.llong	.LVL133
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.llong	0
	.llong	0
.LLST61:
	.llong	.LVL101
	.llong	.LVL102
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL104
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL115
	.llong	.LVL117
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL120
	.llong	.LVL125-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	.LVL129
	.llong	.LVL133
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST62:
	.llong	.LVL101
	.llong	.LVL102
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL105
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL115
	.llong	.LVL117
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL120
	.llong	.LVL125-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2a
	.llong	.LVL129
	.llong	.LVL133
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST63:
	.llong	.LFB2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE2
	.2byte	0x3
	.byte	0x7f
	.sleb128 288
	.llong	0
	.llong	0
.LLST64:
	.llong	.LVL135
	.llong	.LVL136
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL136
	.llong	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.llong	0
	.llong	0
.LLST65:
	.llong	.LVL135
	.llong	.LVL137
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL137
	.llong	.LVL175
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL175
	.llong	.LVL186
	.2byte	0x8
	.byte	0x91
	.sleb128 -148
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.llong	.LVL186
	.llong	.LFE2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST66:
	.llong	.LVL135
	.llong	.LVL138
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL138
	.llong	.LFE2
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.llong	0
	.llong	0
.LLST67:
	.llong	.LVL135
	.llong	.LVL139
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL139
	.llong	.LVL148
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.llong	.LVL148
	.llong	.LVL186
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	.LVL186
	.llong	.LFE2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.llong	0
	.llong	0
.LLST68:
	.llong	.LVL135
	.llong	.LVL147
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL147
	.llong	.LVL186
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.llong	.LVL186
	.llong	.LFE2
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST69:
	.llong	.LVL135
	.llong	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL144
	.llong	.LVL145
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL149
	.llong	.LVL150
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL150
	.llong	.LVL152-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL157
	.llong	.LVL159
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL160
	.llong	.LVL161
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL161
	.llong	.LVL173
	.2byte	0x3
	.byte	0x91
	.sleb128 -164
	.llong	.LVL173
	.llong	.LVL174
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.llong	.LVL174
	.llong	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL184
	.llong	.LVL185
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	0
	.llong	0
.LLST70:
	.llong	.LVL140
	.llong	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL142
	.llong	.LVL143
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.llong	.LVL146
	.llong	.LVL148
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.llong	.LVL157
	.llong	.LVL158
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL158
	.llong	.LVL159
	.2byte	0x1
	.byte	0x61
	.llong	.LVL163
	.llong	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL176
	.llong	.LVL177
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL187
	.llong	.LFE2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.llong	0
	.llong	0
.LLST71:
	.llong	.LVL152
	.llong	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL177
	.llong	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST72:
	.llong	.LVL153
	.llong	.LVL156
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL163
	.llong	.LVL164-1
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	.LVL164
	.llong	.LVL165-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.llong	.LVL168
	.llong	.LVL169-1
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	.LVL169
	.llong	.LVL170-1
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.llong	.LVL179
	.llong	.LVL183
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST73:
	.llong	.LVL153
	.llong	.LVL156
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.llong	.LVL163
	.llong	.LVL164-1
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.llong	.LVL164
	.llong	.LVL165-1
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.llong	.LVL168
	.llong	.LVL169-1
	.2byte	0x2
	.byte	0x7e
	.sleb128 4
	.llong	.LVL169
	.llong	.LVL170-1
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.llong	.LVL179
	.llong	.LVL183
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST74:
	.llong	.LVL151
	.llong	.LVL152-1
	.2byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.llong	.LVL154
	.llong	.LVL155
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL155
	.llong	.LVL156
	.2byte	0x1
	.byte	0x69
	.llong	.LVL163
	.llong	.LVL164-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL164-1
	.llong	.LVL167
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	.LVL168
	.llong	.LVL171
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	.LVL179
	.llong	.LVL182
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.llong	0
	.llong	0
.LLST75:
	.llong	.LVL151
	.llong	.LVL152-1
	.2byte	0x3
	.byte	0x92
	.uleb128 0x48
	.sleb128 0
	.llong	.LVL154
	.llong	.LVL155
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL155
	.llong	.LVL156
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.llong	.LVL163
	.llong	.LVL172
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL180
	.llong	.LVL183
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	0
	.llong	0
.LLST76:
	.llong	.LVL162
	.llong	.LVL164-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL164-1
	.llong	.LVL186
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.llong	0
	.llong	0
.LLST77:
	.llong	.LVL162
	.llong	.LVL164-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.llong	.LVL164-1
	.llong	.LVL186
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.llong	0
	.llong	0
.LLST78:
	.llong	.LVL148
	.llong	.LVL186
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.llong	0
	.llong	0
.LLST79:
	.llong	.LVL148
	.llong	.LVL186
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.llong	0
	.llong	0
.LLST80:
	.llong	.LVL177
	.llong	.LVL178
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL181
	.llong	.LVL183
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST81:
	.llong	.LVL177
	.llong	.LVL178
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL181
	.llong	.LVL183
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
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
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB8
	.llong	.LBE8
	.llong	.LBB9
	.llong	.LBE9
	.llong	0
	.llong	0
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
	.llong	0
	.llong	0
	.llong	.LFB4
	.llong	.LFE4
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
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"factor_real"
.LASF18:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver_cmplx/Debug"
.LASF23:
	.string	"Ncols2"
.LASF27:
	.string	"ximag"
.LASF8:
	.string	"z_real"
.LASF36:
	.string	"DSPF_sp_qrd_solver_cmplx_cn"
.LASF31:
	.string	"zimag"
.LASF11:
	.string	"y_mag"
.LASF5:
	.string	"x_imag"
.LASF42:
	.string	"complex_sp_div_cn"
.LASF0:
	.string	"float"
.LASF3:
	.string	"long long unsigned int"
.LASF19:
	.string	"Nrows"
.LASF13:
	.string	"x_angle"
.LASF37:
	.string	"loop_cnt"
.LASF29:
	.string	"yimag"
.LASF41:
	.string	"factor_imag"
.LASF14:
	.string	"y_angle"
.LASF4:
	.string	"x_real"
.LASF34:
	.string	"alpha"
.LASF22:
	.string	"Nrows2"
.LASF1:
	.string	"double"
.LASF12:
	.string	"z_mag"
.LASF15:
	.string	"z_angle"
.LASF32:
	.string	"scale_real"
.LASF28:
	.string	"yreal"
.LASF17:
	.string	"../version_trival.c"
.LASF7:
	.string	"y_imag"
.LASF21:
	.string	"loop_count"
.LASF2:
	.string	"char"
.LASF26:
	.string	"xreal"
.LASF33:
	.string	"scale_imag"
.LASF35:
	.string	"DSPF_sp_qrd_cmplx_cn"
.LASF25:
	.string	"sum_imag"
.LASF16:
	.string	"GNU C 4.7.0"
.LASF6:
	.string	"y_real"
.LASF30:
	.string	"zreal"
.LASF44:
	.string	"DSPF_sp_qrd_inverse_cmplx_cn"
.LASF38:
	.string	"short int"
.LASF20:
	.string	"Ncols"
.LASF39:
	.string	"inv_A"
.LASF24:
	.string	"sum_real"
.LASF9:
	.string	"z_imag"
.LASF10:
	.string	"x_mag"
.LASF43:
	.string	"complex_sp_inv_cn"

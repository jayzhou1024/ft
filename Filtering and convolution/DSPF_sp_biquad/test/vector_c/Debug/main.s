	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.getTime_vc,"ax",@progbits
	.align	2
	.global	getTime_vc
	.type	getTime_vc, @function
getTime_vc:
.LFB4:
	.file 1 "../main.c"
	.loc 1 136 0
	.cfi_startproc
.LVL0:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, OR11
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -48
	.cfi_offset 49, -44
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R15:R14, OR12
	|	SSTDW		R33:R32, *+AR15[2]
		SMVAAGL.M1		OR11, R33:R32
	|	SMVAGA36.M2		R17:R16, AR14
		SNOP		1
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 46, -56
	.cfi_offset 47, -52
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMVAAGL.M1		OR12, R31:R30
	|	SMVAAGH.M2		OR11, R33:R32
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL1:
	.cfi_offset 50, -40
	.cfi_offset 51, -36
	.loc 1 138 0
		SBR		GetTimerCount
	|	SMVAAGH.M1		OR12, R31:R30
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 136 0
		SSTDW		R7:R6, *+AR15[5]
	|	SMOVIL		.L2, R62
	.cfi_offset 88, -24
		SMOV.M1		R20, R35
	|	SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R19:R18, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 138 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL2:
.L2:
	.loc 1 139 0
		SMVAGA36.M1		R33:R32, OR13
	|	SMVAGA36.M2		R31:R30, OR14
		SMVAAGL.M1		AR14, R17:R16
	|	SMVAAGL.M2		AR8, R19:R18
		SMVAAGL.M1		OR13, R13:R12
	|	SMVAAGL.M2		OR14, R15:R14
		SMVAAGH.M1		AR14, R17:R16
	|	SMVAAGH.M2		AR8, R19:R18
		SBR		DSPF_sp_biquad_vc
	|	SMVAAGH.M1		OR13, R13:R12
	|	SMVAAGH.M2		OR14, R15:R14
		SMOVIL		.L3, R62
		SMOV.M2		R35, R20
	|	SMOV.M1		R10, R34
	|	SMOVIH		.L3, R62
.LVL3:
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH4.L		.L3, R63
.LVL4:
		SNOP		1
		SMVAAGH.M2		OR8, R11:R10
	;; call to DSPF_sp_biquad_vc occurs
		SNOP		1
.LVL5:
.L3:
	.loc 1 140 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 142 0
.L4:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R34, R10, R10
.LVL7:
		SLDDW		*+AR15[6], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
		SNOP		1
.LVL8:
		SMVAGA36.M2		R7:R6, AR8
.LVL9:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[5], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[7], R7:R6
.LVL10:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL11:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE4:
	.size	getTime_vc, .-getTime_vc
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB5:
	.loc 1 144 0
	.cfi_startproc
.LVL12:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, OR11
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -48
	.cfi_offset 49, -44
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R15:R14, OR12
	|	SSTDW		R33:R32, *+AR15[2]
		SMVAAGL.M1		OR11, R33:R32
	|	SMVAGA36.M2		R17:R16, AR14
		SNOP		1
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 46, -56
	.cfi_offset 47, -52
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMVAAGL.M1		OR12, R31:R30
	|	SMVAAGH.M2		OR11, R33:R32
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL13:
	.cfi_offset 50, -40
	.cfi_offset 51, -36
	.loc 1 146 0
		SBR		GetTimerCount
	|	SMVAAGH.M1		OR12, R31:R30
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 144 0
		SSTDW		R7:R6, *+AR15[5]
	|	SMOVIL		.L6, R62
	.cfi_offset 88, -24
		SMOV.M1		R20, R35
	|	SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R19:R18, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 146 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL14:
.L6:
	.loc 1 147 0
		SMVAGA36.M1		R33:R32, OR13
	|	SMVAGA36.M2		R31:R30, OR14
		SMVAAGL.M1		AR14, R17:R16
	|	SMVAAGL.M2		AR8, R19:R18
		SMVAAGL.M1		OR13, R13:R12
	|	SMVAAGL.M2		OR14, R15:R14
		SMVAAGH.M1		AR14, R17:R16
	|	SMVAAGH.M2		AR8, R19:R18
		SBR		DSPF_sp_biquad_cn
	|	SMVAAGH.M1		OR13, R13:R12
	|	SMVAAGH.M2		OR14, R15:R14
		SMOVIL		.L7, R62
		SMOV.M2		R35, R20
	|	SMOV.M1		R10, R34
	|	SMOVIH		.L7, R62
.LVL15:
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH4.L		.L7, R63
.LVL16:
		SNOP		1
		SMVAAGH.M2		OR8, R11:R10
	;; call to DSPF_sp_biquad_cn occurs
		SNOP		1
.LVL17:
.L7:
	.loc 1 148 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL18:
	.loc 1 150 0
.L8:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R34, R10, R10
.LVL19:
		SLDDW		*+AR15[6], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
		SNOP		1
.LVL20:
		SMVAGA36.M2		R7:R6, AR8
.LVL21:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[5], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[7], R7:R6
.LVL22:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL23:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	getTime_cn, .-getTime_cn
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Result Failure, max_pct_diff=%f"
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"\tNX = %d\tnatC: %d\toptC: %d\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
.LVL24:
		SMOVIL		-128, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 128
		SMVAAGL.M1		OR8, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 69 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[15]
	.cfi_offset 56, -32
	.cfi_offset 57, -28
	.loc 1 64 0
		SMVAAGH.M2		OR8, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[12]
	.loc 1 69 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 64 0
		SSTDW		R7:R6, *+AR15[14]
	.cfi_offset 88, -16
	.cfi_offset 54, -40
	.cfi_offset 55, -36
		SMVAAGL.M2		AR8, R7:R6
	|	SSTDW		R39:R38, *+AR15[11]
	.loc 1 70 0
		SMOVIL		0, R43
	.loc 1 64 0
		SMVAAGH.M2		AR8, R7:R6
	|	SMOVIH		1075052544, R42
		SSTDW		R37:R36, *+AR15[10]
		SSTDW		R7:R6, *+AR15[13]
		SNOP		2
		SSTDW		R35:R34, *+AR15[9]
		SSTDW		R33:R32, *+AR15[8]
		SNOP		2
		SSTDW		R31:R30, *+AR15[7]
	.cfi_offset 52, -48
	.cfi_offset 53, -44
	.cfi_offset 8, -24
	.cfi_offset 50, -56
	.cfi_offset 51, -52
	.cfi_offset 48, -64
	.cfi_offset 49, -60
	.cfi_offset 46, -72
	.cfi_offset 47, -68
	.loc 1 69 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 70 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 71 0
		SSTW		R44, *+AR15[13]
		SNOP		2
.LVL25:
	.loc 1 72 0
		SLDW		*+AR15[13], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L23:
	.loc 1 73 0
		SLDW		*AR10, R42
		SNOP		5
.LVL26:
		SSTW		R42, *+AR15[13]
		SNOP		2
.LVL27:
	.loc 1 72 0
		SLDW		*+AR15[13], R1
		SNOP		5
	[R1]	SBR		.L23
		SNOP		6
	;; condjump to .L23 occurs
.L12:
.LVL28:
		SMOVIL.L		yAddr_DDR_vc-4, R42
		SMOVIH.L		yAddr_DDR_vc-4, R42
		SMOVIH4.L		yAddr_DDR_vc-4, R43
	.loc 1 84 0
		SMOVIL.L		b_cnAddr_DDR, R10
	|	SSTDW		R43:R42, *+AR15[5]
		SMOVIL		1074790400, R12
		SMOVIH.L		b_cnAddr_DDR, R10
		SBR		M7002_datatrans
	|	SMOVIH4.L		b_cnAddr_DDR, R11
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIH		1074790400, R12
		SMOVIL		0, R13
	;; call to M7002_datatrans occurs
		SMOVIL		12, R14
.LVL29:
.L32:
	.loc 1 86 0
		SMOVIL		0, R13
		SMOVIL.L		aAddr_DDR, R10
		SMOVIL		1074798592, R12
		SBR		M7002_datatrans
	|	SMOVIH.L		aAddr_DDR, R10
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIH4.L		aAddr_DDR, R11
		SMOVIH		1074798592, R12
	;; call to M7002_datatrans occurs
		SMOVIL		12, R14
.LVL30:
.L33:
	.loc 1 87 0
		SMOVIL		0, R13
		SMOVIL.L		deAddr_DDR, R10
		SMOVIL		1074802688, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		deAddr_DDR, R11
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SMOVIL		8, R14
		SMOVIH.L		deAddr_DDR, R10
	;; call to M7002_datatrans occurs
		SMOVIH		1074802688, R12
.LVL31:
.L34:
	.loc 1 89 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SMOVIL		0, R10
	.loc 1 95 0
		SMOVIL		0, R33
	.loc 1 89 0
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL.L		yAddr_DDR_cn-4, R34
.LVL32:
.L35:
	.loc 1 90 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	.loc 1 95 0
		SMOVIH		0, R33
		SMOVIL.L		.LC2, R36
	|	SMOV.M2		R33, R32
	.loc 1 90 0
	;; call to TimerStart occurs, with return value
		SMOVIL		1073741824, R41
.LVL33:
.L36:
	.loc 1 93 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
.LBB2:
	.loc 1 117 0
		SMOVIL		1120403456, R30
		SMOVIH.L		yAddr_DDR_cn-4, R34
.LBE2:
	.loc 1 93 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH4.L		yAddr_DDR_cn-4, R35
.LVL34:
.L37:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R38
	|	SMOVIL		0, R10
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	.loc 1 98 0
		SMOVIL		8, R31
		SMOVIH.L		.LC2, R36
	.loc 1 93 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH4.L		.LC2, R37
.LVL35:
.L38:
		SSUB.M2		R10, R38, R2
	|	SMOVIH		1073741824, R41
		SSTW		R2, *+AR15[9]
	|	SMOVIH		1120403456, R30
.LVL36:
.L11:
.LBB3:
	.loc 1 64 0
		SADD.M2		15,R31,R3
	|	SSHFLL		2, R31, R38
	.loc 1 99 0
		SSHFAR		4, R3, R8
.LVL37:
	.loc 1 100 0
		SSHFLL		6, R8, R43
		SSHFAR		31, R3, R9
	|	SADD.M2		8,R43,R39
		SSHFLR		26, R8, R11
	|	SMOV.M2		R39, R10
		SSHFLL		6, R9, R12
		SBR		vmalloc
	|	SLTU		R39, R43, R14
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SOR		R12, R11, R13
		SADD.M2		R13,R14,R40
	;; call to vmalloc occurs, with return value
		SMOV.M2		R40, R11
.LVL38:
.L39:
	.loc 1 101 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SMOV.M1		R39, R10
.LVL39:
		SMOV.M1		R40, R11
	|	SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to vmalloc occurs, with return value
		SNOP		3
.LVL40:
.L40:
	.loc 1 102 0
		SBR		M7002_datatrans
	|	SMOV.M1		R38, R14
	|	SMVAAGL.M2		AR8, R13:R12
	.loc 1 101 0
		SMVAGA36.M1		R11:R10, OR8
	|	SMOVIL		.L41, R62
.LVL41:
	.loc 1 102 0
		SMVAAGH.M1		AR8, R13:R12
	|	SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SMOVIH4.L		xAddr_DDR, R11
		SMOVIL.L		xAddr_DDR, R10
.LVL42:
	;; call to M7002_datatrans occurs
		SMOVIH.L		xAddr_DDR, R10
.LVL43:
.L41:
	.loc 1 104 0
		SMOVIL.L		yAddr_DDR_cn, R10
		SMOVIL		0, R12
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
		SMOVIL		0, R15
		SMOVIH.L		yAddr_DDR_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		yAddr_DDR_cn, R11
.LVL44:
.L42:
	.loc 1 105 0
		SMOVIL		0, R15
		SMOVIL.L		yAddr_DDR_vc, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
		SMOVIL		0, R12
		SMOVIH.L		yAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		yAddr_DDR_vc, R11
.LVL45:
.L43:
	.loc 1 107 0
		SBR		M7002_datatrans
	|	SMOVIH4.L		yAddr_DDR_vc, R11
	|	SMOV.M1		R38, R14
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		.L44, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
		SMOVIL.L		yAddr_DDR_vc, R10
		SMOVIH.L		yAddr_DDR_vc, R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL46:
.L44:
	.loc 1 109 0
		SMOVIL.L		b_cnAddr_DDR, R12
	|	SMOV.M2		R31, R20
		SMOVIL.L		aAddr_DDR, R14
		SMOVIL.L		deAddr_DDR, R16
		SMOVIL.L		yAddr_DDR_cn, R18
		SMOVIL.L		xAddr_DDR, R10
		SMOVIH.L		b_cnAddr_DDR, R12
		SMOVIH4.L		b_cnAddr_DDR, R13
		SMOVIH.L		aAddr_DDR, R14
		SMOVIH4.L		aAddr_DDR, R15
		SMOVIH.L		deAddr_DDR, R16
		SMOVIH4.L		deAddr_DDR, R17
		SBR		getTime_cn
	|	SMOVIH.L		yAddr_DDR_cn, R18
		SMOVIL		.L45, R62
		SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
		SMOVIH4.L		yAddr_DDR_cn, R19
		SMOVIH4.L		xAddr_DDR, R11
	;; call to getTime_cn occurs, with return value
		SMOVIH.L		xAddr_DDR, R10
.LVL47:
.L45:
	.loc 1 111 0
		SMOVIL		0, R15
	|	SMOV.M1		R10, R40
	|	SMVAAGL.M2		OR8, R19:R18
.LVL48:
		SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		1074798592, R14
	|	SMOV.M1		R31, R20
.LVL49:
		SMVAAGH.M1		OR8, R19:R18
	|	SMOVIL		1074790400, R12
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		1074802688, R16
		SMOVIH		1074798592, R14
		SBR		getTime_vc
	|	SMOVIH		1074790400, R12
		SMOVIL		.L46, R62
		SMOVIH		.L46, R62
		SMOVIH4.L		.L46, R63
		SMOVIL		0, R13
		SMOVIH		1074802688, R16
	;; call to getTime_vc occurs, with return value
		SMOVIL		0, R17
.LVL50:
.L46:
	.loc 1 114 0
		SBR		M7002_datatrans
	|	SMOVIH4.L		yAddr_DDR_vc, R13
	|	SMOV.M2		R38, R14
	|	SMOV.M1		R10, R39
.LVL51:
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L47, R62
.LVL52:
		SMOVIH		.L47, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH4.L		.L47, R63
		SMOVIL.L		yAddr_DDR_vc, R12
		SMOVIH.L		yAddr_DDR_vc, R12
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL53:
.L47:
		SLDDW		*+AR15[5], R43:R42
	|	SMOVIL		-2147483648, R55
	|	SMOV.M2		R34, R44
	|	SMOV.M1		R35, R45
	.loc 1 116 0
		SMOVIL		0, R49
	.loc 1 118 0
		SMOVIH		-2147483648, R55
		SNOP		3
.LVL54:
.L16:
		SADD.M2		4,R44,R46
	|	SADD.M1		4,R42,R10
		SLTU		R46, R44, R48
	|	SMOV.M2		R46, R44
	|	SADD.M1		1,R49,R49
		SADD.M2		R45,R48,R45
	|	SLTU		R10, R42, R15
	|	SMOV.M1		R10, R42
	.loc 1 64 0
		SMVAGA36.M2		R45:R44, AR10
	|	SADD.M1		R43,R15,R43
	|	SLT		R49, R31, R0
	.loc 1 116 0
		SNOP		1
	.loc 1 117 0
		SLDW		*AR10, R17
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 64 0
		SNOP		1
	.loc 1 117 0
		SLDW		*AR10, R50
		SNOP		3
		SFRCPS32.M2		R17, R18
		SFMULS32.M2		R17, R18, R19
		SFSUBS32.M1		R50, R17, R20
		SNOP		2
		SFSUBS32.M2		R19, R41, R21
		SNOP		2
		SFMULS32.M2		R18, R21, R22
		SNOP		3
		SFMULS32.M2		R17, R22, R23
		SNOP		3
		SFSUBS32.M2		R23, R41, R24
		SNOP		2
		SFMULS32.M2		R22, R24, R25
		SNOP		3
		SFMULS32.M2		R20, R25, R26
		SNOP		3
		SFMULS32.M2		R26, R30, R27
		SNOP		3
.LVL55:
	.loc 1 118 0
		SFCMPLS32.M2		R27, R32, R1
	[R1]	SBR		.L29
		SNOP		6
	;; condjump to .L29 occurs
.L13:
	.loc 1 119 0
		SFCMPGS32.M2		R27, R33, R2
	[!R2]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SMOV.M2		R27, R33
.LVL56:
.L15:
	.loc 1 116 0
	[R0]	SBR		.L16
		SNOP		6
	;; condjump to .L16 occurs
	.loc 1 121 0
		SFSPDP32T.M2		R33, R43:R42
	|	SMOVIL		1202590843, R44
		SMOVIL		1066695393, R45
		SMOVIH		1202590843, R44
		SMOVIH		1066695393, R45
		SFCMPGD.M2		R43:R42, R45:R44, R0
		SNOP		1
	[!R0]	SBR		.L27
		SNOP		6
	;; condjump to .L27 occurs
	.loc 1 122 0
		SSTDW		R43:R42, *+AR15[2]
	|	SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L48, R62
		SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL57:
.L48:
	.loc 1 126 0
		SLDW		*+AR15[9], R45
		SSTW		R31, *+AR15[4]
	|	SADD.M2		8,R31,R31
.LVL58:
		SSTDW		R37:R36, *+AR15[1]
		SNOP		1
		SBR		printf
		SMOVIL		.L49, R62
		SSUB.M2		R45, R40, R28
	|	SSUB.M1		R45, R39, R29
	|	SMOVIH		.L49, R62
		SSTW		R28, *+AR15[5]
	|	SMOVIH4.L		.L49, R63
		SSTW		R29, *+AR15[6]
	;; call to printf occurs, with return value
		SNOP		2
.LVL59:
.L49:
	.loc 1 127 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L50, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
	;; call to vfree occurs
		SNOP		3
.LVL60:
.L50:
	.loc 1 128 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L51, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L51, R62
		SMOVIH4.L		.L51, R63
	;; call to vfree occurs
		SNOP		3
.LVL61:
.L51:
.LBE3:
	.loc 1 98 0
		SMOVIL		136, R51
		SEQ		R51, R31, R1
	[!R1]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
.LVL62:
.L30:
	.loc 1 133 0
		SLDDW		*+AR15[13], R7:R6
		SLDDW		*+AR15[15], R63:R62
		SLDDW		*+AR15[7], R31:R30
		SLDDW		*+AR15[8], R33:R32
		SLDDW		*+AR15[9], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL63:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[14], R7:R6
		SLDDW		*+AR15[10], R37:R36
		SLDDW		*+AR15[11], R39:R38
		SBR		R62
	|	SLDDW		*+AR15[12], R41:R40
		SNOP		2
.LVL64:
		SMVAGA36.M2		R7:R6, OR8
	|	SMOVIL		128, R6
.LVL65:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL66:
.L29:
		SBR		.L13
	|	SXOR		R55, R27, R27
.LBB4:
	.loc 1 118 0 discriminator 1
		SNOP		6
.LVL67:
	;; jump to .L13 occurs
.LVL68:
.L27:
	.loc 1 124 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SBR		printf
	|	SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L52, R62
		SMOVIH		.L52, R62
		SMOVIH4.L		.L52, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL69:
.L52:
	.loc 1 126 0
		SLDW		*+AR15[9], R45
		SSTW		R31, *+AR15[4]
	|	SADD.M2		8,R31,R31
.LVL70:
		SSTDW		R37:R36, *+AR15[1]
		SNOP		1
		SBR		printf
		SMOVIL		.L53, R62
		SSUB.M2		R45, R40, R28
	|	SSUB.M1		R45, R39, R29
	|	SMOVIH		.L53, R62
		SSTW		R28, *+AR15[5]
	|	SMOVIH4.L		.L53, R63
		SSTW		R29, *+AR15[6]
	;; call to printf occurs, with return value
		SNOP		2
.LVL71:
.L53:
	.loc 1 127 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L54, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
	;; call to vfree occurs
		SNOP		3
.LVL72:
.L54:
	.loc 1 128 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L55, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
	;; call to vfree occurs
		SNOP		3
.LVL73:
.L55:
.LBE4:
	.loc 1 98 0
		SMOVIL		136, R51
		SEQ		R51, R31, R1
	[!R1]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
		SBR		.L30
		SNOP		6
	;; jump to .L30 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.global	xAddr_DDR
	.section	.fardata,"aw",@progbits
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 512
xAddr_DDR:
	.long	-1063670059
	.long	1086327607
	.long	-1079012193
	.long	1090742336
	.long	-1060397520
	.long	-1063835000
	.long	-1058874652
	.long	-1058477433
	.long	1089231059
	.long	1070336813
	.long	1065306304
	.long	-1058850149
	.long	1088549019
	.long	1075591940
	.long	-1069627413
	.long	1049078978
	.long	-1074045156
	.long	-1056460593
	.long	-1062833117
	.long	-1057942676
	.long	-1060483956
	.long	-1062834641
	.long	-1076638754
	.long	-1055908785
	.long	1090576000
	.long	1091458296
	.long	-1103422846
	.long	-1101259968
	.long	-1068517349
	.long	1090520170
	.long	-1071162054
	.long	-1057434485
	.long	1085496447
	.long	-1072881052
	.long	-1062907572
	.long	-1074398174
	.long	-1056890253
	.long	-1058305665
	.long	1091400904
	.long	1091696268
	.long	1069582517
	.long	-1056121124
	.long	-1062617687
	.long	-1069812478
	.long	1087213681
	.long	-1055190490
	.long	-1055769730
	.long	-1059858260
	.long	1077861931
	.long	1083460966
	.long	1077747049
	.long	-1082440384
	.long	1064349568
	.long	-1065198899
	.long	1084004984
	.long	-1060695651
	.long	1081021076
	.long	-1060467320
	.long	-1071098121
	.long	1075890864
	.long	1085495413
	.long	-1056568787
	.long	1091135308
	.long	1085306053
	.long	-1098432289
	.long	-1079757899
	.long	-1081590835
	.long	-1065885851
	.long	1043218941
	.long	1046256127
	.long	1087064095
	.long	1086107947
	.long	1077459496
	.long	-1071947450
	.long	1086810455
	.long	1059590432
	.long	-1069608514
	.long	1091336962
	.long	1089510008
	.long	1065379447
	.long	1075627172
	.long	1071568285
	.long	-1061483648
	.long	-1065457767
	.long	-1089151137
	.long	-1062437678
	.long	1088183180
	.long	-1060939311
	.long	-1062246149
	.long	-1059930319
	.long	-1062319237
	.long	-1079731072
	.long	-1066284544
	.long	1091009348
	.long	-1078809785
	.long	-1060522061
	.long	1090621400
	.long	1092191484
	.long	-1080263128
	.long	-1057430981
	.long	-1063594322
	.long	-1075204772
	.long	1072885532
	.long	-1063768262
	.long	1073980321
	.long	1082600857
	.long	-1062071037
	.long	-1057695157
	.long	-1065213791
	.long	-1066928454
	.long	-1077796332
	.long	1042345982
	.long	-1056660852
	.long	-1063779605
	.long	1086367291
	.long	-1055480250
	.long	1091124156
	.long	1083402602
	.long	-1100396096
	.long	1070138925
	.long	-1062722697
	.long	-1085099617
	.long	1091842102
	.long	1064281409
	.long	1054371391
	.long	-1062484075
	.long	-1100783683
	.long	1075760131
	.global	b_cnAddr_DDR
	.align	3
	.type	b_cnAddr_DDR, @object
	.size	b_cnAddr_DDR, 12
b_cnAddr_DDR:
	.long	1032470410
	.long	1049247726
	.long	1053777876
	.global	aAddr_DDR
	.align	3
	.type	aAddr_DDR, @object
	.size	aAddr_DDR, 12
aAddr_DDR:
	.long	1065353216
	.long	-1094188519
	.long	1057540067
	.global	deAddr_DDR
	.section	.far,"aw",@nobits
	.align	3
	.type	deAddr_DDR, @object
	.size	deAddr_DDR, 8
deAddr_DDR:
	.zero	8
	.common	yAddr_DDR_vc,512,8
	.common	yAddr_DDR_cn,512,8
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x73f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0x40
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1b2
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x1bf
	.4byte	.LLST1
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x88
	.4byte	0x1c5
	.4byte	.LLST2
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x88
	.4byte	0x1c5
	.4byte	.LLST3
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x88
	.4byte	0x1c5
	.4byte	.LLST4
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0x88
	.4byte	0x1bf
	.4byte	.LLST5
	.uleb128 0x5
	.string	"nx"
	.byte	0x1
	.byte	0x88
	.4byte	0x1cb
	.4byte	.LLST6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x89
	.4byte	0x5b
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x89
	.4byte	0x5b
	.4byte	.LLST8
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5d
	.4byte	0x70
	.byte	0x1
	.4byte	0x13b
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.llong	.LVL2
	.4byte	0x14e
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL5
	.4byte	0x1a2
	.uleb128 0xb
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0xb
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xb
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xb
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
	.uleb128 0xc
	.llong	.LVL6
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.4byte	0x38
	.4byte	0x1bf
	.uleb128 0xe
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.4byte	0x1b2
	.uleb128 0xf
	.byte	0x8
	.4byte	0x38
	.uleb128 0x10
	.4byte	0x70
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x2ef
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x90
	.4byte	0x1c5
	.4byte	.LLST10
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x90
	.4byte	0x1c5
	.4byte	.LLST11
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x90
	.4byte	0x1c5
	.4byte	.LLST12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x90
	.4byte	0x1c5
	.4byte	.LLST13
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0x90
	.4byte	0x1c5
	.4byte	.LLST14
	.uleb128 0x5
	.string	"nx"
	.byte	0x1
	.byte	0x90
	.4byte	0x1cb
	.4byte	.LLST15
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x91
	.4byte	0x5b
	.4byte	.LLST16
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x91
	.4byte	0x5b
	.4byte	.LLST17
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5d
	.4byte	0x70
	.byte	0x1
	.4byte	0x278
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.llong	.LVL14
	.4byte	0x28b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL17
	.4byte	0x2df
	.uleb128 0xb
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0xb
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xb
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xb
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
	.uleb128 0xc
	.llong	.LVL18
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x40
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x683
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x42
	.4byte	0x683
	.4byte	0x40140004
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x43
	.4byte	0x683
	.4byte	0x40140000
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x44
	.4byte	0x689
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4c
	.4byte	0x1c5
	.4byte	0x40100000
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4e
	.4byte	0x1c5
	.4byte	0x40102000
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.4byte	0x1c5
	.4byte	0x40103000
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x59
	.4byte	0x70
	.byte	0x1
	.4byte	0x37d
	.uleb128 0x9
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5a
	.4byte	0x70
	.byte	0x1
	.4byte	0x390
	.uleb128 0x9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5c
	.4byte	0x5b
	.4byte	.LLST20
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5c
	.4byte	0x5b
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5d
	.4byte	0x5b
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5d
	.4byte	0x70
	.byte	0x1
	.4byte	0x3d0
	.uleb128 0x9
	.byte	0
	.uleb128 0x14
	.string	"nx"
	.byte	0x1
	.byte	0x5e
	.4byte	0x70
	.4byte	.LLST22
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0x70
	.4byte	.LLST23
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5f
	.4byte	0x38
	.4byte	.LLST24
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5f
	.4byte	0x38
	.4byte	.LLST25
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5fb
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.byte	0x63
	.4byte	0x70
	.4byte	.LLST26
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0x64
	.4byte	0x1bf
	.4byte	.LLST27
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x1
	.byte	0x65
	.4byte	0x1bf
	.4byte	.LLST28
	.uleb128 0xa
	.llong	.LVL43
	.4byte	0x45f
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.llong	.LVL44
	.4byte	0x472
	.uleb128 0xb
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL45
	.4byte	0x485
	.uleb128 0xb
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL46
	.4byte	0x4a6
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xb
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.llong	.LVL47
	.4byte	0x4bc
	.uleb128 0xb
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.llong	.LVL50
	.4byte	0x4eb
	.uleb128 0xb
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xb
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
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0xb
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
	.uleb128 0xa
	.llong	.LVL53
	.4byte	0x50c
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xb
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
	.uleb128 0xa
	.llong	.LVL57
	.4byte	0x524
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0xf5
	.uleb128 0x31
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0
	.uleb128 0xa
	.llong	.LVL59
	.4byte	0x55e
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x9
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0x91
	.sleb128 -92
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x9
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.byte	0x91
	.sleb128 -92
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 -8
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.llong	.LVL60
	.4byte	0x577
	.uleb128 0xb
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
	.uleb128 0xa
	.llong	.LVL61
	.4byte	0x591
	.uleb128 0xb
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
	.uleb128 0xa
	.llong	.LVL71
	.4byte	0x5cb
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x9
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0x91
	.sleb128 -92
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x9
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.byte	0x91
	.sleb128 -92
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 -8
	.uleb128 0xb
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.llong	.LVL72
	.4byte	0x5e4
	.uleb128 0xb
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
	.uleb128 0xc
	.llong	.LVL73
	.uleb128 0xb
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
	.uleb128 0xa
	.llong	.LVL29
	.4byte	0x60e
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xa
	.llong	.LVL30
	.4byte	0x621
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xa
	.llong	.LVL31
	.4byte	0x634
	.uleb128 0xb
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xa
	.llong	.LVL32
	.4byte	0x64d
	.uleb128 0xb
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL33
	.4byte	0x660
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.llong	.LVL34
	.4byte	0x673
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.llong	.LVL35
	.uleb128 0xb
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.4byte	0x70
	.uleb128 0x16
	.4byte	0x70
	.uleb128 0x17
	.4byte	0x38
	.4byte	0x69e
	.uleb128 0x18
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x15
	.4byte	0x68e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	yAddr_DDR_cn
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x16
	.4byte	0x68e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	yAddr_DDR_vc
	.uleb128 0x17
	.4byte	0x38
	.4byte	0x6da
	.uleb128 0x18
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x18
	.4byte	0x6ca
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	deAddr_DDR
	.uleb128 0x17
	.4byte	0x38
	.4byte	0x700
	.uleb128 0x18
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.4byte	.LASF41
	.byte	0x1
	.byte	0x19
	.4byte	0x6f0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	aAddr_DDR
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1a
	.4byte	0x6f0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	b_cnAddr_DDR
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1c
	.4byte	0x68e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
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
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL10
	.llong	.LFE4
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
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LVL11
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
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
	.llong	.LVL9
	.2byte	0x1
	.byte	0x58
	.llong	.LVL9
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
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL2-1
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL4
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST9:
	.llong	.LFB5
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE5
	.2byte	0x3
	.byte	0x7f
	.sleb128 64
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL22
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14-1
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14-1
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14-1
	.llong	.LVL23
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL23
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14-1
	.llong	.LVL21
	.2byte	0x1
	.byte	0x58
	.llong	.LVL21
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL14-1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL18
	.llong	.LVL19
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LFB3
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 128
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL51
	.llong	.LVL52
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL52
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL48
	.llong	.LVL49
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL49
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL66
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL61
	.llong	.LVL66
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL73
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL56
	.llong	.LVL57-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL68
	.llong	.LVL69-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL55
	.llong	.LVL57-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	.LVL66
	.llong	.LVL69-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL53
	.llong	.LVL61
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL66
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL37
	.llong	.LVL38-1
	.2byte	0x1
	.byte	0x68
	.llong	.LVL38-1
	.llong	.LVL58
	.2byte	0x6
	.byte	0x92
	.uleb128 0x2f
	.sleb128 15
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL58
	.llong	.LVL59-1
	.2byte	0xa
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL59-1
	.llong	.LVL62
	.2byte	0x6
	.byte	0x92
	.uleb128 0x2f
	.sleb128 7
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL66
	.llong	.LVL70
	.2byte	0x6
	.byte	0x92
	.uleb128 0x2f
	.sleb128 15
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL70
	.llong	.LVL71-1
	.2byte	0xa
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.uleb128 0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL71-1
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.uleb128 0x2f
	.sleb128 7
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL39
	.llong	.LVL63
	.2byte	0x1
	.byte	0x58
	.llong	.LVL66
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL41
	.llong	.LVL42
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL42
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL66
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
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
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LBB2
	.llong	.LBE2
	.llong	.LBB3
	.llong	.LBE3
	.llong	.LBB4
	.llong	.LBE4
	.llong	0
	.llong	0
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"getTime_vc"
.LASF17:
	.string	"getTime_cn"
.LASF37:
	.string	"/cygdrive/e/something/newtext/DSPF_sp_biquad/DSPF_sp_biquad/Debug"
.LASF33:
	.string	"xAddr"
.LASF32:
	.string	"len_vx"
.LASF30:
	.string	"pct_diff"
.LASF1:
	.string	"float"
.LASF15:
	.string	"time2"
.LASF13:
	.string	"delay"
.LASF3:
	.string	"unsigned char"
.LASF42:
	.string	"b_cnAddr_DDR"
.LASF31:
	.string	"max_pct_diff"
.LASF6:
	.string	"long unsigned int"
.LASF26:
	.string	"TimerStart"
.LASF4:
	.string	"short unsigned int"
.LASF34:
	.string	"yAddr"
.LASF0:
	.string	"double"
.LASF18:
	.string	"GetTimerCount"
.LASF24:
	.string	"deAddr"
.LASF44:
	.string	"main"
.LASF5:
	.string	"unsigned int"
.LASF27:
	.string	"time_vc"
.LASF2:
	.string	"long long unsigned int"
.LASF19:
	.string	"cache"
.LASF21:
	.string	"cache_ok"
.LASF22:
	.string	"b_cnAddr"
.LASF23:
	.string	"aAddr"
.LASF11:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF28:
	.string	"time_cn"
.LASF12:
	.string	"char"
.LASF35:
	.string	"GNU C 4.7.0"
.LASF43:
	.string	"xAddr_DDR"
.LASF36:
	.string	"../main.c"
.LASF8:
	.string	"short int"
.LASF14:
	.string	"time1"
.LASF41:
	.string	"aAddr_DDR"
.LASF20:
	.string	"cache1"
.LASF25:
	.string	"SetTimerPeriod"
.LASF10:
	.string	"long int"
.LASF40:
	.string	"deAddr_DDR"
.LASF7:
	.string	"signed char"
.LASF39:
	.string	"yAddr_DDR_vc"
.LASF29:
	.string	"c_time"
.LASF38:
	.string	"yAddr_DDR_cn"

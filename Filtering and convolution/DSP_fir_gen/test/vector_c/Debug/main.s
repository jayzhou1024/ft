	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB4:
	.file 1 "../main.c"
	.loc 1 110 0
	.cfi_startproc
.LVL0:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -52
	.cfi_offset 47, -48
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL.L		GetTimerCount, R30
	|	SSTW		R31, *+AR15[4]
	.loc 1 112 0
		SMOVIH.L		GetTimerCount, R30
	|	SMVAGA36.M1		R13:R12, AR14
		SMOVIH4.L		GetTimerCount, R31
	.loc 1 110 0
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R63:R62, *+AR15[6]
	.loc 1 112 0
		SMVCGC.L		R31:R30, BRReg
	.loc 1 110 0
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
		SSTW		R34, *+AR15[7]
		SSTDW		R7:R6, *+AR15[5]
	.cfi_offset 50, -36
	.cfi_offset 88, -24
	.loc 1 112 0
		SBR		R31:R30
	|	SMOV.M1		R16, R34
	|	SMOVIL		0, R10
	|	SMVAAGL.M2		AR8, R7:R6
.LVL1:
	.loc 1 110 0
		SMOVIL		.L2, R62
	.cfi_offset 49, -40
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
	|	SSTW		R33, *+AR15[6]
	|	SMOVIH		.L2, R62
		SSTW		R32, *+AR15[5]
	|	SMOVIH4.L		.L2, R63
		SMOV.M2		R18, R33
		SNOP		1
	.cfi_offset 48, -44
	.cfi_offset 8, -32
	.loc 1 112 0
	;; indirect call occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL2:
.L2:
	.loc 1 113 0
		SMOVIL.L		DSP_fir_gen_cn, R42
	|	SMOV.M1		R10, R32
	|	SMVAAGL.M2		AR14, R13:R12
.LVL3:
		SMOVIH.L		DSP_fir_gen_cn, R42
	|	SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
.LVL4:
		SMOVIH4.L		DSP_fir_gen_cn, R43
	|	SMVAAGH.M1		AR14, R13:R12
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	|	SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
	|	SMOV.M2		R34, R16
	|	SMOV.M1		R33, R18
		SMOVIL		.L3, R62
		SMOVIH		.L3, R62
		SMOVIH4.L		.L3, R63
	;; indirect call occurs
		SNOP		3
.LVL5:
.L3:
	.loc 1 114 0
		SMOVIL		0, R10
		SMVCGC.L		R31:R30, BRReg
		SNOP		1
		SBR		R31:R30
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 116 0
.L4:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R32, R10, R10
.LVL7:
		SLDDW		*+AR15[6], R63:R62
		SLDW		*+AR15[3], R30
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL8:
		SMVAGA36.M2		R7:R6, AR8
.LVL9:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[5], R7:R6
		SLDW		*+AR15[6], R33
.LVL10:
		SLDW		*+AR15[7], R34
		SNOP		3
.LVL11:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		1
.LVL12:
		SLDDW		*+AR15[7], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL13:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE4:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB5:
	.loc 1 119 0
	.cfi_startproc
.LVL14:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -52
	.cfi_offset 47, -48
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL.L		GetTimerCount, R30
	|	SSTW		R31, *+AR15[4]
	.loc 1 121 0
		SMOVIH.L		GetTimerCount, R30
	|	SMVAGA36.M1		R13:R12, AR14
		SMOVIH4.L		GetTimerCount, R31
	.loc 1 119 0
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R63:R62, *+AR15[6]
	.loc 1 121 0
		SMVCGC.L		R31:R30, BRReg
	.loc 1 119 0
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
		SSTW		R34, *+AR15[7]
		SSTDW		R7:R6, *+AR15[5]
	.cfi_offset 50, -36
	.cfi_offset 88, -24
	.loc 1 121 0
		SBR		R31:R30
	|	SMOV.M1		R16, R34
	|	SMOVIL		0, R10
	|	SMVAAGL.M2		AR8, R7:R6
.LVL15:
	.loc 1 119 0
		SMOVIL		.L6, R62
	.cfi_offset 49, -40
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
	|	SSTW		R33, *+AR15[6]
	|	SMOVIH		.L6, R62
		SSTW		R32, *+AR15[5]
	|	SMOVIH4.L		.L6, R63
		SMOV.M2		R18, R33
		SNOP		1
	.cfi_offset 48, -44
	.cfi_offset 8, -32
	.loc 1 121 0
	;; indirect call occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL16:
.L6:
	.loc 1 122 0
		SMOVIL.L		DSP_fir_gen_vc, R42
	|	SMOV.M1		R10, R32
	|	SMVAAGL.M2		AR14, R13:R12
.LVL17:
		SMOVIH.L		DSP_fir_gen_vc, R42
	|	SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
.LVL18:
		SMOVIH4.L		DSP_fir_gen_vc, R43
	|	SMVAAGH.M1		AR14, R13:R12
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	|	SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
	|	SMOV.M2		R34, R16
	|	SMOV.M1		R33, R18
		SMOVIL		.L7, R62
		SMOVIH		.L7, R62
		SMOVIH4.L		.L7, R63
	;; indirect call occurs
		SNOP		3
.LVL19:
.L7:
	.loc 1 123 0
		SMOVIL		0, R10
		SMVCGC.L		R31:R30, BRReg
		SNOP		1
		SBR		R31:R30
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL20:
	.loc 1 125 0
.L8:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R32, R10, R10
.LVL21:
		SLDDW		*+AR15[6], R63:R62
		SLDW		*+AR15[3], R30
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL22:
		SMVAGA36.M2		R7:R6, AR8
.LVL23:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[5], R7:R6
		SLDW		*+AR15[6], R33
.LVL24:
		SLDW		*+AR15[7], R34
		SNOP		3
.LVL25:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		1
.LVL26:
		SLDDW		*+AR15[7], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL27:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Result Failure (r_i)  "
.LC1:
	.string	"Result Successful (r_i)  "
.LC2:
	.string	"\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 53 0
	.cfi_startproc
.LVL28:
		SMOVIL		-176, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 176
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 57 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[20]
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 53 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[15]
	.loc 1 57 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 53 0
		SSTDW		R7:R6, *+AR15[21]
	.cfi_offset 14, -8
	.cfi_offset 54, -64
	.cfi_offset 55, -60
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[14]
	.loc 1 58 0
		SMOVIL		0, R43
	.loc 1 53 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIH		1075052544, R42
		SSTDW		R37:R36, *+AR15[13]
		SSTDW		R7:R6, *+AR15[19]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
	.cfi_offset 52, -72
	.cfi_offset 53, -68
	.cfi_offset 89, -24
	.cfi_offset 50, -80
	.cfi_offset 51, -76
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[12]
		SSTDW		R33:R32, *+AR15[11]
		SNOP		2
		SSTDW		R7:R6, *+AR15[18]
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.cfi_offset 88, -32
	.cfi_offset 46, -96
	.cfi_offset 47, -92
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[10]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[17]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[16]
	.cfi_offset 9, -40
	.cfi_offset 8, -48
	.loc 1 57 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 58 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 59 0
		SSTW		R44, *+AR15[19]
		SNOP		2
.LVL29:
	.loc 1 60 0
		SLDW		*+AR15[19], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L17:
	.loc 1 61 0
		SLDW		*AR10, R42
		SNOP		5
.LVL30:
		SSTW		R42, *+AR15[19]
		SNOP		2
.LVL31:
	.loc 1 60 0
		SLDW		*+AR15[19], R1
		SNOP		5
	[R1]	SBR		.L17
		SNOP		6
	;; condjump to .L17 occurs
.L12:
	.loc 1 65 0
		SMOVIL.L		SetTimerPeriod, R42
		SMOVIH.L		SetTimerPeriod, R42
		SMOVIH4.L		SetTimerPeriod, R43
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
	|	SMOVIL		-1, R12
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SMOVIL		0, R10
	.loc 1 69 0
		SMOVIL.L		GetTimerCount, R34
	.loc 1 65 0
	;; indirect call occurs, with return value
		SMOVIH.L		GetTimerCount, R34
.LVL32:
.L23:
	.loc 1 66 0
		SMOVIL.L		TimerStart, R46
		SMOVIH.L		TimerStart, R46
		SMOVIH4.L		TimerStart, R47
	|	SMOV.M2		R46, R42
		SMOV.M2		R47, R43
	|	SMOVIH4.L		GetTimerCount, R35
	.loc 1 69 0
		SMOVIL		8, R44
		SMOVIL		0, R45
	.loc 1 66 0
		SMVCGC.L		R47:R46, BRReg
	|	SSTDW		R45:R44, *+AR15[5]
	.loc 1 69 0
		SNOP		1
	.loc 1 66 0
		SBR		R43:R42
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIL.L		vmalloc, R40
		SMOVIL.L		memset, R38
	;; indirect call occurs, with return value
		SMOVIL.L		M7002_datatrans, R30
.LVL33:
.L24:
		SMOVIL.L		xAddr_DDR, R42
		SMOVIL.L		hAddr_DDR, R44
		SMOVIH.L		xAddr_DDR, R42
		SMOVIH4.L		xAddr_DDR, R43
		SMOVIH.L		hAddr_DDR, R44
	|	SMVAGA36.M2		R43:R42, AR9
		SMOVIH4.L		hAddr_DDR, R45
		SMVAGA36.M2		R45:R44, AR14
	|	SMVCGC.L		R35:R34, BRReg
	.loc 1 69 0
		SNOP		1
		SBR		R35:R34
	|	SMOVIL		0, R10
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SMOVIL.L		printf, R36
	.loc 1 72 0
		SMOVIL		4, R32
	.loc 1 69 0
	;; indirect call occurs, with return value
		SMOVIH.L		vmalloc, R40
.LVL34:
.L25:
		SMOVIL		0, R10
		SMVCGC.L		R35:R34, BRReg
		SNOP		1
		SBR		R35:R34
	|	SMOVIL.L		vfree, R34
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SMOVIH4.L		vmalloc, R41
		SMOVIH.L		memset, R38
	;; indirect call occurs, with return value
		SMOVIH4.L		memset, R39
.LVL35:
.L26:
		SMOVIL.L		.LC2, R46
		SMOVIH.L		.LC2, R46
		SMOVIH4.L		.LC2, R47
		SMVAGA36.M2		R47:R46, OR9
	|	SMOVIH.L		M7002_datatrans, R30
		SMOVIH4.L		M7002_datatrans, R31
		SMOVIH.L		printf, R36
		SMOVIH4.L		printf, R37
		SMOVIH.L		vfree, R34
		SMOVIH4.L		vfree, R35
.LVL36:
.L11:
	.loc 1 53 0 discriminator 1
		SADD.M2		15,R32,R2
	|	SSHFLL		1, R32, R3
	|	SADD.M1		14,R32,R43
		SSHFAR		4, R2, R8
	|	SSTW		R3, *+AR15[16]
		SSHFLL		1, R8, R9
	|	SSTW		R43, *+AR15[17]
		SSHFAR		31, R9, R10
		SSHFLR		27, R9, R11
		SSHFLL		5, R10, R12
		SOR		R12, R11, R13
		SSHFLL		6, R8, R14
	|	SSTW		R13, *+AR15[15]
		SSTW		R14, *+AR15[12]
	|	SMOVIL		4, R33
.LVL37:
.L15:
.LBB2:
	.loc 1 53 0 is_stmt 0
		SLDW		*+AR15[17], R47
	|	SMOVIL.L		vmalloc, R44
	.loc 1 77 0 is_stmt 1
		SMOVIH.L		vmalloc, R44
		SMOVIH4.L		vmalloc, R45
		SMVCGC.L		R45:R44, BRReg
		SNOP		2
	.loc 1 53 0
		SADD.M2		R33,R47,R15
	.loc 1 77 0
		SSHFAR		31, R15, R17
	.loc 1 74 0
		SSHFAR		4, R15, R16
.LVL38:
	.loc 1 77 0
		SBR		R41:R40
	|	SSHFLR		27, R16, R19
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SSHFLL		5, R17, R20
		SSHFLL		5, R16, R18
	;; indirect call occurs, with return value
		SOR		R20, R19, R11
	|	SMOV.M2		R18, R10
	|	SSTW		R18, *+AR15[9]
.LVL39:
.L27:
	.loc 1 82 0
		SMOVIH4.L		vmalloc, R47
	|	SMVAGA36.M2		R11:R10, AR8
	|	SLDW		*+AR15[12], R10
.LVL40:
		SMOVIL.L		vmalloc, R46
		SMOVIH.L		vmalloc, R46
	|	SLDW		*+AR15[15], R11
		SMVCGC.L		R47:R46, BRReg
		SNOP		1
		SBR		R41:R40
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL41:
.L28:
	.loc 1 85 0
		SMOVIL.L		memset, R44
	|	SMVAGA36.M2		R11:R10, OR8
.LVL42:
		SMOVIH.L		memset, R44
		SMOVIH4.L		memset, R45
		SMOVIL.L		rAddr_DDR_cn, R10
.LVL43:
		SMVCGC.L		R45:R44, BRReg
		SNOP		1
		SMOVIL		0, R12
		SBR		R39:R38
	|	SMOVIL		192, R14
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_cn, R10
	;; indirect call occurs, with return value
		SMOVIH4.L		rAddr_DDR_cn, R11
.LVL44:
.L29:
	.loc 1 86 0
		SMOVIH4.L		memset, R47
		SMOVIL.L		memset, R46
		SMOVIH.L		memset, R46
		SMOVIL.L		rAddr_DDR_vc, R10
		SMVCGC.L		R47:R46, BRReg
		SNOP		1
		SMOVIL		0, R15
		SBR		R39:R38
	|	SMOVIL		1024, R14
		SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; indirect call occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.LVL45:
.L30:
	.loc 1 88 0
		SLDW		*+AR15[9], R21
	|	SMVAAGL.M2		AR8, R13:R12
	|	SMOVIL.L		M7002_datatrans, R42
		SLDDW		*AR9, R11:R10
	|	SMOVIH.L		M7002_datatrans, R42
		SMOVIH4.L		M7002_datatrans, R43
	|	SMVAAGH.M2		AR8, R13:R12
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R31:R30
		SMOV.M2		R21, R14
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
	;; indirect call occurs
		SNOP		3
.LVL46:
.L31:
	.loc 1 89 0
		SLDW		*+AR15[12], R14
	|	SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL.L		M7002_datatrans, R44
		SMOVIH.L		M7002_datatrans, R44
		SMOVIH4.L		M7002_datatrans, R45
	|	SMVAAGH.M2		OR8, R13:R12
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMVCGC.L		R45:R44, BRReg
		SNOP		1
		SBR		R31:R30
	|	SMOVIH.L		rAddr_DDR_vc+32, R10
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIH4.L		rAddr_DDR_vc+32, R11
	;; indirect call occurs
		SNOP		2
.LVL47:
.L32:
	.loc 1 90 0
		SMOVIH4.L		M7002_datatrans, R47
	|	SLDDW		*AR14, R11:R10
		SMOVIL.L		M7002_datatrans, R46
		SMOVIH.L		M7002_datatrans, R46
		SMOVIL		1074790400, R12
		SMVCGC.L		R47:R46, BRReg
		SNOP		1
		SBR		R31:R30
	|	SMOVIH		1074790400, R12
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIL		0, R13
		SMOVIL		32, R14
	;; indirect call occurs
		SNOP		1
.LVL48:
.L33:
	.loc 1 92 0
		SMOVIL.L		get_time_cn, R42
	|	SLDDW		*AR14, R13:R12
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SMOVIH.L		get_time_cn, R42
	|	SLDDW		*AR9, R11:R10
		SMOVIH4.L		get_time_cn, R43
		SMOVIL.L		rAddr_DDR_cn+32, R14
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
	|	SMOVIH.L		rAddr_DDR_cn+32, R14
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R15
	;; indirect call occurs, with return value
		SNOP		2
.LVL49:
.L34:
	.loc 1 93 0
		SMOVIL.L		get_time_vc, R44
	|	SSTW		R10, *+AR15[13]
	|	SMVAAGL.M1		OR8, R15:R14
	|	SMVAAGL.M2		AR8, R11:R10
.LVL50:
		SMOVIH.L		get_time_vc, R44
		SMOVIH4.L		get_time_vc, R45
	|	SMVAAGH.M1		OR8, R15:R14
	|	SMVAAGH.M2		AR8, R11:R10
		SMOVIL		1074790400, R12
		SMVCGC.L		R45:R44, BRReg
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SNOP		1
		SBR		R45:R44
	|	SMOVIH		1074790400, R12
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SMOVIL		0, R13
	;; indirect call occurs, with return value
		SNOP		2
.LVL51:
.L35:
		SSTW		R10, *+AR15[14]
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL.L		M7002_datatrans, R46
.LVL52:
	.loc 1 95 0
		SMOVIH4.L		M7002_datatrans, R47
	|	SLDW		*+AR15[16], R14
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH.L		M7002_datatrans, R46
		SMOVIL.L		rAddr_DDR_vc+32, R12
		SMOVIH.L		rAddr_DDR_vc+32, R12
		SMOVIH4.L		rAddr_DDR_vc+32, R13
		SMVCGC.L		R47:R46, BRReg
		SNOP		1
		SBR		R31:R30
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	;; indirect call occurs
		SNOP		3
.LVL53:
.L36:
	.loc 1 97 0
		SMOVIL.L		memcmp, R42
	|	SLDDW		*+AR15[5], R15:R14
		SMOVIH.L		memcmp, R42
		SMOVIH4.L		memcmp, R43
		SMOVIL.L		rAddr_DDR_cn+32, R12
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
		SMOVIH4.L		rAddr_DDR_vc+32, R11
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R43:R42
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL54:
.L37:
		SMOV.M2		R10, R0
	|	SMOVIL.L		printf, R44
	[!R0]	SBR		.L13
	|	SMOVIH4.L		printf, R45
	.loc 1 98 0
		SMOVIH.L		printf, R44
		SMVCGC.L		R45:R44, BRReg
		SNOP		4
	.loc 1 97 0
	;; condjump to .L13 occurs
	.loc 1 98 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		R37:R36
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL55:
.L38:
	.loc 1 102 0
		SLDW		*+AR15[13], R45
	|	SMVAAGL.M2		OR9, R23:R22
	|	SMOVIL.L		printf, R42
		SLDW		*+AR15[14], R46
	|	SMOVIH.L		printf, R42
		SMVAAGH.M2		OR9, R23:R22
	|	SSTW		R33, *+AR15[5]
	|	SMOVIH4.L		printf, R43
	|	SADD.M1		4,R33,R33
.LVL56:
		SMVCGC.L		R43:R42, BRReg
		SNOP		3
		SSTDW		R23:R22, *+AR15[1]
		SBR		R37:R36
	|	SSTW		R45, *+AR15[6]
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SSTW		R46, *+AR15[7]
	|	SMOVIH4.L		.L39, R63
		SSTW		R32, *+AR15[4]
	;; indirect call occurs, with return value
		SNOP		2
.LVL57:
.L39:
	.loc 1 103 0
		SMOVIH4.L		vfree, R43
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL.L		vfree, R42
		SMOVIH.L		vfree, R42
	|	SMVAAGH.M2		AR8, R11:R10
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R35:R34
		SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; indirect call occurs
		SNOP		3
.LVL58:
.L40:
	.loc 1 104 0
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL.L		vfree, R44
		SMOVIH4.L		vfree, R45
		SMOVIH.L		vfree, R44
	|	SMVAAGH.M2		OR8, R11:R10
		SMVCGC.L		R45:R44, BRReg
		SNOP		1
		SBR		R35:R34
		SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
	;; indirect call occurs
		SNOP		3
.LVL59:
.L41:
.LBE2:
	.loc 1 73 0
		SMOVIL		20, R45
		SEQ		R45, R33, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.LVL60:
.L21:
		SLDW		*+AR15[10], R23
	|	SADD.M2		4,R32,R32
	|	SMOVIL		68, R28
.LVL61:
		SLDW		*+AR15[11], R27
	|	SEQ		R28, R32, R2
	.loc 1 72 0
		SNOP		2
	[!R2]	SBR		.L11
		SNOP		1
		SADD.M2		8,R23,R24
		SSTW		R24, *+AR15[10]
	|	SLTU		R24, R23, R26
		SADD.M2		R27,R26,R29
		SNOP		1
		SSTW		R29, *+AR15[11]
	;; condjump to .L11 occurs
	.loc 1 107 0
		SLDDW		*+AR15[16], R7:R6
		SLDDW		*+AR15[20], R63:R62
		SLDDW		*+AR15[10], R31:R30
		SLDDW		*+AR15[11], R33:R32
.LVL62:
		SLDDW		*+AR15[12], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL63:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[17], R7:R6
		SLDDW		*+AR15[13], R37:R36
		SLDDW		*+AR15[14], R39:R38
		SLDDW		*+AR15[15], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[18], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[19], R7:R6
.LVL64:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[21], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		176, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL65:
.L13:
.LBB3:
	.loc 1 101 0
		SMOVIL.L		.LC1, R46
		SMOVIH4.L		.LC1, R47
		SMOVIH.L		.LC1, R46
		SSTDW		R47:R46, *+AR15[1]
	|	SMOVIL.L		printf, R44
		SMOVIH.L		printf, R44
		SMOVIH4.L		printf, R45
		SMVCGC.L		R45:R44, BRReg
		SNOP		1
		SBR		R37:R36
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; indirect call occurs, with return value
		SNOP		3
.LVL66:
.L42:
	.loc 1 102 0
		SLDW		*+AR15[13], R45
	|	SMVAAGL.M2		OR9, R23:R22
	|	SMOVIL.L		printf, R42
		SLDW		*+AR15[14], R46
	|	SMOVIH.L		printf, R42
		SMVAAGH.M2		OR9, R23:R22
	|	SSTW		R33, *+AR15[5]
	|	SMOVIH4.L		printf, R43
	|	SADD.M1		4,R33,R33
.LVL67:
		SMVCGC.L		R43:R42, BRReg
		SNOP		3
		SSTDW		R23:R22, *+AR15[1]
		SBR		R37:R36
	|	SSTW		R45, *+AR15[6]
		SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SSTW		R46, *+AR15[7]
	|	SMOVIH4.L		.L43, R63
		SSTW		R32, *+AR15[4]
	;; indirect call occurs, with return value
		SNOP		2
.LVL68:
.L43:
	.loc 1 103 0
		SMOVIH4.L		vfree, R43
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL.L		vfree, R42
		SMOVIH.L		vfree, R42
	|	SMVAAGH.M2		AR8, R11:R10
		SMVCGC.L		R43:R42, BRReg
		SNOP		1
		SBR		R35:R34
		SMOVIL		.L44, R62
		SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
	;; indirect call occurs
		SNOP		3
.LVL69:
.L44:
	.loc 1 104 0
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL.L		vfree, R44
		SMOVIH4.L		vfree, R45
		SMOVIH.L		vfree, R44
	|	SMVAAGH.M2		OR8, R11:R10
		SMVCGC.L		R45:R44, BRReg
		SNOP		1
		SBR		R35:R34
		SMOVIL		.L45, R62
		SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
	;; indirect call occurs
		SNOP		3
.LVL70:
.L45:
.LBE3:
	.loc 1 73 0
		SMOVIL		20, R45
		SEQ		R45, R33, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SBR		.L21
		SNOP		6
	;; jump to .L21 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.global	ptr_r_vc
	.section	.rodata,"a",@progbits
	.align	3
	.type	ptr_r_vc, @object
	.size	ptr_r_vc, 8
ptr_r_vc:
	.llong	rAddr_DDR_vc+32
	.global	ptr_r_cn
	.align	3
	.type	ptr_r_cn, @object
	.size	ptr_r_cn, 8
ptr_r_cn:
	.llong	rAddr_DDR_cn+32
	.global	hAddr_DDR
	.section	.neardata,"aw",@progbits
	.align	3
	.type	hAddr_DDR, @object
	.size	hAddr_DDR, 8
hAddr_DDR:
	.llong	h+32
	.global	xAddr_DDR
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 8
xAddr_DDR:
	.llong	x+32
	.common	rAddr_DDR_vc,1024,8
	.common	rAddr_DDR_cn,192,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 96
h:
	.short	-25126
	.short	20121
	.short	21164
	.short	-12847
	.short	-19698
	.short	13566
	.short	-9904
	.short	20780
	.short	-31972
	.short	23024
	.short	-16695
	.short	-31934
	.short	-32587
	.short	-21617
	.short	-6789
	.short	-3896
	.short	-7
	.short	42
	.short	-6
	.short	39
	.short	-22
	.short	30
	.short	71
	.short	91
	.short	100
	.short	-23
	.short	-31
	.short	57
	.short	-21
	.short	-99
	.short	-9
	.short	-22
	.short	-99
	.short	-9
	.short	-22
	.short	21067
	.short	-29109
	.short	23662
	.short	19602
	.short	24832
	.short	20179
	.short	29252
	.short	-21908
	.short	-4808
	.short	-28552
	.short	28379
	.short	12932
	.short	-13989
	.global	x
	.align	3
	.type	x, @object
	.size	x, 224
x:
	.short	812
	.short	-21581
	.short	-27293
	.short	2500
	.short	21030
	.short	27269
	.short	28382
	.short	5219
	.short	-5514
	.short	30140
	.short	29703
	.short	5643
	.short	-3606
	.short	-16258
	.short	24429
	.short	-22139
	.short	17726
	.short	-12829
	.short	11707
	.short	30663
	.short	-22457
	.short	-19165
	.short	4279
	.short	-4415
	.short	-6802
	.short	31911
	.short	18964
	.short	29085
	.short	15969
	.short	6232
	.short	-3404
	.short	15764
	.short	-12984
	.short	-5298
	.short	7018
	.short	31261
	.short	3419
	.short	7468
	.short	21976
	.short	-21593
	.short	20528
	.short	-23741
	.short	384
	.short	1435
	.short	19863
	.short	18915
	.short	26788
	.short	-13865
	.short	-31397
	.short	-22574
	.short	7429
	.short	14949
	.short	-18228
	.short	15723
	.short	-27875
	.short	19097
	.short	7508
	.short	-20660
	.short	25333
	.short	-30119
	.short	-27386
	.short	23846
	.short	15386
	.short	-31037
	.short	-25747
	.short	17026
	.short	-32
	.short	7136
	.short	6783
	.short	25115
	.short	-7302
	.short	-9550
	.short	-4859
	.short	-20059
	.short	13321
	.short	8766
	.short	14422
	.short	-16761
	.short	-24777
	.short	-4140
	.short	24246
	.short	-2427
	.short	31342
	.short	5200
	.short	-16845
	.short	-4922
	.short	856
	.short	-9847
	.short	-2976
	.short	26418
	.short	6565
	.short	-18785
	.short	-7751
	.short	-26199
	.short	22470
	.short	7792
	.short	-460
	.short	-8077
	.short	-13729
	.short	17194
	.short	-13766
	.short	-3599
	.short	-32751
	.short	15627
	.short	15627
	.short	11111
	.short	-31687
	.short	18645
	.short	-8163
	.short	2778
	.short	20226
	.short	-27103
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x702
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x182
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x6d
	.4byte	0x182
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x6d
	.4byte	0x182
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x6d
	.4byte	0x18d
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x6d
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x6d
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6f
	.4byte	0x4d
	.4byte	.LLST6
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6f
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.byte	0x1
	.4byte	0x11f
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL2
	.4byte	0x132
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL5
	.4byte	0x172
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL6
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x188
	.uleb128 0xd
	.4byte	0x5b
	.uleb128 0xc
	.byte	0x8
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x290
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x76
	.4byte	0x29d
	.4byte	.LLST9
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x76
	.4byte	0x18d
	.4byte	.LLST10
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x76
	.4byte	0x29d
	.4byte	.LLST11
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x76
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x76
	.4byte	0x62
	.4byte	.LLST13
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x78
	.4byte	0x4d
	.4byte	.LLST14
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x78
	.4byte	0x4d
	.4byte	.LLST15
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.byte	0x1
	.4byte	0x22d
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL16
	.4byte	0x240
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL19
	.4byte	0x280
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL20
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x5b
	.4byte	0x29d
	.uleb128 0xf
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x290
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x35
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x5fe
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x36
	.4byte	0x5fe
	.4byte	0x40140004
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x37
	.4byte	0x5fe
	.4byte	0x40140000
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x38
	.4byte	0x604
	.4byte	.LLST17
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3f
	.4byte	0x29d
	.4byte	.LLST18
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3f
	.4byte	0x29d
	.4byte	.LLST19
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x41
	.4byte	0x62
	.byte	0x1
	.4byte	0x322
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.byte	0x1
	.4byte	0x335
	.uleb128 0x8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x44
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x44
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x45
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.byte	0x1
	.4byte	0x371
	.uleb128 0x8
	.byte	0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x46
	.4byte	0x62
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x46
	.4byte	0x62
	.uleb128 0x15
	.string	"nh"
	.byte	0x1
	.byte	0x46
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x15
	.string	"nr"
	.byte	0x1
	.byte	0x46
	.4byte	0x62
	.4byte	.LLST21
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5af
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.4byte	0x62
	.4byte	.LLST22
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4b
	.4byte	0x62
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x53
	.4byte	0x18d
	.4byte	0x40100000
	.uleb128 0x9
	.llong	.LVL44
	.4byte	0x3e4
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL45
	.4byte	0x3f7
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL46
	.4byte	0x410
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL47
	.4byte	0x433
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -128
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL48
	.4byte	0x447
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.llong	.LVL49
	.4byte	0x465
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL51
	.4byte	0x49a
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0xa
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
	.llong	.LVL53
	.4byte	0x4bd
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -112
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL54
	.4byte	0x4d8
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.llong	.LVL57
	.4byte	0x512
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -124
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 -4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL58
	.4byte	0x52b
	.uleb128 0xa
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
	.llong	.LVL59
	.4byte	0x545
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL68
	.4byte	0x57f
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -124
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 -4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL69
	.4byte	0x598
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL70
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL32
	.4byte	0x5c8
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL33
	.4byte	0x5db
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL34
	.4byte	0x5ee
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.llong	.LVL35
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x62
	.uleb128 0x17
	.4byte	0x62
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x619
	.uleb128 0x19
	.4byte	0x77
	.byte	0x6f
	.byte	0
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0x10
	.4byte	0x62d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.uleb128 0xd
	.4byte	0x609
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x642
	.uleb128 0x19
	.4byte	0x77
	.byte	0x2f
	.byte	0
	.uleb128 0x1a
	.string	"h"
	.byte	0x1
	.byte	0x23
	.4byte	0x656
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.uleb128 0xd
	.4byte	0x632
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x66b
	.uleb128 0x19
	.4byte	0x77
	.byte	0x5f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.4byte	0x65b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x692
	.uleb128 0x1c
	.4byte	0x77
	.2byte	0x1ff
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2f
	.4byte	0x681
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x31
	.4byte	0x182
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0x32
	.4byte	0x182
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x33
	.4byte	0x6ea
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.uleb128 0xd
	.4byte	0x18d
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0x34
	.4byte	0x6ea
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_vc
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL12
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
	.llong	.LVL13
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL13
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
	.llong	.LVL9
	.2byte	0x1
	.byte	0x58
	.llong	.LVL9
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
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL2-1
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL11
	.llong	.LFE4
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
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL2-1
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL4
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST8:
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
.LLST9:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL26
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL16-1
	.llong	.LVL27
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL27
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL16-1
	.llong	.LVL23
	.2byte	0x1
	.byte	0x58
	.llong	.LVL23
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL16-1
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL25
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL16-1
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL24
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL18
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST16:
	.llong	.LFB3
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 176
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.llong	.LVL31
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL40
	.llong	.LVL63
	.2byte	0x1
	.byte	0x58
	.llong	.LVL65
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL43
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL65
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL59
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL70
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL61
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL62
	.llong	.LVL65
	.2byte	0x8
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x3a
	.byte	0x1c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL39-1
	.llong	.LVL56
	.2byte	0xc
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL56
	.llong	.LVL57-1
	.2byte	0xe
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL57-1
	.llong	.LVL60
	.2byte	0xe
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL65
	.llong	.LVL67
	.2byte	0xc
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL67
	.llong	.LVL68-1
	.2byte	0xe
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL68-1
	.llong	.LFE3
	.2byte	0xe
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x9f
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
.LASF27:
	.string	"vecr_len"
.LASF37:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_gen/test/vector_c/Debug"
.LASF19:
	.string	"xAddr"
.LASF28:
	.string	"hAddr"
.LASF29:
	.string	"rAddr_DDR_cn"
.LASF30:
	.string	"rAddr_DDR_vc"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF22:
	.string	"TimerStart"
.LASF2:
	.string	"short unsigned int"
.LASF31:
	.string	"xAddr_DDR"
.LASF26:
	.string	"vecx_len"
.LASF15:
	.string	"GetTimerCount"
.LASF32:
	.string	"hAddr_DDR"
.LASF38:
	.string	"main"
.LASF3:
	.string	"unsigned int"
.LASF24:
	.string	"time_vc"
.LASF0:
	.string	"long long unsigned int"
.LASF16:
	.string	"cache"
.LASF18:
	.string	"cache_ok"
.LASF20:
	.string	"rAddr"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"time_cn"
.LASF10:
	.string	"char"
.LASF35:
	.string	"GNU C 4.7.0"
.LASF36:
	.string	"../main.c"
.LASF6:
	.string	"short int"
.LASF11:
	.string	"time1"
.LASF12:
	.string	"time2"
.LASF17:
	.string	"cache1"
.LASF14:
	.string	"get_time_vc"
.LASF21:
	.string	"SetTimerPeriod"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"get_time_cn"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"ptr_r_vc"
.LASF25:
	.string	"c_time"
.LASF33:
	.string	"ptr_r_cn"

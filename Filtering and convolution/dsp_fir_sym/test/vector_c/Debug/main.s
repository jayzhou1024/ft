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
	.loc 1 100 0
	.cfi_startproc
.LVL0:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 56
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -40
	.cfi_offset 49, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R33:R32, *+AR15[2]
		SNOP		1
		SMOV.M2		R16, R33
	|	SMOV.M1		R18, R32
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 14, -8
	.cfi_offset 46, -48
	.cfi_offset 47, -44
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMOV.M1		R20, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL1:
	.loc 1 102 0
		SBR		GetTimerCount
	.loc 1 100 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L2, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 102 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL2:
.L2:
	.loc 1 103 0
		SBR		DSP_fir_sym_cn
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SMOV.M2		R31, R20
	|	SMOV.M1		R10, R30
	|	SMOVIL		.L3, R62
.LVL3:
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH		.L3, R62
.LVL4:
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_sym_cn occurs
		SNOP		1
.LVL5:
.L3:
	.loc 1 104 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 106 0
.L4:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL7:
		SLDDW		*+AR15[5], R63:R62
		SLDDW		*+AR15[1], R31:R30
.LVL8:
		SLDDW		*+AR15[2], R33:R32
		SNOP		2
.LVL9:
		SMVAGA36.M2		R7:R6, AR8
.LVL10:
		SMVCGC.L		R63, BRReg
		SNOP		1
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL11:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL12:
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
	.loc 1 108 0
	.cfi_startproc
.LVL13:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 56
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -40
	.cfi_offset 49, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R33:R32, *+AR15[2]
		SNOP		1
		SMOV.M2		R16, R33
	|	SMOV.M1		R18, R32
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 14, -8
	.cfi_offset 46, -48
	.cfi_offset 47, -44
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMOV.M1		R20, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL14:
	.loc 1 110 0
		SBR		GetTimerCount
	.loc 1 108 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L6, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 110 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL15:
.L6:
	.loc 1 111 0
		SBR		DSP_fir_sym_vc
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SMOV.M2		R31, R20
	|	SMOV.M1		R10, R30
	|	SMOVIL		.L7, R62
.LVL16:
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH		.L7, R62
.LVL17:
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_sym_vc occurs
		SNOP		1
.LVL18:
.L7:
	.loc 1 112 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL19:
	.loc 1 114 0
.L8:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL20:
		SLDDW		*+AR15[5], R63:R62
		SLDDW		*+AR15[1], R31:R30
.LVL21:
		SLDDW		*+AR15[2], R33:R32
		SNOP		2
.LVL22:
		SMVAGA36.M2		R7:R6, AR8
.LVL23:
		SMVCGC.L		R63, BRReg
		SNOP		1
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL24:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL25:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Result Failure "
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 51 0
	.cfi_startproc
.LVL26:
		SMOVIL		-160, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 160
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 55 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[18]
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 51 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[13]
	.loc 1 55 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 51 0
		SSTDW		R7:R6, *+AR15[19]
	.cfi_offset 14, -8
	.cfi_offset 54, -64
	.cfi_offset 55, -60
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[12]
	.loc 1 56 0
		SMOVIH		1075052544, R42
	.loc 1 51 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R43
		SSTDW		R37:R36, *+AR15[11]
		SSTDW		R7:R6, *+AR15[17]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
	.cfi_offset 52, -72
	.cfi_offset 53, -68
	.cfi_offset 89, -24
	.cfi_offset 50, -80
	.cfi_offset 51, -76
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[10]
		SSTDW		R33:R32, *+AR15[9]
		SNOP		2
		SSTDW		R7:R6, *+AR15[16]
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.cfi_offset 88, -32
	.cfi_offset 46, -96
	.cfi_offset 47, -92
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[8]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[15]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[14]
	.cfi_offset 9, -40
	.cfi_offset 8, -48
	.loc 1 55 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 56 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 57 0
		SSTW		R44, *+AR15[15]
		SNOP		2
.LVL27:
	.loc 1 58 0
		SLDW		*+AR15[15], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L17:
	.loc 1 59 0
		SLDW		*AR10, R42
		SNOP		5
.LVL28:
		SSTW		R42, *+AR15[15]
		SNOP		2
.LVL29:
	.loc 1 58 0
		SLDW		*+AR15[15], R1
		SNOP		5
	[R1]	SBR		.L17
		SNOP		6
	;; condjump to .L17 occurs
.L12:
	.loc 1 62 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SMOVIL		0, R10
		SMOVIL.L		rAddr_DDR_cn, R34
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL.L		.LC2, R36
.LVL30:
.L23:
	.loc 1 63 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH.L		rAddr_DDR_cn, R34
		SMOVIH4.L		rAddr_DDR_cn, R35
	;; call to TimerStart occurs, with return value
		SMOVIL		8, R32
.LVL31:
.L24:
	.loc 1 66 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SMOVIL		0, R33
	.loc 1 68 0
		SMOVIL		4, R38
	.loc 1 66 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH.L		.LC2, R36
.LVL32:
.L25:
		SMOVIL.L		rAddr_DDR_cn+72, R42
		SMOVIL.L		xAddr_DDR, R44
		SMOVIH.L		rAddr_DDR_cn+72, R42
		SMOVIH4.L		rAddr_DDR_cn+72, R43
		SBR		GetTimerCount
	|	SMOVIH.L		xAddr_DDR, R44
	|	SMVAGA36.M2		R43:R42, OR9
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SMOVIH4.L		xAddr_DDR, R45
		SMVAGA36.M2		R45:R44, AR9
	|	SMOVIL		0, R10
	;; call to GetTimerCount occurs, with return value
		SMOVIH4.L		.LC2, R37
.LVL33:
.L26:
		SMOVIL.L		hAddr_DDR, R46
		SMOVIH.L		hAddr_DDR, R46
		SMOVIH4.L		hAddr_DDR, R47
		SMVAGA36.M2		R47:R46, AR14
		SNOP		1
.LVL34:
.L11:
	.loc 1 51 0 discriminator 1
		SADD.M2		15,R38,R2
	|	SSHFLL		1, R38, R43
	|	SADD.M1		25,R38,R41
		SSHFAR		4, R2, R3
	|	SSTW		R43, *+AR15[13]
		SSHFLL		1, R3, R8
		SSHFAR		31, R8, R9
		SSHFLR		27, R8, R10
		SSHFLL		5, R9, R11
		SOR		R11, R10, R12
		SSTW		R12, *+AR15[12]
	|	SSHFLL		6, R3, R40
		SMOVIL		4, R39
.LBB2:
	.loc 1 76 0 discriminator 1
		SMOVIL		0, R30
		SMOVIL		0, R31
.LVL35:
.L15:
	.loc 1 70 0
		SSHFAR		4, R41, R13
.LVL36:
	.loc 1 73 0
		SSHFAR		31, R41, R14
		SBR		vmalloc
	|	SSHFLL		5, R14, R17
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SSHFLR		27, R13, R16
		SSHFLL		5, R13, R15
	;; call to vmalloc occurs, with return value
		SOR		R17, R16, R11
	|	SMOV.M2		R15, R10
	|	SSTW		R15, *+AR15[9]
.LVL37:
.L27:
	.loc 1 74 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SMOV.M1		R40, R10
	|	SLDW		*+AR15[12], R11
.LVL38:
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
	;; call to vmalloc occurs, with return value
		SNOP		3
.LVL39:
.L28:
	.loc 1 76 0
		SMVAGA36.M1		R35:R34, AR10
	|	SMOVIL.L		rAddr_DDR_cn+8, R44
	|	SMVAGA36.M2		R11:R10, OR8
.LVL40:
		SMOVIH.L		rAddr_DDR_cn+8, R44
		SMOVIH4.L		rAddr_DDR_cn+8, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+16, R44
		SMOVIH.L		rAddr_DDR_cn+16, R44
		SMOVIH4.L		rAddr_DDR_cn+16, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+24, R44
		SMOVIH.L		rAddr_DDR_cn+24, R44
		SMOVIH4.L		rAddr_DDR_cn+24, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+32, R44
		SMOVIH.L		rAddr_DDR_cn+32, R44
		SMOVIH4.L		rAddr_DDR_cn+32, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+40, R44
		SMOVIH.L		rAddr_DDR_cn+40, R44
		SMOVIH4.L		rAddr_DDR_cn+40, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+48, R44
		SMOVIH.L		rAddr_DDR_cn+48, R44
		SMOVIH4.L		rAddr_DDR_cn+48, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+56, R44
		SMOVIH.L		rAddr_DDR_cn+56, R44
		SMOVIH4.L		rAddr_DDR_cn+56, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+64, R44
		SMOVIH.L		rAddr_DDR_cn+64, R44
		SMOVIH4.L		rAddr_DDR_cn+64, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+80, R44
		SMOVIH.L		rAddr_DDR_cn+80, R44
		SSTDW		R31:R30, *AR10
	|	SMVAAA.M2		OR9, AR10
	|	SMOVIH4.L		rAddr_DDR_cn+80, R45
	.loc 1 77 0
		SMOVIL.L		rAddr_DDR_vc, R10
.LVL41:
		SMOVIL		0, R15
	.loc 1 76 0
		SSTDW		R31:R30, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+88, R44
		SMOVIH4.L		rAddr_DDR_cn+88, R45
		SMOVIH.L		rAddr_DDR_cn+88, R44
	.loc 1 77 0
		SBR		memset
	|	SSTDW		R31:R30, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		256, R14
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
	.loc 1 76 0
		SSTDW		R31:R30, *AR10
	|	SMOVIH4.L		.L29, R63
	.loc 1 77 0
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.LVL42:
.L29:
	.loc 1 79 0
		SLDW		*+AR15[9], R18
	|	SBR		M7002_datatrans
	|	SMVAAGL.M2		AR8, R13:R12
		SLDDW		*AR9, R11:R10
	|	SMOVIL		.L30, R62
		SMVAAGH.M2		AR8, R13:R12
	|	SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SNOP		2
	;; call to M7002_datatrans occurs
		SMOV.M2		R18, R14
.LVL43:
.L30:
	.loc 1 80 0
		SBR		M7002_datatrans
	|	SMOV.M1		R40, R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R11
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		.L31, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL44:
.L31:
	.loc 1 81 0
		SBR		M7002_datatrans
	|	SLDDW		*AR14, R11:R10
	|	SMOVIL		0, R13
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIL		36, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs
		SMOVIH		1074790400, R12
.LVL45:
.L32:
	.loc 1 83 0
		SBR		get_time_cn
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R39, R16
	|	SMOV.M1		R38, R18
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SLDDW		*AR14, R13:R12
	|	SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIL		0, R20
		SMOVIL.L		rAddr_DDR_cn+32, R14
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		rAddr_DDR_cn+32, R14
.LVL46:
.L33:
	.loc 1 84 0
		SBR		get_time_vc
	|	SSTW		R10, *+AR15[10]
	|	SMOV.M2		R39, R16
	|	SMOV.M1		R38, R18
	|	SMOVIL		0, R20
.LVL47:
		SMVAAGL.M1		AR8, R11:R10
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		.L34, R62
.LVL48:
		SMOVIH		.L34, R62
		SMVAAGH.M1		AR8, R11:R10
	|	SMVAAGH.M2		OR8, R15:R14
	|	SMOVIH4.L		.L34, R63
		SMOVIL		0, R13
		SMOVIL		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SMOVIH		1074790400, R12
.LVL49:
.L34:
	.loc 1 86 0
		SBR		M7002_datatrans
	|	SLDW		*+AR15[13], R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R13
	.loc 1 84 0
		SSTW		R10, *+AR15[11]
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L35, R62
.LVL50:
	.loc 1 86 0
		SMOVIH		.L35, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH4.L		.L35, R63
		SMOVIL.L		rAddr_DDR_vc+32, R12
		SMOVIH.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL51:
.L35:
	.loc 1 88 0
		SMOVIL.L		rAddr_DDR_cn+32, R12
	|	SMOV.M2		R32, R14
	|	SMOV.M1		R33, R15
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		memcmp
	|	SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc+32, R11
.LVL52:
.L36:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
	.loc 1 89 0
		SMOVIL.L		.LC0, R42
	|	SADD.M2		8,R41,R41
.LVL53:
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL54:
.L37:
	.loc 1 93 0
		SLDW		*+AR15[10], R45
		SLDW		*+AR15[11], R46
		SSTW		R39, *+AR15[5]
	|	SADD.M2		4,R39,R39
.LBE2:
	.loc 1 69 0
		SNOP		4
.LBB3:
	.loc 1 93 0
		SSTW		R45, *+AR15[6]
		SBR		printf
	|	SSTW		R46, *+AR15[7]
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SSTDW		R37:R36, *+AR15[1]
	|	SMOVIH4.L		.L38, R63
		SSTW		R38, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.LVL55:
.L38:
	.loc 1 94 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L39, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
	;; call to vfree occurs
		SNOP		3
.LVL56:
.L39:
	.loc 1 95 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L40, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to vfree occurs
		SNOP		3
.LVL57:
.L40:
.LBE3:
	.loc 1 69 0
		SMOVIL		20, R47
		SEQ		R47, R39, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.LVL58:
.L21:
	.loc 1 68 0
		SADD.M2		4,R38,R38
	|	SMOVIL		24, R22
	|	SADD.M1		8,R32,R19
.LVL59:
		SEQ		R22, R38, R2
	[!R2]	SBR		.L11
	|	SLTU		R19, R32, R20
	|	SMOV.M2		R19, R32
		SADD.M2		R33,R20,R33
		SNOP		5
	;; condjump to .L11 occurs
	.loc 1 98 0
		SLDDW		*+AR15[14], R7:R6
		SLDDW		*+AR15[18], R63:R62
		SLDDW		*+AR15[8], R31:R30
		SLDDW		*+AR15[9], R33:R32
		SLDDW		*+AR15[10], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL60:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[15], R7:R6
		SLDDW		*+AR15[11], R37:R36
		SLDDW		*+AR15[12], R39:R38
.LVL61:
		SLDDW		*+AR15[13], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[16], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[17], R7:R6
.LVL62:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[19], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		160, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL63:
.L13:
.LBB4:
	.loc 1 92 0
		SMOVIL.L		.LC1, R44
	|	SADD.M2		8,R41,R41
.LVL64:
		SMOVIH.L		.LC1, R44
		SBR		printf
	|	SMOVIH4.L		.LC1, R45
		SSTDW		R45:R44, *+AR15[1]
	|	SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL65:
.L41:
	.loc 1 93 0
		SLDW		*+AR15[10], R45
		SLDW		*+AR15[11], R46
		SSTW		R39, *+AR15[5]
	|	SADD.M2		4,R39,R39
.LBE4:
	.loc 1 69 0
		SNOP		4
.LBB5:
	.loc 1 93 0
		SSTW		R45, *+AR15[6]
		SBR		printf
	|	SSTW		R46, *+AR15[7]
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SSTDW		R37:R36, *+AR15[1]
	|	SMOVIH4.L		.L42, R63
		SSTW		R38, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.LVL66:
.L42:
	.loc 1 94 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L43, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
	;; call to vfree occurs
		SNOP		3
.LVL67:
.L43:
	.loc 1 95 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L44, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
	;; call to vfree occurs
		SNOP		3
.LVL68:
.L44:
.LBE5:
	.loc 1 69 0
		SMOVIL		20, R47
		SEQ		R47, R39, R1
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
	.llong	x
	.common	rAddr_DDR_vc,256,8
	.common	rAddr_DDR_cn,96,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 96
h:
	.short	684
	.short	-1
	.short	16235
	.short	15637
	.short	-34
	.short	-5
	.short	3
	.short	-27
	.short	-22
	.short	50
	.short	9233
	.short	-940
	.short	114
	.short	-150
	.short	-27
	.short	-6
	.short	-9273
	.short	-8
	.short	2
	.short	0
	.short	16332
	.short	-5974
	.short	414
	.short	9
	.short	-218
	.short	5
	.short	35
	.short	9
	.short	-5594
	.short	2032
	.short	-3123
	.short	27
	.short	-3973
	.short	123
	.short	1
	.short	882
	.short	-2
	.short	-10
	.short	22
	.short	-46
	.short	6239
	.short	255
	.short	-1361
	.short	-9506
	.short	-8531
	.short	-12627
	.short	-21574
	.short	32767
	.global	x
	.align	3
	.type	x, @object
	.size	x, 116
x:
	.short	-108
	.short	10
	.short	9071
	.short	-443
	.short	-1615
	.short	227
	.short	31
	.short	-10780
	.short	1006
	.short	-1550
	.short	26
	.short	-4
	.short	-42
	.short	-3
	.short	0
	.short	0
	.short	-1
	.short	-6101
	.short	-21555
	.short	-17186
	.short	-12817
	.short	-8454
	.short	-4181
	.short	-1359
	.short	-21742
	.short	-20189
	.short	4660
	.short	9029
	.short	13398
	.short	17767
	.short	22136
	.short	26505
	.short	30874
	.short	-30293
	.short	-25924
	.short	-21555
	.short	-21030
	.short	-4098
	.short	-17206
	.short	-8531
	.short	32759
	.short	32767
	.short	-566
	.short	18467
	.short	9575
	.short	20202
	.short	-32768
	.short	31438
	.short	10814
	.short	16534
	.short	684
	.short	-1
	.short	16235
	.short	15637
	.short	684
	.short	-1
	.short	16235
	.zero	2
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x701
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0x50
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
	.byte	0x64
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x197
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x64
	.4byte	0x197
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x64
	.4byte	0x197
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x64
	.4byte	0x1a2
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x64
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x64
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x5
	.string	"s"
	.byte	0x1
	.byte	0x64
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x65
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x65
	.4byte	0x4d
	.4byte	.LLST8
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.byte	0x1
	.4byte	0x12c
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL2
	.4byte	0x13f
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL5
	.4byte	0x187
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
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
	.4byte	0x19d
	.uleb128 0xd
	.4byte	0x5b
	.uleb128 0xc
	.byte	0x8
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x2ba
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x6c
	.4byte	0x2c7
	.4byte	.LLST10
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x6c
	.4byte	0x1a2
	.4byte	.LLST11
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x6c
	.4byte	0x2c7
	.4byte	.LLST12
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x6c
	.4byte	0x62
	.4byte	.LLST13
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x6c
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x5
	.string	"s"
	.byte	0x1
	.byte	0x6c
	.4byte	0x62
	.4byte	.LLST15
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6d
	.4byte	0x4d
	.4byte	.LLST16
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6d
	.4byte	0x4d
	.4byte	.LLST17
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.byte	0x1
	.4byte	0x24f
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL15
	.4byte	0x262
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL18
	.4byte	0x2aa
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
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
	.llong	.LVL19
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
	.4byte	0x2c7
	.uleb128 0xf
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x2ba
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x33
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x60e
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x34
	.4byte	0x60e
	.4byte	0x40140004
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x35
	.4byte	0x60e
	.4byte	0x40140000
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.4byte	0x614
	.4byte	.LLST19
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3c
	.4byte	0x2c7
	.4byte	.LLST20
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3c
	.4byte	0x2c7
	.4byte	.LLST21
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3e
	.4byte	0x62
	.byte	0x1
	.4byte	0x34c
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3f
	.4byte	0x62
	.byte	0x1
	.4byte	0x35f
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x41
	.4byte	0x4d
	.4byte	.LLST22
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x41
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.byte	0x1
	.4byte	0x39b
	.uleb128 0x8
	.byte	0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x43
	.4byte	0x62
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x43
	.4byte	0x62
	.uleb128 0x15
	.string	"nh"
	.byte	0x1
	.byte	0x43
	.4byte	0x62
	.4byte	.LLST23
	.uleb128 0x15
	.string	"nr"
	.byte	0x1
	.byte	0x43
	.4byte	0x62
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5bb
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x46
	.4byte	0x62
	.4byte	.LLST25
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x47
	.4byte	0x62
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4b
	.4byte	0x1a2
	.4byte	0x40100000
	.uleb128 0x9
	.llong	.LVL42
	.4byte	0x410
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL43
	.4byte	0x429
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
	.llong	.LVL44
	.4byte	0x44a
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
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
	.llong	.LVL45
	.4byte	0x45e
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.llong	.LVL46
	.4byte	0x484
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL49
	.4byte	0x4c1
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
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
	.llong	.LVL51
	.4byte	0x4e4
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -108
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
	.llong	.LVL55
	.4byte	0x51e
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 -4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL56
	.4byte	0x537
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
	.llong	.LVL57
	.4byte	0x551
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
	.llong	.LVL66
	.4byte	0x58b
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -116
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -120
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 -4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL67
	.4byte	0x5a4
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
	.llong	.LVL68
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
	.llong	.LVL30
	.4byte	0x5d4
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
	.llong	.LVL31
	.4byte	0x5e7
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL32
	.4byte	0x5fc
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.llong	.LVL33
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x62
	.uleb128 0x17
	.4byte	0x62
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x629
	.uleb128 0x19
	.4byte	0x77
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.string	"x"
	.byte	0x1
	.byte	0x18
	.4byte	0x63d
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.uleb128 0xd
	.4byte	0x619
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x77
	.byte	0x2f
	.byte	0
	.uleb128 0x1a
	.string	"h"
	.byte	0x1
	.byte	0x23
	.4byte	0x666
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.uleb128 0xd
	.4byte	0x642
	.uleb128 0x1b
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2c
	.4byte	0x642
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x691
	.uleb128 0x19
	.4byte	0x77
	.byte	0x7f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2d
	.4byte	0x681
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2e
	.4byte	0x197
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2f
	.4byte	0x197
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.byte	0x30
	.4byte	0x6e9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.uleb128 0xd
	.4byte	0x1a2
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0x31
	.4byte	0x6e9
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
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
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
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL11
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
	.llong	.LVL12
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL12
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
	.llong	.LVL10
	.2byte	0x1
	.byte	0x58
	.llong	.LVL10
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
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL2-1
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL9
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
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL2-1
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
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
	.uleb128 0x2e
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
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL24
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
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15-1
	.llong	.LVL25
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL25
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
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15-1
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
.LLST13:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL15-1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL15-1
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL22
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL15-1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL17
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL19
	.llong	.LVL20
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
	.sleb128 160
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.llong	.LVL29
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL38
	.llong	.LVL60
	.2byte	0x1
	.byte	0x58
	.llong	.LVL63
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL40
	.llong	.LVL41
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL41
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL63
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL48
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -120
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL34
	.llong	.LVL35
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL57
	.llong	.LVL63
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL68
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL59
	.llong	.LVL61
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL36
	.llong	.LVL37-1
	.2byte	0x1
	.byte	0x6d
	.llong	.LVL37-1
	.llong	.LVL53
	.2byte	0x6
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL53
	.llong	.LVL58
	.2byte	0x6
	.byte	0x92
	.uleb128 0x39
	.sleb128 -8
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x6
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.uleb128 0x39
	.sleb128 -8
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
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB5
	.llong	.LBE5
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
.LASF37:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/dsp_fir_sym/test/vector_c/Debug"
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

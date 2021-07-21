	.file	"main.c"
.text;
.Ltext0:
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB4:
	.file 1 "../main.c"
	.loc 1 148 0
.LVL0:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI1:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI2:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL1:
.LCFI3:
	.loc 1 150 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 148 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L2, R62
.LCFI4:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI5:
	.loc 1 150 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL2:
.L2:
	.loc 1 151 0
		SBR		DSP_fir_cplx_hM4X4_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 150 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L3, R62
.LVL3:
	.loc 1 151 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L3, R62
.LVL4:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_cplx_hM4X4_cn occurs
		SNOP		2
.LVL5:
.L3:
	.loc 1 152 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 154 0
.L4:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL7:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL8:
		SLDW		*+AR15[4], R31
.LVL9:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL10:
		SMVAGA36.M2		R7:R6, AR8
.LVL11:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL12:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL13:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE4:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB5:
	.loc 1 161 0
.LVL14:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI6:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI7:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI8:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL15:
.LCFI9:
	.loc 1 163 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 161 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L6, R62
.LCFI10:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI11:
	.loc 1 163 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL16:
.L6:
	.loc 1 164 0
		SBR		DSP_fir_cplx_hM4X4_vc1
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 163 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L7, R62
.LVL17:
	.loc 1 164 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L7, R62
.LVL18:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_cplx_hM4X4_vc1 occurs
		SNOP		2
.LVL19:
.L7:
	.loc 1 165 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL20:
	.loc 1 167 0
.L8:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL21:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL22:
		SLDW		*+AR15[4], R31
.LVL23:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL24:
		SMVAGA36.M2		R7:R6, AR8
.LVL25:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL26:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL27:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure (r_i)"
.LC1:
	.string	"Result Successful (r_i)"
.LC2:
	.string	"\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 64 0
.LVL28:
		SMOVIL		-1008, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI12:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI13:
	.loc 1 69 0
		SMOVIL		1075052544, R42
	|	SSTDW		R63:R62, *+AR15[124]
.LCFI14:
	.loc 1 64 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTDW		R41:R40, *+AR15[119]
	.loc 1 68 0
		SMOVIL		0, R47
	.loc 1 69 0
		SMOVIL		0, R43
	|	SMVAGA36.M2		R47:R46, AR12
	|	SADD.LS		AR15,108,AR10
		SMOVIH		1075052544, R42
	.loc 1 64 0
		SSTDW		R7:R6, *+AR15[125]
.LCFI15:
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[118]
	.loc 1 68 0
		SMOVIL		1, R44
	|	SMVAGA36.M1		R43:R42, AR11
	.loc 1 64 0
		SMVAAGH.M1		OR9, R7:R6
		SSTDW		R37:R36, *+AR15[117]
		SSTDW		R7:R6, *+AR15[123]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI16:
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[116]
		SSTDW		R33:R32, *+AR15[115]
		SNOP		2
		SSTDW		R7:R6, *+AR15[122]
.LCFI17:
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[114]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[121]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[120]
.LCFI18:
	.loc 1 68 0
		SSTW		R44, *AR12
	|	SMVAGA36.M2		R43:R42, AR12
	.loc 1 72 0
		SNOP		2
	.loc 1 69 0
		SSTW		R44, *AR11
	.loc 1 70 0
		SSTW		R44, *AR10
		SNOP		2
.LVL29:
	.loc 1 71 0
		SLDW		*AR10, R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L21:
	.loc 1 72 0
		SLDW		*AR12, R42
		SNOP		5
.LVL30:
		SSTW		R42, *AR10
		SNOP		2
.LVL31:
	.loc 1 71 0
		SLDW		*AR10, R1
		SNOP		5
	[R1]	SBR		.L21
		SNOP		6
	;; condjump to .L21 occurs
.L12:
		SMOVIL.L		xAddr_DDR+80, R42
	.loc 1 78 0
		SBR		SetTimerPeriod
	|	SMOVIH.L		xAddr_DDR+80, R42
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIH4.L		xAddr_DDR+80, R43
		SSTDW		R43:R42, *+AR15[11]
	|	SMOVIL		-1, R12
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		0, R10
.LVL32:
.L31:
		SMOVIH4.L		.LC2, R45
		SMOVIL.L		.LC2, R44
	.loc 1 79 0
		SBR		TimerStart
	|	SMOVIH.L		.LC2, R44
		SMVAGA36.M2		R45:R44, AR14
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
.LBB2:
	.loc 1 64 0
		SMOVIL		37, R43
		SSTW		R43, *+AR15[21]
	|	SMOVIL		0, R10
.LBE2:
	.loc 1 79 0
	;; call to TimerStart occurs, with return value
		SMOVIL		8, R33
.LVL33:
.L32:
	.loc 1 82 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL34:
.L33:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL35:
.L34:
	.loc 1 64 0
		SADD.LS		AR15,112,OR11
	|	SMOVIL		512, R44
		SMOVIL		0, R45
.LBB3:
	.loc 1 99 0
		SMVAAGL.M1		OR11, R37:R36
	|	SADDA.M2		R45:R44,AR15,OR8
.LBE3:
	.loc 1 64 0
		SMVAAA.M1		OR11, AR0
.LBB4:
	.loc 1 99 0
		SMVAAGH.M1		OR11, R37:R36
	|	SADDA.M2		-2,OR8,OR9
.LBE4:
	.loc 1 64 0
		SMVAAGL.M1		AR0, R43:R42
		SMVAGA36.M1		R37:R36, OR0
	|	SMVAAGL.M2		OR9, R9:R8
		SMVAAGH.M1		AR0, R43:R42
		SADDA.M2		-2,OR0,OR1
	|	SMVAAGH.M1		OR9, R9:R8
		SNOP		1
		SADD.M1		30,R42,R53
	|	SSTDW		R9:R8, *+AR15[12]
		SMVAAGL.M2		OR1, R11:R10
	|	SLTU		R53, R42, R54
	|	SMOV.M1		R53, R32
		SADD.M1		R43,R54,R39
		SMVAAGH.M2		OR1, R11:R10
		SNOP		1
		SSTDW		R11:R10, *+AR15[9]
.LVL36:
.L11:
		SLDDW		*+AR15[12], R45:R44
	|	SADD.M2		15,R33,R3
	|	SSHFLL		2, R33, R46
		SSHFAR		4, R3, R9
	|	SLDW		*+AR15[21], R47
		SSHFLL		1, R9, R11
	|	SLDDW		*+AR15[11], R31:R30
		SSHFLL		2, R9, R12
		SSHFAR		31, R12, R13
		SSHFLR		26, R11, R43
		SSHFLR		26, R12, R14
		SSHFLL		6, R13, R15
		SSTDW		R45:R44, *+AR15[8]
	|	SSHFAR		31, R11, R45
		SSHFLL		6, R45, R16
	|	SSTW		R46, *+AR15[14]
		SSHFLL		8, R9, R45
		SOR		R15, R14, R17
		SSTW		R16, *+AR15[13]
	|	SSHFLL		7, R9, R20
.LBB5:
	.loc 1 132 0
		SMOVIL.L		.LC1, R42
	|	SSTW		R45, *+AR15[15]
	.loc 1 129 0
		SMOVIL.L		.LC0, R44
	.loc 1 132 0
		SMOVIH.L		.LC1, R42
		SLDW		*+AR15[13], R18
	|	SMOVIH.L		.LC0, R44
	.loc 1 129 0
		SMOVIH4.L		.LC0, R45
	|	SSTW		R47, *+AR15[9]
		SSTW		R17, *+AR15[12]
	|	SMVAGA36.M2		R45:R44, OR9
	|	SMOVIL		4, R38
.LBE5:
	.loc 1 64 0
		SNOP		3
		SOR		R18, R43, R19
	|	SSTW		R20, *+AR15[20]
.LBB6:
	.loc 1 132 0
		SMOVIH4.L		.LC1, R43
	|	SSTW		R19, *+AR15[13]
		SMVAGA36.M2		R43:R42, AR9
		SNOP		1
.LVL37:
.L17:
	.loc 1 90 0
		SLDW		*+AR15[9], R21
		SNOP		5
		SSHFAR		4, R21, R22
		SADD.M2		1,R22,R23
.LVL38:
	.loc 1 93 0
		SSHFAR		31, R23, R40
		SSHFLR		26, R23, R24
		SBR		vmalloc
	|	SSHFLL		6, R40, R25
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SOR		R25, R24, R40
		SSHFLL		6, R23, R41
	|	SMOV.M2		R40, R11
	;; call to vmalloc occurs, with return value
		SMOV.M2		R41, R10
.LVL39:
.L35:
		SMOV.M2		R10, R26
	|	SLDW		*+AR15[12], R11
		SSHFAR		31, R26, R27
	|	SSTW		R26, *+AR15[10]
		SSTW		R27, *+AR15[11]
		SNOP		2
	.loc 1 95 0
		SBR		vmalloc
		SLDW		*+AR15[15], R10
	|	SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	;; call to vmalloc occurs, with return value
		SNOP		3
.LVL40:
.L36:
	.loc 1 93 0
		SLDDW		*+AR15[5], R49:R48
	|	SMVAGA36.M2		R37:R36, OR12
	|	SMOV.M1		R10, R28
	|	SMOVIL		0, R12
	.loc 1 99 0
		SBR		memset
	|	SMOV.M1		R28, R34
	|	SSHFAR		31, R28, R35
		SMVAAGL.M1		OR12, R11:R10
	|	SMVAGA36.M2		R35:R34, OR8
	|	SMOVIL		.L37, R62
	.loc 1 95 0
		SMOVIH		.L37, R62
	.loc 1 99 0
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIH4.L		.L37, R63
		SMOVIL		400, R14
	.loc 1 93 0
		SMVAGA36.M2		R49:R48, AR8
	|	SMOVIL		0, R15
.LVL41:
	.loc 1 99 0
	;; call to memset occurs, with return value
		SNOP		1
.LVL42:
.L37:
	.loc 1 100 0
		SMOVIL		512, R46
		SMOVIL		0, R47
	|	SBR		memset
		SADDA.M2		R47:R46,AR15,OR13
	|	SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L38, R63
		SMOVIL		400, R14
		SMVAAGH.M2		OR13, R11:R10
	|	SMOVIL		0, R15
	;; call to memset occurs, with return value
		SMOVIL		0, R12
.LVL43:
.L38:
	.loc 1 106 0
		SBR		M7002_datatrans
	|	SMOV.M2		R41, R14
	|	SMOV.M1		R40, R15
		SMVAAGL.M2		AR8, R13:R12
	|	SMOV.M1		R30, R10
	|	SMOVIL		.L39, R62
		SMOV.M1		R31, R11
	|	SMOVIH		.L39, R62
		SMVAAGH.M2		AR8, R13:R12
	;no-op trunc di R11:R10 to pdi R11:R10
	|	SMOVIH4.L		.L39, R63
	;; call to M7002_datatrans occurs, with return value
		SNOP		3
.LVL44:
.L39:
	.loc 1 107 0
		SMOVIL		512, R42
	|	SLDW		*+AR15[20], R14
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
	|	SLDW		*+AR15[13], R15
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L40, R63
		SNOP		1
		SMVAAGH.M2		OR14, R11:R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL45:
.L40:
	.loc 1 108 0
		SMOVIL		0, R13
		SMOVIL.L		hAddr_DDR, R10
		SMOVIL		1074790400, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		hAddr_DDR, R11
		SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SMOVIH		1074790400, R12
		SMOVIL		96, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		hAddr_DDR, R10
.LVL46:
.L41:
	.loc 1 114 0
		SMVAGA36.M2		R37:R36, OR11
	|	SMOVIL.L		hAddr_DDR, R12
	|	SMOV.M1		R38, R16
		SMOVIL.L		xAddr_DDR+92, R10
	|	SMOV.M1		R33, R18
		SBR		get_time_cn
	|	SMVAAGL.M2		OR11, R15:R14
	|	SMOVIH.L		hAddr_DDR, R12
		SMOVIL		.L42, R62
		SMVAAGH.M2		OR11, R15:R14
	|	SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
		SMOVIH4.L		hAddr_DDR, R13
		SMOVIH4.L		xAddr_DDR+92, R11
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		xAddr_DDR+92, R10
.LVL47:
.L42:
	.loc 1 115 0
		SBR		get_time_vc
	|	SMOV.M2		R38, R16
	|	SMOV.M1		R33, R18
	|	SMOVIL		0, R13
	.loc 1 114 0
		SMOV.M1		R10, R34
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		.L43, R62
.LVL48:
	.loc 1 115 0
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIH		.L43, R62
.LVL49:
		SMVAAGH.M1		OR8, R15:R14
	|	SMOVIH4.L		.L43, R63
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		1074790400, R12
		SMOVIH		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SNOP		1
.LVL50:
.L43:
	.loc 1 117 0
		SMOVIL		512, R42
	|	SMOV.M1		R10, R35
	|	SMVAAGL.M2		OR8, R11:R10
	|	SLDW		*+AR15[14], R14
.LVL51:
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR12
	|	SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL		.L44, R62
		SMOVIH		.L44, R62
		SMVAAGL.M2		OR12, R13:R12
	|	SMOVIH4.L		.L44, R63
		SNOP		1
		SMVAAGH.M2		OR12, R13:R12
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL52:
.L44:
		SLDDW		*+AR15[9], R43:R42
	|	SMOVIL		0, R10
		SLDDW		*+AR15[8], R45:R44
		SNOP		5
.LVL53:
.L14:
		SADD.M2		2,R42,R49
	|	SADD.M1		2,R44,R29
	|	SMOVIL		0, R1
		SLTU		R49, R42, R52
	|	SMOV.M2		R49, R42
		SLTU		R29, R44, R50
	|	SADD.M2		R43,R52,R43
	|	SMOV.M1		R29, R44
		SADD.M1		R45,R50,R45
	|	SMVAGA36.M2		R43:R42, AR12
	|	SEQ		R49, R32, R0
	.loc 1 64 0
		SMVAGA36.M1		R45:R44, AR10
	|[R0]	SEQ		R43, R39, R0
	.loc 1 121 0
		SLDH		*AR12, R58
	|	SSHFLL		16, R10, R55
		SLDH		*AR10, R59
	|	SSHFAR		16, R55, R57
		SNOP		5
		SSUB.M2		R59, R58, R60
	.loc 1 122 0
		SSHFLL		16, R60, R61
	|	SMOV.M2		R60, R53
.LVL54:
		SLT		R61, R1, R2
	[R2]	SBR		.L27
	|	SSHFLL		16, R53, R54
		SSHFAR		16, R54, R8
		SMAX		R57, R8, R10
		SNOP		4
.LVL55:
	;; condjump to .L27 occurs
	.loc 1 120 0
	[!R0]	SBR		.L14
		SNOP		6
	;; condjump to .L14 occurs
.L28:
	.loc 1 127 0
		SSHFLL		16, R10, R44
	|	SMVAAGL.M2		OR9, R13:R12
		SSHFAR		16, R44, R43
		SMOVIL		1, R42
	|	SMVAAGH.M2		OR9, R13:R12
		SLT		R42, R43, R0
	[!R0]	SBR		.L15
		SNOP		2
	.loc 1 129 0
	[R0]	SBR		printf
	[R0]	SMOVIL		.L45, R62
	[R0]	SMOVIH		.L45, R62
	.loc 1 127 0
	;; condjump to .L15 occurs
	[R0]	SMOVIH4.L		.L45, R63
	.loc 1 129 0
		SSTDW		R13:R12, *+AR15[1]
	|	SADD.M2		-1,R31,R31
	;; call to printf occurs, with return value
		SNOP		2
.LVL56:
.L45:
		SLDW		*+AR15[9], R3
	|	SMVAAGL.M2		AR14, R15:R14
	.loc 1 134 0
		SSTW		R38, *+AR15[5]
	|	SADD.M1		4,R38,R38
		SMVAAGH.M2		AR14, R15:R14
	|	SSTW		R33, *+AR15[4]
		SNOP		3
		SBR		printf
	|	SSTDW		R15:R14, *+AR15[1]
	|	SADD.M2		8,R3,R47
		SSTW		R34, *+AR15[6]
	|	SMOVIL		.L46, R62
		SMOVIH		.L46, R62
		SMOVIH4.L		.L46, R63
		SSTW		R35, *+AR15[7]
		SSTW		R47, *+AR15[9]
	;; call to printf occurs, with return value
		SNOP		1
.LVL57:
.L46:
	.loc 1 136 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L47, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL58:
.L47:
	.loc 1 137 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L48, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL59:
.L48:
.LBE6:
	.loc 1 88 0
		SMOVIL		28, R11
	|	SADD.M2		-16,R30,R9
		SEQ		R11, R38, R1
	[!R1]	SBR		.L17
	|	SLTU		R9, R30, R13
	|	SMOV.M2		R9, R30
		SADD.M2		R31,R13,R31
		SNOP		5
	;; condjump to .L17 occurs
.L29:
		SADD.M2		16,R32,R30
	|	SADD.M1		4,R33,R33
	|	SMOVIL		104, R16
.LVL60:
		SLTU		R30, R32, R15
	|	SLDW		*+AR15[21], R32
	.loc 1 87 0
		SEQ		R16, R33, R2
	|	SADD.M2		R39,R15,R39
	[!R2]	SBR		.L11
		SNOP		3
		SADD.M2		8,R32,R45
	|	SMOV.M1		R30, R32
		SSTW		R45, *+AR15[21]
		SNOP		1
	;; condjump to .L11 occurs
	.loc 1 140 0
		SLDDW		*+AR15[120], R7:R6
		SLDDW		*+AR15[124], R63:R62
		SLDDW		*+AR15[114], R31:R30
		SLDDW		*+AR15[115], R33:R32
		SLDDW		*+AR15[116], R35:R34
		SNOP		1
.LVL61:
		SMVAGA36.M2		R7:R6, AR8
.LVL62:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[121], R7:R6
		SLDDW		*+AR15[117], R37:R36
		SLDDW		*+AR15[118], R39:R38
.LVL63:
		SLDDW		*+AR15[119], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[122], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[123], R7:R6
.LVL64:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[125], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		1008, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL65:
.L27:
.LBB7:
	.loc 1 120 0
	[!R0]	SBR		.L14
	|	SNEG		R60, R53
.LVL66:
		SSHFLL		16, R53, R54
		SSHFAR		16, R54, R8
		SMAX		R57, R8, R10
		SNOP		3
.LVL67:
	;; condjump to .L14 occurs
		SBR		.L28
		SNOP		6
	;; jump to .L28 occurs
.L15:
	.loc 1 132 0
		SBR		printf
	|	SMVAAGL.M2		AR9, R47:R46
	|	SADD.M1		-1,R31,R31
		SMOVIL		.L49, R62
		SMVAAGH.M2		AR9, R47:R46
	|	SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
		SSTDW		R47:R46, *+AR15[1]
	;; call to printf occurs, with return value
		SNOP		2
.LVL68:
.L49:
		SLDW		*+AR15[9], R3
	|	SMVAAGL.M2		AR14, R15:R14
	.loc 1 134 0
		SSTW		R38, *+AR15[5]
	|	SADD.M1		4,R38,R38
		SMVAAGH.M2		AR14, R15:R14
	|	SSTW		R33, *+AR15[4]
		SNOP		3
		SBR		printf
	|	SSTDW		R15:R14, *+AR15[1]
	|	SADD.M2		8,R3,R47
		SSTW		R34, *+AR15[6]
	|	SMOVIL		.L50, R62
		SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
		SSTW		R35, *+AR15[7]
		SSTW		R47, *+AR15[9]
	;; call to printf occurs, with return value
		SNOP		1
.LVL69:
.L50:
	.loc 1 136 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L51, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L51, R62
		SMOVIH4.L		.L51, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL70:
.L51:
	.loc 1 137 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L52, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L52, R62
		SMOVIH4.L		.L52, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL71:
.L52:
.LBE7:
	.loc 1 88 0
		SMOVIL		28, R11
	|	SADD.M2		-16,R30,R9
		SEQ		R11, R38, R1
	[!R1]	SBR		.L17
	|	SLTU		R9, R30, R13
	|	SMOV.M2		R9, R30
		SADD.M2		R31,R13,R31
		SNOP		5
	;; condjump to .L17 occurs
		SBR		.L29
		SNOP		6
	;; jump to .L29 occurs
.LFE3:
	.size	main, .-main
	.global	hAddr_DDR
	.section	.const,"a",@progbits
	.align	3
	.type	hAddr_DDR, @object
	.size	hAddr_DDR, 96
hAddr_DDR:
	.short	2570
	.short	3451
	.short	919
	.short	1468
	.short	406
	.short	1596
	.short	456
	.short	1082
	.short	3211
	.short	1522
	.short	697
	.short	989
	.short	1128
	.short	1230
	.short	3881
	.short	2069
	.short	2507
	.short	318
	.short	2743
	.short	49
	.short	2388
	.short	2802
	.short	2371
	.short	1920
	.short	3521
	.short	3096
	.short	234
	.short	881
	.short	51
	.short	3871
	.short	877
	.short	2418
	.short	2886
	.short	2103
	.short	9
	.short	852
	.short	3259
	.short	2894
	.short	3423
	.short	228
	.short	1969
	.short	3059
	.short	1229
	.short	2643
	.short	935
	.short	3414
	.short	3954
	.short	1646
	.global	xAddr_DDR
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 512
xAddr_DDR:
	.short	23050
	.short	-12933
	.short	-31849
	.short	-23108
	.short	-20074
	.short	-27076
	.short	25032
	.short	-7110
	.short	7307
	.short	22002
	.short	12985
	.short	-19491
	.short	-7064
	.short	25806
	.short	16169
	.short	10261
	.short	-26165
	.short	-32450
	.short	-13641
	.short	-8143
	.short	-5804
	.short	-29966
	.short	-26301
	.short	10112
	.short	-29247
	.short	11288
	.short	-24342
	.short	25457
	.short	-28621
	.short	12063
	.short	-3219
	.short	-18062
	.short	23366
	.short	-26569
	.short	24585
	.short	29524
	.short	31931
	.short	-13490
	.short	19807
	.short	-28444
	.short	10161
	.short	-13325
	.short	-11059
	.short	-13741
	.short	-11353
	.short	-8874
	.short	-4238
	.short	-31122
	.short	25467
	.short	27877
	.short	2125
	.short	14949
	.short	-13683
	.short	17872
	.short	-30115
	.short	-19898
	.short	795
	.short	-17276
	.short	-19455
	.short	-25150
	.short	-19835
	.short	-7565
	.short	27801
	.short	-6618
	.short	15754
	.short	24137
	.short	1858
	.short	-9501
	.short	29832
	.short	24055
	.short	14013
	.short	-23450
	.short	-16801
	.short	-29269
	.short	26183
	.short	-12417
	.short	-30067
	.short	-16395
	.short	16001
	.short	-31107
	.short	7378
	.short	4355
	.short	-2103
	.short	-29937
	.short	-20851
	.short	932
	.short	8894
	.short	31939
	.short	29596
	.short	-25336
	.short	-13857
	.short	-19798
	.short	5471
	.short	11581
	.short	-32596
	.short	-10447
	.short	-27052
	.short	627
	.short	-27262
	.short	23657
	.short	-17349
	.short	-18089
	.short	13889
	.short	10559
	.short	13619
	.short	-27430
	.short	7785
	.short	-6749
	.short	-11174
	.short	-14293
	.short	-30888
	.short	-1341
	.short	32464
	.short	16024
	.short	20012
	.short	15376
	.short	-8493
	.short	272
	.short	13926
	.short	-11912
	.short	-27005
	.short	-10525
	.short	14884
	.short	8937
	.short	-865
	.short	-12929
	.short	15845
	.short	8499
	.short	28133
	.short	-10765
	.short	-31063
	.short	-30715
	.short	-31083
	.short	21679
	.short	-7763
	.short	23534
	.short	-31378
	.short	-32159
	.short	82
	.short	-24419
	.short	-13394
	.short	-24840
	.short	501
	.short	21217
	.short	-7467
	.short	-14172
	.short	22007
	.short	-18264
	.short	4385
	.short	26643
	.short	-6794
	.short	-17181
	.short	4370
	.short	-19788
	.short	16496
	.short	19519
	.short	21511
	.short	-1641
	.short	-27834
	.short	-11412
	.short	-8226
	.short	17034
	.short	-19305
	.short	32345
	.short	20823
	.short	28093
	.short	8416
	.short	9205
	.short	3440
	.short	13502
	.short	-31615
	.short	29775
	.short	-11223
	.short	19644
	.short	-15078
	.short	-16875
	.short	-24831
	.short	-11481
	.short	-31640
	.short	-3816
	.short	15670
	.short	-29907
	.short	-3860
	.short	19621
	.short	-4632
	.short	-12739
	.short	14852
	.short	-2644
	.short	24245
	.short	8583
	.short	31694
	.short	1916
	.short	-771
	.short	-8320
	.short	-13941
	.short	-6812
	.short	-7553
	.short	-7358
	.short	-18278
	.short	-2093
	.short	20281
	.short	-17902
	.short	-3048
	.short	823
	.short	28491
	.short	5079
	.short	19205
	.short	21665
	.short	9108
	.short	20512
	.short	-896
	.short	-28354
	.short	-32174
	.short	-30563
	.short	8169
	.short	-5154
	.short	-26972
	.short	2013
	.short	-27234
	.short	-32592
	.short	22251
	.short	-2259
	.short	-22915
	.short	-12349
	.short	-17116
	.short	17278
	.short	2247
	.short	-6842
	.short	-882
	.short	32574
	.short	23418
	.short	-31321
	.short	22025
	.short	-12387
	.short	-1259
	.short	28375
	.short	-25612
	.short	12937
	.short	20535
	.short	1091
	.short	-25811
	.short	7825
	.short	3552
	.short	24795
	.short	-2956
	.short	-21435
	.short	2605
	.short	-16434
	.short	18504
	.short	-32621
	.short	22399
	.short	30155
	.short	10023
	.short	-30325
	.short	-3629
	.short	10113
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x4e
	.byte	0xc
	.byte	0xf
	.byte	0
	.align	3
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI12-.LFB3
	.byte	0xe
	.byte	0xf0,0x7
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xb8
	.byte	0xe
	.byte	0xb9
	.byte	0xd
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x8e
	.byte	0x2
	.byte	0xb6
	.byte	0x10
	.byte	0xb7
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xb4
	.byte	0x12
	.byte	0xb5
	.byte	0x11
	.byte	0x5
	.byte	0x59
	.byte	0x6
	.byte	0xb2
	.byte	0x14
	.byte	0xb3
	.byte	0x13
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xb0
	.byte	0x16
	.byte	0xb1
	.byte	0x15
	.byte	0x5
	.byte	0x58
	.byte	0x8
	.byte	0xae
	.byte	0x18
	.byte	0xaf
	.byte	0x17
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x89
	.byte	0xa
	.byte	0x88
	.byte	0xc
	.align	3
.LEFDE4:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x86b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_cplx_hM4X4/test/vector_c/Debug"
	.4byte	.Ldebug_ranges0+0x70
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x3
	.byte	0x1
	.string	"get_time_cn"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0xff
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x271
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x8f
	.4byte	0x271
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x90
	.4byte	0x271
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x91
	.4byte	0x27c
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x92
	.4byte	0x130
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x93
	.4byte	0x130
	.4byte	.LLST5
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0x95
	.4byte	0xff
	.4byte	.LLST6
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x95
	.4byte	0xff
	.4byte	.LLST7
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x52
	.4byte	0x130
	.byte	0x1
	.4byte	0x20e
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL2
	.4byte	0x221
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL5
	.4byte	0x261
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0xa
	.llong	.LVL6
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x277
	.byte	0xc
	.4byte	0x123
	.byte	0xb
	.byte	0x8
	.4byte	0x123
	.byte	0x3
	.byte	0x1
	.string	"get_time_vc"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	0xff
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x38b
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x9c
	.4byte	0x398
	.4byte	.LLST9
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x9d
	.4byte	0x27c
	.4byte	.LLST10
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x9e
	.4byte	0x398
	.4byte	.LLST11
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x9f
	.4byte	0x130
	.4byte	.LLST12
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0xa0
	.4byte	0x130
	.4byte	.LLST13
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0xa2
	.4byte	0xff
	.4byte	.LLST14
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0xa2
	.4byte	0xff
	.4byte	.LLST15
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x52
	.4byte	0x130
	.byte	0x1
	.4byte	0x328
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL16
	.4byte	0x33b
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL19
	.4byte	0x37b
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0xa
	.llong	.LVL20
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.4byte	0x123
	.4byte	0x398
	.byte	0xe
	.byte	0x1f
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x38b
	.byte	0xf
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x40
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x7f1
	.byte	0x10
	.string	"cache"
	.byte	0x1
	.byte	0x41
	.4byte	0x7f1
	.4byte	0x40140004
	.byte	0x10
	.string	"cache1"
	.byte	0x1
	.byte	0x42
	.4byte	0x7f1
	.4byte	0x40140000
	.byte	0x5
	.string	"cache_ok"
	.byte	0x1
	.byte	0x43
	.4byte	0x7f7
	.4byte	.LLST17
	.byte	0x11
	.string	"rAddr_DDR_cn"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7fc
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x79
	.byte	0x11
	.string	"rAddr_DDR_vc"
	.byte	0x1
	.byte	0x4b
	.4byte	0x7fc
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x5
	.string	"xAddr"
	.byte	0x1
	.byte	0x4c
	.4byte	0x398
	.4byte	.LLST18
	.byte	0x5
	.string	"rAddr"
	.byte	0x1
	.byte	0x4c
	.4byte	0x398
	.4byte	.LLST19
	.byte	0x12
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x4e
	.4byte	0x130
	.byte	0x1
	.4byte	0x467
	.byte	0x7
	.byte	0
	.byte	0x12
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x4f
	.4byte	0x130
	.byte	0x1
	.4byte	0x481
	.byte	0x7
	.byte	0
	.byte	0x5
	.string	"time_cn"
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.4byte	.LLST20
	.byte	0x11
	.string	"time_vc"
	.byte	0x1
	.byte	0x51
	.4byte	0xff
	.byte	0x2
	.byte	0x90
	.byte	0x33
	.byte	0x13
	.string	"c_time"
	.byte	0x1
	.byte	0x52
	.4byte	0xff
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x52
	.4byte	0x130
	.byte	0x1
	.4byte	0x4c7
	.byte	0x7
	.byte	0
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x130
	.byte	0x13
	.string	"j"
	.byte	0x1
	.byte	0x53
	.4byte	0x130
	.byte	0x5
	.string	"nh"
	.byte	0x1
	.byte	0x53
	.4byte	0x130
	.4byte	.LLST21
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x53
	.4byte	0x130
	.4byte	.LLST22
	.byte	0x5
	.string	"diff"
	.byte	0x1
	.byte	0x55
	.4byte	0x123
	.4byte	.LLST23
	.byte	0x5
	.string	"diff_max"
	.byte	0x1
	.byte	0x55
	.4byte	0x123
	.4byte	.LLST24
	.byte	0x14
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7a2
	.byte	0x5
	.string	"vecx_len"
	.byte	0x1
	.byte	0x5a
	.4byte	0x130
	.4byte	.LLST25
	.byte	0x13
	.string	"vecr_len"
	.byte	0x1
	.byte	0x5b
	.4byte	0x130
	.byte	0x12
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x5d
	.4byte	0x130
	.byte	0x1
	.4byte	0x55d
	.byte	0x7
	.byte	0
	.byte	0x10
	.string	"hAddr"
	.byte	0x1
	.byte	0x61
	.4byte	0x27c
	.4byte	0x40100000
	.byte	0x12
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x6a
	.4byte	0x130
	.byte	0x1
	.4byte	0x58d
	.byte	0x7
	.byte	0
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x77
	.4byte	0x130
	.4byte	.LLST26
	.byte	0x12
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x88
	.4byte	0x130
	.byte	0x1
	.4byte	0x5af
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL42
	.4byte	0x5ce
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL43
	.4byte	0x5e1
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL44
	.4byte	0x5fa
	.byte	0x9
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL45
	.4byte	0x614
	.byte	0x9
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL46
	.4byte	0x628
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0x8
	.llong	.LVL47
	.4byte	0x652
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL50
	.4byte	0x687
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL52
	.4byte	0x6aa
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.byte	0xc8,0x78
	.byte	0x94
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL56
	.4byte	0x6c0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL57
	.4byte	0x6f5
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7c
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL58
	.4byte	0x70e
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL59
	.4byte	0x728
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL68
	.4byte	0x73d
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL69
	.4byte	0x772
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7c
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL70
	.4byte	0x78b
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xa
	.llong	.LVL71
	.byte	0x9
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL32
	.4byte	0x7bb
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL33
	.4byte	0x7ce
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL34
	.4byte	0x7e1
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xa
	.llong	.LVL35
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x130
	.byte	0x15
	.4byte	0x130
	.byte	0x16
	.4byte	0x123
	.4byte	0x80c
	.byte	0x17
	.4byte	0x154
	.byte	0xc7
	.byte	0
	.byte	0x16
	.4byte	0x123
	.4byte	0x81c
	.byte	0x17
	.4byte	0x154
	.byte	0xff
	.byte	0
	.byte	0x18
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x12
	.4byte	0x838
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.byte	0xc
	.4byte	0x80c
	.byte	0x16
	.4byte	0x123
	.4byte	0x84d
	.byte	0x17
	.4byte	0x154
	.byte	0x2f
	.byte	0
	.byte	0x18
	.string	"hAddr_DDR"
	.byte	0x1
	.byte	0x36
	.4byte	0x869
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.byte	0xc
	.4byte	0x83d
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x87,0x42
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
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
	.byte	0
	.llong	.LCFI0
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL12
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL2-1
	.llong	.LVL13
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL13
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL2-1
	.llong	.LVL11
	.2byte	0x1
	.byte	0x58
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL2-1
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL2-1
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL9
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
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
	.byte	0x2e
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
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI6
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL26
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL16-1
	.llong	.LVL27
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL27
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL16-1
	.llong	.LVL25
	.2byte	0x1
	.byte	0x58
	.llong	.LVL25
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL16-1
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL24
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL16-1
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL23
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
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
	.byte	0x2e
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
	.llong	.LCFI12
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI12
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.byte	0xf0,0x7
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	.LVL31
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL41
	.llong	.LVL62
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
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL65
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL48
	.llong	.LVL49
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL49
	.llong	.LVL61
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL65
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL59
	.llong	.LVL63
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL71
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.llong	.LVL60
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.byte	0x31
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL54
	.llong	.LVL56-1
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	.LVL65
	.llong	.LVL68-1
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL55
	.llong	.LVL56-1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL65
	.llong	.LVL68-1
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.byte	0x27
	.llong	.LVL39-1
	.llong	.LFE3
	.2byte	0xa
	.byte	0x91
	.byte	0xb4,0x78
	.byte	0x94
	.byte	0x4
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x30
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
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
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
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"GetTimerCount"

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
	.loc 1 136 0
.LVL0:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[4]
.LCFI1:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R31:R30, *+AR15[1]
		SNOP		1
		SMOV.M2		R18, R31
		SSTDW		R7:R6, *+AR15[5]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI2:
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL1:
	.loc 1 138 0
		SBR		GetTimerCount
	.loc 1 136 0
		SSTDW		R7:R6, *+AR15[3]
	|	SMOVIL		.L2, R62
.LCFI3:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI4:
	.loc 1 138 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[2]
.LVL2:
.L2:
	.loc 1 139 0
		SBR		DSP_fir_r8_h8_cn
	|	SMOV.M2		R31, R16
	|	SMOV.M1		R10, R30
.LVL3:
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L3, R62
.LVL4:
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH		.L3, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_r8_h8_cn occurs
		SNOP		2
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
		SLDDW		*+AR15[2], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL7:
		SLDDW		*+AR15[4], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SNOP		3
.LVL8:
		SMVAGA36.M2		R7:R6, AR8
.LVL9:
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[3], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[5], R7:R6
.LVL10:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		48, R6
.LVL11:
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
	.loc 1 144 0
.LVL12:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI5:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[4]
.LCFI6:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R31:R30, *+AR15[1]
		SNOP		1
		SMOV.M2		R18, R31
		SSTDW		R7:R6, *+AR15[5]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI7:
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL13:
	.loc 1 146 0
		SBR		GetTimerCount
	.loc 1 144 0
		SSTDW		R7:R6, *+AR15[3]
	|	SMOVIL		.L6, R62
.LCFI8:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI9:
	.loc 1 146 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[2]
.LVL14:
.L6:
	.loc 1 147 0
		SBR		DSP_fir_r8_h8_vc1
	|	SMOV.M2		R31, R16
	|	SMOV.M1		R10, R30
.LVL15:
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L7, R62
.LVL16:
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH		.L7, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_r8_h8_vc1 occurs
		SNOP		2
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
		SLDDW		*+AR15[2], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL19:
		SLDDW		*+AR15[4], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SNOP		3
.LVL20:
		SMVAGA36.M2		R7:R6, AR8
.LVL21:
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[3], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[5], R7:R6
.LVL22:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		48, R6
.LVL23:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure (r_i)  "
.LC1:
	.string	"Result Successful (r_i)  "
.LC2:
	.string	"   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 81 0
.LVL24:
		SMOVIL		-144, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI10:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI11:
	.loc 1 85 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[16]
.LCFI12:
	.loc 1 81 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[11]
	.loc 1 85 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 81 0
		SSTDW		R7:R6, *+AR15[17]
.LCFI13:
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[10]
	.loc 1 86 0
		SMOVIH		1075052544, R42
	.loc 1 81 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R43
		SSTDW		R37:R36, *+AR15[9]
		SSTDW		R7:R6, *+AR15[15]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI14:
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[8]
		SSTDW		R33:R32, *+AR15[7]
		SNOP		2
		SSTDW		R7:R6, *+AR15[14]
.LCFI15:
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[6]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[13]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[12]
.LCFI16:
	.loc 1 85 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 86 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 87 0
		SSTW		R44, *+AR15[11]
		SNOP		2
.LVL25:
	.loc 1 88 0
		SLDW		*+AR15[11], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L15:
	.loc 1 89 0
		SLDW		*AR10, R42
		SNOP		5
.LVL26:
		SSTW		R42, *+AR15[11]
		SNOP		2
.LVL27:
	.loc 1 88 0
		SLDW		*+AR15[11], R1
		SNOP		5
	[R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.L12:
	.loc 1 93 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SMOVIL		0, R10
		SMOVIL.L		.LC2, R36
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		16, R30
.LVL28:
.L21:
		SMOVIL.L		xAddr_DDR, R42
		SMOVIL.L		hAddr_DDR, R46
		SMOVIH.L		hAddr_DDR, R46
		SMOVIH4.L		hAddr_DDR, R47
	.loc 1 94 0
		SBR		TimerStart
	|	SMOVIH.L		xAddr_DDR, R42
	|	SMVAGA36.M2		R47:R46, AR14
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
		SMOVIH4.L		xAddr_DDR, R43
		SMVAGA36.M2		R43:R42, AR9
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL		0, R31
.LVL29:
.L22:
.LBB2:
	.loc 1 129 0
		SMOVIH4.L		.LC1, R43
		SMOVIL.L		.LC1, R42
.LBE2:
	.loc 1 97 0
		SBR		GetTimerCount
	|	SMOVIH.L		.LC1, R42
.LBB3:
	.loc 1 129 0
		SMVAGA36.M2		R43:R42, OR9
	|	SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
.LBE3:
	.loc 1 97 0
		SMOVIL		0, R10
	.loc 1 101 0
		SMOVIL		8, R40
	.loc 1 97 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH.L		.LC2, R36
.LVL30:
.L23:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH4.L		.LC2, R37
	;; call to GetTimerCount occurs, with return value
		SNOP		2
.LVL31:
.L24:
.L11:
.LBB4:
	.loc 1 81 0
		SADD.M2		22,R40,R2
	.loc 1 102 0
		SSHFAR		4, R2, R3
.LVL32:
	.loc 1 105 0
		SSHFAR		31, R2, R8
		SSHFLR		27, R3, R43
		SBR		vmalloc
	|	SSHFLL		5, R8, R39
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SOR		R39, R43, R39
		SSHFLL		5, R3, R9
	|	SMOV.M2		R39, R11
	;; call to vmalloc occurs, with return value
		SMOV.M2		R9, R10
	|	SSTW		R9, *+AR15[9]
.LVL33:
.L25:
		SMOV.M2		R10, R45
	|	SADD.M1		15,R40,R10
	.loc 1 103 0
		SSHFAR		4, R10, R11
	|	SMOV.M2		R45, R32
.LVL34:
	.loc 1 110 0
		SSHFLL		1, R11, R46
		SSHFAR		31, R46, R41
		SSHFLR		27, R46, R12
		SSHFLL		5, R41, R13
		SBR		vmalloc
	|	SOR		R13, R12, R41
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	.loc 1 105 0
		SSHFAR		31, R45, R33
	.loc 1 110 0
		SSHFLL		6, R11, R38
	|	SMOV.M1		R41, R11
	|	SMVAGA36.M2		R33:R32, AR8
.LVL35:
	;; call to vmalloc occurs, with return value
		SMOV.M1		R38, R10
.LVL36:
.L26:
		SMOV.M2		R10, R16
	|	SMOVIL.L		rAddr_DDR_cn, R10
		SMOV.M2		R16, R34
	|	SSHFAR		31, R16, R35
	.loc 1 113 0
		SMOVIL		0, R12
	|	SMVAGA36.M2		R35:R34, OR8
		SBR		memset
	|	SMOVIL		320, R14
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_cn, R11
.LVL37:
.L27:
	.loc 1 114 0
		SMOVIL		2048, R14
		SMOVIL.L		rAddr_DDR_vc, R10
		SBR		memset
	|	SMOVIL		0, R15
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.LVL38:
.L28:
	.loc 1 116 0
		SBR		M7002_datatrans
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M1		R39, R15
	|	SMVAAGL.M2		AR8, R13:R12
		SLDW		*+AR15[9], R14
	|	SMOVIL		.L29, R62
		SMVAAGH.M2		AR8, R13:R12
	|	SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
	;; call to M7002_datatrans occurs, with return value
		SNOP		3
.LVL39:
.L29:
	.loc 1 117 0
		SBR		M7002_datatrans
	|	SMOV.M2		R41, R15
	|	SMOV.M1		R38, R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R11
		SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH4.L		.L30, R63
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL40:
.L30:
	.loc 1 118 0
		SBR		M7002_datatrans
	|	SLDDW		*AR14, R11:R10
	|	SMOVIL		0, R13
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIL		16, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074790400, R12
.LVL41:
.L31:
	.loc 1 120 0
		SBR		get_time_cn
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R40, R18
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SLDDW		*AR14, R13:R12
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIL		8, R16
		SMOVIL.L		rAddr_DDR_cn+32, R14
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		rAddr_DDR_cn+32, R14
.LVL42:
.L32:
	.loc 1 121 0
		SBR		get_time_vc
	|	SMOV.M2		R40, R18
	|	SMOVIL		8, R16
	|	SMOV.M1		R10, R32
.LVL43:
		SMVAAGL.M1		OR8, R15:R14
	|	SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		.L33, R62
.LVL44:
		SMOVIH		.L33, R62
		SMVAAGH.M1		OR8, R15:R14
	|	SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH4.L		.L33, R63
		SMOVIL		0, R13
		SMOVIL		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SMOVIH		1074790400, R12
.LVL45:
.L33:
	.loc 1 123 0
		SBR		M7002_datatrans
	|	SSHFLL		1, R40, R14
	|	SMOV.M1		R10, R33
	|	SMVAAGL.M2		OR8, R11:R10
.LVL46:
		SMOVIL		.L34, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SMOVIH4.L		rAddr_DDR_vc+32, R13
		SMOVIL.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		rAddr_DDR_vc+32, R12
.LVL47:
.L34:
	.loc 1 125 0
		SMOVIL.L		rAddr_DDR_cn+32, R12
	|	SMOV.M2		R30, R14
	|	SMOV.M1		R31, R15
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		memcmp
	|	SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc+32, R11
.LVL48:
.L35:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
	.loc 1 126 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL49:
.L36:
	.loc 1 130 0
		SMOVIL		8, R15
	|	SSTW		R40, *+AR15[4]
	|	SADD.M2		4,R40,R40
.LVL50:
		SSTW		R15, *+AR15[5]
		SNOP		2
		SBR		printf
	|	SSTDW		R37:R36, *+AR15[1]
		SSTW		R32, *+AR15[6]
	|	SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SSTW		R33, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL51:
.L37:
	.loc 1 131 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L38, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL52:
.L38:
	.loc 1 132 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L39, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL53:
.L39:
.LBE4:
	.loc 1 101 0
		SMOVIL		132, R21
	|	SADD.M2		8,R30,R17
		SEQ		R21, R40, R1
	[!R1]	SBR		.L11
	|	SLTU		R17, R30, R20
	|	SMOV.M2		R17, R30
		SADD.M2		R31,R20,R31
		SNOP		5
	;; condjump to .L11 occurs
.LVL54:
.L19:
	.loc 1 134 0
		SLDDW		*+AR15[12], R7:R6
		SLDDW		*+AR15[16], R63:R62
		SLDDW		*+AR15[6], R31:R30
		SLDDW		*+AR15[7], R33:R32
.LVL55:
		SLDDW		*+AR15[8], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL56:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[13], R7:R6
		SLDDW		*+AR15[9], R37:R36
		SLDDW		*+AR15[10], R39:R38
		SLDDW		*+AR15[11], R41:R40
		SNOP		2
.LVL57:
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[14], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[15], R7:R6
.LVL58:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[17], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		144, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL59:
.L13:
.LBB5:
	.loc 1 129 0
		SBR		printf
	|	SMVAAGL.M2		OR9, R19:R18
		SMOVIL		.L40, R62
		SMVAAGH.M2		OR9, R19:R18
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
		SSTDW		R19:R18, *+AR15[1]
	;; call to printf occurs, with return value
		SNOP		2
.LVL60:
.L40:
	.loc 1 130 0
		SMOVIL		8, R15
	|	SSTW		R40, *+AR15[4]
	|	SADD.M2		4,R40,R40
.LVL61:
		SSTW		R15, *+AR15[5]
		SNOP		2
		SBR		printf
	|	SSTDW		R37:R36, *+AR15[1]
		SSTW		R32, *+AR15[6]
	|	SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SSTW		R33, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL62:
.L41:
	.loc 1 131 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L42, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL63:
.L42:
	.loc 1 132 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L43, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL64:
.L43:
.LBE5:
	.loc 1 101 0
		SMOVIL		132, R21
	|	SADD.M2		8,R30,R17
		SEQ		R21, R40, R1
	[!R1]	SBR		.L11
	|	SLTU		R17, R30, R20
	|	SMOV.M2		R17, R30
		SADD.M2		R31,R20,R31
		SNOP		5
	;; condjump to .L11 occurs
		SBR		.L19
		SNOP		6
	;; jump to .L19 occurs
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
	.common	rAddr_DDR_vc,2048,8
	.common	rAddr_DDR_cn,320,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 80
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
	.short	13286
	.short	1452
	.short	-7696
	.global	x
	.align	3
	.type	x, @object
	.size	x, 336
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
	.short	7954
	.short	23033
	.short	5028
	.short	5849
	.short	9958
	.short	-20448
	.short	14842
	.short	-27380
	.short	-10281
	.short	-26431
	.short	29792
	.short	22438
	.short	-23476
	.short	16972
	.short	-24680
	.short	11465
	.short	3937
	.short	-16432
	.short	-173
	.short	27361
	.short	-20435
	.short	22253
	.short	12250
	.short	-30108
	.short	-29295
	.short	30947
	.short	17119
	.short	-25555
	.short	-8072
	.short	-29136
	.short	2024
	.short	-27978
	.short	8677
	.short	-27725
	.short	-114
	.short	3822
	.short	29853
	.short	-17954
	.short	-10999
	.short	-14891
	.short	15812
	.short	1488
	.short	-199
	.short	1439
	.short	7250
	.short	14062
	.short	22710
	.short	-30820
	.short	-5210
	.short	-16159
	.short	16647
	.short	7049
	.short	8228
	.short	18289
	.short	16271
	.short	17048
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
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
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
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
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
	.4byte	.LCFI10-.LFB3
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xb8
	.byte	0xe
	.byte	0xb9
	.byte	0xd
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x8e
	.byte	0x2
	.byte	0xb6
	.byte	0x10
	.byte	0xb7
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
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
	.4byte	.LCFI15-.LCFI14
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
	.4byte	.LCFI16-.LCFI15
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
	.4byte	0x855
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_h8/Debug"
	.4byte	.Ldebug_ranges0+0x50
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
	.byte	0x88
	.byte	0x1
	.4byte	0xd5
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x23f
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x23f
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x88
	.4byte	0x23f
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x88
	.4byte	0x24a
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x88
	.4byte	0x106
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x88
	.4byte	0x106
	.4byte	.LLST5
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0x89
	.4byte	0xd5
	.4byte	.LLST6
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x89
	.4byte	0xd5
	.4byte	.LLST7
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x61
	.4byte	0x106
	.byte	0x1
	.4byte	0x1e4
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL2
	.4byte	0x1f7
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL5
	.4byte	0x22f
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x2f
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
	.4byte	0x245
	.byte	0xc
	.4byte	0xf9
	.byte	0xb
	.byte	0x8
	.4byte	0xf9
	.byte	0x3
	.byte	0x1
	.string	"get_time_vc"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0xd5
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x351
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x90
	.4byte	0x35e
	.4byte	.LLST9
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x90
	.4byte	0x24a
	.4byte	.LLST10
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x90
	.4byte	0x35e
	.4byte	.LLST11
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x90
	.4byte	0x106
	.4byte	.LLST12
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x90
	.4byte	0x106
	.4byte	.LLST13
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0x91
	.4byte	0xd5
	.4byte	.LLST14
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x91
	.4byte	0xd5
	.4byte	.LLST15
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x61
	.4byte	0x106
	.byte	0x1
	.4byte	0x2f6
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL14
	.4byte	0x309
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL17
	.4byte	0x341
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x2f
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
	.llong	.LVL18
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.4byte	0xf9
	.4byte	0x35e
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x351
	.byte	0xf
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x51
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x729
	.byte	0x10
	.string	"cache"
	.byte	0x1
	.byte	0x52
	.4byte	0x729
	.4byte	0x40140004
	.byte	0x10
	.string	"cache1"
	.byte	0x1
	.byte	0x53
	.4byte	0x729
	.4byte	0x40140000
	.byte	0x5
	.string	"cache_ok"
	.byte	0x1
	.byte	0x54
	.4byte	0x72f
	.4byte	.LLST17
	.byte	0x5
	.string	"xAddr"
	.byte	0x1
	.byte	0x5b
	.4byte	0x35e
	.4byte	.LLST18
	.byte	0x5
	.string	"rAddr"
	.byte	0x1
	.byte	0x5b
	.4byte	0x35e
	.4byte	.LLST19
	.byte	0x11
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x5d
	.4byte	0x106
	.byte	0x1
	.4byte	0x3fd
	.byte	0x7
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x5e
	.4byte	0x106
	.byte	0x1
	.4byte	0x417
	.byte	0x7
	.byte	0
	.byte	0x5
	.string	"time_cn"
	.byte	0x1
	.byte	0x60
	.4byte	0xd5
	.4byte	.LLST20
	.byte	0x12
	.string	"time_vc"
	.byte	0x1
	.byte	0x60
	.4byte	0xd5
	.byte	0x2
	.byte	0x90
	.byte	0x31
	.byte	0x13
	.string	"c_time"
	.byte	0x1
	.byte	0x61
	.4byte	0xd5
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x61
	.4byte	0x106
	.byte	0x1
	.4byte	0x45d
	.byte	0x7
	.byte	0
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x62
	.4byte	0x106
	.byte	0x13
	.string	"j"
	.byte	0x1
	.byte	0x62
	.4byte	0x106
	.byte	0x14
	.string	"nh"
	.byte	0x1
	.byte	0x62
	.4byte	0x106
	.byte	0x8
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x62
	.4byte	0x106
	.4byte	.LLST21
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6d4
	.byte	0x5
	.string	"vecx_len"
	.byte	0x1
	.byte	0x66
	.4byte	0x106
	.4byte	.LLST22
	.byte	0x5
	.string	"vecr_len"
	.byte	0x1
	.byte	0x67
	.4byte	0x106
	.4byte	.LLST23
	.byte	0x11
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x69
	.4byte	0x106
	.byte	0x1
	.4byte	0x4d0
	.byte	0x7
	.byte	0
	.byte	0x10
	.string	"hAddr"
	.byte	0x1
	.byte	0x6f
	.4byte	0x24a
	.4byte	0x40100000
	.byte	0x11
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x74
	.4byte	0x106
	.byte	0x1
	.4byte	0x500
	.byte	0x7
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x83
	.4byte	0x106
	.byte	0x1
	.4byte	0x515
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL37
	.4byte	0x528
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL38
	.4byte	0x53b
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL39
	.4byte	0x554
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
	.llong	.LVL40
	.4byte	0x56e
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
	.llong	.LVL41
	.4byte	0x581
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x8
	.llong	.LVL42
	.4byte	0x59d
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x8
	.llong	.LVL45
	.4byte	0x5d0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x1
	.byte	0x38
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
	.llong	.LVL47
	.4byte	0x5f3
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0x31
	.byte	0x24
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
	.llong	.LVL51
	.4byte	0x627
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0x7c
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL52
	.4byte	0x640
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
	.llong	.LVL53
	.4byte	0x65a
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
	.llong	.LVL60
	.4byte	0x670
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
	.llong	.LVL62
	.4byte	0x6a4
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0x7c
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL63
	.4byte	0x6bd
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
	.llong	.LVL64
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
	.llong	.LVL28
	.4byte	0x6ed
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
	.llong	.LVL29
	.4byte	0x702
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL30
	.4byte	0x717
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0
	.byte	0xa
	.llong	.LVL31
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x106
	.byte	0x16
	.4byte	0x106
	.byte	0x17
	.4byte	0xf9
	.4byte	0x744
	.byte	0x18
	.4byte	0x12a
	.byte	0xa7
	.byte	0
	.byte	0x19
	.string	"x"
	.byte	0x1
	.byte	0x24
	.4byte	0x758
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.byte	0xc
	.4byte	0x734
	.byte	0x17
	.4byte	0xf9
	.4byte	0x76d
	.byte	0x18
	.4byte	0x12a
	.byte	0x27
	.byte	0
	.byte	0x19
	.string	"h"
	.byte	0x1
	.byte	0x3f
	.4byte	0x781
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.byte	0xc
	.4byte	0x75d
	.byte	0x17
	.4byte	0xf9
	.4byte	0x796
	.byte	0x18
	.4byte	0x12a
	.byte	0x9f
	.byte	0
	.byte	0x19
	.string	"rAddr_DDR_cn"
	.byte	0x1
	.byte	0x49
	.4byte	0x786
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.byte	0x17
	.4byte	0xf9
	.4byte	0x7c6
	.byte	0x1a
	.4byte	0x12a
	.2byte	0x3ff
	.byte	0
	.byte	0x19
	.string	"rAddr_DDR_vc"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7b5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.byte	0x19
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x4c
	.4byte	0x23f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.byte	0x19
	.string	"hAddr_DDR"
	.byte	0x1
	.byte	0x4d
	.4byte	0x23f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.byte	0x19
	.string	"ptr_r_cn"
	.byte	0x1
	.byte	0x4e
	.4byte	0x838
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.byte	0xc
	.4byte	0x24a
	.byte	0x19
	.string	"ptr_r_vc"
	.byte	0x1
	.byte	0x4f
	.4byte	0x838
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_vc
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
	.byte	0x12
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x30
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
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL10
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
	.llong	.LVL11
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL11
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
	.llong	.LVL9
	.2byte	0x1
	.byte	0x58
	.llong	.LVL9
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
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
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
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL13
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL22
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
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL14-1
	.llong	.LVL23
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL23
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
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL14-1
	.llong	.LVL21
	.2byte	0x1
	.byte	0x58
	.llong	.LVL21
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
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL14-1
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
	.llong	.LVL12
	.llong	.LVL14-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL14-1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL16
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL18
	.llong	.LVL19
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST16:
	.llong	.LFB3
	.llong	.LCFI10
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI10
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.byte	0x90,0x1
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL36
	.llong	.LVL56
	.2byte	0x1
	.byte	0x58
	.llong	.LVL59
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL37
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL59
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL43
	.llong	.LVL44
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL44
	.llong	.LVL55
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL59
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL53
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL32
	.llong	.LVL33-1
	.2byte	0x1
	.byte	0x63
	.llong	.LVL33-1
	.llong	.LVL50
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0x16
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL50
	.llong	.LVL51-1
	.2byte	0xa
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.byte	0x16
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL51-1
	.llong	.LVL54
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0x12
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL59
	.llong	.LVL61
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0x16
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL61
	.llong	.LVL62-1
	.2byte	0xa
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.byte	0x16
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL62-1
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0x12
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL34
	.llong	.LVL35
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL35
	.llong	.LVL50
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL50
	.llong	.LVL51-1
	.2byte	0xa
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL51-1
	.llong	.LVL54
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0xb
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL59
	.llong	.LVL61
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL61
	.llong	.LVL62-1
	.2byte	0xa
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x23
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL62-1
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.byte	0x38
	.byte	0xb
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
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"GetTimerCount"

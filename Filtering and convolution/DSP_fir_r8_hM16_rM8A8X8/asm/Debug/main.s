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
	.loc 1 152 0
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
	.loc 1 154 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 152 0
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
	.loc 1 154 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL2:
.L2:
	.loc 1 155 0
		SBR		DSP_fir_r8_hM16_rM8A8X8_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 154 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L3, R62
.LVL3:
	.loc 1 155 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L3, R62
.LVL4:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_r8_hM16_rM8A8X8_cn occurs
		SNOP		2
.LVL5:
.L3:
	.loc 1 156 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 158 0
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
	.loc 1 160 0
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
	.loc 1 162 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 160 0
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
	.loc 1 162 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL16:
.L6:
	.loc 1 163 0
		SBR		DSP_fir_r8_hM16_rM8A8X8_vc
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 162 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L7, R62
.LVL17:
	.loc 1 163 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L7, R62
.LVL18:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_r8_hM16_rM8A8X8_vc occurs
		SNOP		2
.LVL19:
.L7:
	.loc 1 164 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL20:
	.loc 1 166 0
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
	.loc 1 95 0
.LVL28:
		SMOVIL		-144, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI12:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI13:
	.loc 1 99 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[16]
.LCFI14:
	.loc 1 95 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[11]
	.loc 1 99 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 95 0
		SSTDW		R7:R6, *+AR15[17]
.LCFI15:
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[10]
	.loc 1 100 0
		SMOVIH		1075052544, R42
	.loc 1 95 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R43
		SSTDW		R37:R36, *+AR15[9]
		SSTDW		R7:R6, *+AR15[15]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI16:
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[8]
		SSTDW		R33:R32, *+AR15[7]
		SNOP		2
		SSTDW		R7:R6, *+AR15[14]
.LCFI17:
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
.LCFI18:
	.loc 1 99 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 100 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 101 0
		SSTW		R44, *+AR15[11]
		SNOP		2
.LVL29:
	.loc 1 102 0
		SLDW		*+AR15[11], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L17:
	.loc 1 103 0
		SLDW		*AR10, R42
		SNOP		5
.LVL30:
		SSTW		R42, *+AR15[11]
		SNOP		2
.LVL31:
	.loc 1 102 0
		SLDW		*+AR15[11], R1
		SNOP		5
	[R1]	SBR		.L17
		SNOP		6
	;; condjump to .L17 occurs
.L12:
	.loc 1 107 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SMOVIL		0, R10
	.loc 1 111 0
		SMOVIL		16, R34
	.loc 1 107 0
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		0, R35
.LVL32:
.L23:
		SMOVIL.L		xAddr_DDR, R42
		SMOVIL.L		hAddr_DDR, R46
		SMOVIH.L		hAddr_DDR, R46
		SMOVIH4.L		hAddr_DDR, R47
	.loc 1 108 0
		SBR		TimerStart
	|	SMOVIH.L		xAddr_DDR, R42
	|	SMVAGA36.M2		R47:R46, AR14
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH4.L		xAddr_DDR, R43
		SMVAGA36.M2		R43:R42, AR9
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL		8, R37
.LVL33:
.L24:
		SMOVIH4.L		.LC2, R43
		SMOVIL.L		.LC2, R42
	.loc 1 111 0
		SBR		GetTimerCount
	|	SMOVIH.L		.LC2, R42
		SMVAGA36.M2		R43:R42, OR9
	|	SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SMOVIL		0, R10
	;; call to GetTimerCount occurs, with return value
		SNOP		2
.LVL34:
.L25:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL35:
.L26:
.L11:
	.loc 1 95 0
		SADD.M2		15,R37,R39
	|	SSHFLL		1, R37, R43
	|	SADD.M1		14,R37,R46
		SSHFAR		4, R39, R2
	|	SSTW		R43, *+AR15[8]
		SSHFLL		1, R2, R3
	|	SSTW		R46, *+AR15[9]
		SSHFAR		31, R3, R38
		SSHFLR		27, R3, R8
		SSHFLL		5, R38, R9
		SOR		R9, R8, R38
		SSHFLL		6, R2, R39
		SMOVIL		8, R36
.LVL36:
.L15:
.LBB2:
		SLDW		*+AR15[9], R10
		SNOP		5
		SADD.M2		R36,R10,R40
	.loc 1 117 0
		SSHFAR		4, R40, R41
.LVL37:
	.loc 1 120 0
		SSHFAR		31, R40, R11
		SSHFLL		5, R11, R13
		SBR		vmalloc
	|	SSHFLR		27, R41, R12
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SOR		R13, R12, R40
		SMOV.M2		R40, R11
	|	SSHFLL		5, R41, R41
.LVL38:
	;; call to vmalloc occurs, with return value
		SMOV.M2		R41, R10
.LVL39:
.L27:
	.loc 1 125 0
		SBR		vmalloc
	|	SMOV.M2		R10, R14
	|	SMOV.M1		R38, R11
	.loc 1 120 0
		SMOV.M2		R14, R30
	|	SMOV.M1		R39, R10
	|	SMOVIL		.L28, R62
	.loc 1 125 0
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
	.loc 1 120 0
		SSHFAR		31, R14, R31
		SMVAGA36.M2		R31:R30, AR8
	.loc 1 125 0
	;; call to vmalloc occurs, with return value
		SNOP		1
.LVL40:
.L28:
		SMOV.M2		R10, R16
	|	SMOVIL.L		rAddr_DDR_cn, R10
		SMOV.M2		R16, R32
	|	SSHFAR		31, R16, R33
	.loc 1 128 0
		SMOVIL		0, R12
	|	SMVAGA36.M2		R33:R32, OR8
		SBR		memset
	|	SMOVIL		320, R14
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_cn, R11
.LVL41:
.L29:
	.loc 1 129 0
		SMOVIL		2048, R14
		SMOVIL.L		rAddr_DDR_vc, R10
		SBR		memset
	|	SMOVIL		0, R15
		SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.LVL42:
.L30:
	.loc 1 131 0
		SBR		M7002_datatrans
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R41, R14
	|	SMOV.M1		R40, R15
		SMVAAGL.M2		AR8, R13:R12
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMVAAGH.M2		AR8, R13:R12
	|	SMOVIH4.L		.L31, R63
	;; call to M7002_datatrans occurs, with return value
		SNOP		3
.LVL43:
.L31:
	.loc 1 132 0
		SBR		M7002_datatrans
	|	SMOV.M2		R38, R15
	|	SMOV.M1		R39, R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R11
		SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH4.L		.L32, R63
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL44:
.L32:
	.loc 1 133 0
		SBR		M7002_datatrans
	|	SLDDW		*AR14, R11:R10
	|	SMOVIL		0, R13
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIL		64, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074790400, R12
.LVL45:
.L33:
	.loc 1 135 0
		SBR		get_time_cn
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R36, R16
	|	SMOV.M1		R37, R18
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SLDDW		*AR14, R13:R12
	|	SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SMOVIL.L		rAddr_DDR_cn+32, R14
		SMOVIH.L		rAddr_DDR_cn+32, R14
	;; call to get_time_cn occurs, with return value
		SNOP		1
.LVL46:
.L34:
	.loc 1 136 0
		SBR		get_time_vc
	|	SMOV.M2		R36, R16
	|	SMOV.M1		R37, R18
	|	SMOVIL		0, R13
	.loc 1 135 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		.L35, R62
.LVL47:
	.loc 1 136 0
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIH		.L35, R62
.LVL48:
		SMVAAGH.M1		OR8, R15:R14
	|	SMOVIH4.L		.L35, R63
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		1074790400, R12
		SMOVIH		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SNOP		1
.LVL49:
.L35:
	.loc 1 138 0
		SBR		M7002_datatrans
	|	SLDW		*+AR15[8], R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R13
	|	SMOV.M1		R10, R31
	|	SMVAAGL.M2		OR8, R11:R10
.LVL50:
		SMOVIL		.L36, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMOVIL.L		rAddr_DDR_vc+32, R12
		SMOVIH.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL51:
.L36:
	.loc 1 140 0
		SMOVIL.L		rAddr_DDR_cn+32, R12
	|	SMOV.M2		R34, R14
	|	SMOV.M1		R35, R15
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		memcmp
	|	SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc+32, R11
.LVL52:
.L37:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
	.loc 1 141 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL53:
.L38:
	.loc 1 145 0
		SMVAAGL.M2		OR9, R19:R18
	|	SSTW		R36, *+AR15[5]
	|	SADD.M1		8,R36,R36
.LVL54:
		SSTW		R37, *+AR15[4]
		SMVAAGH.M2		OR9, R19:R18
		SNOP		1
		SBR		printf
	|	SSTDW		R19:R18, *+AR15[1]
		SSTW		R30, *+AR15[6]
	|	SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SSTW		R31, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL55:
.L39:
	.loc 1 146 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L40, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL56:
.L40:
	.loc 1 147 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L41, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL57:
.L41:
.LBE2:
	.loc 1 116 0
		SMOVIL		40, R15
		SEQ		R15, R36, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.LVL58:
.L21:
	.loc 1 115 0
		SADD.M2		8,R37,R37
	|	SMOVIL		136, R21
	|	SADD.M1		16,R34,R17
.LVL59:
		SEQ		R21, R37, R2
	[!R2]	SBR		.L11
	|	SLTU		R17, R34, R19
	|	SMOV.M2		R17, R34
		SADD.M2		R35,R19,R35
		SNOP		5
	;; condjump to .L11 occurs
	.loc 1 150 0
		SLDDW		*+AR15[12], R7:R6
		SLDDW		*+AR15[16], R63:R62
		SLDDW		*+AR15[6], R31:R30
.LVL60:
		SLDDW		*+AR15[7], R33:R32
		SLDDW		*+AR15[8], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL61:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[13], R7:R6
		SLDDW		*+AR15[9], R37:R36
.LVL62:
		SLDDW		*+AR15[10], R39:R38
		SLDDW		*+AR15[11], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[14], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[15], R7:R6
.LVL63:
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
.LVL64:
.L13:
.LBB3:
	.loc 1 144 0
		SMOVIL.L		.LC1, R46
		SMOVIH.L		.LC1, R46
		SBR		printf
	|	SMOVIH4.L		.LC1, R47
		SSTDW		R47:R46, *+AR15[1]
	|	SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL65:
.L42:
	.loc 1 145 0
		SMVAAGL.M2		OR9, R19:R18
	|	SSTW		R36, *+AR15[5]
	|	SADD.M1		8,R36,R36
.LVL66:
		SSTW		R37, *+AR15[4]
		SMVAAGH.M2		OR9, R19:R18
		SNOP		1
		SBR		printf
	|	SSTDW		R19:R18, *+AR15[1]
		SSTW		R30, *+AR15[6]
	|	SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
		SSTW		R31, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL67:
.L43:
	.loc 1 146 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L44, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL68:
.L44:
	.loc 1 147 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L45, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL69:
.L45:
.LBE3:
	.loc 1 116 0
		SMOVIL		40, R15
		SEQ		R15, R36, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SBR		.L21
		SNOP		6
	;; jump to .L21 occurs
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
	.size	h, 128
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
	.size	x, 384
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
	.short	8991
	.short	27716
	.short	-31149
	.short	22746
	.short	-5894
	.short	14305
	.short	27434
	.short	25671
	.short	-31795
	.short	2060
	.short	17006
	.short	7964
	.short	-8341
	.short	25810
	.short	-30260
	.short	19396
	.short	26400
	.short	25184
	.short	-4797
	.short	1036
	.short	-16132
	.short	12287
	.short	5364
	.short	204
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
	.byte	0x90,0x1
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
	.4byte	0x863
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_hM16_rM8A8X8/Debug"
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x98
	.byte	0x1
	.4byte	0xdf
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x251
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x98
	.4byte	0x251
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x98
	.4byte	0x251
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x98
	.4byte	0x25c
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x98
	.4byte	0x110
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x98
	.4byte	0x110
	.4byte	.LLST5
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0x99
	.4byte	0xdf
	.4byte	.LLST6
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x99
	.4byte	0xdf
	.4byte	.LLST7
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6f
	.4byte	0x110
	.byte	0x1
	.4byte	0x1ee
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL2
	.4byte	0x201
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL5
	.4byte	0x241
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
	.4byte	0x257
	.byte	0xc
	.4byte	0x103
	.byte	0xb
	.byte	0x8
	.4byte	0x103
	.byte	0x3
	.byte	0x1
	.string	"get_time_vc"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0xdf
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x36b
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xa0
	.4byte	0x378
	.4byte	.LLST9
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xa0
	.4byte	0x25c
	.4byte	.LLST10
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xa0
	.4byte	0x378
	.4byte	.LLST11
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0xa0
	.4byte	0x110
	.4byte	.LLST12
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0xa0
	.4byte	0x110
	.4byte	.LLST13
	.byte	0x5
	.string	"time1"
	.byte	0x1
	.byte	0xa1
	.4byte	0xdf
	.4byte	.LLST14
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0xa1
	.4byte	0xdf
	.4byte	.LLST15
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6f
	.4byte	0x110
	.byte	0x1
	.4byte	0x308
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL16
	.4byte	0x31b
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL19
	.4byte	0x35b
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
	.4byte	0x103
	.4byte	0x378
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x36b
	.byte	0xf
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x5f
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x737
	.byte	0x10
	.string	"cache"
	.byte	0x1
	.byte	0x60
	.4byte	0x737
	.4byte	0x40140004
	.byte	0x10
	.string	"cache1"
	.byte	0x1
	.byte	0x61
	.4byte	0x737
	.4byte	0x40140000
	.byte	0x5
	.string	"cache_ok"
	.byte	0x1
	.byte	0x62
	.4byte	0x73d
	.4byte	.LLST17
	.byte	0x5
	.string	"xAddr"
	.byte	0x1
	.byte	0x69
	.4byte	0x378
	.4byte	.LLST18
	.byte	0x5
	.string	"rAddr"
	.byte	0x1
	.byte	0x69
	.4byte	0x378
	.4byte	.LLST19
	.byte	0x11
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x6b
	.4byte	0x110
	.byte	0x1
	.4byte	0x417
	.byte	0x7
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x6c
	.4byte	0x110
	.byte	0x1
	.4byte	0x431
	.byte	0x7
	.byte	0
	.byte	0x5
	.string	"time_cn"
	.byte	0x1
	.byte	0x6e
	.4byte	0xdf
	.4byte	.LLST20
	.byte	0x12
	.string	"time_vc"
	.byte	0x1
	.byte	0x6e
	.4byte	0xdf
	.byte	0x2
	.byte	0x90
	.byte	0x2f
	.byte	0x13
	.string	"c_time"
	.byte	0x1
	.byte	0x6f
	.4byte	0xdf
	.byte	0x6
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6f
	.4byte	0x110
	.byte	0x1
	.4byte	0x477
	.byte	0x7
	.byte	0
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x70
	.4byte	0x110
	.byte	0x13
	.string	"j"
	.byte	0x1
	.byte	0x70
	.4byte	0x110
	.byte	0x5
	.string	"nh"
	.byte	0x1
	.byte	0x70
	.4byte	0x110
	.4byte	.LLST21
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x70
	.4byte	0x110
	.4byte	.LLST22
	.byte	0x14
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6e0
	.byte	0x5
	.string	"vecx_len"
	.byte	0x1
	.byte	0x75
	.4byte	0x110
	.4byte	.LLST23
	.byte	0x13
	.string	"vecr_len"
	.byte	0x1
	.byte	0x76
	.4byte	0x110
	.byte	0x11
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x78
	.4byte	0x110
	.byte	0x1
	.4byte	0x4e9
	.byte	0x7
	.byte	0
	.byte	0x10
	.string	"hAddr"
	.byte	0x1
	.byte	0x7e
	.4byte	0x25c
	.4byte	0x40100000
	.byte	0x11
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x83
	.4byte	0x110
	.byte	0x1
	.4byte	0x519
	.byte	0x7
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x92
	.4byte	0x110
	.byte	0x1
	.4byte	0x52e
	.byte	0x7
	.byte	0
	.byte	0x8
	.llong	.LVL41
	.4byte	0x541
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL42
	.4byte	0x554
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x8
	.llong	.LVL43
	.4byte	0x56d
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
	.llong	.LVL44
	.4byte	0x587
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
	.llong	.LVL45
	.4byte	0x59b
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x8
	.llong	.LVL46
	.4byte	0x5b9
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x35
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL49
	.4byte	0x5ee
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x35
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x34
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
	.llong	.LVL51
	.4byte	0x611
	.byte	0x9
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.byte	0x90,0x7f
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
	.llong	.LVL55
	.4byte	0x647
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x2e
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0x78
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x35
	.byte	0
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
	.llong	.LVL56
	.4byte	0x660
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
	.llong	.LVL57
	.4byte	0x67a
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
	.llong	.LVL67
	.4byte	0x6b0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x2e
	.byte	0
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0x78
	.byte	0x9
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x35
	.byte	0
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
	.llong	.LVL68
	.4byte	0x6c9
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
	.llong	.LVL69
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
	.4byte	0x6fb
	.byte	0x9
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL33
	.4byte	0x710
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x8
	.llong	.LVL34
	.4byte	0x725
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0xa
	.llong	.LVL35
	.byte	0x9
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x110
	.byte	0x15
	.4byte	0x110
	.byte	0x16
	.4byte	0x103
	.4byte	0x752
	.byte	0x17
	.4byte	0x134
	.byte	0xbf
	.byte	0
	.byte	0x18
	.string	"x"
	.byte	0x1
	.byte	0x2c
	.4byte	0x766
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.byte	0xc
	.4byte	0x742
	.byte	0x16
	.4byte	0x103
	.4byte	0x77b
	.byte	0x17
	.4byte	0x134
	.byte	0x3f
	.byte	0
	.byte	0x18
	.string	"h"
	.byte	0x1
	.byte	0x4a
	.4byte	0x78f
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.byte	0xc
	.4byte	0x76b
	.byte	0x16
	.4byte	0x103
	.4byte	0x7a4
	.byte	0x17
	.4byte	0x134
	.byte	0x9f
	.byte	0
	.byte	0x18
	.string	"rAddr_DDR_cn"
	.byte	0x1
	.byte	0x57
	.4byte	0x794
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.byte	0x16
	.4byte	0x103
	.4byte	0x7d4
	.byte	0x19
	.4byte	0x134
	.2byte	0x3ff
	.byte	0
	.byte	0x18
	.string	"rAddr_DDR_vc"
	.byte	0x1
	.byte	0x58
	.4byte	0x7c3
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.byte	0x18
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x5a
	.4byte	0x251
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.byte	0x18
	.string	"hAddr_DDR"
	.byte	0x1
	.byte	0x5b
	.4byte	0x251
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.byte	0x18
	.string	"ptr_r_cn"
	.byte	0x1
	.byte	0x5c
	.4byte	0x846
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.byte	0xc
	.4byte	0x25c
	.byte	0x18
	.string	"ptr_r_vc"
	.byte	0x1
	.byte	0x5d
	.4byte	0x846
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
	.byte	0x19
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
	.byte	0x90,0x1
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.llong	.LVL31
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL40
	.llong	.LVL61
	.2byte	0x1
	.byte	0x58
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL41
	.llong	.LVL63
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL48
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.llong	.LVL57
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL59
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x35
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL37
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.byte	0x39
	.llong	.LVL38
	.llong	.LVL39
	.2byte	0x9
	.byte	0x8a
	.byte	0
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL39
	.llong	.LVL54
	.2byte	0xc
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL54
	.llong	.LVL55-1
	.2byte	0xe
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL55-1
	.llong	.LVL58
	.2byte	0xe
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x38
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL64
	.llong	.LVL66
	.2byte	0xc
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL66
	.llong	.LVL67-1
	.2byte	0xe
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL67-1
	.llong	.LFE3
	.2byte	0xe
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x38
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
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"GetTimerCount"

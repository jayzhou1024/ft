	.file	"main.c"
.text;
.Ltext0:
	.section	.text.random_x_sp,"ax",@progbits
	.align	2
	.global	random_x_sp
	.type	random_x_sp, @function
random_x_sp:
.LFB4:
	.file 1 "../main.c"
	.loc 1 87 0
.LVL0:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 90 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL1:
.LCFI1:
	.loc 1 87 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
.LCFI2:
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 90 0
	[!R0]	SBR		.L1
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 87 0
		SLTU		R32, R10, R35
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
.LCFI3:
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L1 occurs
.LCFI4:
	.loc 1 87 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL2:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 91 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL3:
.L3:
		SBR		rand
		SMOVIL		.L9, R62
		SMOVIH		.L9, R62
		SMOVIH4.L		.L9, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL4:
.L9:
		SFINTS32.M2		R10,R14
	|	SLTU		R32, R30, R15
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 90 0
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 91 0
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 90 0
	[!R0]	SBR		.L3
		SNOP		1
	.loc 1 91 0
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L3 occurs
.L1:
	.loc 1 93 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDDW		*+AR15[1], R31:R30
	|	SMOVIL		0, R7
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
.LVL5:
		SLDDW		*+AR15[4], R37:R36
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LFE4:
	.size	random_x_sp, .-random_x_sp
	.section	.text.random_h_sp,"ax",@progbits
	.align	2
	.global	random_h_sp
	.type	random_h_sp, @function
random_h_sp:
.LFB5:
	.loc 1 95 0
.LVL6:
	.loc 1 97 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 98 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R1
	.loc 1 97 0
		SMOVIH		1073741824, R51
	.loc 1 95 0
		SMOVIL		-56, R6
	.loc 1 97 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-1, R7
	.loc 1 95 0
		SADDA.M1		R7:R6,AR15,AR15
.LCFI5:
	.loc 1 97 0
		SFMULD.M1		R49:R48, R43:R42, R47:R46
	|	SLT		R50, R12, R0
.LCFI6:
	.loc 1 95 0
		SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
		SSTW		R30, *+AR15[3]
.LCFI7:
		SMVAAGL.M2		AR0, R31:R30
		SNOP		1
.LCFI8:
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R36, *+AR15[9]
.LCFI9:
	.loc 1 97 0
		SFSUBD.M1	R47:R46, R51:R50, R3:R2
	|	SSTW		R34, *+AR15[7]
	.loc 1 95 0
		SADD.M2		4,R30,R34
		SNOP		1
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
.LCFI10:
	.loc 1 97 0
		SFMULD.M2		R43:R42, R3:R2, R9:R8
	|	SLTU		R34, R30, R37
	.loc 1 98 0
	[!R0]	SBR		.L10
	|	SADD.M1		R31,R37,R26
	.loc 1 95 0
		SSTW		R32, *+AR15[5]
		SSTW		R35, *+AR15[8]
		SSHFAR		31, R1, R3
		SSHFLL		1, R12, R43
		SSTW		R38, *+AR15[11]
.LCFI11:
		SSTDW		R63:R62, *+AR15[6]
	;; condjump to .L10 occurs
.LCFI12:
	.loc 1 97 0
		SFMULD.M2		R49:R48, R9:R8, R11:R10
	|	SLTU		R43, R12, R13
.LVL7:
	.loc 1 99 0
		SMOVIL		805306368, R38
		SMOVIH		805306368, R38
		SNOP		3
	.loc 1 97 0
		SFSUBD.M2	R11:R10, R51:R50, R15:R14
		SNOP		4
		SFMULD.M2		R9:R8, R15:R14, R17:R16
		SNOP		1
	.loc 1 95 0
		SLTU		R12, R1, R9
		SADD.M1		R3,R9,R11
		SSHFLL		1, R11, R15
		SADD.M1		R15,R13,R12
.LVL8:
	.loc 1 97 0
		SFMULD.M2		R49:R48, R17:R16, R19:R18
	|	SSHFLL		1, R12, R45
	.loc 1 95 0
		SNOP		5
	.loc 1 97 0
		SFSUBD.M2	R19:R18, R51:R50, R21:R20
		SNOP		1
	.loc 1 95 0
		SSHFLL		1, R1, R19
		SNOP		2
	.loc 1 97 0
		SFMULD.M2		R17:R16, R21:R20, R23:R22
		SNOP		1
	.loc 1 95 0
		SLTU		R44, R43, R17
		SADD.M1		R45,R17,R45
	|	SSHFLL		2, R1, R21
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR0,OR0
		SNOP		1
	.loc 1 97 0
		SFADDD.M1		R23:R22, R23:R22, R25:R24
	|	SADD.M2		R21,R34,R35
		SMVAAGL.M2		OR0, R33:R32
	|	SLTU		R35, R34, R44
	.loc 1 95 0
		SLTU		R19, R1, R23
		SSHFLL		1, R23, R27
	|	SMVAAGH.M2		OR0, R33:R32
		SNOP		1
	.loc 1 97 0
		SFDPSP32.M2		R25:R24, R36
		SNOP		1
.LVL9:
	.loc 1 95 0
		SLTU		R21, R19, R25
		SADD.M2		R27,R25,R28
		SADD.M2		R28,R26,R29
		SADD.M2		R29,R44,R37
.LVL10:
.L12:
	.loc 1 99 0
		SBR		rand
		SMOVIL		.L18, R62
		SMOVIH		.L18, R62
		SMOVIH4.L		.L18, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL11:
.L18:
		SFINTS32.M2		R10,R49
	|	SLTU		R34, R30, R51
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 98 0
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R51,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R50
	.loc 1 99 0
		SFMULS32.M2		R49, R38, R54
	|	SLTU		R50, R32, R52
	|	SADD.M1		-1,R33,R53
		SMOV.M2		R50, R32
	|	SADD.M1		R53,R52,R33
	.loc 1 95 0
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 99 0
		SFMULS32.M2		R54, R36, R55
	|	SADD.M1		4,R34,R34
	.loc 1 98 0
	[!R0]	SBR		.L12
		SNOP		2
	.loc 1 99 0
		SSTW		R55, *AR12
	|	SFSUBS32.M2		R55, R36, R56
	.loc 1 100 0
		SNOP		2
		SSTW		R56, *AR10
	;; condjump to .L12 occurs
.LVL12:
.L10:
	.loc 1 102 0
		SLDDW		*+AR15[6], R63:R62
	|	SMOVIL		56, R6
		SLDW		*+AR15[3], R30
	|	SMOVIL		0, R7
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SLDW		*+AR15[6], R33
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		3
		SLDW		*+AR15[7], R34
		SLDW		*+AR15[8], R35
		SLDW		*+AR15[9], R36
		SBR		R62
	|	SLDW		*+AR15[10], R37
		SLDW		*+AR15[11], R38
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LFE5:
	.size	random_h_sp, .-random_h_sp
	.section	.text.getTime_vc,"ax",@progbits
	.align	2
	.global	getTime_vc
	.type	getTime_vc, @function
getTime_vc:
.LFB6:
	.loc 1 104 0
.LVL13:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI13:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI14:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI15:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL14:
.LCFI16:
	.loc 1 106 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 104 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L20, R62
.LCFI17:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI18:
	.loc 1 106 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL15:
.L20:
	.loc 1 107 0
		SBR		DSPF_sp_fir_r2_vc
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 106 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L21, R62
.LVL16:
	.loc 1 107 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L21, R62
.LVL17:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L21, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_r2_vc occurs, with return value
		SNOP		2
.LVL18:
.L21:
	.loc 1 108 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL19:
	.loc 1 110 0
.L22:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL20:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL21:
		SLDW		*+AR15[4], R31
.LVL22:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL23:
		SMVAGA36.M2		R7:R6, AR8
.LVL24:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL25:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL26:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE6:
	.size	getTime_vc, .-getTime_vc
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB7:
	.loc 1 112 0
.LVL27:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI19:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI20:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI21:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL28:
.LCFI22:
	.loc 1 114 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 112 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L24, R62
.LCFI23:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI24:
	.loc 1 114 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL29:
.L24:
	.loc 1 115 0
		SBR		DSPF_sp_fir_r2_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 114 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L25, R62
.LVL30:
	.loc 1 115 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L25, R62
.LVL31:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L25, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_r2_cn occurs
		SNOP		2
.LVL32:
.L25:
	.loc 1 116 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL33:
	.loc 1 118 0
.L26:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL34:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL35:
		SLDW		*+AR15[4], R31
.LVL36:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL37:
		SMVAGA36.M2		R7:R6, AR8
.LVL38:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL39:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL40:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE7:
	.size	getTime_cn, .-getTime_cn
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure  max_pct_diff = %f"
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  vc_cycle:%-4d\t \n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 21 0
.LVL41:
		SMOVIL		-1832, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI25:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI26:
	.loc 1 26 0
		SMOVIL		1075052544, R42
	|	SSTDW		R63:R62, *+AR15[227]
.LCFI27:
	.loc 1 21 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTDW		R41:R40, *+AR15[224]
	.loc 1 25 0
		SMOVIL		0, R47
	.loc 1 26 0
		SMOVIH		1075052544, R42
	|	SMVAGA36.M2		R47:R46, AR12
	|	SADD.LS		AR15,52,AR10
		SMOVIL		0, R43
	.loc 1 21 0
		SSTDW		R7:R6, *+AR15[228]
.LCFI28:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R39:R38, *+AR15[223]
	.loc 1 25 0
		SMOVIL		1, R44
	|	SMVAGA36.M1		R43:R42, AR11
	.loc 1 21 0
		SMVAAGH.M1		OR8, R7:R6
		SSTDW		R37:R36, *+AR15[222]
		SSTDW		R7:R6, *+AR15[226]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
.LCFI29:
		SMVAAGH.M2		AR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[221]
		SSTDW		R33:R32, *+AR15[220]
		SNOP		2
		SSTDW		R7:R6, *+AR15[225]
		SSTDW		R31:R30, *+AR15[219]
		SNOP		2
.LCFI30:
	.loc 1 25 0
		SSTW		R44, *AR12
	|	SMVAGA36.M2		R43:R42, AR12
	.loc 1 26 0
		SSTW		R44, *AR11
		SNOP		2
	.loc 1 27 0
		SSTW		R44, *AR10
		SNOP		2
.LVL42:
	.loc 1 28 0
		SLDW		*AR10, R0
		SNOP		5
	[!R0]	SBR		.L30
		SNOP		6
	;; condjump to .L30 occurs
.L43:
	.loc 1 29 0
		SLDW		*AR12, R42
		SNOP		5
.LVL43:
		SSTW		R42, *AR10
		SNOP		2
.LVL44:
	.loc 1 28 0
		SLDW		*AR10, R1
		SNOP		5
	[R1]	SBR		.L43
		SNOP		6
	;; condjump to .L43 occurs
.L30:
	.loc 1 36 0
		SMOVIL		1160, R44
	|	SADD.LS		AR15,56,AR14
		SMOVIL		0, R45
		SADDA.M1		R45:R44,AR15,OR15
	|	SMOVIL		0, R42
	|	SMVAAGL.M2		AR14, R35:R34
		SMOVIL		0, R43
		SMVAAGL.M1		OR15, R3:R2
	|	SMOVIL		1092616192, R14
	|	SMVAAGH.M2		AR14, R35:R34
	.loc 1 37 0
		SMOVIH		1092616192, R14
	.loc 1 36 0
		SMVAAGH.M2		OR15, R3:R2
	|	SMOVIL		128, R12
	.loc 1 55 0
		SMOVIL		0, R32
	.loc 1 36 0
		SMVAGA36.M1		R3:R2, AR10
	|	SMVAGA36.M2		R3:R2, OR11
	|	SMOVIL		0, R3
		SMOVIL.L		.LC2, R36
		SSTDW		R43:R42, *AR10++[1]
	|	SMOVIL		1073741824, R41
	.loc 1 57 0
		SMOVIL		32, R33
	.loc 1 37 0
		SADD.LS		OR11,60,OR8
	|	SMOVIH		0, R32
		SMOVIH.L		.LC2, R36
	.loc 1 36 0
		SSTDW		R43:R42, *AR10++[1]
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH4.L		.LC2, R37
	.loc 1 71 0
		SMOVIH		1073741824, R41
	.loc 1 37 0
		SMVAAGH.M2		OR8, R11:R10
	.loc 1 36 0
		SSTDW		R43:R42, *AR10++[1]
		SNOP		2
		SSTDW		R43:R42, *AR10++[1]
		SNOP		2
		SSTDW		R43:R42, *AR10++[1]
		SNOP		2
	.loc 1 37 0
		SBR		random_x_sp
	|	SSTDW		R43:R42, *AR10++[1]
	.loc 1 36 0
		SMOVIL		.L52, R62
		SMOVIH		.L52, R62
		SSTDW		R43:R42, *AR10++[1]
	|	SMOVIH4.L		.L52, R63
		SNOP		2
	.loc 1 37 0
	;; call to random_x_sp occurs
		SSTW		R3, *AR10
.LVL45:
.L52:
	.loc 1 38 0
		SBR		random_h_sp
	|	SMOVIL		16, R12
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L53, R62
		SMVAAGH.M2		AR14, R11:R10
	|	SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
	;; call to random_h_sp occurs
		SNOP		3
.LVL46:
.L53:
	.loc 1 43 0
		SBR		vmalloc
	|	SMOVIL		0, R11
		SMOVIL		.L54, R62
		SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
		SMOVIL		576, R10
	;; call to vmalloc occurs, with return value
		SNOP		2
.LVL47:
.L54:
	.loc 1 44 0
		SBR		vmalloc
	|	SMOV.M2		R10, R8
	|	SMOVIL		0, R11
	.loc 1 43 0
		SMOV.M2		R8, R42
	|	SMOVIL		.L55, R62
		SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
		SSHFAR		31, R8, R43
		SMVAGA36.M2		R43:R42, AR8
	|	SMOVIL		512, R10
.LVL48:
	.loc 1 44 0
	;; call to vmalloc occurs, with return value
		SNOP		1
.LVL49:
.L55:
	.loc 1 46 0
		SMOVIL		1160, R42
	|	SMOV.M1		R10, R9
	|	SMVAAGL.M2		AR8, R13:R12
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M2		R43:R42,AR15,OR12
	|	SMOV.M1		R9, R42
	|	SMOVIL		.L56, R62
		SMVAAGH.M1		AR8, R13:R12
	|	SMOVIH		.L56, R62
		SMVAAGL.M1		OR12, R11:R10
	|	SMOVIH4.L		.L56, R63
	.loc 1 44 0
		SSHFAR		31, R9, R43
		SMVAGA36.M1		R43:R42, OR8
	|	SMVAAGH.M2		OR12, R11:R10
	|	SMOVIL		572, R14
.LVL50:
	.loc 1 46 0
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL51:
.L56:
	.loc 1 47 0
		SBR		M7002_datatrans
	|	SMOVIL		0, R13
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L57, R62
		SMVAAGH.M2		AR14, R11:R10
	|	SMOVIH		.L57, R62
		SMOVIH4.L		.L57, R63
		SMOVIL		64, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074790400, R12
.LVL52:
.L57:
	.loc 1 49 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L58, R62
		SMOVIH		.L58, R62
		SMOVIH4.L		.L58, R63
		SMOVIL		0, R10
	;; call to SetTimerPeriod occurs, with return value
		SNOP		2
.LVL53:
.L58:
	.loc 1 50 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L59, R62
		SMOVIH		.L59, R62
		SMOVIH4.L		.L59, R63
	;; call to TimerStart occurs, with return value
		SNOP		3
.LVL54:
.L59:
	.loc 1 53 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L60, R62
		SMOVIH		.L60, R62
		SMOVIH4.L		.L60, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL55:
.L60:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R30
	|	SMOVIL		0, R10
		SMOVIL		.L61, R62
		SMOVIH		.L61, R62
		SMOVIH4.L		.L61, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL56:
.L61:
		SMOVIL		136, R42
	|	SSUB.M2		R10, R30, R10
		SMOVIL		0, R43
	|	SSTW		R10, *+AR15[8]
.LVL57:
		SADDA.M2		R43:R42,AR15,OR13
	|	SMOVIL		648, R42
		SMOVIL		0, R43
		SADDA.M1		-4,OR13,OR14
	|	SADDA.M2		R43:R42,AR15,OR11
		SNOP		1
		SMVAAGL.M1		OR14, R31:R30
	|	SADDA.M2		-4,OR11,AR14
		SNOP		1
		SMVAAGH.M2		OR14, R31:R30
		SNOP		1
.LVL58:
.L29:
		SMVAAGL.M2		AR14, R13:R12
	|	SSHFLL		2, R33, R45
	.loc 1 21 0
		SSTW		R45, *+AR15[9]
	|	SMOVIL		4, R38
		SMVAAGH.M2		AR14, R13:R12
		SNOP		1
		SSTDW		R13:R12, *+AR15[5]
.LVL59:
.L38:
	.loc 1 60 0
		SMOVIL		136, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR12
	|	SMOVIL		.L62, R62
		SMOVIH		.L62, R62
		SMVAAGL.M2		OR12, R11:R10
	|	SMOVIH4.L		.L62, R63
		SMOVIL		0, R12
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIL		512, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R15
.LVL60:
.L62:
	.loc 1 61 0
		SMOVIL		648, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR13
	|	SMOVIL		.L63, R62
		SMOVIH		.L63, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L63, R63
		SMOVIL		0, R15
		SMVAAGH.M2		OR13, R11:R10
	|	SMOVIL		512, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R12
.LVL61:
.L63:
	.loc 1 63 0
		SMOVIL		648, R42
	|	SMVAAGL.M2		OR8, R13:R12
	|	SLDW		*+AR15[9], R14
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIL		.L64, R62
		SMOVIH		.L64, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L64, R63
		SNOP		1
		SMVAAGH.M2		OR14, R11:R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL62:
.L64:
	.loc 1 65 0
		SMOVIL		1160, R42
	|	SMVAGA36.M2		R35:R34, OR12
	|	SMOV.M1		R38, R16
		SMOVIL		0, R43
	|	SMOV.M1		R33, R18
		SADDA.M1		R43:R42,AR15,OR11
	|	SMOVIL		136, R42
	|	SMVAAGL.M2		OR12, R13:R12
		SMOVIL		0, R43
	|	SBR		getTime_cn
		SADDA.M1		R43:R42,AR15,OR13
	|	SMVAAGL.M2		OR11, R11:R10
	|	SMOVIL		.L65, R62
		SMVAAGH.M1		OR12, R13:R12
	|	SMOVIH		.L65, R62
		SMVAAGL.M1		OR13, R15:R14
	|	SMVAAGH.M2		OR11, R11:R10
	|	SMOVIH4.L		.L65, R63
		SNOP		1
		SMVAAGH.M2		OR13, R15:R14
	;; call to getTime_cn occurs, with return value
		SNOP		1
.LVL63:
.L65:
	.loc 1 66 0
		SBR		getTime_vc
	|	SMOV.M2		R38, R16
	|	SMOV.M1		R33, R18
	|	SMOVIL		0, R13
	.loc 1 65 0
		SMOV.M1		R10, R40
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		.L66, R62
.LVL64:
	.loc 1 66 0
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIH		.L66, R62
.LVL65:
		SMVAAGH.M1		OR8, R15:R14
	|	SMOVIH4.L		.L66, R63
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		1074790400, R12
		SMOVIH		1074790400, R12
	;; call to getTime_vc occurs, with return value
		SNOP		1
.LVL66:
.L66:
	.loc 1 68 0
		SMOVIL		648, R42
	|	SMOV.M1		R10, R39
	|	SMVAAGL.M2		OR8, R11:R10
	|	SLDW		*+AR15[9], R14
.LVL67:
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL		.L67, R62
		SMOVIH		.L67, R62
		SMVAAGL.M2		OR14, R13:R12
	|	SMOVIH4.L		.L67, R63
		SNOP		1
		SMVAAGH.M2		OR14, R13:R12
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL68:
.L67:
		SLDDW		*+AR15[5], R43:R42
	|	SMOVIL		1120403456, R55
	|	SMOV.M2		R30, R44
	|	SMOV.M1		R31, R45
	.loc 1 72 0
		SMOVIL		0, R54
		SMOVIL		-2147483648, R56
	.loc 1 70 0
		SMOVIL		0, R49
	.loc 1 71 0
		SMOVIH		1120403456, R55
	.loc 1 72 0
		SMOVIH		0, R54
		SMOVIH		-2147483648, R56
.LVL69:
.L34:
		SADD.M2		4,R44,R46
	|	SADD.M1		4,R42,R11
		SLTU		R46, R44, R48
	|	SMOV.M2		R46, R44
	|	SADD.M1		1,R49,R49
		SADD.M2		R45,R48,R45
	|	SLTU		R11, R42, R13
	|	SMOV.M1		R11, R42
	.loc 1 21 0
		SMVAGA36.M2		R45:R44, AR10
	|	SADD.M1		R43,R13,R43
	|	SLT		R49, R33, R0
	.loc 1 70 0
		SNOP		1
	.loc 1 71 0
		SLDW		*AR10, R15
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 21 0
		SNOP		1
	.loc 1 71 0
		SLDW		*AR10, R51
		SNOP		3
		SFRCPS32.M2		R15, R16
		SFMULS32.M2		R15, R16, R17
		SFSUBS32.M1		R51, R15, R18
		SNOP		2
		SFSUBS32.M2		R17, R41, R19
		SNOP		2
		SFMULS32.M2		R16, R19, R20
		SNOP		3
		SFMULS32.M2		R15, R20, R21
		SNOP		3
		SFSUBS32.M2		R21, R41, R22
		SNOP		2
		SFMULS32.M2		R20, R22, R23
		SNOP		3
		SFMULS32.M2		R18, R23, R24
		SNOP		3
		SFMULS32.M2		R24, R55, R25
		SNOP		3
.LVL70:
	.loc 1 72 0
		SFCMPLS32.M2		R25, R54, R1
	[R1]	SBR		.L49
		SNOP		6
	;; condjump to .L49 occurs
.L31:
	.loc 1 73 0
		SFCMPGS32.M2		R25, R32, R2
	[!R2]	SBR		.L33
		SNOP		6
	;; condjump to .L33 occurs
		SMOV.M2		R25, R32
.LVL71:
.L33:
	.loc 1 70 0
	[R0]	SBR		.L34
		SNOP		6
	;; condjump to .L34 occurs
	.loc 1 75 0
		SFSPDP32T.M2		R32, R43:R42
	|	SMOVIL		1202590843, R44
		SMOVIL		1065646817, R45
		SMOVIH		1202590843, R44
		SMOVIH		1065646817, R45
		SFCMPGD.M2		R43:R42, R45:R44, R0
		SNOP		1
	[!R0]	SBR		.L47
		SNOP		6
	;; condjump to .L47 occurs
	.loc 1 76 0
		SSTDW		R43:R42, *+AR15[2]
	|	SMOVIL.L		.LC0, R42
		SMOVIH4.L		.LC0, R43
		SBR		printf
	|	SMOVIH.L		.LC0, R42
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L68, R62
		SMOVIH		.L68, R62
		SMOVIH4.L		.L68, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL72:
.L68:
	.loc 1 80 0
		SLDW		*+AR15[8], R26
		SSTW		R38, *+AR15[5]
	|	SADD.M2		2,R38,R38
		SSTDW		R37:R36, *+AR15[1]
		SNOP		3
		SBR		printf
	|	SSUB.M2		R26, R40, R27
	|	SSUB.M1		R26, R39, R28
	|	SSTW		R33, *+AR15[4]
		SSTW		R27, *+AR15[6]
	|	SMOVIL		.L69, R62
		SMOVIH		.L69, R62
		SMOVIH4.L		.L69, R63
		SSTW		R28, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL73:
.L69:
	.loc 1 58 0
		SMOVIL		18, R43
		SEQ		R43, R38, R1
	[!R1]	SBR		.L38
		SNOP		6
	;; condjump to .L38 occurs
.L50:
	.loc 1 57 0
		SADD.M2		16,R33,R33
	|	SMOVIL		144, R29
.LVL74:
		SEQ		R29, R33, R2
	[!R2]	SBR		.L29
		SNOP		6
	;; condjump to .L29 occurs
	.loc 1 83 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L70, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L70, R62
		SMOVIH4.L		.L70, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL75:
.L70:
	.loc 1 84 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L71, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L71, R62
		SMOVIH4.L		.L71, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL76:
	.loc 1 85 0
.L71:
		SLDDW		*+AR15[225], R7:R6
		SLDDW		*+AR15[227], R63:R62
		SLDDW		*+AR15[219], R31:R30
		SLDDW		*+AR15[220], R33:R32
.LVL77:
		SLDDW		*+AR15[221], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL78:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[226], R7:R6
		SLDDW		*+AR15[222], R37:R36
		SLDDW		*+AR15[223], R39:R38
.LVL79:
		SLDDW		*+AR15[224], R41:R40
		SNOP		2
.LVL80:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		2
.LVL81:
		SLDDW		*+AR15[228], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		1832, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL82:
.L49:
		SBR		.L31
	|	SXOR		R56, R25, R25
	.loc 1 72 0
		SNOP		6
.LVL83:
	;; jump to .L31 occurs
.LVL84:
.L47:
	.loc 1 78 0
		SMOVIL.L		.LC1, R42
		SMOVIH4.L		.LC1, R43
		SBR		printf
	|	SMOVIH.L		.LC1, R42
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL85:
.L72:
	.loc 1 80 0
		SLDW		*+AR15[8], R26
		SSTW		R38, *+AR15[5]
	|	SADD.M2		2,R38,R38
		SSTDW		R37:R36, *+AR15[1]
		SNOP		3
		SBR		printf
	|	SSUB.M2		R26, R40, R27
	|	SSUB.M1		R26, R39, R28
	|	SSTW		R33, *+AR15[4]
		SSTW		R27, *+AR15[6]
	|	SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SSTW		R28, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL86:
.L73:
	.loc 1 58 0
		SMOVIL		18, R43
		SEQ		R43, R38, R1
	[!R1]	SBR		.L38
		SNOP		6
	;; condjump to .L38 occurs
		SBR		.L50
		SNOP		6
	;; jump to .L50 occurs
.LFE3:
	.size	main, .-main
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
	.byte	0xb0
	.byte	0x8
	.byte	0xb1
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xb2
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0xb4
	.byte	0x4
	.byte	0xb5
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
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
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xb2
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xb5
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xb0
	.byte	0x9
	.byte	0xb3
	.byte	0x6
	.byte	0xb6
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI13-.LFB6
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI19-.LFB7
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI25-.LFB3
	.byte	0xe
	.byte	0xa8,0xe
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xb8
	.byte	0xa
	.byte	0xb9
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x8e
	.byte	0x2
	.byte	0xb6
	.byte	0xc
	.byte	0xb7
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xb4
	.byte	0xe
	.byte	0xb5
	.byte	0xd
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0xb2
	.byte	0x10
	.byte	0xb3
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xb0
	.byte	0x12
	.byte	0xb1
	.byte	0x11
	.byte	0x88
	.byte	0x8
	.byte	0xae
	.byte	0x14
	.byte	0xaf
	.byte	0x13
	.align	3
.LEFDE8:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x951
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fir_r2/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.string	"random_x_sp"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1c8
	.byte	0x4
	.string	"x1"
	.byte	0x1
	.byte	0x57
	.4byte	0x1c8
	.4byte	.LLST1
	.byte	0x4
	.string	"n"
	.byte	0x1
	.byte	0x57
	.4byte	0x111
	.4byte	.LLST2
	.byte	0x4
	.string	"factor"
	.byte	0x1
	.byte	0x57
	.4byte	0x7c
	.4byte	.LLST3
	.byte	0x5
	.string	"rand_midpoint"
	.byte	0x1
	.byte	0x58
	.4byte	0x7c
	.byte	0x4
	.4byte	0x4e800000
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x59
	.4byte	0x111
	.4byte	.LLST4
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x7c
	.byte	0x3
	.byte	0x1
	.string	"random_h_sp"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x24a
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x5f
	.4byte	0x1c8
	.4byte	.LLST6
	.byte	0x4
	.string	"n"
	.byte	0x1
	.byte	0x5f
	.4byte	0x111
	.4byte	.LLST7
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x60
	.4byte	0x111
	.4byte	.LLST8
	.byte	0x5
	.string	"frand_max"
	.byte	0x1
	.byte	0x61
	.4byte	0x7c
	.byte	0x4
	.4byte	0x4f000000
	.byte	0x6
	.string	"pair_sum"
	.byte	0x1
	.byte	0x61
	.4byte	0x7c
	.4byte	.LLST9
	.byte	0
	.byte	0x8
	.byte	0x1
	.string	"getTime_vc"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	0xe0
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x373
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x68
	.4byte	0x380
	.4byte	.LLST11
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x68
	.4byte	0x1c8
	.4byte	.LLST12
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x68
	.4byte	0x380
	.4byte	.LLST13
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x68
	.4byte	0x111
	.4byte	.LLST14
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x68
	.4byte	0x111
	.4byte	.LLST15
	.byte	0x6
	.string	"time1"
	.byte	0x1
	.byte	0x69
	.4byte	0xe0
	.4byte	.LLST16
	.byte	0x6
	.string	"time2"
	.byte	0x1
	.byte	0x69
	.4byte	0xe0
	.4byte	.LLST17
	.byte	0x9
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x35
	.4byte	0x111
	.byte	0x1
	.4byte	0x2ef
	.byte	0xa
	.byte	0
	.byte	0xb
	.byte	0x1
	.string	"DSPF_sp_fir_r2_vc"
	.byte	0x1
	.byte	0x6b
	.4byte	0x111
	.byte	0x1
	.4byte	0x310
	.byte	0xa
	.byte	0
	.byte	0xc
	.llong	.LVL15
	.4byte	0x323
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL18
	.4byte	0x363
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL19
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.4byte	0x7c
	.4byte	0x380
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x373
	.byte	0x8
	.byte	0x1
	.string	"getTime_cn"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0xe0
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x48e
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x70
	.4byte	0x1c8
	.4byte	.LLST19
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x70
	.4byte	0x1c8
	.4byte	.LLST20
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x70
	.4byte	0x1c8
	.4byte	.LLST21
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x70
	.4byte	0x111
	.4byte	.LLST22
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x70
	.4byte	0x111
	.4byte	.LLST23
	.byte	0x6
	.string	"time1"
	.byte	0x1
	.byte	0x71
	.4byte	0xe0
	.4byte	.LLST24
	.byte	0x6
	.string	"time2"
	.byte	0x1
	.byte	0x71
	.4byte	0xe0
	.4byte	.LLST25
	.byte	0x9
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x35
	.4byte	0x111
	.byte	0x1
	.4byte	0x42b
	.byte	0xa
	.byte	0
	.byte	0xc
	.llong	.LVL29
	.4byte	0x43e
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL32
	.4byte	0x47e
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL33
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x15
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x91d
	.byte	0x12
	.string	"cache"
	.byte	0x1
	.byte	0x16
	.4byte	0x91d
	.4byte	0x40140004
	.byte	0x12
	.string	"cache1"
	.byte	0x1
	.byte	0x17
	.4byte	0x91d
	.4byte	0x40140000
	.byte	0x6
	.string	"cache_ok"
	.byte	0x1
	.byte	0x18
	.4byte	0x923
	.4byte	.LLST27
	.byte	0x13
	.string	"hAddr_DDR"
	.byte	0x1
	.byte	0x1f
	.4byte	0x928
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x72
	.byte	0x13
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x20
	.4byte	0x938
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7a
	.byte	0x13
	.string	"rAddr_DDR_cn"
	.byte	0x1
	.byte	0x21
	.4byte	0x948
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x72
	.byte	0x13
	.string	"rAddr_DDR_vc"
	.byte	0x1
	.byte	0x22
	.4byte	0x948
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x76
	.byte	0x14
	.string	"len_vr"
	.byte	0x1
	.byte	0x28
	.4byte	0x111
	.byte	0x8
	.byte	0x14
	.string	"len_vx"
	.byte	0x1
	.byte	0x29
	.4byte	0x111
	.byte	0x9
	.byte	0x12
	.string	"hAddr"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1c8
	.4byte	0x40100000
	.byte	0x6
	.string	"xAddr"
	.byte	0x1
	.byte	0x2b
	.4byte	0x380
	.4byte	.LLST28
	.byte	0xb
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x2b
	.4byte	0x111
	.byte	0x1
	.4byte	0x598
	.byte	0xa
	.byte	0
	.byte	0x6
	.string	"rAddr"
	.byte	0x1
	.byte	0x2c
	.4byte	0x380
	.4byte	.LLST29
	.byte	0xb
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x2e
	.4byte	0x111
	.byte	0x1
	.4byte	0x5c8
	.byte	0xa
	.byte	0
	.byte	0xb
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x31
	.4byte	0x111
	.byte	0x1
	.4byte	0x5e6
	.byte	0xa
	.byte	0
	.byte	0xb
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x32
	.4byte	0x111
	.byte	0x1
	.4byte	0x600
	.byte	0xa
	.byte	0
	.byte	0x13
	.string	"time_vc"
	.byte	0x1
	.byte	0x34
	.4byte	0xe0
	.byte	0x2
	.byte	0x90
	.byte	0x37
	.byte	0x6
	.string	"time_cn"
	.byte	0x1
	.byte	0x34
	.4byte	0xe0
	.4byte	.LLST30
	.byte	0x6
	.string	"c_time"
	.byte	0x1
	.byte	0x35
	.4byte	0xe0
	.4byte	.LLST31
	.byte	0x9
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x35
	.4byte	0x111
	.byte	0x1
	.4byte	0x64a
	.byte	0xa
	.byte	0
	.byte	0x6
	.string	"nr"
	.byte	0x1
	.byte	0x36
	.4byte	0x111
	.4byte	.LLST32
	.byte	0x6
	.string	"nh"
	.byte	0x1
	.byte	0x36
	.4byte	0x111
	.4byte	.LLST33
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x36
	.4byte	0x111
	.4byte	.LLST34
	.byte	0x6
	.string	"pct_diff"
	.byte	0x1
	.byte	0x37
	.4byte	0x7c
	.4byte	.LLST35
	.byte	0x6
	.string	"max_pct_diff"
	.byte	0x1
	.byte	0x37
	.4byte	0x7c
	.4byte	.LLST36
	.byte	0xb
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x53
	.4byte	0x111
	.byte	0x1
	.4byte	0x6b4
	.byte	0xa
	.byte	0
	.byte	0xc
	.llong	.LVL45
	.4byte	0x6d4
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL46
	.4byte	0x6f3
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL51
	.4byte	0x713
	.byte	0xd
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x23c
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL52
	.4byte	0x733
	.byte	0xd
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL53
	.4byte	0x74c
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL54
	.4byte	0x75f
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL55
	.4byte	0x772
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL56
	.4byte	0x785
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL60
	.4byte	0x798
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL61
	.4byte	0x7ab
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL62
	.4byte	0x7ce
	.byte	0xd
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.byte	0xfc,0x71
	.byte	0x94
	.byte	0x4
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL63
	.4byte	0x7f8
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL66
	.4byte	0x82d
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL68
	.4byte	0x850
	.byte	0xd
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.byte	0xfc,0x71
	.byte	0x94
	.byte	0x4
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL72
	.4byte	0x869
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x6
	.byte	0xf5
	.byte	0x30
	.byte	0x7c
	.byte	0xf7
	.byte	0x85,0x1
	.byte	0
	.byte	0xc
	.llong	.LVL73
	.4byte	0x8ab
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x9
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0x91
	.byte	0xf8,0x71
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x9
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0x91
	.byte	0xf8,0x71
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7e
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL75
	.4byte	0x8c4
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL76
	.4byte	0x8de
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL86
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x9
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0x91
	.byte	0xf8,0x71
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x9
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0x91
	.byte	0xf8,0x71
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7e
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x111
	.byte	0x15
	.4byte	0x111
	.byte	0x16
	.4byte	0x7c
	.4byte	0x938
	.byte	0x17
	.4byte	0x135
	.byte	0x13
	.byte	0
	.byte	0x16
	.4byte	0x7c
	.4byte	0x948
	.byte	0x17
	.4byte	0x135
	.byte	0x92
	.byte	0
	.byte	0x18
	.4byte	0x7c
	.byte	0x17
	.4byte	0x135
	.byte	0x7f
	.byte	0
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
	.byte	0x1c
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
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
	.byte	0x1c
	.byte	0x6
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
	.byte	0x2
	.byte	0xa
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
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
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
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
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL3
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL5
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x1e
	.byte	0x7c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LFB5
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x1
	.byte	0x50
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST10:
	.llong	.LFB6
	.llong	.LCFI13
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI13
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL14
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL25
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL15-1
	.llong	.LVL26
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL26
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15-1
	.llong	.LVL24
	.2byte	0x1
	.byte	0x58
	.llong	.LVL24
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL15-1
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL23
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL15-1
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL22
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
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
	.byte	0x2e
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
	.llong	.LFB7
	.llong	.LCFI19
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI19
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL28
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL39
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL29-1
	.llong	.LVL40
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL40
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL29-1
	.llong	.LVL38
	.2byte	0x1
	.byte	0x58
	.llong	.LVL38
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL29-1
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL37
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL29-1
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL36
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL31
	.llong	.LVL35
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST26:
	.llong	.LFB3
	.llong	.LCFI25
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI25
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.byte	0xa8,0xe
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	.LVL44
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL48
	.llong	.LVL78
	.2byte	0x1
	.byte	0x58
	.llong	.LVL82
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL50
	.llong	.LVL81
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL82
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL64
	.llong	.LVL65
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL65
	.llong	.LVL80
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	.LVL82
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL58
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.byte	0xf8,0x71
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.llong	.LVL74
	.llong	.LVL82
	.2byte	0x2
	.byte	0x90
	.byte	0x31
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL58
	.llong	.LVL59
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL73
	.llong	.LVL79
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL68
	.llong	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL71
	.llong	.LVL72-1
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	.LVL84
	.llong	.LVL85-1
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL70
	.llong	.LVL72-1
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	.LVL82
	.llong	.LVL85-1
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL58
	.llong	.LVL59
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL68
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL74
	.llong	.LVL77
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL82
	.llong	.LVL86
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB6
	.llong	.LFE6
	.llong	.LFB7
	.llong	.LFE7
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"GetTimerCount"

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
	.loc 1 113 0
	.cfi_startproc
.LVL0:
		SMOVIL		-40, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 40
		SMVAAGL.M1		AR8, R7:R6
		SSTDW		R63:R62, *+AR15[4]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.cfi_offset 48, -20
		SMVAAGH.M2		AR8, R7:R6
	|	SSTW		R32, *+AR15[5]
	.loc 1 115 0
		SBR		GetTimerCount
	|	SMOV.M1		R10, R32
	|	SMOVIL		0, R10
.LVL1:
		SMOVIL		.L2, R62
	.loc 1 113 0
		SSTDW		R7:R6, *+AR15[3]
	|	SMOVIH		.L2, R62
	.cfi_offset 8, -16
		SSTW		R31, *+AR15[4]
	|	SMOVIH4.L		.L2, R63
	.cfi_offset 47, -24
		SMOV.M2		R12, R31
		SNOP		1
	.cfi_offset 46, -28
	.loc 1 115 0
	;; call to GetTimerCount occurs, with return value
		SSTW		R30, *+AR15[3]
.LVL2:
.L2:
	.loc 1 116 0
		SMOVIL.L		error_cn, R42
	|	SMOV.M2		R10, R30
	|	SMOV.M1		R32, R22
.LVL3:
		SMOVIH.L		error_cn, R42
	|	SMOV.M2		R31, R24
		SMOVIH4.L		error_cn, R43
		SMVAGA36.M2		R43:R42, AR8
	|	SMOVIL.L		ptr_x+4, R10
.LVL4:
		SMOVIL.L		ptr_h_cn, R12
		SLDW		*AR8, R20
	|	SMOVIL.L		ptr_y_ideal, R14
		SMOVIL.L		ptr_y_cn, R16
		SMOVIL		981668463, R18
		SMOVIH4.L		ptr_x+4, R11
		SMOVIH.L		ptr_h_cn, R12
		SMOVIH4.L		ptr_h_cn, R13
		SMOVIH.L		ptr_y_ideal, R14
		SMOVIH4.L		ptr_y_ideal, R15
		SBR		DSPF_sp_lms_cn
	|	SMOVIH.L		ptr_y_cn, R16
		SMOVIL		.L3, R62
		SMOVIH		.L3, R62
		SMOVIH4.L		.L3, R63
		SMOVIH4.L		ptr_y_cn, R17
		SMOVIH		981668463, R18
	;; call to DSPF_sp_lms_cn occurs, with return value
		SMOVIH.L		ptr_x+4, R10
.LVL5:
.L3:
	.loc 1 117 0
		SBR		GetTimerCount
	|	SSTW		R10, *AR8
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 119 0
.L4:
		SLDDW		*+AR15[4], R63:R62
	|	SSUB.M2		R30, R10, R10
.LVL7:
		SLDDW		*+AR15[3], R7:R6
		SLDW		*+AR15[3], R30
.LVL8:
		SLDW		*+AR15[4], R31
.LVL9:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL10:
		SMVCGC.L		R63, BRReg
		SMVAGA36.M2		R7:R6, AR8
		SBR		R62
	|	SMOVIL		40, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		4
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
	.loc 1 121 0
	.cfi_startproc
.LVL11:
		SMOVIL		-72, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 72
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, OR11
	|	SMOVIL.L		error_vc, R42
		SSTDW		R63:R62, *+AR15[7]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 49, -48
		SMVAAGH.M2		AR14, R7:R6
	|	SSTW		R33, *+AR15[6]
	.loc 1 124 0
		SMOVIH.L		error_vc, R42
	|	SMVAGA36.M1		R11:R10, AR14
		SMOVIH4.L		error_vc, R43
	.loc 1 121 0
		SSTDW		R7:R6, *+AR15[8]
	.cfi_offset 14, -8
	.cfi_offset 48, -52
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R32, *+AR15[5]
		SMVAAGL.M1		OR11, R33:R32
	|	SMOVIL		0, R10
.LVL12:
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R15:R14, OR8
		SSTW		R31, *+AR15[4]
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 47, -56
	.cfi_offset 88, -24
		SMVAAGL.M1		AR8, R7:R6
	|	SMVAAGH.M2		OR11, R33:R32
		SNOP		1
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -60
	.cfi_offset 52, -36
		SMVAAGL.M1		OR8, R31:R30
	|	SMVAAGH.M2		AR8, R7:R6
	|	SSTW		R36, *+AR15[9]
	.loc 1 123 0
		SBR		GetTimerCount
	|	SMVAGA36.M1		R43:R42, AR8
	.loc 1 121 0
		SMOV.M2		R18, R36
	|	SMVAAGH.M1		OR8, R31:R30
	|	SMOVIL		.L6, R62
	.cfi_offset 8, -32
		SMVAGA36.M1		R17:R16, OR8
	|	SSTDW		R7:R6, *+AR15[5]
	|	SMOVIH		.L6, R62
		SSTW		R35, *+AR15[8]
	|	SMOVIH4.L		.L6, R63
	.cfi_offset 51, -40
		SMOV.M2		R20, R35
		SNOP		1
	.cfi_offset 50, -44
	.loc 1 123 0
	;; call to GetTimerCount occurs, with return value
		SSTW		R34, *+AR15[7]
.LVL13:
.L6:
	.loc 1 124 0
		SMVAGA36.M1		R33:R32, OR12
	|	SMVAGA36.M2		R31:R30, OR13
	|	SLDW		*AR8, R20
	|	SMOVIL		981668463, R18
		SMVAAGL.M1		OR8, R17:R16
	|	SMOVIH		981668463, R18
		SMVAAGL.M1		OR12, R13:R12
	|	SMVAAGL.M2		OR13, R15:R14
		SMVAAGH.M1		OR8, R17:R16
		SBR		DSPF_sp_lms_asm
	|	SMVAAGH.M1		OR12, R13:R12
	|	SMVAAGH.M2		OR13, R15:R14
		SMOVIL		.L7, R62
		SMOV.M2		R36, R22
	|	SMOV.M1		R35, R24
	|	SMOVIH		.L7, R62
	.loc 1 123 0
		SMOV.M1		R10, R34
	|	SMVAAGL.M2		AR14, R11:R10
	|	SMOVIH4.L		.L7, R63
.LVL14:
	.loc 1 124 0
		SNOP		1
		SMVAAGH.M2		AR14, R11:R10
	;; call to DSPF_sp_lms_asm occurs, with return value
		SNOP		1
.LVL15:
.L7:
	.loc 1 125 0
		SBR		GetTimerCount
	|	SSTW		R10, *AR8
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL16:
	.loc 1 127 0
.L8:
		SLDDW		*+AR15[5], R7:R6
	|	SSUB.M2		R34, R10, R10
.LVL17:
		SLDDW		*+AR15[7], R63:R62
		SLDW		*+AR15[3], R30
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[6], R7:R6
		SLDW		*+AR15[6], R33
		SLDW		*+AR15[7], R34
.LVL18:
		SLDW		*+AR15[8], R35
.LVL19:
		SLDW		*+AR15[9], R36
		SNOP		1
.LVL20:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		3
.LVL21:
		SLDDW		*+AR15[8], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		72, R6
.LVL22:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.text.fir,"ax",@progbits
	.align	2
	.global	fir
	.type	fir, @function
fir:
.LFB6:
	.loc 1 130 0
	.cfi_startproc
.LVL23:
	.loc 1 134 0
		SMOVIL		0, R42
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		-1,R18,R44
		SLT		R42, R18, R0
	|	SADD.M2		-1,R16,R43
		SLT		R42, R16, R1
	|[!R0]	SBR		.L9
	|	SADDA.M2		-4,OR0,AR0
	|	SADD.M1		4,R14,R56
	.loc 1 129 0
		SSHFLL		1, R44, R49
	|	SADD.M1		4,R12,R2
		SSHFLL		1, R43, R45
		SSHFLL		2, R44, R50
	|	SMVAAGL.M2		AR0, R47:R46
		SSHFLL		2, R43, R48
	|	SADD.M1		R50,R56,R57
		SLTU		R49, R44, R3
	|	SADD.M1		R48,R2,R54
	|	SMVAAGH.M2		AR0, R47:R46
		SLTU		R45, R43, R8
	;; condjump to .L9 occurs
		SLTU		R56, R14, R53
		SLTU		R50, R49, R9
	|	SADD.M2		R15,R53,R10
.LVL24:
	.loc 1 137 0
	[!R1]	SBR		.L20
	|	SSHFLL		1, R3, R11
	.loc 1 129 0
		SLTU		R2, R12, R16
	|	SADD.M2		R11,R9,R17
.LVL25:
		SLTU		R48, R45, R18
	|	SADD.M2		R13,R16,R19
	|	SADD.M1		R17,R10,R20
.LVL26:
		SSHFLL		1, R8, R21
		SADD.M2		R21,R18,R22
	|	SLTU		R57, R56, R58
		SADD.M2		R20,R58,R26
	|	SLTU		R54, R2, R23
	|	SADD.M1		R22,R19,R24
		SADD.M2		R24,R23,R55
	;; condjump to .L20 occurs
.LVL27:
.L14:
	.loc 1 137 0
		SMOVIL		0, R25
	|	SMOV.M2		R12, R42
	|	SMOV.M1		R13, R43
		SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
	|	SMOVIH		0, R25
.LVL28:
.L12:
		SADD.M1		4,R44,R27
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R27, R44, R29
	|	SMOV.M1		R27, R44
		SADD.M2		R45,R29,R45
	|	SLDW		*AR12, R2
	|	SADD.M1		4,R42,R59
	.loc 1 129 0 discriminator 2
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R59, R42, R60
	|	SMOV.M1		R59, R42
		SADD.M1		R43,R60,R43
	|	SEQ		R59, R54, R0
	.loc 1 138 0 discriminator 2
		SLDW		*AR10, R49
	|[R0]	SEQ		R43, R55, R0
	.loc 1 137 0 discriminator 2
		SNOP		4
	[!R0]	SBR		.L12
	.loc 1 138 0 discriminator 2
		SFMULAS32.M2	R49, R2, R25, R25
		SNOP		5
.LVL29:
	.loc 1 137 0 discriminator 2
	;; condjump to .L12 occurs
	.loc 1 129 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 134 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	|	SSTW		R25, *AR10
	[R0]	SBR		.L9
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
		SNOP		5
	;; condjump to .L9 occurs
.LVL30:
.L21:
	.loc 1 137 0
	[R1]	SBR		.L14
	|	SADD.M2		4,R14,R56
		SNOP		6
.LVL31:
	;; condjump to .L14 occurs
.L20:
	.loc 1 129 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 134 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	[!R0]	SBR		.L21
	|	SMOVIL		0, R25
		SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
	|	SMOVIH		0, R25
	.loc 1 140 0
		SSTW		R25, *AR10
		SNOP		3
	.loc 1 134 0
	;; condjump to .L21 occurs
.LVL32:
.L9:
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE6:
	.size	fir, .-fir
	.section	.text.UTIL_fillRandSP,"ax",@progbits
	.align	2
	.global	UTIL_fillRandSP
	.type	UTIL_fillRandSP, @function
UTIL_fillRandSP:
.LFB7:
	.loc 1 145 0
	.cfi_startproc
.LVL33:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 149 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 48
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL34:
	.cfi_offset 48, -32
	.cfi_offset 49, -28
	.loc 1 144 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
	.cfi_offset 50, -24
	.cfi_offset 51, -20
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 149 0
	[!R0]	SBR		.L23
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 144 0
		SLTU		R32, R10, R35
	.loc 1 145 0
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
	.cfi_offset 46, -40
	.cfi_offset 47, -36
	.cfi_offset 52, -16
	.cfi_offset 53, -12
	.loc 1 144 0
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
	.loc 1 145 0
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L23 occurs
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 144 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL35:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 150 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL36:
.L25:
	.loc 1 150 0 is_stmt 0 discriminator 2
		SBR		rand
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL37:
.L31:
		SFINTS32.M2		R10,R14
	|	SLTU		R32, R30, R15
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 149 0 is_stmt 1 discriminator 2
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 150 0 discriminator 2
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 149 0 discriminator 2
	[!R0]	SBR		.L25
		SNOP		1
	.loc 1 150 0 discriminator 2
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L25 occurs
.L23:
	.loc 1 151 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDDW		*+AR15[1], R31:R30
	|	SMOVIL		0, R7
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
.LVL38:
		SLDDW		*+AR15[4], R37:R36
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE7:
	.size	UTIL_fillRandSP, .-UTIL_fillRandSP
	.section	.text.UTIL_fillRandFilterSP,"ax",@progbits
	.align	2
	.global	UTIL_fillRandFilterSP
	.type	UTIL_fillRandFilterSP, @function
UTIL_fillRandFilterSP:
.LFB8:
	.loc 1 154 0
	.cfi_startproc
.LVL39:
	.loc 1 155 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 158 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R3
	.loc 1 155 0
		SMOVIH		1073741824, R51
	.loc 1 153 0
		SLTU		R12, R3, R13
	.loc 1 155 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-56, R6
	.loc 1 154 0
		SMOVIL		-1, R7
	.loc 1 155 0
		SFMULD.M2		R49:R48, R43:R42, R47:R46
	|	SADDA.M1		R7:R6,AR15,AR15
.LCFI3:
	.cfi_def_cfa_offset 56
	.loc 1 158 0
		SSHFLR		31, R12, R44
	.cfi_offset 47, -40
		SADD.M1		R12,R44,R0
	|	SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
	.loc 1 154 0
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -44
	.loc 1 158 0
		SSHFAR		1, R0, R1
	|	SMVAAGL.M1		AR0, R31:R30
		SLT		R50, R1, R2
	.cfi_offset 52, -20
	.loc 1 155 0
		SFSUBD.M2	R47:R46, R51:R50, R9:R8
	|	SSTW		R36, *+AR15[9]
	.cfi_offset 50, -28
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R34, *+AR15[7]
	.loc 1 154 0
		SNOP		1
	.loc 1 153 0
		SADD.M1		4,R30,R34
	.loc 1 154 0
		SSTW		R32, *+AR15[5]
	.cfi_offset 48, -36
	.cfi_offset 54, -12
	.loc 1 155 0
		SFMULD.M2		R43:R42, R9:R8, R11:R10
	|	SSTW		R38, *+AR15[11]
.LVL40:
	.loc 1 154 0
		SNOP		1
	.loc 1 153 0
		SSHFLL		1, R12, R43
	|	SADD.M1		-1,R1,R9
	|[!R2]	SBR		.L32
	.loc 1 154 0
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
	.cfi_offset 53, -16
	.cfi_offset 49, -32
	.loc 1 153 0
		SLTU		R34, R30, R37
	.loc 1 155 0
	[R2]	SFMULD.M2		R49:R48, R11:R10, R15:R14
	|	SADD.M1		R31,R37,R29
	.loc 1 154 0
		SSTW		R35, *+AR15[8]
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 51, -24
	.cfi_offset 78, -8
	.cfi_offset 79, -4
		SNOP		3
	;; condjump to .L32 occurs
	.loc 1 155 0
		SFSUBD.M2	R15:R14, R51:R50, R17:R16
		SNOP		4
		SFMULD.M2		R11:R10, R17:R16, R19:R18
		SNOP		1
	.loc 1 153 0
		SSHFAR		31, R3, R11
		SADD.M1		R11,R13,R15
	|	SLTU		R43, R12, R17
		SNOP		2
	.loc 1 155 0
		SFMULD.M2		R49:R48, R19:R18, R21:R20
		SNOP		5
		SFSUBD.M2	R21:R20, R51:R50, R23:R22
		SNOP		1
	.loc 1 153 0
		SLTU		R44, R43, R21
		SNOP		2
	.loc 1 155 0
		SFMULD.M2		R19:R18, R23:R22, R25:R24
		SNOP		1
	.loc 1 153 0
		SSHFLL		1, R15, R19
		SADD.M1		R19,R17,R12
	|	SSHFLL		1, R9, R23
.LVL41:
		SSHFLL		1, R12, R45
		SADD.M1		R45,R21,R45
	.loc 1 155 0
		SFADDD.M2		R25:R24, R25:R24, R27:R26
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M1		R45:R44,AR0,OR0
	.loc 1 153 0
		SNOP		1
		SSHFLL		2, R9, R25
		SLTU		R25, R23, R28
	|	SADD.M1		R25,R34,R35
		SLTU		R35, R34, R49
	.loc 1 155 0
		SFDPSP32.M2		R27:R26, R36
		SNOP		1
.LVL42:
	.loc 1 153 0
		SLTU		R23, R9, R27
		SSHFLL		1, R27, R32
		SADD.M1		R32,R28,R38
	|	SMVAAGL.M2		OR0, R33:R32
		SADD.M1		R38,R29,R50
	|	SMOVIL		805306368, R38
		SMVAAGH.M2		OR0, R33:R32
	|	SMOVIH		805306368, R38
	|	SADD.M1		R50,R49,R37
		SNOP		1
.LVL43:
.L34:
	.loc 1 160 0 discriminator 2
		SBR		rand
		SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL44:
.L40:
		SFINTS32.M2		R10,R51
	|	SLTU		R34, R30, R53
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 158 0 discriminator 2
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R53,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R52
	.loc 1 160 0 discriminator 2
		SFMULS32.M2		R51, R38, R56
	|	SLTU		R52, R32, R54
	|	SADD.M1		-1,R33,R55
		SMOV.M2		R52, R32
	|	SADD.M1		R55,R54,R33
	.loc 1 153 0 discriminator 2
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 160 0 discriminator 2
		SFMULS32.M2		R56, R36, R57
	|	SADD.M1		4,R34,R34
	.loc 1 158 0 discriminator 2
	[!R0]	SBR		.L34
		SNOP		2
	.loc 1 160 0 discriminator 2
		SSTW		R57, *AR12
	|	SFSUBS32.M2		R57, R36, R58
	.loc 1 161 0 discriminator 2
		SNOP		2
		SSTW		R58, *AR10
	;; condjump to .L34 occurs
.LVL45:
.L32:
	.loc 1 163 0
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
	.cfi_endproc
.LFE8:
	.size	UTIL_fillRandFilterSP, .-UTIL_fillRandFilterSP
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Result Failure, max_pct_diff=%f \t"
.LC1:
	.string	"Result Successful, max_pct_diff=%f \t"
.LC2:
	.string	"NY = %d \t\tNH = %d \t\tnatC: %d \t\tvecC: %d \t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 38 0
	.cfi_startproc
.LVL46:
		SMOVIL		-128, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI4:
	.cfi_def_cfa_offset 128
		SMVAAGL.M1		OR8, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 47 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[15]
	.cfi_offset 56, -32
	.cfi_offset 57, -28
	.loc 1 38 0
		SMVAAGH.M2		OR8, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[12]
	.loc 1 47 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 38 0
		SSTDW		R7:R6, *+AR15[14]
	.cfi_offset 88, -16
	.cfi_offset 54, -40
	.cfi_offset 55, -36
		SMVAAGL.M2		AR8, R7:R6
	|	SSTDW		R39:R38, *+AR15[11]
	.loc 1 48 0
		SMOVIL		0, R43
	.loc 1 38 0
		SMVAAGH.M2		AR8, R7:R6
	|	SMOVIH		1075052544, R42
		SSTDW		R37:R36, *+AR15[10]
		SSTDW		R7:R6, *+AR15[13]
	.loc 1 42 0
		SMOVIL.L		error_vc, R46
		SMOVIH.L		error_vc, R46
	.loc 1 38 0
		SSTW		R34, *+AR15[19]
		SSTW		R33, *+AR15[18]
	.loc 1 42 0
		SMOVIH4.L		error_vc, R47
		SMOVIL		0, R45
	.loc 1 38 0
		SSTW		R32, *+AR15[17]
		SSTW		R31, *+AR15[16]
	.loc 1 42 0
		SMOVIH		0, R45
		SNOP		1
	.loc 1 38 0
		SSTW		R30, *+AR15[15]
	.cfi_offset 52, -48
	.cfi_offset 53, -44
	.cfi_offset 8, -24
	.cfi_offset 50, -52
	.cfi_offset 49, -56
	.cfi_offset 48, -60
	.cfi_offset 47, -64
	.cfi_offset 46, -68
	.loc 1 47 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 48 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL.L		error_cn, R46
	.loc 1 49 0
		SSTW		R44, *+AR15[13]
	|	SMOVIH4.L		error_cn, R47
.LVL47:
	.loc 1 43 0
		SMOVIH.L		error_cn, R46
		SNOP		1
	.loc 1 50 0
		SLDW		*+AR15[13], R0
	.loc 1 42 0
		SSTW		R45, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	.loc 1 43 0
		SNOP		2
		SSTW		R45, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
.LVL48:
	.loc 1 51 0
		SNOP		1
	.loc 1 50 0
	[!R0]	SBR		.L44
		SNOP		6
	;; condjump to .L44 occurs
.L60:
	.loc 1 51 0
		SLDW		*AR10, R42
		SNOP		5
.LVL49:
		SSTW		R42, *+AR15[13]
		SNOP		2
.LVL50:
	.loc 1 50 0
		SLDW		*+AR15[13], R1
		SNOP		5
	[R1]	SBR		.L60
		SNOP		6
	;; condjump to .L60 occurs
.L44:
	.loc 1 53 0
		SMOVIL.L		ptr_x, R42
		SMOVIH.L		ptr_x, R42
		SMOVIH4.L		ptr_x, R43
		SMVAGA36.M2		R43:R42, AR8
	|	SMOVIL		0, R42
		SMOVIL		0, R43
		SMVAAA.M2		AR8, AR10
	|	SMOVIL.L		ptr_x+32, R44
		SMOVIH.L		ptr_x+32, R44
		SSTDW		R43:R42, *AR10++[1]
	|	SMOVIH4.L		ptr_x+32, R45
		SMOVIL.L		ptr_x+40, R46
		SMOVIH.L		ptr_x+40, R46
		SSTDW		R43:R42, *AR10
	|	SADDA.M2		16,AR8,AR10
	|	SMOVIH4.L		ptr_x+40, R47
	.loc 1 54 0
		SMOVIL		1092616192, R14
		SMOVIL.L		ptr_x+64, R10
	.loc 1 53 0
		SSTDW		R43:R42, *AR10
	|	SADDA.M2		24,AR8,AR10
	|	SMOVIH		1092616192, R14
	.loc 1 54 0
		SMOVIH.L		ptr_x+64, R10
		SMOVIH4.L		ptr_x+64, R11
	.loc 1 53 0
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		ptr_x+48, R44
		SMOVIH.L		ptr_x+48, R44
		SMOVIH4.L		ptr_x+48, R45
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL.L		ptr_x+56, R46
		SMOVIH.L		ptr_x+56, R46
		SMOVIH4.L		ptr_x+56, R47
	.loc 1 54 0
		SBR		UTIL_fillRandSP
	|	SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		128, R12
		SMOVIL		.L71, R62
		SMOVIH		.L71, R62
	.loc 1 53 0
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIH4.L		.L71, R63
		SNOP		2
	.loc 1 54 0
	;; call to UTIL_fillRandSP occurs
		SSTDW		R43:R42, *AR10
.LVL51:
.L71:
	.loc 1 55 0
		SBR		UTIL_fillRandFilterSP
	|	SMOVIH4.L		ptr_h_ideal, R11
		SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
		SMOVIL		16, R12
		SMOVIL.L		ptr_h_ideal, R10
	;; call to UTIL_fillRandFilterSP occurs
		SMOVIH.L		ptr_h_ideal, R10
.LVL52:
.L72:
	.loc 1 56 0
		SADDA.M2		4,AR8,OR11
	|	SMOVIL.L		ptr_h_ideal, R12
		SMOVIL.L		ptr_y_ideal, R14
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIH.L		ptr_h_ideal, R12
		SMOVIH4.L		ptr_h_ideal, R13
		SBR		fir
	|	SMVAAGH.M2		OR11, R11:R10
	|	SMOVIH.L		ptr_y_ideal, R14
		SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SMOVIH4.L		ptr_y_ideal, R15
		SMOVIL		16, R16
	;; call to fir occurs
		SMOVIL		128, R18
.LVL53:
.L73:
	.loc 1 38 0
		SMOVIL.L		ptr_h_vc, R46
		SMOVIH.L		ptr_h_vc, R46
		SADDU.M2		60,R46,R53
	|	SMOVIH4.L		ptr_h_vc, R47
		SMOVIL.L		ptr_h_vc-4, R42
		SMOVIL.L		ptr_h_cn-4, R44
	.loc 1 59 0
		SMOVIL		1031798784, R48
	.loc 1 38 0
		SLTU		R53, R46, R46
		SMOVIH.L		ptr_h_vc-4, R42
	|	SADD.M2		R47,R46,R54
		SMOVIH4.L		ptr_h_vc-4, R43
		SMOVIH.L		ptr_h_cn-4, R44
		SMOVIH4.L		ptr_h_cn-4, R45
	.loc 1 59 0
		SMOVIH		1031798784, R48
.LVL54:
.L43:
		SADD.M2		4,R42,R47
	|	SADD.M1		4,R44,R2
		SLTU		R47, R42, R52
	|	SMOV.M2		R47, R42
		SADD.M2		R43,R52,R43
	|	SEQ		R47, R53, R0
	.loc 1 57 0 discriminator 2
	[R0]	SEQ		R43, R54, R0
	|	SMVAGA36.M2		R43:R42, AR12
	[!R0]	SBR		.L43
	|	SLTU		R2, R44, R50
	|	SMOV.M1		R2, R44
		SADD.M2		R45,R50,R45
	|	SSTW		R48, *AR12
	.loc 1 38 0 discriminator 2
		SMVAGA36.M2		R45:R44, AR10
		SNOP		1
	.loc 1 60 0 discriminator 2
		SSTW		R48, *AR10
		SNOP		2
	.loc 1 57 0 discriminator 2
	;; condjump to .L43 occurs
.LVL55:
		SMOVIL.L		ptr_y_cn-4, R42
		SMOVIL.L		ptr_y_vc-4, R44
		SMOVIH.L		ptr_y_cn-4, R42
		SMOVIH4.L		ptr_y_cn-4, R43
	.loc 1 69 0
		SBR		vmalloc
	|	SMOVIH.L		ptr_y_vc-4, R44
	|	SSTDW		R43:R42, *+AR15[4]
		SMOVIL		.L74, R62
		SMOVIH		.L74, R62
		SMOVIH4.L		.L74, R63
		SMOVIH4.L		ptr_y_vc-4, R45
		SSTDW		R45:R44, *+AR15[5]
	|	SMOVIL		576, R10
	;; call to vmalloc occurs, with return value
		SMOVIL		0, R11
.LVL56:
.L74:
	.loc 1 70 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SMOVIL		64, R10
.LVL57:
		SMOVIL		.L75, R62
		SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
		SMOVIL		0, R11
	.loc 1 40 0
		SMOVIL		0, R34
	.loc 1 70 0
	;; call to vmalloc occurs, with return value
		SMOVIH		0, R34
.LVL58:
.L75:
	.loc 1 72 0
		SBR		M7002_datatrans
	|	SMOVIL		576, R14
	|	SMVAAGL.M1		AR8, R13:R12
	|	SMVAGA36.M2		R11:R10, OR8
	.loc 1 70 0
		SMOVIL		.L76, R62
.LVL59:
	.loc 1 72 0
		SMVAAGH.M2		AR8, R13:R12
	|	SMOV.M1		R34, R33
	|	SMOVIH		.L76, R62
	.loc 1 96 0
		SMOVIH4.L		.L76, R63
	.loc 1 72 0
		SMOVIH4.L		ptr_x, R11
		SMOVIL.L		ptr_x, R10
.LVL60:
	;; call to M7002_datatrans occurs
		SMOVIH.L		ptr_x, R10
.LVL61:
.L76:
	.loc 1 73 0
		SBR		M7002_datatrans
	|	SMOVIH4.L		ptr_h_vc, R11
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		.L77, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		.L77, R62
		SMOVIH4.L		.L77, R63
		SMOVIL		64, R14
		SMOVIL.L		ptr_h_vc, R10
	;; call to M7002_datatrans occurs
		SMOVIH.L		ptr_h_vc, R10
.LVL62:
.L77:
	.loc 1 74 0
		SMOVIL.L		ptr_y_ideal, R10
		SMOVIL		1074790400, R12
		SMOVIH4.L		ptr_y_ideal, R11
		SBR		M7002_datatrans
	|	SMOVIL		0, R13
		SMOVIL		.L78, R62
		SMOVIH		.L78, R62
		SMOVIH4.L		.L78, R63
		SMOVIL		512, R14
		SMOVIH.L		ptr_y_ideal, R10
	;; call to M7002_datatrans occurs
		SMOVIH		1074790400, R12
.LVL63:
.L78:
	.loc 1 76 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L79, R62
		SMOVIH		.L79, R62
		SMOVIH4.L		.L79, R63
		SMOVIL		0, R10
		SMOVIL.L		.LC2, R40
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		1073741824, R31
.LVL64:
.L79:
	.loc 1 77 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L80, R62
		SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
	.loc 1 95 0
		SMOVIL		1120403456, R30
	.loc 1 82 0
		SMOVIL		32, R32
	.loc 1 77 0
	;; call to TimerStart occurs, with return value
		SMOVIH.L		.LC2, R40
.LVL65:
.L80:
	.loc 1 80 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L81, R62
		SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
		SMOVIH4.L		.LC2, R41
	.loc 1 95 0
		SMOVIH		1073741824, R31
	.loc 1 80 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH		1120403456, R30
.LVL66:
.L81:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R37
	|	SMOVIL		0, R10
		SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL67:
.L82:
		SSUB.M2		R10, R37, R37
.LVL68:
.L45:
	.loc 1 38 0 discriminator 1
		SMOVIL		4, R36
.LVL69:
.L53:
	.loc 1 85 0
		SMOVIL.L		ptr_y_vc, R10
		SMOVIL		0, R12
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
		SMOVIL		0, R15
		SMOVIH.L		ptr_y_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		ptr_y_vc, R11
.LVL70:
.L83:
	.loc 1 86 0
		SMOVIL		0, R15
		SMOVIL.L		ptr_y_cn, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L84, R62
		SMOVIH		.L84, R62
		SMOVIH4.L		.L84, R63
		SMOVIL		0, R12
		SMOVIH.L		ptr_y_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		ptr_y_cn, R11
.LVL71:
.L84:
	.loc 1 87 0
		SMOVIL		512, R14
		SMOVIL.L		ptr_y_vc, R10
		SMOVIL		1074792448, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		ptr_y_vc, R11
		SMOVIL		.L85, R62
		SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
		SMOVIL		0, R13
		SMOVIH.L		ptr_y_vc, R10
	;; call to M7002_datatrans occurs
		SMOVIH		1074792448, R12
.LVL72:
.L85:
	.loc 1 89 0
		SBR		get_time_cn
	|	SMOV.M2		R32, R12
	|	SMOV.M1		R36, R10
		SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
	;; call to get_time_cn occurs, with return value
		SNOP		3
.LVL73:
.L86:
	.loc 1 90 0
		SMVAAGL.M2		OR8, R13:R12
	|	SMOV.M1		R10, R39
	|	SMOVIL		1074790400, R14
.LVL74:
		SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		1074792448, R16
	|	SMOV.M1		R36, R18
.LVL75:
		SBR		get_time_vc
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		1074790400, R14
	|	SMOV.M1		R32, R20
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		.L87, R62
		SMOVIH		.L87, R62
		SMOVIH4.L		.L87, R63
		SMOVIL		0, R15
		SMOVIH		1074792448, R16
	;; call to get_time_vc occurs, with return value
		SMOVIL		0, R17
.LVL76:
.L87:
	.loc 1 91 0
		SMOVIL		0, R11
	|	SMOV.M2		R10, R38
.LVL77:
		SMOVIL.L		ptr_y_vc, R12
		SMOVIL		1074792448, R10
.LVL78:
		SBR		M7002_datatrans
	|	SMOVIH		1074792448, R10
		SMOVIL		.L88, R62
		SMOVIH		.L88, R62
		SMOVIH4.L		.L88, R63
		SMOVIH.L		ptr_y_vc, R12
		SMOVIH4.L		ptr_y_vc, R13
	;; call to M7002_datatrans occurs
		SMOVIL		512, R14
.LVL79:
.L88:
		SLDDW		*+AR15[4], R45:R44
	|	SMOVIL		-2147483648, R56
		SLDDW		*+AR15[5], R43:R42
	|	SMOVIL		0, R18
	.loc 1 96 0
		SMOVIH		-2147483648, R56
		SNOP		4
.LVL80:
.L49:
		SADD.M2		4,R44,R3
	|	SADD.M1		4,R42,R10
		SLTU		R3, R44, R9
	|	SMOV.M2		R3, R44
	|	SADD.M1		1,R18,R18
		SADD.M2		R45,R9,R45
	|	SLTU		R10, R42, R11
	|	SMOV.M1		R10, R42
	.loc 1 38 0
		SMVAGA36.M2		R45:R44, AR10
	|	SADD.M1		R43,R11,R43
	|	SLT		R18, R32, R2
	.loc 1 94 0
		SNOP		1
	.loc 1 95 0
		SLDW		*AR10, R13
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 38 0
		SNOP		1
	.loc 1 95 0
		SLDW		*AR10, R16
		SNOP		3
		SFRCPS32.M2		R13, R14
		SFMULS32.M2		R13, R14, R15
		SFSUBS32.M1		R16, R13, R17
		SNOP		2
		SFSUBS32.M2		R15, R31, R19
		SNOP		2
		SFMULS32.M2		R14, R19, R20
		SNOP		3
		SFMULS32.M2		R13, R20, R21
		SNOP		3
		SFSUBS32.M2		R21, R31, R22
		SNOP		2
		SFMULS32.M2		R20, R22, R23
		SNOP		3
		SFMULS32.M2		R17, R23, R24
		SNOP		3
		SFMULS32.M2		R24, R30, R25
		SNOP		3
.LVL81:
	.loc 1 96 0
		SFCMPLS32.M2		R25, R33, R1
	[R1]	SBR		.L68
		SNOP		6
	;; condjump to .L68 occurs
.L46:
	.loc 1 97 0
		SFCMPGS32.M2		R25, R34, R0
	[!R0]	SBR		.L48
		SNOP		6
	;; condjump to .L48 occurs
		SMOV.M2		R25, R34
.LVL82:
.L48:
	.loc 1 94 0
	[R2]	SBR		.L49
		SNOP		6
	;; condjump to .L49 occurs
	.loc 1 99 0
		SFSPDP32T.M2		R34, R43:R42
	|	SMOVIL		1202590843, R46
		SMOVIL		1067743969, R47
		SMOVIH		1202590843, R46
	|	SSTDW		R43:R42, *+AR15[2]
		SMOVIH		1067743969, R47
		SFCMPGD.M2		R43:R42, R47:R46, R2
		SNOP		1
	[!R2]	SBR		.L66
		SNOP		6
	;; condjump to .L66 occurs
	.loc 1 100 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L89, R62
		SMOVIH		.L89, R62
		SMOVIH4.L		.L89, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL83:
.L89:
	.loc 1 104 0
		SSUB.M2		R37, R39, R26
	|	SSUB.M1		R37, R38, R27
	|	SSTW		R36, *+AR15[5]
		SSTDW		R41:R40, *+AR15[1]
	|	SADD.M2		4,R36,R36
	.loc 1 83 0
		SNOP		2
	.loc 1 104 0
		SBR		printf
	|	SSTW		R32, *+AR15[4]
		SSTW		R26, *+AR15[6]
	|	SMOVIL		.L90, R62
		SMOVIH		.L90, R62
		SMOVIH4.L		.L90, R63
		SSTW		R27, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL84:
.L90:
	.loc 1 83 0
		SMOVIL		20, R28
		SEQ		R28, R36, R1
	[!R1]	SBR		.L53
		SNOP		6
	;; condjump to .L53 occurs
.L69:
	.loc 1 82 0
		SADD.M2		8,R32,R32
	|	SMOVIL		136, R29
.LVL85:
		SEQ		R29, R32, R0
	[!R0]	SBR		.L45
		SNOP		6
	;; condjump to .L45 occurs
	.loc 1 107 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L91, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L91, R62
		SMOVIH4.L		.L91, R63
	;; call to vfree occurs
		SNOP		3
.LVL86:
.L91:
	.loc 1 108 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L92, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L92, R62
		SMOVIH4.L		.L92, R63
	;; call to vfree occurs
		SNOP		3
.LVL87:
	.loc 1 109 0
.L92:
		SLDDW		*+AR15[13], R7:R6
		SLDDW		*+AR15[15], R63:R62
		SLDW		*+AR15[15], R30
		SLDW		*+AR15[16], R31
		SLDW		*+AR15[17], R32
		SNOP		1
.LVL88:
		SMVAGA36.M2		R7:R6, AR8
.LVL89:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[14], R7:R6
		SLDW		*+AR15[18], R33
		SLDW		*+AR15[19], R34
.LVL90:
		SLDDW		*+AR15[10], R37:R36
.LVL91:
		SLDDW		*+AR15[11], R39:R38
		SNOP		1
.LVL92:
		SMVAGA36.M2		R7:R6, OR8
	|	SMOVIL		128, R6
.LVL93:
		SMOVIL		0, R7
		SNOP		1
		SBR		R62
		SLDDW		*+AR15[12], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL94:
.L68:
		SBR		.L46
	|	SXOR		R56, R25, R25
	.loc 1 96 0 discriminator 1
		SNOP		6
.LVL95:
	;; jump to .L46 occurs
.LVL96:
.L66:
	.loc 1 102 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SBR		printf
	|	SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L93, R62
		SMOVIH		.L93, R62
		SMOVIH4.L		.L93, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL97:
.L93:
	.loc 1 104 0
		SSUB.M2		R37, R39, R26
	|	SSUB.M1		R37, R38, R27
	|	SSTW		R36, *+AR15[5]
		SSTDW		R41:R40, *+AR15[1]
	|	SADD.M2		4,R36,R36
	.loc 1 83 0
		SNOP		2
	.loc 1 104 0
		SBR		printf
	|	SSTW		R32, *+AR15[4]
		SSTW		R26, *+AR15[6]
	|	SMOVIL		.L94, R62
		SMOVIH		.L94, R62
		SMOVIH4.L		.L94, R63
		SSTW		R27, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL98:
.L94:
	.loc 1 83 0
		SMOVIL		20, R28
		SEQ		R28, R36, R1
	[!R1]	SBR		.L53
		SNOP		6
	;; condjump to .L53 occurs
		SBR		.L69
		SNOP		6
	;; jump to .L69 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.global	error_cn
	.section	.bss,"aw",@nobits
	.align	2
	.type	error_cn, @object
	.size	error_cn, 4
error_cn:
	.zero	4
	.global	error_vc
	.align	2
	.type	error_vc, @object
	.size	error_vc, 4
error_vc:
	.zero	4
	.common	ptr_y_ideal,512,8
	.common	ptr_x,576,8
	.common	ptr_h_ideal,64,8
	.common	ptr_h_cn,64,8
	.common	ptr_h_vc,64,8
	.common	ptr_y_cn,512,8
	.common	ptr_y_vc,512,8
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8a3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF15
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x147
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x71
	.4byte	0x70
	.4byte	.LLST1
	.uleb128 0x5
	.string	"ny"
	.byte	0x1
	.byte	0x71
	.4byte	0x70
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x72
	.4byte	0x5b
	.4byte	.LLST3
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x72
	.4byte	0x5b
	.4byte	.LLST4
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x50
	.4byte	0x70
	.byte	0x1
	.4byte	0x106
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL2
	.4byte	0x119
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL5
	.4byte	0x137
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x28
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
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
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x268
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x79
	.4byte	0x275
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x79
	.4byte	0x275
	.4byte	.LLST7
	.uleb128 0x5
	.string	"y_i"
	.byte	0x1
	.byte	0x79
	.4byte	0x27b
	.4byte	.LLST8
	.uleb128 0x5
	.string	"y_o"
	.byte	0x1
	.byte	0x79
	.4byte	0x27b
	.4byte	.LLST9
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x79
	.4byte	0x70
	.4byte	.LLST10
	.uleb128 0x5
	.string	"ny"
	.byte	0x1
	.byte	0x79
	.4byte	0x70
	.4byte	.LLST11
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7a
	.4byte	0x5b
	.4byte	.LLST12
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7a
	.4byte	0x5b
	.4byte	.LLST13
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x50
	.4byte	0x70
	.byte	0x1
	.4byte	0x1f6
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL13
	.4byte	0x209
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL15
	.4byte	0x258
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x28
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.uleb128 0xa
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
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
	.uleb128 0x2e
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
	.uleb128 0x30
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
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.llong	.LVL16
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.4byte	0x31
	.4byte	0x275
	.uleb128 0xe
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.4byte	0x268
	.uleb128 0xf
	.byte	0x8
	.4byte	0x31
	.uleb128 0x10
	.byte	0x1
	.string	"fir"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.llong	.LFB6
	.llong	.LFE6
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x312
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x81
	.4byte	0x27b
	.4byte	.LLST14
	.uleb128 0x11
	.string	"h"
	.byte	0x1
	.byte	0x81
	.4byte	0x27b
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x5
	.string	"y"
	.byte	0x1
	.byte	0x81
	.4byte	0x27b
	.4byte	.LLST15
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x81
	.4byte	0x70
	.4byte	.LLST16
	.uleb128 0x5
	.string	"ny"
	.byte	0x1
	.byte	0x81
	.4byte	0x70
	.4byte	.LLST17
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x83
	.4byte	0x70
	.4byte	.LLST18
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x83
	.4byte	0x70
	.4byte	.LLST19
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0x84
	.4byte	0x31
	.4byte	.LLST20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x37d
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x90
	.4byte	0x27b
	.4byte	.LLST22
	.uleb128 0x5
	.string	"N"
	.byte	0x1
	.byte	0x90
	.4byte	0x70
	.4byte	.LLST23
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x90
	.4byte	0x31
	.4byte	.LLST24
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x92
	.4byte	0x31
	.byte	0x4
	.4byte	0x4e800000
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x93
	.4byte	0x70
	.4byte	.LLST25
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x3e8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x99
	.4byte	0x27b
	.4byte	.LLST27
	.uleb128 0x5
	.string	"N"
	.byte	0x1
	.byte	0x99
	.4byte	0x70
	.4byte	.LLST28
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9b
	.4byte	0x31
	.byte	0x4
	.4byte	0x4f000000
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9b
	.4byte	0x31
	.4byte	.LLST29
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x70
	.4byte	.LLST30
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x26
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x7a5
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x27
	.4byte	0x70
	.4byte	.LLST32
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x27
	.4byte	0x70
	.byte	0x1
	.uleb128 0x12
	.string	"ny"
	.byte	0x1
	.byte	0x27
	.4byte	0x70
	.4byte	.LLST33
	.uleb128 0x12
	.string	"nh"
	.byte	0x1
	.byte	0x27
	.4byte	0x70
	.4byte	.LLST34
	.uleb128 0x17
	.4byte	.LASF28
	.byte	0x1
	.byte	0x27
	.4byte	0x70
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x28
	.4byte	0x31
	.4byte	.LLST35
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x28
	.4byte	0x31
	.4byte	.LLST36
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2c
	.4byte	0x7a5
	.4byte	0x40140004
	.uleb128 0x18
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2d
	.4byte	0x7a5
	.4byte	0x40140000
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2e
	.4byte	0x7ab
	.4byte	.LLST37
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x40
	.4byte	0x275
	.4byte	.LLST38
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x40
	.4byte	0x275
	.4byte	.LLST39
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.byte	0x41
	.4byte	0x27b
	.4byte	0x40100000
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.byte	0x42
	.4byte	0x27b
	.4byte	0x40100800
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x43
	.4byte	0x70
	.byte	0x9
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x44
	.4byte	0x70
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4c
	.4byte	0x70
	.byte	0x1
	.4byte	0x4fa
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4d
	.4byte	0x70
	.byte	0x1
	.4byte	0x50d
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4f
	.4byte	0x5b
	.4byte	.LLST40
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4f
	.4byte	0x5b
	.4byte	.LLST41
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0x50
	.4byte	0x5b
	.byte	0x2
	.byte	0x90
	.uleb128 0x35
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x50
	.4byte	0x70
	.byte	0x1
	.4byte	0x54c
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL51
	.4byte	0x560
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.llong	.LVL52
	.4byte	0x573
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.llong	.LVL53
	.4byte	0x599
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x1
	.byte	0x40
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
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.llong	.LVL61
	.4byte	0x5b9
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x240
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
	.llong	.LVL62
	.4byte	0x5d9
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
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
	.llong	.LVL63
	.4byte	0x5ee
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x9
	.llong	.LVL64
	.4byte	0x607
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
	.llong	.LVL65
	.4byte	0x61a
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL66
	.4byte	0x62d
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL67
	.4byte	0x640
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL70
	.4byte	0x653
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL71
	.4byte	0x666
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL72
	.4byte	0x67b
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x9
	.llong	.LVL73
	.4byte	0x697
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL76
	.4byte	0x6cc
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
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
	.llong	.LVL79
	.4byte	0x6e1
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.uleb128 0x9
	.llong	.LVL83
	.4byte	0x6f9
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0xf5
	.uleb128 0x32
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.llong	.LVL84
	.4byte	0x737
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x1c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x7
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x1c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
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
	.uleb128 0x38
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL86
	.4byte	0x750
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
	.llong	.LVL87
	.4byte	0x76a
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
	.llong	.LVL98
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x1c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x7
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x1c
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
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
	.uleb128 0x38
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.4byte	0x70
	.uleb128 0x1a
	.4byte	0x70
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x7c0
	.uleb128 0x1c
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0xd
	.4byte	0x7b0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_y_vc
	.uleb128 0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe
	.4byte	0x7b0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_y_cn
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x7fc
	.uleb128 0x1c
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf
	.4byte	0x7ec
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_h_vc
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x10
	.4byte	0x7ec
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_h_cn
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x1
	.byte	0x11
	.4byte	0x7ec
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_h_ideal
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x84e
	.uleb128 0x1c
	.4byte	0x85
	.byte	0x8f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF21
	.byte	0x1
	.byte	0x13
	.4byte	0x83e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_x
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.byte	0x14
	.4byte	0x7b0
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_y_ideal
	.uleb128 0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0x15
	.4byte	0x31
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	error_vc
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x16
	.4byte	0x31
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	error_cn
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.sleb128 40
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL1
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL2-1
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL9
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
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
.LLST4:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST5:
	.llong	.LFB5
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE5
	.2byte	0x3
	.byte	0x7f
	.sleb128 72
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL12
	.llong	.LVL22
	.2byte	0x1
	.byte	0x5e
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
.LLST7:
	.llong	.LVL11
	.llong	.LVL13-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13-1
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL11
	.llong	.LVL13-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13-1
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL11
	.llong	.LVL13-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL13-1
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL21
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
.LLST10:
	.llong	.LVL11
	.llong	.LVL13-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL13-1
	.llong	.LVL20
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL20
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL11
	.llong	.LVL13-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL13-1
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	.LVL19
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL23
	.llong	.LVL24
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL24
	.llong	.LFE6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL27
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3b
	.sleb128 1
	.byte	0x9f
	.llong	.LVL27
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL23
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3c
	.sleb128 1
	.byte	0x9f
	.llong	.LVL27
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST21:
	.llong	.LFB7
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.sleb128 48
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL33
	.llong	.LVL35
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL35
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.llong	.LVL36
	.llong	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL33
	.llong	.LVL36
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL36
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL38
	.llong	.LFE7
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LFB8
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE8
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL40
	.llong	.LVL43
	.2byte	0x1
	.byte	0x50
	.llong	.LVL43
	.llong	.LFE8
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL39
	.llong	.LVL41
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL41
	.llong	.LVL43
	.2byte	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.llong	.LVL43
	.llong	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL42
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST31:
	.llong	.LFB3
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 128
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL79
	.llong	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL82
	.llong	.LVL83-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL96
	.llong	.LVL97-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL85
	.llong	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL68
	.llong	.LVL69
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL84
	.llong	.LVL91
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL98
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL81
	.llong	.LVL83-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.llong	.LVL94
	.llong	.LVL97-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL46
	.llong	.LVL68
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL68
	.llong	.LVL69
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL79
	.llong	.LVL84
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL85
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL94
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL47
	.llong	.LVL49
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.llong	.LVL50
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL57
	.llong	.LVL89
	.2byte	0x1
	.byte	0x58
	.llong	.LVL94
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL59
	.llong	.LVL60
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL60
	.llong	.LVL93
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL94
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL74
	.llong	.LVL75
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL75
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL77
	.llong	.LVL78
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL78
	.llong	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL94
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.llong	.LFB8
	.llong	.LFE8-.LFB8
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
	.llong	.LFB8
	.llong	.LFE8
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"get_time_cn"
.LASF42:
	.string	"c_time"
.LASF49:
	.string	"ptr_h_cn"
.LASF50:
	.string	"ptr_h_ideal"
.LASF44:
	.string	"../main.c"
.LASF2:
	.string	"long long unsigned int"
.LASF20:
	.string	"UTIL_fillRandSP"
.LASF51:
	.string	"ptr_y_ideal"
.LASF22:
	.string	"factor"
.LASF9:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF25:
	.string	"ptr_h"
.LASF47:
	.string	"ptr_y_cn"
.LASF52:
	.string	"error_vc"
.LASF32:
	.string	"cache1"
.LASF10:
	.string	"long int"
.LASF21:
	.string	"ptr_x"
.LASF1:
	.string	"double"
.LASF29:
	.string	"pct_diff"
.LASF19:
	.string	"GetTimerCount"
.LASF26:
	.string	"frand_max"
.LASF17:
	.string	"xAddr"
.LASF5:
	.string	"unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF41:
	.string	"time_vc"
.LASF45:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/NEW Porject/DSPF_sp_lms/Debug"
.LASF28:
	.string	"form_error"
.LASF11:
	.string	"sizetype"
.LASF16:
	.string	"get_time_vc"
.LASF33:
	.string	"cache_ok"
.LASF48:
	.string	"ptr_h_vc"
.LASF43:
	.string	"GNU C 4.7.0"
.LASF0:
	.string	"float"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"pair_sum"
.LASF46:
	.string	"ptr_y_vc"
.LASF8:
	.string	"short int"
.LASF53:
	.string	"error_cn"
.LASF35:
	.string	"y_output_vc"
.LASF37:
	.string	"vech_len"
.LASF24:
	.string	"UTIL_fillRandFilterSP"
.LASF30:
	.string	"max_pct_diff"
.LASF12:
	.string	"char"
.LASF13:
	.string	"time1"
.LASF14:
	.string	"time2"
.LASF36:
	.string	"vecx_len"
.LASF34:
	.string	"y_ideal_vc"
.LASF23:
	.string	"rand_midpoint"
.LASF40:
	.string	"time_cn"
.LASF18:
	.string	"hAddr"
.LASF54:
	.string	"main"
.LASF31:
	.string	"cache"
.LASF38:
	.string	"SetTimerPeriod"
.LASF39:
	.string	"TimerStart"

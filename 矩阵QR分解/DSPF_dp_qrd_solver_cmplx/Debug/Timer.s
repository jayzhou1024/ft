	.file	"Timer.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TimerStart,"ax",@progbits
	.align	2
	.global	TimerStart
	.type	TimerStart, @function
TimerStart:
.LFB0:
	.file 1 "../Timer.c"
	.loc 1 5 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI1:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 6 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L2
		SNOP		6
	.loc 1 6 0 is_stmt 0 discriminator 1
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
		SMOVIL		3, R12
		SBR		SetConfReg
		SMOVIL		.L6, R62
		SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SNOP		4
.L6:
.L2:
	.loc 1 7 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L5
		SNOP		6
	.loc 1 7 0 is_stmt 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
		SMOVIL		3, R12
		SBR		SetConfReg
		SMOVIL		.L7, R62
		SMOVIH		.L7, R62
		SMOVIH4.L		.L7, R63
		SNOP		4
.L7:
.L5:
	.loc 1 8 0 is_stmt 1
		SNOP		1
.L1:
	.loc 1 9 0
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE0:
	.size	TimerStart, .-TimerStart
	.section	.text.TimerHold,"ax",@progbits
	.align	2
	.global	TimerHold
	.type	TimerHold, @function
TimerHold:
.LFB1:
	.loc 1 13 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI3:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 14 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L9
		SNOP		6
	.loc 1 14 0 is_stmt 0 discriminator 1
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
		SMOVIL		1, R12
		SBR		SetConfReg
		SMOVIL		.L13, R62
		SMOVIH		.L13, R62
		SMOVIH4.L		.L13, R63
		SNOP		4
.L13:
.L9:
	.loc 1 15 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L12
		SNOP		6
	.loc 1 15 0 is_stmt 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
		SMOVIL		1, R12
		SBR		SetConfReg
		SMOVIL		.L14, R62
		SMOVIH		.L14, R62
		SMOVIH4.L		.L14, R63
		SNOP		4
.L14:
.L12:
	.loc 1 16 0 is_stmt 1
		SNOP		1
.L8:
	.loc 1 17 0
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE1:
	.size	TimerHold, .-TimerHold
	.section	.text.TimerResume,"ax",@progbits
	.align	2
	.global	TimerResume
	.type	TimerResume, @function
TimerResume:
.LFB2:
	.loc 1 21 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI5:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 22 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L16
		SNOP		6
	.loc 1 22 0 is_stmt 0 discriminator 1
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
		SMOVIL		2, R12
		SBR		SetConfReg
		SMOVIL		.L20, R62
		SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SNOP		4
.L20:
.L16:
	.loc 1 23 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L19
		SNOP		6
	.loc 1 23 0 is_stmt 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
		SMOVIL		2, R12
		SBR		SetConfReg
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SNOP		4
.L21:
.L19:
	.loc 1 24 0 is_stmt 1
		SNOP		1
.L15:
	.loc 1 25 0
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE2:
	.size	TimerResume, .-TimerResume
	.section	.text.GetTimerCount,"ax",@progbits
	.align	2
	.global	GetTimerCount
	.type	GetTimerCount, @function
GetTimerCount:
.LFB3:
	.loc 1 29 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI7:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 30 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L23
		SNOP		6
	.loc 1 30 0 is_stmt 0 discriminator 1
		SMOVIL		1075576840, R10
		SMOVIH		1075576840, R10
		SBR		GetConfReg
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SNOP		4
.L26:
		SMOV.M1		R10, R42
		SBR		.L24
		SNOP		6
.L23:
	.loc 1 31 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L25
		SNOP		6
	.loc 1 31 0 is_stmt 0 discriminator 1
		SMOVIL		1075642376, R10
		SMOVIH		1075642376, R10
		SBR		GetConfReg
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SNOP		4
.L27:
		SMOV.M1		R10, R42
		SBR		.L24
		SNOP		6
.L25:
		SBR		.L22
		SNOP		6
.L24:
.L22:
	.loc 1 32 0 is_stmt 1
		SMOV.M1		R42, R10
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE3:
	.size	GetTimerCount, .-GetTimerCount
	.section	.text.GetTimerPeriod,"ax",@progbits
	.align	2
	.global	GetTimerPeriod
	.type	GetTimerPeriod, @function
GetTimerPeriod:
.LFB4:
	.loc 1 36 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI9:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 37 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L29
		SNOP		6
	.loc 1 37 0 is_stmt 0 discriminator 1
		SMOVIL		1075576836, R10
		SMOVIH		1075576836, R10
		SBR		GetConfReg
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SNOP		4
.L32:
		SMOV.M1		R10, R42
		SBR		.L30
		SNOP		6
.L29:
	.loc 1 38 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L31
		SNOP		6
	.loc 1 38 0 is_stmt 0 discriminator 1
		SMOVIL		1075642372, R10
		SMOVIH		1075642372, R10
		SBR		GetConfReg
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SNOP		4
.L33:
		SMOV.M1		R10, R42
		SBR		.L30
		SNOP		6
.L31:
		SBR		.L28
		SNOP		6
.L30:
.L28:
	.loc 1 39 0 is_stmt 1
		SMOV.M1		R42, R10
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE4:
	.size	GetTimerPeriod, .-GetTimerPeriod
	.section	.text.SetTimerPeriod,"ax",@progbits
	.align	2
	.global	SetTimerPeriod
	.type	SetTimerPeriod, @function
SetTimerPeriod:
.LFB5:
	.loc 1 43 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI10:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI11:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
		SSTW		R12, *-AR14[6]
	.loc 1 44 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L35
		SNOP		6
	.loc 1 44 0 is_stmt 0 discriminator 1
		SMOVIL		1075576836, R10
		SMOVIH		1075576836, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		4
.L39:
.L35:
	.loc 1 45 0 is_stmt 1
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOVIL		1, R43
		SEQ		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L38
		SNOP		6
	.loc 1 45 0 is_stmt 0 discriminator 1
		SMOVIL		1075642372, R10
		SMOVIH		1075642372, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
		SNOP		4
.L40:
.L38:
	.loc 1 46 0 is_stmt 1
		SNOP		1
.L34:
	.loc 1 47 0
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE5:
	.size	SetTimerPeriod, .-SetTimerPeriod
	.section	.text.GetSpareReg,"ax",@progbits
	.align	2
	.global	GetSpareReg
	.type	GetSpareReg, @function
GetSpareReg:
.LFB6:
	.loc 1 51 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI13:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
	.loc 1 52 0
		SLDW		*-AR14[5], R46
		SNOP		5
		SMOVIL		7, R0
		SLTU		R0, R46, R46
		SMOV.M1		R46, R0
	[R0]	SBR		.L42
		SNOP		6
		SLDW		*-AR14[5], R44
		SNOP		5
		SMOVIL		0, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R46
		SSHFLL		2, R45, R43
		SOR		R43, R46, R43
		SSHFLL		2, R44, R42
		SMOVIL.L		.L51, R44
		SMOVIH.L		.L51, R44
		SMOVIH4.L		.L51, R45
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SBR		R42
		SNOP		6
	.section	.const,"a",@progbits
	.align	2
	.align	2
.L51:
	.long	.L43
	.long	.L44
	.long	.L45
	.long	.L46
	.long	.L47
	.long	.L48
	.long	.L49
	.long	.L50
	.section	.text.GetSpareReg
.L43:
	.loc 1 54 0
		SMOVIL		1075576848, R10
		SMOVIH		1075576848, R10
		SBR		GetConfReg
		SMOVIL		.L53, R62
		SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
		SNOP		4
.L53:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L44:
	.loc 1 57 0
		SMOVIL		1075576852, R10
		SMOVIH		1075576852, R10
		SBR		GetConfReg
		SMOVIL		.L54, R62
		SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
		SNOP		4
.L54:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L45:
	.loc 1 60 0
		SMOVIL		1075576856, R10
		SMOVIH		1075576856, R10
		SBR		GetConfReg
		SMOVIL		.L55, R62
		SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
		SNOP		4
.L55:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L46:
	.loc 1 63 0
		SMOVIL		1075576860, R10
		SMOVIH		1075576860, R10
		SBR		GetConfReg
		SMOVIL		.L56, R62
		SMOVIH		.L56, R62
		SMOVIH4.L		.L56, R63
		SNOP		4
.L56:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L47:
	.loc 1 66 0
		SMOVIL		1075642384, R10
		SMOVIH		1075642384, R10
		SBR		GetConfReg
		SMOVIL		.L57, R62
		SMOVIH		.L57, R62
		SMOVIH4.L		.L57, R63
		SNOP		4
.L57:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L48:
	.loc 1 69 0
		SMOVIL		1075642388, R10
		SMOVIH		1075642388, R10
		SBR		GetConfReg
		SMOVIL		.L58, R62
		SMOVIH		.L58, R62
		SMOVIH4.L		.L58, R63
		SNOP		4
.L58:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L49:
	.loc 1 72 0
		SMOVIL		1075642392, R10
		SMOVIH		1075642392, R10
		SBR		GetConfReg
		SMOVIL		.L59, R62
		SMOVIH		.L59, R62
		SMOVIH4.L		.L59, R63
		SNOP		4
.L59:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L50:
	.loc 1 75 0
		SMOVIL		1075642396, R10
		SMOVIH		1075642396, R10
		SBR		GetConfReg
		SMOVIL		.L60, R62
		SMOVIH		.L60, R62
		SMOVIH4.L		.L60, R63
		SNOP		4
.L60:
		SMOV.M1		R10, R42
		SBR		.L52
		SNOP		6
.L42:
	.loc 1 77 0
		SMOVIL		0, R42
.L52:
	.loc 1 79 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE6:
	.size	GetSpareReg, .-GetSpareReg
	.section	.text.SetSpareReg,"ax",@progbits
	.align	2
	.global	SetSpareReg
	.type	SetSpareReg, @function
SetSpareReg:
.LFB7:
	.loc 1 83 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI14:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI15:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[2]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTW		R10, *-AR14[5]
		SSTW		R12, *-AR14[6]
	.loc 1 84 0
		SLDW		*-AR14[5], R46
		SNOP		5
		SMOVIL		7, R0
		SLTU		R0, R46, R46
		SMOV.M1		R46, R0
	[R0]	SBR		.L73
		SNOP		6
		SLDW		*-AR14[5], R44
		SNOP		5
		SMOVIL		0, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R46
		SSHFLL		2, R45, R43
		SOR		R43, R46, R43
		SSHFLL		2, R44, R42
		SMOVIL.L		.L71, R44
		SMOVIH.L		.L71, R44
		SMOVIH4.L		.L71, R45
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SBR		R42
		SNOP		6
	.section	.const,"a",@progbits
	.align	2
	.align	2
.L71:
	.long	.L63
	.long	.L64
	.long	.L65
	.long	.L66
	.long	.L67
	.long	.L68
	.long	.L69
	.long	.L70
	.section	.text.SetSpareReg
.L63:
	.loc 1 86 0
		SMOVIL		1075576848, R10
		SMOVIH		1075576848, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L74, R62
		SMOVIH		.L74, R62
		SMOVIH4.L		.L74, R63
		SNOP		4
.L74:
	.loc 1 87 0
		SBR		.L61
		SNOP		6
.L64:
	.loc 1 89 0
		SMOVIL		1075576852, R10
		SMOVIH		1075576852, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L75, R62
		SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
		SNOP		4
.L75:
	.loc 1 90 0
		SBR		.L61
		SNOP		6
.L65:
	.loc 1 92 0
		SMOVIL		1075576856, R10
		SMOVIH		1075576856, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L76, R62
		SMOVIH		.L76, R62
		SMOVIH4.L		.L76, R63
		SNOP		4
.L76:
	.loc 1 93 0
		SBR		.L61
		SNOP		6
.L66:
	.loc 1 95 0
		SMOVIL		1075576860, R10
		SMOVIH		1075576860, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L77, R62
		SMOVIH		.L77, R62
		SMOVIH4.L		.L77, R63
		SNOP		4
.L77:
	.loc 1 96 0
		SBR		.L61
		SNOP		6
.L67:
	.loc 1 98 0
		SMOVIL		1075642384, R10
		SMOVIH		1075642384, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L78, R62
		SMOVIH		.L78, R62
		SMOVIH4.L		.L78, R63
		SNOP		4
.L78:
	.loc 1 99 0
		SBR		.L61
		SNOP		6
.L68:
	.loc 1 101 0
		SMOVIL		1075642388, R10
		SMOVIH		1075642388, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L79, R62
		SMOVIH		.L79, R62
		SMOVIH4.L		.L79, R63
		SNOP		4
.L79:
	.loc 1 102 0
		SBR		.L61
		SNOP		6
.L69:
	.loc 1 104 0
		SMOVIL		1075642392, R10
		SMOVIH		1075642392, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L80, R62
		SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
		SNOP		4
.L80:
	.loc 1 105 0
		SBR		.L61
		SNOP		6
.L70:
	.loc 1 107 0
		SMOVIL		1075642396, R10
		SMOVIH		1075642396, R10
		SLDW		*-AR14[6], R12
		SNOP		5
		SBR		SetConfReg
		SMOVIL		.L81, R62
		SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
		SNOP		4
.L81:
	.loc 1 108 0
		SBR		.L61
		SNOP		6
.L73:
	.loc 1 109 0
		SNOP		1
.L61:
	.loc 1 111 0
		SLDDW		*+AR15[2], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE7:
	.size	SetSpareReg, .-SetSpareReg
	.section	.text.DisableVectorClk,"ax",@progbits
	.align	2
	.global	DisableVectorClk
	.type	DisableVectorClk, @function
DisableVectorClk:
.LFB8:
	.loc 1 115 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI17:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 116 0
		SMOVIL		1075576880, R10
		SMOVIH		1075576880, R10
		SMOVIL		0, R12
		SBR		SetConfReg
		SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
		SNOP		4
.L83:
	.loc 1 117 0
		SLDDW		*+AR15[1], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE8:
	.size	DisableVectorClk, .-DisableVectorClk
	.section	.text.EnableVectorClk,"ax",@progbits
	.align	2
	.global	EnableVectorClk
	.type	EnableVectorClk, @function
EnableVectorClk:
.LFB9:
	.loc 1 121 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI18:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI19:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 122 0
		SMOVIL		1075576880, R10
		SMOVIH		1075576880, R10
		SMOVIL		1, R12
		SBR		SetConfReg
		SMOVIL		.L85, R62
		SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
		SNOP		4
.L85:
	.loc 1 123 0
		SLDDW		*+AR15[1], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE9:
	.size	EnableVectorClk, .-EnableVectorClk
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x21f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0x1
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0xc
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x14
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x62
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x100
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1c
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x62
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x23
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x174
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2a
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2a
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x62
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x1a9
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x32
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x1e8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x1
	.byte	0x52
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x72
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST8
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x78
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST9
	.byte	0x1
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
	.uleb128 0x3
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB0
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB1
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI3
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB2
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI5
	.llong	.LFE2
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST3:
	.llong	.LFB3
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI6
	.llong	.LCFI7
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI7
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST4:
	.llong	.LFB4
	.llong	.LCFI8
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI8
	.llong	.LCFI9
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI9
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST5:
	.llong	.LFB5
	.llong	.LCFI10
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI10
	.llong	.LCFI11
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI11
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST6:
	.llong	.LFB6
	.llong	.LCFI12
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI12
	.llong	.LCFI13
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI13
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST7:
	.llong	.LFB7
	.llong	.LCFI14
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI14
	.llong	.LCFI15
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI15
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB8
	.llong	.LCFI16
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI16
	.llong	.LCFI17
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI17
	.llong	.LFE8
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST9:
	.llong	.LFB9
	.llong	.LCFI18
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI18
	.llong	.LCFI19
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI19
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.llong	.LFB3
	.llong	.LFE3-.LFB3
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
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	.LFB2
	.llong	.LFE2
	.llong	.LFB3
	.llong	.LFE3
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
	.llong	.LFB9
	.llong	.LFE9
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"unsigned int"
.LASF16:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_dp_qrd_solver_cmplx/Debug"
.LASF12:
	.string	"DisableVectorClk"
.LASF9:
	.string	"SpareRegNO"
.LASF14:
	.string	"GNU C 4.7.0"
.LASF3:
	.string	"TimerResume"
.LASF13:
	.string	"EnableVectorClk"
.LASF5:
	.string	"GetTimerPeriod"
.LASF4:
	.string	"GetTimerCount"
.LASF6:
	.string	"SetTimerPeriod"
.LASF8:
	.string	"GetSpareReg"
.LASF15:
	.string	"../Timer.c"
.LASF7:
	.string	"Period"
.LASF11:
	.string	"Data"
.LASF1:
	.string	"TimerHold"
.LASF2:
	.string	"TimerNO"
.LASF10:
	.string	"SetSpareReg"
.LASF0:
	.string	"TimerStart"

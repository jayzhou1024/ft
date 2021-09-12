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
.LVL0:
	.loc 1 7 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L6
	.loc 1 5 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 16
	.loc 1 9 0
		SMOVIL		16, R6
	.loc 1 5 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 9 0
		SMOVIL		0, R7
	;; condjump to .L6 occurs
	.loc 1 7 0
	[R1]	SBR		.L7
		SNOP		6
	;; condjump to .L7 occurs
	.loc 1 9 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L6:
	.loc 1 7 0 discriminator 1
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 9 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
	.loc 1 6 0 discriminator 1
		SMOVIL		1075576832, R10
.LVL1:
		SMOVIH		1075576832, R10
	.loc 1 7 0 discriminator 1
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL2:
.L7:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 9 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
	.loc 1 7 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL3:
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
.LVL4:
	.loc 1 15 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L14
	.loc 1 13 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 16
	.loc 1 17 0
		SMOVIL		16, R6
	.loc 1 13 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 17 0
		SMOVIL		0, R7
	;; condjump to .L14 occurs
	.loc 1 15 0
	[R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
	.loc 1 17 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L14:
	.loc 1 15 0 discriminator 1
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 17 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
	.loc 1 14 0 discriminator 1
		SMOVIL		1075576832, R10
.LVL5:
		SMOVIH		1075576832, R10
	.loc 1 15 0 discriminator 1
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL6:
.L15:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 17 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
	.loc 1 15 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL7:
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
.LVL8:
	.loc 1 23 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L22
	.loc 1 21 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 16
	.loc 1 25 0
		SMOVIL		16, R6
	.loc 1 21 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 25 0
		SMOVIL		0, R7
	;; condjump to .L22 occurs
	.loc 1 23 0
	[R1]	SBR		.L23
		SNOP		6
	;; condjump to .L23 occurs
	.loc 1 25 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L22:
	.loc 1 23 0 discriminator 1
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 25 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
	.loc 1 22 0 discriminator 1
		SMOVIL		1075576832, R10
.LVL9:
		SMOVIH		1075576832, R10
	.loc 1 23 0 discriminator 1
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL10:
.L23:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 25 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
	.loc 1 23 0 discriminator 1
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL11:
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
.LVL12:
	.loc 1 31 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L30
.LVL13:
	.loc 1 29 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
	.cfi_def_cfa_offset 16
	.loc 1 32 0
		SMOVIL		16, R6
	.loc 1 29 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 32 0
		SMOVIL		0, R7
	;; condjump to .L30 occurs
	.loc 1 31 0
	[R1]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 32 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L30:
	.loc 1 31 0 discriminator 1
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 32 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576840, R10
	.loc 1 30 0 discriminator 1
		SMOVIH		1075576840, R10
	.loc 1 31 0 discriminator 1
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL14:
.L31:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 32 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642376, R10
	.loc 1 31 0 discriminator 1
		SMOVIH		1075642376, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL15:
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
.LVL16:
	.loc 1 38 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L38
.LVL17:
	.loc 1 36 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI4:
	.cfi_def_cfa_offset 16
	.loc 1 39 0
		SMOVIL		16, R6
	.loc 1 36 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 39 0
		SMOVIL		0, R7
	;; condjump to .L38 occurs
	.loc 1 38 0
	[R1]	SBR		.L39
		SNOP		6
	;; condjump to .L39 occurs
	.loc 1 39 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L38:
	.loc 1 38 0 discriminator 1
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 39 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
	.loc 1 37 0 discriminator 1
		SMOVIH		1075576836, R10
	.loc 1 38 0 discriminator 1
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL18:
.L39:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 39 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
	.loc 1 38 0 discriminator 1
		SMOVIH		1075642372, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL19:
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
.LVL20:
	.loc 1 45 0
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L46
	.loc 1 43 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI5:
	.cfi_def_cfa_offset 16
	.loc 1 47 0
		SMOVIL		16, R6
	.loc 1 43 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 47 0
		SMOVIL		0, R7
	;; condjump to .L46 occurs
	.loc 1 45 0
	[R1]	SBR		.L47
		SNOP		6
	;; condjump to .L47 occurs
	.loc 1 47 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L46:
	.loc 1 45 0 discriminator 1
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 47 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
.LVL21:
	.loc 1 44 0 discriminator 1
		SMOVIH		1075576836, R10
	.loc 1 45 0 discriminator 1
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL22:
.L47:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 47 0 discriminator 1
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
	.loc 1 45 0 discriminator 1
		SMOVIH		1075642372, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL23:
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
.LVL24:
	.loc 1 52 0
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L62
	|	SMOVIL		-16, R6
	.loc 1 51 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI6:
	.cfi_def_cfa_offset 16
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 52 0
	;; condjump to .L62 occurs
	.loc 1 79 0
		SLDDW		*+AR15[1], R63:R62
	|	SMOVIL		16, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		0, R10
		SNOP		3
.LVL25:
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL26:
.L62:
	.loc 1 52 0
		SMOV.M2		R10, R44
	|	SMOVIL		0, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R46
		SSHFLL		2, R44, R42
		SMOVIL.L		.L59, R44
		SSHFLL		2, R45, R43
		SMOVIH.L		.L59, R44
		SMOVIH4.L		.L59, R45
		SMVAGA36.M1		R45:R44, AR0
	|	SOR		R43, R46, R43
		SNOP		1
		SMVAAA.M2		AR0, OR11
		SNOP		1
		SADDA.M2		R43:R42,OR11,AR10
		SNOP		1
		SLDW		*AR10, R1
		SNOP		5
		SBR		R1
		SNOP		6
	.section	.const,"a",@progbits
	.align	2
	.align	2
.L59:
	.long	.L51
	.long	.L52
	.long	.L53
	.long	.L54
	.long	.L55
	.long	.L56
	.long	.L57
	.long	.L58
	.section	.text.GetSpareReg
.L57:
	.loc 1 75 0
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642392, R10
.LVL27:
	.loc 1 72 0
		SMOVIH		1075642392, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL28:
.L58:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642396, R10
.LVL29:
	.loc 1 75 0
		SMOVIH		1075642396, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL30:
.L51:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576848, R10
.LVL31:
	.loc 1 54 0
		SMOVIH		1075576848, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL32:
.L52:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576852, R10
.LVL33:
	.loc 1 57 0
		SMOVIH		1075576852, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL34:
.L53:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576856, R10
.LVL35:
	.loc 1 60 0
		SMOVIH		1075576856, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL36:
.L54:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576860, R10
.LVL37:
	.loc 1 63 0
		SMOVIH		1075576860, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL38:
.L55:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642384, R10
.LVL39:
	.loc 1 66 0
		SMOVIH		1075642384, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL40:
.L56:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 79 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642388, R10
.LVL41:
	.loc 1 69 0
		SMOVIH		1075642388, R10
	.loc 1 75 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL42:
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
.LVL43:
	.loc 1 84 0
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L77
	|	SMOVIL		-16, R6
	.loc 1 83 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI7:
	.cfi_def_cfa_offset 16
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 84 0
	;; condjump to .L77 occurs
	.loc 1 111 0
		SLDDW		*+AR15[1], R63:R62
	|	SMOVIL		16, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		3
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L77:
	.loc 1 84 0
		SMOV.M2		R10, R44
	|	SMOVIL		0, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		30, R44, R46
		SSHFLL		2, R44, R42
		SMOVIL.L		.L74, R44
		SSHFLL		2, R45, R43
		SMOVIH.L		.L74, R44
		SMOVIH4.L		.L74, R45
		SMVAGA36.M1		R45:R44, AR0
	|	SOR		R43, R46, R43
		SNOP		1
		SMVAAA.M2		AR0, OR11
		SNOP		1
		SADDA.M2		R43:R42,OR11,AR10
		SNOP		1
		SLDW		*AR10, R1
		SNOP		5
		SBR		R1
		SNOP		6
	.section	.const,"a",@progbits
	.align	2
	.align	2
.L74:
	.long	.L66
	.long	.L67
	.long	.L68
	.long	.L69
	.long	.L70
	.long	.L71
	.long	.L72
	.long	.L73
	.section	.text.SetSpareReg
.L72:
	.loc 1 107 0
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642392, R10
.LVL44:
	.loc 1 104 0
		SMOVIH		1075642392, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL45:
.L73:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642396, R10
.LVL46:
	.loc 1 107 0
		SMOVIH		1075642396, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL47:
.L66:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576848, R10
.LVL48:
	.loc 1 86 0
		SMOVIH		1075576848, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL49:
.L67:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576852, R10
.LVL50:
	.loc 1 89 0
		SMOVIH		1075576852, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL51:
.L68:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576856, R10
.LVL52:
	.loc 1 92 0
		SMOVIH		1075576856, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL53:
.L69:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576860, R10
.LVL54:
	.loc 1 95 0
		SMOVIH		1075576860, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL55:
.L70:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642384, R10
.LVL56:
	.loc 1 98 0
		SMOVIH		1075642384, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL57:
.L71:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 111 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642388, R10
.LVL58:
	.loc 1 101 0
		SMOVIH		1075642388, R10
	.loc 1 107 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL59:
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
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI8:
	.cfi_def_cfa_offset 16
	.loc 1 117 0
		SMOVIL		16, R6
	.loc 1 115 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 117 0
		SMOVIL		0, R7
	.loc 1 116 0
		SBR		SetConfReg
	|	SMOVIL		0, R12
	.loc 1 117 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576880, R10
	.loc 1 116 0
		SMOVIH		1075576880, R10
	;; sibcall to SetConfReg occurs
		SNOP		4
.LVL60:
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
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI9:
	.cfi_def_cfa_offset 16
	.loc 1 123 0
		SMOVIL		16, R6
	.loc 1 121 0
		SSTDW		R63:R62, *+AR15[1]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 123 0
		SMOVIL		0, R7
	.loc 1 122 0
		SBR		SetConfReg
	|	SMOVIL		1, R12
	.loc 1 123 0
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576880, R10
	.loc 1 122 0
		SMOVIH		1075576880, R10
	;; sibcall to SetConfReg occurs
		SNOP		4
.LVL61:
	.cfi_endproc
.LFE9:
	.size	EnableVectorClk, .-EnableVectorClk
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ff
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0x1
	.4byte	.LASF13
	.4byte	.LASF14
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
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4
	.4byte	0x99
	.4byte	.LLST1
	.uleb128 0x4
	.llong	.LVL2
	.byte	0x1
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x33
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.uleb128 0x6
	.llong	.LVL3
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x33
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x108
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0xc
	.4byte	0x99
	.4byte	.LLST3
	.uleb128 0x4
	.llong	.LVL6
	.byte	0x1
	.4byte	0xee
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.uleb128 0x6
	.llong	.LVL7
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x170
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x14
	.4byte	0x99
	.4byte	.LLST5
	.uleb128 0x4
	.llong	.LVL10
	.byte	0x1
	.4byte	0x156
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.uleb128 0x6
	.llong	.LVL11
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x32
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x99
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x1d2
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1c
	.4byte	0x99
	.4byte	.LLST7
	.uleb128 0x4
	.llong	.LVL14
	.byte	0x1
	.4byte	0x1bd
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0008
	.byte	0
	.uleb128 0x6
	.llong	.LVL15
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0008
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x99
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x234
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x23
	.4byte	0x99
	.4byte	.LLST9
	.uleb128 0x4
	.llong	.LVL18
	.byte	0x1
	.4byte	0x21f
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0004
	.byte	0
	.uleb128 0x6
	.llong	.LVL19
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0004
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x2a1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2a
	.4byte	0x99
	.4byte	.LLST11
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x2a
	.4byte	0x99
	.4byte	.LLST12
	.uleb128 0x4
	.llong	.LVL22
	.byte	0x1
	.4byte	0x28c
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0004
	.byte	0
	.uleb128 0x6
	.llong	.LVL23
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0004
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x99
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x393
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x32
	.4byte	0x99
	.4byte	.LLST14
	.uleb128 0x4
	.llong	.LVL28
	.byte	0x1
	.4byte	0x2ee
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0018
	.byte	0
	.uleb128 0x4
	.llong	.LVL30
	.byte	0x1
	.4byte	0x306
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d001c
	.byte	0
	.uleb128 0x4
	.llong	.LVL32
	.byte	0x1
	.4byte	0x31e
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0010
	.byte	0
	.uleb128 0x4
	.llong	.LVL34
	.byte	0x1
	.4byte	0x336
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0014
	.byte	0
	.uleb128 0x4
	.llong	.LVL36
	.byte	0x1
	.4byte	0x34e
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0018
	.byte	0
	.uleb128 0x4
	.llong	.LVL38
	.byte	0x1
	.4byte	0x366
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c001c
	.byte	0
	.uleb128 0x4
	.llong	.LVL40
	.byte	0x1
	.4byte	0x37e
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0010
	.byte	0
	.uleb128 0x6
	.llong	.LVL42
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0014
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x490
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x99
	.4byte	.LLST16
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x1
	.byte	0x52
	.4byte	0x99
	.4byte	.LLST17
	.uleb128 0x4
	.llong	.LVL45
	.byte	0x1
	.4byte	0x3eb
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0018
	.byte	0
	.uleb128 0x4
	.llong	.LVL47
	.byte	0x1
	.4byte	0x403
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d001c
	.byte	0
	.uleb128 0x4
	.llong	.LVL49
	.byte	0x1
	.4byte	0x41b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0010
	.byte	0
	.uleb128 0x4
	.llong	.LVL51
	.byte	0x1
	.4byte	0x433
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0014
	.byte	0
	.uleb128 0x4
	.llong	.LVL53
	.byte	0x1
	.4byte	0x44b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0018
	.byte	0
	.uleb128 0x4
	.llong	.LVL55
	.byte	0x1
	.4byte	0x463
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c001c
	.byte	0
	.uleb128 0x4
	.llong	.LVL57
	.byte	0x1
	.4byte	0x47b
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0010
	.byte	0
	.uleb128 0x6
	.llong	.LVL59
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0014
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x72
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x4cb
	.uleb128 0x6
	.llong	.LVL60
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0030
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x78
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST19
	.byte	0x1
	.uleb128 0x6
	.llong	.LVL61
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.uleb128 0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0030
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
	.uleb128 0x2117
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2117
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL1
	.llong	.LVL2-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL2-1
	.llong	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL2
	.llong	.LVL3-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL3-1
	.llong	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB1
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL5
	.llong	.LVL6-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL6-1
	.llong	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL6
	.llong	.LVL7-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL7-1
	.llong	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LFB2
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE2
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL9
	.llong	.LVL10-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL10-1
	.llong	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL10
	.llong	.LVL11-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL11-1
	.llong	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LFB3
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL13
	.llong	.LVL14-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL14-1
	.llong	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL14
	.llong	.LVL15-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL15-1
	.llong	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB4
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL17
	.llong	.LVL18-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL18-1
	.llong	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL18
	.llong	.LVL19-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL19-1
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LFB5
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL21
	.llong	.LVL22-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL22-1
	.llong	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL23-1
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL20
	.llong	.LVL22-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL22-1
	.llong	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL22
	.llong	.LVL23-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL23-1
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LFB6
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI6
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL24
	.llong	.LVL25
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL28
	.llong	.LVL29
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL31
	.llong	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL34
	.llong	.LVL35
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL37
	.llong	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL38
	.llong	.LVL39
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL40
	.llong	.LVL41
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL41
	.llong	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LFB7
	.llong	.LCFI7
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI7
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL43
	.llong	.LVL44
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL44
	.llong	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL45
	.llong	.LVL46
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL48
	.llong	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL51
	.llong	.LVL52
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL54
	.llong	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL56
	.llong	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL58
	.llong	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL43
	.llong	.LVL45-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL45-1
	.llong	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL45
	.llong	.LVL47-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL47-1
	.llong	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL47
	.llong	.LVL49-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL49-1
	.llong	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL51-1
	.llong	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL51
	.llong	.LVL53-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL53-1
	.llong	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL53
	.llong	.LVL55-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL55-1
	.llong	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL55
	.llong	.LVL57-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL57-1
	.llong	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	.LVL57
	.llong	.LVL59-1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL59-1
	.llong	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
	.llong	.LFB8
	.llong	.LCFI8
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI8
	.llong	.LFE8
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	0
	.llong	0
.LLST19:
	.llong	.LFB9
	.llong	.LCFI9
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI9
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
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
.LASF14:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/asm/Debug"
.LASF15:
	.string	"unsigned int"
.LASF16:
	.string	"DisableVectorClk"
.LASF9:
	.string	"SpareRegNO"
.LASF12:
	.string	"GNU C 4.7.0"
.LASF3:
	.string	"TimerResume"
.LASF17:
	.string	"EnableVectorClk"
.LASF5:
	.string	"GetTimerPeriod"
.LASF4:
	.string	"GetTimerCount"
.LASF6:
	.string	"SetTimerPeriod"
.LASF8:
	.string	"GetSpareReg"
.LASF13:
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

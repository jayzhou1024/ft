	.file	"Timer.c"
.text;
.Ltext0:
	.section	.text.TimerStart,"ax",@progbits
	.align	2
	.global	TimerStart
	.type	TimerStart, @function
TimerStart:
.LFB0:
	.file 1 "../Timer.c"
	.loc 1 5 0
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
	.loc 1 9 0
		SMOVIL		16, R6
	.loc 1 5 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI1:
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
	.loc 1 7 0
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 9 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
	.loc 1 6 0
		SMOVIL		1075576832, R10
.LVL1:
		SMOVIH		1075576832, R10
	.loc 1 7 0
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL2:
.L7:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 9 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
	.loc 1 7 0
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL3:
.LFE0:
	.size	TimerStart, .-TimerStart
	.section	.text.TimerHold,"ax",@progbits
	.align	2
	.global	TimerHold
	.type	TimerHold, @function
TimerHold:
.LFB1:
	.loc 1 13 0
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
.LCFI2:
	.loc 1 17 0
		SMOVIL		16, R6
	.loc 1 13 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI3:
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
	.loc 1 15 0
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 17 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
	.loc 1 14 0
		SMOVIL		1075576832, R10
.LVL5:
		SMOVIH		1075576832, R10
	.loc 1 15 0
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL6:
.L15:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 17 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
	.loc 1 15 0
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL7:
.LFE1:
	.size	TimerHold, .-TimerHold
	.section	.text.TimerResume,"ax",@progbits
	.align	2
	.global	TimerResume
	.type	TimerResume, @function
TimerResume:
.LFB2:
	.loc 1 21 0
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
.LCFI4:
	.loc 1 25 0
		SMOVIL		16, R6
	.loc 1 21 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI5:
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
	.loc 1 23 0
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 25 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
	.loc 1 22 0
		SMOVIL		1075576832, R10
.LVL9:
		SMOVIH		1075576832, R10
	.loc 1 23 0
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL10:
.L23:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 25 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
	.loc 1 23 0
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.LVL11:
.LFE2:
	.size	TimerResume, .-TimerResume
	.section	.text.GetTimerCount,"ax",@progbits
	.align	2
	.global	GetTimerCount
	.type	GetTimerCount, @function
GetTimerCount:
.LFB3:
	.loc 1 29 0
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
.LCFI6:
	.loc 1 32 0
		SMOVIL		16, R6
	.loc 1 29 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI7:
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
	.loc 1 31 0
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 32 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576840, R10
	.loc 1 30 0
		SMOVIH		1075576840, R10
	.loc 1 31 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL14:
.L31:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 32 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642376, R10
	.loc 1 31 0
		SMOVIH		1075642376, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL15:
.LFE3:
	.size	GetTimerCount, .-GetTimerCount
	.section	.text.GetTimerPeriod,"ax",@progbits
	.align	2
	.global	GetTimerPeriod
	.type	GetTimerPeriod, @function
GetTimerPeriod:
.LFB4:
	.loc 1 36 0
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
.LCFI8:
	.loc 1 39 0
		SMOVIL		16, R6
	.loc 1 36 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI9:
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
	.loc 1 38 0
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 39 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
	.loc 1 37 0
		SMOVIH		1075576836, R10
	.loc 1 38 0
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL18:
.L39:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 39 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
	.loc 1 38 0
		SMOVIH		1075642372, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.LVL19:
.LFE4:
	.size	GetTimerPeriod, .-GetTimerPeriod
	.section	.text.SetTimerPeriod,"ax",@progbits
	.align	2
	.global	SetTimerPeriod
	.type	SetTimerPeriod, @function
SetTimerPeriod:
.LFB5:
	.loc 1 43 0
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
.LCFI10:
	.loc 1 47 0
		SMOVIL		16, R6
	.loc 1 43 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI11:
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
	.loc 1 45 0
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 47 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
.LVL21:
	.loc 1 44 0
		SMOVIH		1075576836, R10
	.loc 1 45 0
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL22:
.L47:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
	.loc 1 47 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
	.loc 1 45 0
		SMOVIH		1075642372, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.LVL23:
.LFE5:
	.size	SetTimerPeriod, .-SetTimerPeriod
	.section	.text.GetSpareReg,"ax",@progbits
	.align	2
	.global	GetSpareReg
	.type	GetSpareReg, @function
GetSpareReg:
.LFB6:
	.loc 1 51 0
.LVL24:
	.loc 1 52 0
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L62
	|	SMOVIL		-16, R6
	.loc 1 51 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI12:
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
.LCFI13:
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
.LFE6:
	.size	GetSpareReg, .-GetSpareReg
	.section	.text.SetSpareReg,"ax",@progbits
	.align	2
	.global	SetSpareReg
	.type	SetSpareReg, @function
SetSpareReg:
.LFB7:
	.loc 1 83 0
.LVL43:
	.loc 1 84 0
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L77
	|	SMOVIL		-16, R6
	.loc 1 83 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI14:
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
.LCFI15:
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
.LFE7:
	.size	SetSpareReg, .-SetSpareReg
	.section	.text.DisableVectorClk,"ax",@progbits
	.align	2
	.global	DisableVectorClk
	.type	DisableVectorClk, @function
DisableVectorClk:
.LFB8:
	.loc 1 115 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI16:
	.loc 1 117 0
		SMOVIL		16, R6
	.loc 1 115 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI17:
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
.LFE8:
	.size	DisableVectorClk, .-DisableVectorClk
	.section	.text.EnableVectorClk,"ax",@progbits
	.align	2
	.global	EnableVectorClk
	.type	EnableVectorClk, @function
EnableVectorClk:
.LFB9:
	.loc 1 121 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI18:
	.loc 1 123 0
		SMOVIL		16, R6
	.loc 1 121 0
		SSTDW		R63:R62, *+AR15[1]
.LCFI19:
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
.LFE9:
	.size	EnableVectorClk, .-EnableVectorClk
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
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
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
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
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI12-.LFB6
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI14-.LFB7
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI18-.LFB9
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE18:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5e0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../Timer.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/asm/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x116
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4
	.4byte	0x116
	.4byte	.LLST1
	.byte	0x4
	.llong	.LVL2
	.byte	0x1
	.4byte	0xfc
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.byte	0x6
	.llong	.LVL3
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x1
	.string	"TimerHold"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x194
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc
	.4byte	0x116
	.4byte	.LLST3
	.byte	0x4
	.llong	.LVL6
	.byte	0x1
	.4byte	0x17a
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.byte	0x6
	.llong	.LVL7
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.string	"TimerResume"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x204
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x14
	.4byte	0x116
	.4byte	.LLST5
	.byte	0x4
	.llong	.LVL10
	.byte	0x1
	.4byte	0x1ea
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0000
	.byte	0
	.byte	0x6
	.llong	.LVL11
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0000
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.string	"GetTimerCount"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	0x116
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x270
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1c
	.4byte	0x116
	.4byte	.LLST7
	.byte	0x4
	.llong	.LVL14
	.byte	0x1
	.4byte	0x25b
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0008
	.byte	0
	.byte	0x6
	.llong	.LVL15
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0008
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.string	"GetTimerPeriod"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x116
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x2dd
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x23
	.4byte	0x116
	.4byte	.LLST9
	.byte	0x4
	.llong	.LVL18
	.byte	0x1
	.4byte	0x2c8
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0004
	.byte	0
	.byte	0x6
	.llong	.LVL19
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0004
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x358
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2a
	.4byte	0x116
	.4byte	.LLST11
	.byte	0x9
	.string	"Period"
	.byte	0x1
	.byte	0x2a
	.4byte	0x116
	.4byte	.LLST12
	.byte	0x4
	.llong	.LVL22
	.byte	0x1
	.4byte	0x343
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0004
	.byte	0
	.byte	0x6
	.llong	.LVL23
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0004
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.string	"GetSpareReg"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x116
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x452
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x32
	.4byte	0x116
	.4byte	.LLST14
	.byte	0x4
	.llong	.LVL28
	.byte	0x1
	.4byte	0x3ad
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0018
	.byte	0
	.byte	0x4
	.llong	.LVL30
	.byte	0x1
	.4byte	0x3c5
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d001c
	.byte	0
	.byte	0x4
	.llong	.LVL32
	.byte	0x1
	.4byte	0x3dd
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0010
	.byte	0
	.byte	0x4
	.llong	.LVL34
	.byte	0x1
	.4byte	0x3f5
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0014
	.byte	0
	.byte	0x4
	.llong	.LVL36
	.byte	0x1
	.4byte	0x40d
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0018
	.byte	0
	.byte	0x4
	.llong	.LVL38
	.byte	0x1
	.4byte	0x425
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c001c
	.byte	0
	.byte	0x4
	.llong	.LVL40
	.byte	0x1
	.4byte	0x43d
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0010
	.byte	0
	.byte	0x6
	.llong	.LVL42
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0014
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.string	"SetSpareReg"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x558
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x116
	.4byte	.LLST16
	.byte	0x9
	.string	"Data"
	.byte	0x1
	.byte	0x52
	.4byte	0x116
	.4byte	.LLST17
	.byte	0x4
	.llong	.LVL45
	.byte	0x1
	.4byte	0x4b3
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0018
	.byte	0
	.byte	0x4
	.llong	.LVL47
	.byte	0x1
	.4byte	0x4cb
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d001c
	.byte	0
	.byte	0x4
	.llong	.LVL49
	.byte	0x1
	.4byte	0x4e3
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0010
	.byte	0
	.byte	0x4
	.llong	.LVL51
	.byte	0x1
	.4byte	0x4fb
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0014
	.byte	0
	.byte	0x4
	.llong	.LVL53
	.byte	0x1
	.4byte	0x513
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0018
	.byte	0
	.byte	0x4
	.llong	.LVL55
	.byte	0x1
	.4byte	0x52b
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c001c
	.byte	0
	.byte	0x4
	.llong	.LVL57
	.byte	0x1
	.4byte	0x543
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0010
	.byte	0
	.byte	0x6
	.llong	.LVL59
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401d0014
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.string	"DisableVectorClk"
	.byte	0x1
	.byte	0x72
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x5a0
	.byte	0x6
	.llong	.LVL60
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0xc
	.4byte	0x401c0030
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.string	"EnableVectorClk"
	.byte	0x1
	.byte	0x78
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST19
	.byte	0x1
	.byte	0x6
	.llong	.LVL61
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x31
	.byte	0x5
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
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0x4
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xa
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
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
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
	.byte	0
	.llong	.LCFI0
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB1
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI2
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LFB2
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI4
	.llong	.LFE2
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LFB3
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI6
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB4
	.llong	.LCFI8
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI8
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LFB5
	.llong	.LCFI10
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI10
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LFB6
	.llong	.LCFI12
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI12
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LFB7
	.llong	.LCFI14
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI14
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
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
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
	.llong	.LFB8
	.llong	.LCFI16
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI16
	.llong	.LFE8
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	0
	.llong	0
.LLST19:
	.llong	.LFB9
	.llong	.LCFI18
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI18
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
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
	.section	.debug_str,"",@progbits
.LASF1:
	.string	"SpareRegNO"
.LASF0:
	.string	"TimerNO"

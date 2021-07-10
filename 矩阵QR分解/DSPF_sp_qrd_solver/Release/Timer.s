	.file	"Timer.c"
	.section	.text.TimerStart,"ax",@progbits
	.align	2
	.global	TimerStart
	.type	TimerStart, @function
TimerStart:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L6
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L6 occurs
	[R1]	SBR		.L7
		SNOP		6
	;; condjump to .L7 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L6:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.L7:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		3, R12
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
	.size	TimerStart, .-TimerStart
	.section	.text.TimerHold,"ax",@progbits
	.align	2
	.global	TimerHold
	.type	TimerHold, @function
TimerHold:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L14
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L14 occurs
	[R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L14:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.L15:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1, R12
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
	.size	TimerHold, .-TimerHold
	.section	.text.TimerResume,"ax",@progbits
	.align	2
	.global	TimerResume
	.type	TimerResume, @function
TimerResume:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L22
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L22 occurs
	[R1]	SBR		.L23
		SNOP		6
	;; condjump to .L23 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L22:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
		SMOVIL		1075576832, R10
		SMOVIH		1075576832, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
.L23:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		2, R12
		SMOVIL		1075642368, R10
		SMOVIH		1075642368, R10
	;; sibcall to SetConfReg occurs
		SNOP		2
	.size	TimerResume, .-TimerResume
	.section	.text.GetTimerCount,"ax",@progbits
	.align	2
	.global	GetTimerCount
	.type	GetTimerCount, @function
GetTimerCount:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L30
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L30 occurs
	[R1]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L30:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576840, R10
		SMOVIH		1075576840, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L31:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642376, R10
		SMOVIH		1075642376, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
	.size	GetTimerCount, .-GetTimerCount
	.section	.text.GetTimerPeriod,"ax",@progbits
	.align	2
	.global	GetTimerPeriod
	.type	GetTimerPeriod, @function
GetTimerPeriod:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L38
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L38 occurs
	[R1]	SBR		.L39
		SNOP		6
	;; condjump to .L39 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L38:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
		SMOVIH		1075576836, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L39:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
		SMOVIH		1075642372, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
	.size	GetTimerPeriod, .-GetTimerPeriod
	.section	.text.SetTimerPeriod,"ax",@progbits
	.align	2
	.global	SetTimerPeriod
	.type	SetTimerPeriod, @function
SetTimerPeriod:
		SMOVIL		1, R42
	|	SMOV.M2		R10, R0
		SEQ		R42, R10, R1
	|[!R0]	SBR		.L46
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
	;; condjump to .L46 occurs
	[R1]	SBR		.L47
		SNOP		6
	;; condjump to .L47 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L46:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576836, R10
		SMOVIH		1075576836, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L47:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642372, R10
		SMOVIH		1075642372, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
	.size	SetTimerPeriod, .-SetTimerPeriod
	.section	.text.GetSpareReg,"ax",@progbits
	.align	2
	.global	GetSpareReg
	.type	GetSpareReg, @function
GetSpareReg:
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L62
	|	SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
	;; condjump to .L62 occurs
		SLDDW		*+AR15[1], R63:R62
	|	SMOVIL		16, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		0, R10
		SNOP		3
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.L62:
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
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642392, R10
		SMOVIH		1075642392, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L58:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642396, R10
		SMOVIH		1075642396, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L51:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576848, R10
		SMOVIH		1075576848, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L52:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576852, R10
		SMOVIH		1075576852, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L53:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576856, R10
		SMOVIH		1075576856, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L54:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576860, R10
		SMOVIH		1075576860, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L55:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642384, R10
		SMOVIH		1075642384, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
.L56:
		SBR		GetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642388, R10
		SMOVIH		1075642388, R10
	;; sibcall to GetConfReg occurs
		SNOP		3
	.size	GetSpareReg, .-GetSpareReg
	.section	.text.SetSpareReg,"ax",@progbits
	.align	2
	.global	SetSpareReg
	.type	SetSpareReg, @function
SetSpareReg:
		SMOVIL		7, R42
		SLTU		R42, R10, R0
	[!R0]	SBR		.L77
	|	SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[1]
		SNOP		2
	;; condjump to .L77 occurs
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
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642392, R10
		SMOVIH		1075642392, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L73:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642396, R10
		SMOVIH		1075642396, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L66:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576848, R10
		SMOVIH		1075576848, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L67:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576852, R10
		SMOVIH		1075576852, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L68:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576856, R10
		SMOVIH		1075576856, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L69:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576860, R10
		SMOVIH		1075576860, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L70:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642384, R10
		SMOVIH		1075642384, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
.L71:
		SBR		SetConfReg
	|	SMOVIL		16, R6
	|	SLDDW		*+AR15[1], R63:R62
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075642388, R10
		SMOVIH		1075642388, R10
	;; sibcall to SetConfReg occurs
		SNOP		3
	.size	SetSpareReg, .-SetSpareReg
	.section	.text.DisableVectorClk,"ax",@progbits
	.align	2
	.global	DisableVectorClk
	.type	DisableVectorClk, @function
DisableVectorClk:
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
		SBR		SetConfReg
	|	SMOVIL		0, R12
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576880, R10
		SMOVIH		1075576880, R10
	;; sibcall to SetConfReg occurs
		SNOP		4
	.size	DisableVectorClk, .-DisableVectorClk
	.section	.text.EnableVectorClk,"ax",@progbits
	.align	2
	.global	EnableVectorClk
	.type	EnableVectorClk, @function
EnableVectorClk:
		SMOVIL		-16, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIL		16, R6
		SSTDW		R63:R62, *+AR15[1]
		SMOVIL		0, R7
		SBR		SetConfReg
	|	SMOVIL		1, R12
		SLDDW		*+AR15[1], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		1075576880, R10
		SMOVIH		1075576880, R10
	;; sibcall to SetConfReg occurs
		SNOP		4
	.size	EnableVectorClk, .-EnableVectorClk

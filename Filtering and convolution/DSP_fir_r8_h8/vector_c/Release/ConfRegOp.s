	.file	"ConfRegOp.c"
	.section	.text.GetConfReg,"ax",@progbits
	.align	2
	.global	GetConfReg
	.type	GetConfReg, @function
GetConfReg:
		SMOV.M2		R10, R42
	|	SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
		SBR		R62
		SLDW		*AR10, R10
		SNOP		5
	;; return occurs
	.size	GetConfReg, .-GetConfReg
	.section	.text.SetConfReg,"ax",@progbits
	.align	2
	.global	SetConfReg
	.type	SetConfReg, @function
SetConfReg:
		SBR		R62
	|	SMOV.M2		R10, R42
	|	SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
		SNOP		1
		SSTW		R12, *AR10
		SNOP		3
	;; return occurs
	.size	SetConfReg, .-SetConfReg

	.file	"ConfRegOp.c"
	.section	.text.GetConfReg,"ax",@progbits
	.align	2
	.global	GetConfReg
	.type	GetConfReg, @function
GetConfReg:
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
		SADDA.M1		16,AR15,AR14
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTW		R10, *-AR14[3]
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOVIL		0, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOV.M1		R42, R10
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
	.size	GetConfReg, .-GetConfReg
	.section	.text.SetConfReg,"ax",@progbits
	.align	2
	.global	SetConfReg
	.type	SetConfReg, @function
SetConfReg:
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
		SADDA.M1		16,AR15,AR14
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTW		R10, *-AR14[3]
		SSTW		R12, *-AR14[4]
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOVIL		0, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SNOP		1
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
	.size	SetConfReg, .-SetConfReg

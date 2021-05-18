	.file	"ConfRegOp.c"
.text;
.Ltext0:
	.section	.text.GetConfReg,"ax",@progbits
	.align	2
	.global	GetConfReg
	.type	GetConfReg, @function
GetConfReg:
.LFB0:
	.file 1 "../ConfRegOp.c"
	.loc 1 2 0
.LVL0:
	.loc 1 3 0
		SMOV.M2		R10, R42
	|	SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
	.loc 1 4 0
		SBR		R62
		SLDW		*AR10, R10
		SNOP		5
.LVL1:
	;; return occurs
.LFE0:
	.size	GetConfReg, .-GetConfReg
	.section	.text.SetConfReg,"ax",@progbits
	.align	2
	.global	SetConfReg
	.type	SetConfReg, @function
SetConfReg:
.LFB1:
	.loc 1 7 0
.LVL2:
	.loc 1 8 0
		SBR		R62
	|	SMOV.M2		R10, R42
	|	SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
		SNOP		1
		SSTW		R12, *AR10
		SNOP		3
	;; return occurs
.LFE1:
	.size	SetConfReg, .-SetConfReg
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
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.align	3
.LEFDE2:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../ConfRegOp.c"
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fir_r2/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"GetConfReg"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.4byte	0xbe
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0xbe
	.byte	0x3
	.string	"addr"
	.byte	0x1
	.byte	0x1
	.4byte	0xc5
	.4byte	.LLST0
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x5
	.byte	0x1
	.string	"SetConfReg"
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x11f
	.byte	0x6
	.string	"addr"
	.byte	0x1
	.byte	0x6
	.4byte	0xc5
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.string	"data"
	.byte	0x1
	.byte	0x6
	.4byte	0x11f
	.byte	0x1
	.byte	0x6c
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
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
	.byte	0x4
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
	.byte	0x5
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
	.byte	0xa
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:

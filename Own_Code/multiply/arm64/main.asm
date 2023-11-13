.section .data
.section .bss
.section .text
.global  _start
	_start:
		mov	x0,	#0
		mov	x1,	#3
		mov	x2,	#4
	theloop:
		cmp	x1,	#0
		beq	finish
		add	x0,	x0,	x2
		sub	x1,	x1,	#1
		b	theloop
	finish:
		mov	w8,	#93
		svc	#0

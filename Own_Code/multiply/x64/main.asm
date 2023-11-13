section .data
section .bss
section .text
global	_start
	_start:
		mov	rdi,	0
		mov	rcx,	3
		mov	rax,	4
	theloop:
		cmp	rcx,	0
		je	finish
		add	rdi,	rax
		loop	theloop
	finish:	
		mov	rax,	60
		syscall

section .data
section .bss
section .text
global	_start
	_start:
		mov	ebx,	0
		mov	ecx,	3
		mov	eax,	4
	theloop:
		add	ebx,	eax
		loop	theloop
	finish:
		mov	eax,	1
		int	80h

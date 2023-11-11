bits 32
section .data
section .bss
	savedByte	resb	1
section .text
global _start
	_start:
		mov		al,		00000001b
		mov		[savedByte],	al

		mov		al,		10000001b
		mov		[savedByte],	al

		mov		eax,	0
		sub		eax,	1
		
		mov eax,1      ; Exit system call value
		mov ebx,0      ; Exit return code
		int 80h        ; Call the kernel

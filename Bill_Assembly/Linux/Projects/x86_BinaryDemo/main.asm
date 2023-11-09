; Assembler 32bit template
; This app will multiply two numbers
bits 32
section .text
global _start
	_start:
		xor		ebx, 	ebx
		mov		ecx,	4
		mov		eax,	2

	myloop:
		add		ebx,	eax
		loop	myloop		





	finish:
		mov eax,1      ; Exit system call value
		int 80h        ; Call the kernel

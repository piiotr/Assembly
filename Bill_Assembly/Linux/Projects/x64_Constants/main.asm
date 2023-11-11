
MY_CONSTANT1		equ		22h 
MY_ASCII_CONSTANT1	equ		'A'

section .data
section .bss
section .text
global  _start 
	_start:

		mov		rax,	MY_CONSTANT1
		mov		eax,	MY_CONSTANT1
		mov		al,		MY_CONSTANT1
	
		mov		rax, 60					;60 = system exit
		mov		rdi, 0					;0 = return code
		syscall							;Poke the kernel

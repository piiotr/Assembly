section .data
	integer1	dq	200h
	integer2	dq	55h
	carryError	db	"Error in addition", 0h
section .bss
section .text
	global  _start 
	_start:

		mov		rax,	100
		add		rax,	200

		mov		rax,	[integer1]
		add		rax,	[integer2]

		dec		rax
		inc		rax

		mov		rax,	0ffffffffffffffffh
		add		rax,	1
		jc		nop


		
		mov		rax, 60					;60 = system exit
		mov		rdi, 0					;0 = return code
		syscall							;Poke the kernel

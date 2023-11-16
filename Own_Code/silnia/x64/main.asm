section .data
section .bss
section .text
global	_start
	_start:
		; RAX will hold the final value, becuase of how multiplication works in x64
		xor	rax,	1
		; RCX will hold the initial value 
		mov	rcx,	5
	theloop:
		mul	rcx
		loop	theloop

	finish:
		mov	rdi,	rax
		mov	rax,	60
		syscall

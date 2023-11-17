section .text
global _start 
	_start:
		; rdi will hold the sum of the digits 
		xor	rdi,	rdi
		; rax will hold the initial number 
		mov	rax,	105
		; rcx will hold the 10 for the division
		mov	rcx,	10
		

	theloop:
		xor	rdx,	rdx
		
		cmp	rax,	9
		jbe	adder

		div	rcx

		add	rdi,	rdx
		jmp	theloop

	
	adder:
		add	rdi, rax
		jmp	finish		

	finish:
		mov	rax,	60
		syscall

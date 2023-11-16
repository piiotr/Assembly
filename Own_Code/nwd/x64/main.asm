section .data 
section .bss
section .text
global	_start
	_start:
		xor	rdi,	rdi		; use rdi for the output 
		mov	rax,	50		; use rax for the first number 
		mov	rcx,	11		; use rcx for the second number 
		xor	rdx,	rdx		; clean up rdx for the remainder 

	theloop:
		div	rcx			; divide 32 / 12 
		cmp	rdx,	0		; if reminder == 0 
		cmove	rdi,	rcx		; rcx is the result 
		je	finish			; exit 
		
		mov	rax,	rcx		
		mov	rcx,	rdx
		xor	rdx,	rdx
		jmp	theloop




	finish:
		mov	rax,	60
		syscall


section .text 
global  _start
	_start: 
		; rdi will hold the final result 
		xor	rdi, 	rdi
		; rax will hold a 
		mov	rax,	32
		; rcx will hold b 
		mov	rcx,	12
		; rbx will hold the nwd 
		mov	rbx,	0
		; clean the rdx for the reminder 
		xor	rdx,	rdx
		; r8 will hold the division integer 
		mov	r8,	0
		; r9 will hold the original a 
		mov	r9,	rax
		; r10 will hold the original b 
		mov	r10,	rcx 

	nwd:
		div	rcx
		cmp	rdx,	0
		cmove	rbx,	rcx
		je 	nww
		
		mov	rax,	rcx
		mov	rcx,	rdx
		xor	rdx,	rdx
		jmp	nwd

		
	nww:
		mov	rax,	r9
		mov	rcx,	r10
		mul	rcx
		div	rbx
		mov	rdi,	rax	
	

	finish:
		mov	rax,	60
		syscall


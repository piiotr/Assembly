; The program below will return the sum of n fibonannci numbers
global _start
	_start:
		; put 0 into rdi - it will hold the result 
		xor	rdi,	rdi 
		; number of numbers
		mov	rcx,	5
		; first number 
		mov	r8,	0
		; second number 
		mov	r9,	1
		; pair
		mov	r10,	0

	myloop:
		cmp	rcx,	0
		je	finish

		add	r10,	r8
		add	rdi,	r8
		dec	rcx
		cmp	rcx,	0
		je	finish

		add	r10,	r9
		add	rdi,	r9
		dec	rcx
		cmp	rcx,	0
		je	finish

		mov	r8,	r10
		add	r9,	r10
		mov	r10,	0
		jmp	myloop

	finish:
		mov	rax,	60
		syscall

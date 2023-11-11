section .data
section .bss
section .text
	;  0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34
	;  for 5 the result should be 7 

	global  _start 
	_start:
		; rcx will hold the quantity of numbers 
		mov		rcx,	5
		; rdi will hold the final result 
		xor		rdi, 	rdi 
		; r8 will hold the first number 
		xor		r8, 	r8
		; r9 will hold the second number 
		mov		r9,		1
		; r10 will hold the pair sum 
		xor		r10,	r10

	theloop:
		add		rdi,	r8
		add		r10,	r8
		dec		rcx
		
		cmp		rcx,	0
		je		finish

		add		rdi,	r9
		add		r10,	r9
		dec		rcx
		cmp		rcx,	0
		je		finish


		mov		r8,		r10
		add		r9,		r10
		xor		r10,	r10

		jmp		theloop		

	finish:
		mov		rax, 60					;60 = system exit
		syscall							;Poke the kernel

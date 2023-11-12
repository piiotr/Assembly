bits 32
section .data
section .bss
section .text
global _start
	;  0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34
	;  for 5 the result should be 7 

	_start:
		; ebx will hold the final result 
		xor		ebx,	ebx
		; ecx will hold the number of numbers 
		mov		ecx,	5
		; eax will hold the first number 
		xor		eax,	eax
		; edx will hold the second number 
		mov		edx,	1
		; esi will hold the pair 
		xor		esi,	esi

	theloop:
		add		ebx,	eax
		add		esi,	eax
		dec		ecx

		cmp		ecx,	0
		je		finish

		add		ebx,	edx
		add		esi,	edx
		dec		ecx

		cmp		ecx,	0
		je 		finish

		mov		eax,	esi 
		add		edx,	esi
		xor		esi,	esi	
		jmp		theloop	
	
	finish:
		mov eax,1      ; Exit system call value
		int 80h        ; Call the kernel

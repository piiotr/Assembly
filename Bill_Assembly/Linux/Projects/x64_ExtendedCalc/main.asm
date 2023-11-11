section .data
section .bss
section .text
	global  _start 
	_start:
		mov		rdx,	00000000000001ffh   ;1 Upper half of our extended
		mov		rax,	0fffffffffffffffh   ;1 Lower half of extended rdx : rax 
		mov		rbx,	0000000000000100h	;2 Upper hald 
		mov		rcx,	0000000000000001h   ;2 Lower half 	rbx : rcx  

		add		rax,	rcx 	; add the lower half #2 to lower half #1, setting the carry flag 
		adc		rdx,	rbx		; add the upper half #2 to upper half #1, including the carry flag 

		sub		rax,	1h		; substract from the lower half, 1 
		sbb		rdx,	0h		; substract from the upper half, 0 and 1 from the carry flag 

		



		mov		rax, 60					;60 = system exit
		mov		rdi, 0					;0 = return code
		syscall							;Poke the kernel

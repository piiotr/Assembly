.section .data
.section .bss
.section .text
.global 	_start
	_start:
		// x0 will hold the sum
		mov	x0,	#1
		mov	x1,	#5
	theloop:	
		cmp	x1,	#0
		beq	finish

		mul	x0,	x0,	x1
		sub	x1,	x1,	#1		
		b	theloop



	finish:
		mov	w7,	#93
		svc	#0

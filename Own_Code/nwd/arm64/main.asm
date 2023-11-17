.section .text
.global  _start
	_start:
		// use x0 for the output 
		mov	x0,	#0		
		// use x1 for the first number 
		mov	x1,	#154
		// use x2 for the first number 
		mov	x2,	#66
		// use x3 for the result of the division
		mov	x3,	#0
		// use x4 for the reminder 
		mov	x4,	#0 
	
	divide:
		sub	x1,	x1,	x2
		add	x3,	x3,	#1
		cmp	x1,	x2
		bls	getreminder
		b	divide	

	getreminder:
		cmp	x1,	#0
		beq	finish
		mov	x4,	x1
		b	change		
	
	change:
		mov	x1,	x2
		mov	x2,	x4
		mov	x3,	#0
		mov	x4,	#0
		b	divide
			
	finish:
		mov	x0,	x2
		mov	w8,	#93
		svc	#0


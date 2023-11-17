.section .text
.global _start
	_start:
		// use x0 for the output 
		mov	x0,	#0
		// use x1 for the initial number 
		mov	x1,	#125
		// use x2 for the division integer 
		mov	x2,	#0

	theloop:
		cmp	x1,	#9
		ble	adder
		
		b	divide
	
	divide:
		cmp	x1,	#9
		ble	getremainder

		sub	x1,	x1,	#10
		add	x2,	x2,	#1
		b	divide			
		
	getremainder:
		add	x0,	x0,	x1
		mov	x1,	x2
		mov	x2,	#0
		b	theloop	

	adder:
		add	x0,	x0,	x1
		b	finish

	finish:
		mov	w8,	#93
		svc	#0

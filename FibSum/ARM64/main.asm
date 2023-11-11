.section .data
.section .bss
.section .text
.global _start
    _start:
        //  0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34
        // use x0 for output
        // x4 will hold the number of numbers
        mov     x4,     #5
        // x0 will hold the final result 
        mov     x0,     #0
        // x1 will hold the first number
        mov     x1,     #0
        // x2 will hold the second number 
        mov     x2,     #1
        // x3 will hold the pair 
        mov     x3,     #0

    theloop:
	add	x0,	x1,	x0
	add	x3,	x1,	x3
	sub	x4,	x4,	#1
	cmp	x4,	#0
	beq	finish	

	add	x0,	x2,	x0
	add	x3,	x2,	x3
	sub	x4,	x4,	#1
	cmp	x4,	#0
	beq	finish
	
	mov	x1,	x3
	add	x2,	x2,	x3
	mov	x3,	#0
	b	theloop

    finish:
        mov w8, #93 			//Move 93, end program, into w8
        svc #0				//Poke the kernel


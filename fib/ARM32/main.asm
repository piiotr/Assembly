.section .data
.section .bss
.section .text
.global _start
	    @  0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34
	    @  for 5 the result should be 7 
    _start:
        @ r0 will hold the final result 
        mov     r0,     #0 
        @ r11 will hold the number of numbers 
        mov     r11,    #6
        @ r1 will hold the first number
        mov     r1,     #0
        @ r2 will hold the second number
        mov     r2,     #1 
        @ r3 will hold the pair 
        mov     r3,     #0

    theloop:
        add     r0,     r1
        add     r3,     r1
        sub     r11,    #1
        cmp     r11,    #0
        beq      finish

        add     r0,     r2
        add     r3,     r2
        sub     r11,    #1
        cmp     r11,    #0
        beq     finish

        mov     r1,     r3
        add     r2,     r3
        mov     r3,     #0
        b     theloop           



    finish:
        mov r7, #1 		@Place 1 into r7, Exit the program
        svc #0			@Poke the kernel


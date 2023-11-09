.section .data
	msg:	.ascii "Hello, ARM64!\n"
		msglen = . - msg

    /* Integers */

    aByte:  .byte   18
    aByte2: .byte   0xff

    /* byte = 1 byte, half-word = 2 bytes, word = 4 bytes, double-word = 8 */   

    aHWord:  .hWord 0xffff
    aHWord2: .hWord 22

    aWord:  .word   0xffffffff

    aDWord:  .dword  34
    aDWord2:  .dword  0xff7856      

    /* Floating Point */

    float16b:   .float16    123.45
    float32b:   .float      123.45
    float64b:   .double     132.45

    /* Strings */
    someString: .ascii  "Hello Peter!" /* not a null terminated string */
    someStrig2: .asciz  "Hello There" /* null-terminated string  */

    /* Arrays */
    array1:     .skip   50 /* Array of 50 bytes */
    array2:     .word   10,20,30,40,50

    

.section .bss
	
.section .text
.global _start
    _start:
    
        mov x0, #0 			//Move the return value of 0 into x0
        mov w8, #93 		//Move 93, end program, into w8
        svc #0				//Poke the kernel


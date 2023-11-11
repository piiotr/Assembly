
.section .data
    .equ    MY_CONSTANT1,   44
.section .bss
.section .text
.global _start
    _start:
        mov     x0,     MY_CONSTANT1 
        mov     w1,     MY_CONSTANT1
    
    
        mov w8, #93 		//Move 93, end program, into w8
        svc #0				//Poke the kernel


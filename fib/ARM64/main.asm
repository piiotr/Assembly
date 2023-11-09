.section .data
.section .bss
.section .text
.global _start
    _start:

    mov x0, #0 			//Move the return value of 0 into x0
    mov w8, #93 		//Move 93, end program, into w8
    svc #0				//Poke the kernel


.section .data
.section .bss
.section .text
.global _start
    _start:
        mov r0, #0 		@Place 0 into the r0 register, Return code
        mov r7, #1 		@Place 1 into r7, Exit the program
        svc #0			@Poke the kernel


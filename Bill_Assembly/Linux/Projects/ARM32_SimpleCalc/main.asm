.section .data
.section .bss
.section .text
.global _start
    _start:
        mov r0, #100
        mov r1, #200
        add r0, r0, r1

        mov r0, #100
        add r0, r0, #200


        mov r0, #0 		@Place 0 into the r0 register, Return code
        mov r7, #1 		@Place 1 into r7, Exit the program
        svc #0			@Poke the kernel


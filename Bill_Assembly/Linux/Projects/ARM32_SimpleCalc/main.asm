.section .data
    dWordVar1:   .dword      0x100
    dWordVar2:   .dword      0x200
.section .bss
.section .text
.global _start
    _start:
        mov r0, #100
        mov r1, #200
        add r0, r0, r1

        mov r0, #100
        add r0, r0, #200

        sub r0, r0, #300
        sub r0, r0, r1

        ldr r3, =dWordVar1
        ldr r0, [r3]

        ldr r3, =dWordVar2
        ldr r1, [r3]

        adds r0, r0, r1        

        mov r0, #0xffffffff
        add r0, r0, #1
        bcs printerror
        b   endall

    printerror:
        mov r0, #1

    endall:
        mov r0, #0 		@Place 0 into the r0 register, Return code
        mov r7, #1 		@Place 1 into r7, Exit the program
        svc #0			@Poke the kernel


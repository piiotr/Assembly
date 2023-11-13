.section .data
.section .bss
.section .text
.global  _start 
    _start:
        // r0 will hold the sum 
        mov     r0,     #0
        // r1 will hold the first number 
        mov     r1,     #3
        // r2 will hold the second number 
        mov     r2,     #4
    theloop:
        cmp     r1,     #0
        beq      finish
        add     r0,     r0,     r2
        sub     r1,     r1,     #1
        b       theloop 
    finish:
        mov     r7,     #1
        svc     #0



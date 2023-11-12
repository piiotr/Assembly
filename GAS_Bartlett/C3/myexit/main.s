.equ    AGE,    0
.equ    WEIGHT, 8
.equ    HEIGHT, 16
.equ    PERSON_SIZE, 24

.section .data
    people:
        .quad   17, 70, 170
        .quad   47, 59, 210
        .quad   36, 64, 150

    size:
       .set SIZE, (size - people)/PERSON_SIZE

.section .bss
.section .text
.globl _start 
    _start:
        lea     people,     %rbx
        mov     $SIZE,      %rcx
        mov     HEIGHT(%rbx),   %rdi

    
    theloop:
        mov     HEIGHT(%rbx),   %rax
        cmp     %rax,   %rdi 
        cmova   %rax,   %rdi 
        add     $PERSON_SIZE,   %rbx     
        loopq   theloop
        jmp     finish 

    finish:
        mov     $60,    %rax
        syscall

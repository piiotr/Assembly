.section .text
.globl _start
    _start:
        mov     size,   %rcx
        leaq    stats,  %rbx
        movq    YEAR(%rbx), %rdi

    myloop:
        movq    YEAR(%rbx),     %rax
        cmpq    %rdi,   %rax
        cmovb   %rax,   %rdi
        jmp     loopcontrol

    loopcontrol:
        addq    $RECORD_SIZE,   %rbx
        loopq   myloop


    finish: 
        mov     $60,    %rax
        syscall

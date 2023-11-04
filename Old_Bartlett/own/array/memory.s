.section .text
.globl _start
    _start: 
        movq     size,           %rcx
        leaq    parameters,     %rbx
        mov     $0,     %rdi

    myloop: 
        movq    DISK_O(%rbx),   %rax
        cmpq    %rdi,       %rax
        jbe     loopcontrol
        movq    %rax,  %rdi 
        jmp     loopcontrol

    loopcontrol:
        addq    $RECORD_SIZE,   %rbx
        loopq   myloop
        jmp     finish


    finish:
        mov     $60,       %rax
        syscall

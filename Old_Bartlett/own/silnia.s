.globl _start

.section .text 
    _start: 
        movq    $5,     %rax 
        movq    $4,     %rcx

    count:
        mulq    %rcx 
        loopq   count         

    finish:
        movq    %rax,   %rdi
        movq    $60,    %rax 
        syscall

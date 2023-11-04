.section .text
.globl _start
    _start: 
        mov     $5,     %rcx  
        mov     $2,     %rbx
        mov     $0,     %rdi

    _loop:
        add     %rbx,   %rdi
        loopq   _loop

    finish:
        mov     $60,    %rax
        syscall
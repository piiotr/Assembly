.section .text
.globl _start
    _start: 
        mov     $1,     %rax
        mov     $2,     %rbx
        mov     $1,     %rcx
        divq    %rbx
        cmp     $0,     %rdx
        cmove   %rcx,   %rdi

    finish:
        mov     $60,    %rax
        syscall
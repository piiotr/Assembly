.section .text
.globl _start
    _start:
        mov     $10,    %rdi
        mov     $5,     %rax
        mov     $5,     %rdx
        cmp     %rax,   %rdx
        cmove   %rax,   %rdi
        mov     $60,    %rax
        syscall

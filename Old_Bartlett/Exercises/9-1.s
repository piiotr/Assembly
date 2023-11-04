.globl _start 

.section .text

    _start: 
        
        mov     $32,    %rbx
        notq    %rbx
        bsrq    %rbx,   %rdi
        movq       $60,     %rax
        syscall

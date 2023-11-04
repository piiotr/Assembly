.globl _start 

.section .data
    sen:
       .quad 15, 32, 25, 47, 99 

    look:
        .quad 15

.section .text 
    _start:
        movq    $5,     %rcx
        movq    $5,     %r15 
        movq    $sen,   %rdi
        mov     look,   %rax
        repne   scasq

        subq    %rcx,  %r15 
        mov     %r15,   %rdi


    finish:
        mov     $60,    %rax
        syscall

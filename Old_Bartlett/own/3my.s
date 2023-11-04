# My first program. This is a comment. 
.globl _start
.section .text
    _start: 
        mov      $444444444444444444444444444400,     %rbx
        jc       lab
        jmp      lab2

    lab:
        mov     $15,     %rdi
        movq    $60,   %rax
        syscall

    lab2:
        mov     $5,     %rdi
        mov     $60,    %rax
        syscall
    
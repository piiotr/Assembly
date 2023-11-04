.section .data 
    source:
        .quad 9, 23, 55, 1, 3
    dest: 
        .quad 0, 0, 0, 0, 0

.section .text
.globl _start
    _start: 
        movq    $source,    %rsi
        movq    $dest,      %rdi
        movq    $5,     %rcx
        rep     movsq

    finish:
        leaq   dest,    %rbx
        movq   32(%rbx), %rdi
        movq   $60,     %rax
        syscall

.section .data 
    number: 
        .quad 4

.section .text
.globl _start 
    _start: 
        mov     $number,     %rdi
        mov     $60,        %rax
        syscall

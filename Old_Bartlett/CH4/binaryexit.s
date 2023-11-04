.section .text
.globl _start
_start:
    # Move 13 to rdi 
    movq    $0b1101,    %rdi

    # Exit system call number 
    movq    $60,        %rax
    
    # system call
    syscall
    
# My first program. This is a comment. 
.globl _start
.section .text
_start: 
    # Move 3 to rdi 
    add     $2,     %rdi

# system call number - EXIT
    movq    $60,   %rax

    # Perform the system call
    syscall
    
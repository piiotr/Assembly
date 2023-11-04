# Rewrite the first program in this chapter (arithmetic.s), but use
# different registers to hold the intermediate values.

.globl _start
.section .text
_start: 
    # Perform various arithemtic functions
    movq    $3,     %rbx
    movq    %rbx,   %rcx
    addq    %rbx,   %rcx
    mulq    %rbx
    movq    $2,     %rbx
    addq    %rbx,   %rcx
    movq    $4,     %rbx
    mulq    %rbx
    movq    %rcx,   %rbx
    
    # Set the exit system call number
    movq    $60,    %rax

    # Perform the system call
    syscall

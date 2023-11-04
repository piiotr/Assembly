.globl _start
.section .text
_start: 
    movq    $7,     %rdi
    jmp     secondplace

secondplace:
    movq    $8,     %rbx
    addq    %rbx,   %rdi
    jmp nextplace

nextplace:    
    movq $60, %rax
    syscall
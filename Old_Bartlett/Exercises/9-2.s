.globl _start 

.section .data
    sen:
        .ascii "Test\0"

.section .text 
    _start:
        movq    $-1,    %rcx
        movq    $sen,   %rdi
        movb    $0,     %al
        repne   scasb

        subq    $sen,   %rdi
        decq    %rdi

        mov     $60,    %rax
        syscall

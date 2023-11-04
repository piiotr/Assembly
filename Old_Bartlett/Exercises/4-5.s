# Write a program (even if it is a nonsense program) that utilizes
# byte, word, long (double-word), and quadword instructions.

.section .text
.globl _start
_start:
    movb    $2,     %al
    movw    $3,     %ax
    movl    $4,     %eax
    movq    $5,     %rax
    movb    %al,    %rdi # not gonna work
    movq    $60,    %rax
    syscall
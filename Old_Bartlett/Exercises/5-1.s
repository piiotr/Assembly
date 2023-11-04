# Create your own version of followthejump.s. Walk through the
# code yourself to be sure you know what it is going to do. Then step
# through it with the debugger to make sure it does what you expect.

.globl _start
.section .text
_start: 
    movq     $1,     %rax 
    movq     $1,     %rbx
    cmpq     %rax,   %rbx     
    jne     _print4         # if rax and rbx are not equal
    jmp     _print6         # unconditional jump 

_print4:
    movq    $4,     %rdi
    jmp     _end

_print6:
    movq    $6,     %rdi
    jmp     _end

_end:
    movq    $60,    %rax
    syscall

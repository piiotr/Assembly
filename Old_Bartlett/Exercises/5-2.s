# Create a program that just loops a certain number of times and
# then exits. Approximately how many times does it have to loop
# before it takes a full second to run? This number will be very large.
# Can you estimate how many instructions the CPU executed in that
# time period?

.globl _start
.section .text
_start:
    mov     $5,     %rbx
    jmp     _loop

_loop:
    decq    %rbx
    jz      _complete
    jmp     _loop

_complete:
    mov     %rbx,   %rdi
    mov     $60,    %rax
    syscall

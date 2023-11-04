# Write your own sequence of arithmetic operations. Walk through
# the code by hand before running it so you know how it should
# work. Then, run the code using the debugger (Appendix C) to
# verify that you were correct. Be sure to check the contents of the
# registers at every step.


.globl _start
.section .text
_start: 
    mov     $10,    %rbx
    mov     $5,     %rax
    addq    %rbx,   %rax
    subq    $2,     %rax
    mov     %rax,   %rdi
    mov     $60,    %rax
    syscall

    # the result should be 13
    
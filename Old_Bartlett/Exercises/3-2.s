# Make a mistake! Misspell one of the instructions and see what the
# assembler does.

# My first program. This is a comment. 
.globl _start
.section .text
_start: 
    # Exit system call number
    movx    $60,   %rax     # 3_2.s:6: Error: no such instruction: `movx $60,%rax'

    # Move 4 to rdi 
    movq    $4,    %rdi 

    # Perform the system call
    syscall

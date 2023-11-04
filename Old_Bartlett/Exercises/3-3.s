# Make another mistake! Leave off the syscall instruction and see
# what happens.

# My first program. This is a comment. 

.globl _start
.section .text
_start: 
    # Exit system call number
    movq    $60,   %rax     # 3_2.s:6: Error: no such instruction: `movx $60,%rax'

    # Move 4 to rdi 
    movq    $4,    %rdi 

# Segmentation fault (core dumped) - no syscall
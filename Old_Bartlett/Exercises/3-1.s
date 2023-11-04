# Take the program given in this chapter and change the value to be
# returned (the one stored in %rdi). Be sure you get back the right
# value when your program exits. Don’t forget to assemble and link
# your program before running it again.

# My first program. This is a comment. 
.globl _start
.section .text
_start: 
    # Exit system call number
    movq    $60,   %rax

    # Move 4 to rdi 
    movq    $4,    %rdi 

    # Perform the system call
    syscall

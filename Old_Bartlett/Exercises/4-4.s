# Rewrite the binaryexit.s program in this chapter to output
# different values. See if you can figure out the decimal number that
# will be output from your binary representation.

.section .text
.globl _start
_start:
    # Move 13 to rdi 
    movq    $0b1101,    %rdi

    # Exit system call number 
    movq    $60,        %rax
    
    # system call
    syscall
    
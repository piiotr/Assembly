.globl _start
.section .text
_start: 
  # Perform various arithmetic functions
    movq $3, %r15
    movq %r15, %rax
    addq %r15, %rax
    mulq %r15
    movq $2, %r15
    addq %r15, %rax
    movq $4, %r15
    mulq %r15
    movq %rax, %rdi
    # Set the exit system call number
    movq $60, %rax
    # Perform the system call
    syscall
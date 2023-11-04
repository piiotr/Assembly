# Implement the previous program by counting down in a loop
# rather than using the divq instruction.

.globl _start
.section .text
_start:
    mov     $10,   %rbx     # 10 is the number being checked
    add     $2,    %rbx     # adding 2 to avoid negative numbers 
    mov     $2,    %rcx     # 2 is used to if check odd/even
    jmp     _loop

_loop:
    subq    %rcx,   %rbx    # 10 (12) - 2 
    cmp     $2,     %rbx    # comparing 
    je      _even           # if number went down to 2, its even 
    jb      _odd            # if number is less than 2, its odd    
    ja      _loop           # if number is more than two, the process is not finished yet, looping again

_odd:
    mov     $0,     %rdi
    jmp     _end

_even:
    mov     $1,     %rdi
    jmp     _end

_end:
    mov     $60,    %rax
    syscall
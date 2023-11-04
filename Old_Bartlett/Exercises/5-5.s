# Write a program that starts with a value in a register and yields a
# 1 if that number is even and 0 if that number is odd (hint—think
# about the divq instruction and remainders).


.globl _start
.section .text
_start:
    mov     $4,     %rax            # Hard-coded value 
    mov     $2,     %rbx            # 2 is needed for dividing and getting reminder 
    divq    %rbx                    # division rax / rbx
    cmp     $0,     %rdx            # if reminder == 0, number is even, if not it's odd
    je      _even
    jmp     _odd

_odd:
    mov     $0,     %rdi
    jmp     _end

_even:
    mov     $1,     %rdi
    jmp     _end

_end:
    mov     $60,    %rax
    syscall
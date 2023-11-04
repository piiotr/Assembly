# Even though we have already learned about the mulq instruction,
# write a program that will multiply two numbers by repeatedly
# adding in a loop.

.globl _start
.section .text

# it's gonna calculate 2*4


_start:
    mov     $2,     %rbx    # first number
    mov     $4,     %rcx    # second number 
    mov     $0,     %rax    # base to start
    jmp     _mulitply

_mulitply:
    add     %rcx,   %rax    # addition
    dec     %rbx            # counter - 1 
    cmp     $0,     %rbx    # if rbx is 0, calculation is complete
    je      _end
    jne     _mulitply

_end:
    mov     %rax,   %rdi
    mov     $60,    %rax
    syscall
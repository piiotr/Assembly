.section .data 
    size:
        .quad 7
    array:
        .quad 1,3,4,2,6,5

.section .text
.globl _start
    _start: 
        # move number of elements into rcx
        movq    size,   %rcx
        # move the address of the first element to rbx
        leaq    array,  %rbx
        # value that I look for 
        mov     $12,     %rdx
        mov     $1,     %r15

    myloop:
        movq    (%rbx), %rax
        cmp     %rdx,   %rax
        cmove   %r15,   %rdi
        je      finish
        addq    $8,     %rbx
        loopq   myloop

    finish:
        mov     $60,    %rax
        syscall

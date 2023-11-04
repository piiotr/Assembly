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
        movq    $0,     %rbx
        movq    $2,     %r15

    myloop:
        movq    array(,%rbx,8), %rax
        cmpq    %r15,   %rax
        cmove   %rbx,   %rdi
        je      finish
        incq    %rbx
        loopq   myloop


    finish:
        mov     $60,    %rax
        syscall

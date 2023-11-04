.section .data 
    numberofnumbers:
        .quad 7
    mynumbers:
        .quad 5,20,33,80,52,10,1

.section .text 
.globl _start 
    _start: 

        movq    numberofnumbers,    %rcx    # rdi == 7  // direct memory mode 

        # the same but with register indirect mode:

        movq    $mynumbers,     %rbx
        movq    (%rbx), %rdi
        addq    $8,     %rbx
        movq    (%rbx), %rdi


        mov     $60,    %rax
        syscall

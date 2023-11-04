.globl _start 
.section .text 
    _start:
        # rbx is pointing to the position of first element of cars 
        leaq    cars,   %rbx
        # size value into rcx
        movq    size,   %rcx
        # value zero into rdi - it will hold the biggest value 
        movq    $0,     %rdi

    mainloop:
        # hp - x + 8 + position of rbx into rax (8 + 100) => rbx 
        movq    HP(%rbx),   %rax
        # compare 
        cmpq    %rax,   %rdi 
        cmovb   %rax,   %rdi
        jmp     loopcontrol

    loopcontrol:
        addq    $RECORD_SIZE,    %rbx
        loopq   mainloop
        jmp     finish

    finish:
        movq    $60,    %rax
        syscall


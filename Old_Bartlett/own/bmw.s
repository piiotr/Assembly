.globl _start
.section .text
    _start:
        movq    numcars,    %rcx
        movq    $0,         %rdi
        leaq    cars,       %rbx

    mainloop:
        movq    MODEL_O(%rbx),     %rax    
        cmp     $22,    %rax
        jne     loopcontrol
        incq    %rdi
    
    loopcontrol:
        addq    $24,     %rbx  # or $CSIZE from car.s 
        loopq   mainloop

    end:
        mov     $60,    %rax
        syscall
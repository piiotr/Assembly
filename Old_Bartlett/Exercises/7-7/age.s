.globl _start
.section .text
    _start:
        # Move address of the array into rbx
        leaq    people,     %rbx

        # rdi will hold the biggest index 
        mov     $0,     %rdi

        # rsi will hold a counter
        mov     $0,     %rsi

        # rdx will hold the link to smallest element 
        mov     AGE_OFFSET(%rbx),   %rdx

        # rcx will have a size and be a counter 
        mov     numpeople,     %rcx

    mainloop:
        # current age element
        movq    AGE_OFFSET(%rbx), %rax
        cmp     %rdx,   %rax
        jae     loopcontrol
        mov     %rax,   %rdx
        mov     %rsi,   %rdi
        jmp     loopcontrol
    
    loopcontrol:
        incq    %rsi
        add     $PERSON_RECORD_SIZE, %rbx
        loopq   mainloop
        jmp     end

    end:
        mov     $60,    %rax
        syscall
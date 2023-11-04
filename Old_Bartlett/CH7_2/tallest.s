.globl _start
.section .text
    _start:
        # Pointer to first record
        leaq    people,    %rbx

        # Record count 
        movq    numpeople,  %rcx

        # Tallest value found 
        movq    $0,     %rdi

        # If there are no record, finish 
        cmpq    $0,     %rcx
        je finish 

    mainloop:
        # %rbx is the pointer to the whole struct 
        # this instruction grabs the height field 
        # and stores it in %rax
        movq    16(%rbx),    %rax # 16 + rbx position + 0 * 1 (index * multiplier)

        # If it is less than or equal to our current
        # tallest, go to the next one 
        cmpq    %rdi,   %rax
        jbe     endloop
    
        # Copy this value as the tallest value 
        movq    %rax,   %rdi 

    endloop:
        # Move %rbx to poin to the next record 
        addq    $32,    %rbx
        loopq   mainloop
    
    finish:
        movq    $60,    %rax
        syscall

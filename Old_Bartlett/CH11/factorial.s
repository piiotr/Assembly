.globl _start 
.section .data 
    value:
        .quad 5 
.section .text 
    _start: 
        # Push in the sentinel value 
        pushq   $0

        # Grab the value 
        movq    value,  %rax 

        # Push all the values from 1 to the current value to the stack 

    pushvalues:
        pushq   %rax 
        decq    %rax 
        jnz     pushvalues

        # prepare for the multiplying 
        movq    $1, %rax 
    
    multiply:
        # get the next value from the stack 
        popq    %rcx

        # iff it is the sentinel, we are done 
        cmpq    $0,     %rcx
        je      complete 

        # mulitiply by what we have accumulated so far 
        mulq    %rcx 

        # do it again 
        jmp     multiply

    complete:
        movq    %rax,   %rdi 
        movq    $60,    %rax 
        syscall
    
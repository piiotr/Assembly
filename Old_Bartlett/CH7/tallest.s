.globl _start
.section .text

_start: 
    # Initialize register 
    # Pointer to first record 
    leaq    people,    %rbx
    # Record count 
    movq    numpeople, %rcx
    # Tallest value found
    movq    $0,     %rdi

    # Check preconditions 
    # If there are no record, finish 
    cmpq    $0,     %rcx
    je      finish

    # Main loop

mainloop:
    # rbx is the pointer to the whole struct 
    # this instruction grabs the height field 
    # and stores it in %rax 
    movq    HEIGHT_OFFSET(%rbx), %rax

    # If it is less than or equal to our current 
    # tallest, go to the next one 
    cmpq    %rdi,   %rax
    jbe     endloop

    # Copy this value as the tallest value 
    movq    %rax,   %rdi

endloop:
    # Move %rbx to point to the next record
    addq    $PERSON_RECORD_SIZE,    %rbx
    # Decrement %rcx and do it again 
    loopq   mainloop

    # Finish 
finish:
    movq    $60,    %rax
    syscall


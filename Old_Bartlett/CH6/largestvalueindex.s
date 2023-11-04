.globl _start

.section .data
    # How many data elements we have
    numberofnumbers:
        .quad 7
    # The data elements themselves
    mynumbers:
        .quad 5, 20, 33, 80, 55, 10, 1

    # This program will find the largest value in the array

.section .text
    _start:
        # Initialize Registers
        # Put the number of elements of the array in %rcx
        movq    numberofnumbers,    %rcx
        # Put the index of the first element in %rbx
        movq    $0,     %rbx
        # Use %rdi to hold the current-high value 
        movq    mynumbers(%rbx),     %rdi

        # Check preconditions
        # If there are no numbers, stop 
        cmp     $0,     %rcx
        je      endloop

        # Main loop
    myloop:
        # Get the next value of mynumbers indexed by %rbx
        movq    mynumbers(,%rbx,8), %rax
        # If it is not bigger, go to the end of the loop
        cmp     %rdi,   %rax
        jbe     loopcontrol
        # Otherwise, store this as the biggest elements so far
        movq    %rax,   %rdi
    
    loopcontrol:
        # Move %rbx to the next index
        incq    %rbx
        # Decrement %rcx and keep going unitl %rcx is zero
        loopq   myloop

        # Cleanup and exit    
    
    endloop:
        movq    $60,    %rax
        syscall

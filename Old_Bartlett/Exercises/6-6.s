# This program will search for a given value inside the array and if found, return its index.
# Indexing starts from one

.globl _start

.section .data
    array:
        .quad 1,2,3,4,5
    size:
        .quad 5

.section .text
    _start:
        mov     size,     %rcx                 # moving size value to rcx for a counter 
        mov     $0,       %rdx                 # rdx register will hold the current index 
        mov     $2,       %rbx                 # this is hard-coded value for a program to look for 
        leaq    array,   %rsi                 # moving the address of the first element to rsi
        jmp     myloop                  

    myloop:
        incq    %rdx                            # incrementing rdx value  
        mov     (%rsi),   %rax                  # moving the current element value from the address to rax
        cmp     %rax,     %rbx                  # checking if its the value I'm looking for
        je      found                           # if so, return 1 
        jmp     loopcontrol                     # if not, go get next element 


    loopcontrol:
        add     $8,       %rsi                  # add 8 to address to get next one 
        loopq   myloop                          # loop back until rcx is zero
        jmp     notfound                        # if no element was found return 0

    found:
        mov     %rdx,   %rdi
        mov     $60,    %rax
        syscall

    notfound:
        mov     $0,     %rdi
        mov     $60,    %rax
        syscall



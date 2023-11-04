# This program will look for the smallest value inside the array 

.globl _start

.section .data 
    array:
        .quad 12,95,22,11,905
    size:
        .quad 5

.section .text
    _start:
        mov     size,   %rcx        # counter 
        leaq    array, %rbx        # moving address of the first element to rbx
        mov     (%rbx), %rdi        # assigning the first element as a smallest for the start 
        jmp     myloop              # myloop is executing all calculations 
    
    myloop:
        mov     (%rbx), %rsi        # moving the value of the current element to other register
        cmp     %rdi,   %rsi        # comparing current smallest element with current element 
        jb      make_smallest       # moving to label where the current value is assigned as smallest 
        jmp     loopcontrol         # otherwise going to loopcontrol for the next element 
    
    loopcontrol:
        addq    $8,     %rbx        # adding 8 to address to get to the next element
        loopq   myloop              # looping back to myloop until rcx is zero 
        jmp     end                 # finishing if found 
    
    make_smallest:
        mov     %rsi,   %rdi        # switching rdi with rsi
        cmp     $0,     %rcx        # checking if there are any elements left
        je      end         

    end:
        mov     $60,    %rax
        syscall
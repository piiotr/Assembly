# This program is responsible for calculating a sum of all elements in array

.globl _start
.section .data
    array:
        .quad 5,5,5,1,0                     # Creating array
    size:
        .quad 5                             # Specyfing number of elements 
.section .text
    _start:
        mov     $0,     %rax                # RAX will hold a sum of elements 
        mov     size,    %rcx               # Moving size value into rcx
        mov     $array,  %rbx               # Moving the address of the first element into rbx
        jmp     input
    
    input:                                  # All caluclations are inside input 
        movq    (%rbx), %rdi                # Accessing current element value and moving it into rdi
        addq    %rdi,   %rax                # Adding element value to the current sum 
        cmp     $0,     %rcx                # checking if there are any elements left 
        je      end                         # finish if there are no element to sum 
        jmp     loopcontrol                 

    loopcontrol:
        addq    $8,     %rbx                # adding 8 to jump to next address in memory 
        loopq   input                       # looping back to input until rcx == 0 
    
    end:
        mov     %rax,   %rdi
        mov     $60,    %rax
        syscall
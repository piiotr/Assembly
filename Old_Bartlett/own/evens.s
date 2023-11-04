# @Piiotr 
# This program will check if all elements of the array are even 

.globl _start
.section .data
    array:
        .quad 2,4,2,8,8,0              # Creating the array
    size:       
        .quad 1                        # Specyfing array size (its not gonna work if this value and real size are diferrent)                   
.section .text
    _start:
        mov     size,       %rcx        # moving the number of elements into rcx register
        mov     $array,     %rsi        # moving the address of the first element into rsi
        mov     $2,         %rbx        # I'll be dividing by 2, I move 2 to rbx
        jmp     input                   # jumping to input where calculations are being performed

    input:
        movq    (%rsi),     %rax        # taking the value from current element in array and putting it into rax
        movq    $0,         %rdx        # clearing the reminder register
        divq    %rbx                    # division rax/rbx
        cmp     $0,         %rdx        # checking if reminder == 0 
        jne     noteven                 # if not, program is ending with 0 output
        jmp     loopcontrol             # if so, going to loopcontrol where I will access next element
    
    loopcontrol:
        addq    $8,         %rsi        # adding 8 to address in rsi to access address of a next element 
        loopq   input                   # going back to input until rcx is zero
        jmp     even                    # jumping to even if there was no odd numbers in array 

    noteven:
        mov     $0,         %rdi        # result when there is an odd element in array
        mov     $60,        %rax
        syscall
    
    even:
        mov     $1,         %rdi        # result if all elements are even
        mov     $60,        %rax
        syscall


    
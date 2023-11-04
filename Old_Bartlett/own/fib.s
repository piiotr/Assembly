# Program returns sum of n fibonnacci numbers 
.globl _start
.section .text 
    _start: 
        # rcx will hold the number of numbers 
        mov     $3,    %rcx
        # rdi will hold the sum 
        mov     $0,     %rdi
        # r8 will hold the first number 
        mov     $0,     %r8
        # r9 will hold the second number 
        mov     $1,     %r9
        # r10 will hold the current sum 
        mov     $0,     %r10


    # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
    myloop:
        cmp     $0,     %rcx
        je      finish
        
        add     %r8,    %r10
        add     %r8,    %rdi
     
        dec     %rcx
        cmp     $0,     %rcx
        je      finish

        add     %r9,    %r10
        add     %r9,    %rdi
        
        dec     %rcx
        cmp     $0,     %rcx
        je      finish 

        mov     %r10,    %r8
        add     %r9,    %r10
        mov     %r10,   %r9
        mov     $0,     %r10
        jmp     myloop     

    finish: 
        mov     $60,    %rax 
        syscall 

# This program will compare two numbers and return the bigger one 
.section .text 
.globl _start 
    _start: 
        # first number 
        mov     $5,     %r8
        # second number 
        mov     $1,     %r9

    myloop:
        # compare these two 
        cmp     %r8,    %r9
        
        cmovg   %r9,    %rdi # if r9 is bigger move r9 to output 
        ja      finish

        cmove   %r8,    %rdi # if two are equal move any number to output 
        je      finish 

        cmovb   %r8,    %rdi # if r9 is smaller, move r8 to output 

    finish:
        mov     $60,    %rax
        syscall






global _start 
section .text
    _start:
        xor     rdi,    rdi
        mov     rcx,    4
        mov     rbx,    5
    
    myloop:
        add     rdi,    rbx
        loop    myloop
    
    finish:
        mov     rax,    60
        syscall
.globl _start 
.section .text 
    _start: 
#        mov      $0x65,    %rdi

#        mov     $14,     %rax
#        mov     $0,      %rcx
#        div     %rcx
#        mov     %rax,    %rdi

        mov     $-2,    %rdi

        movq     $60,    %rax
        syscall

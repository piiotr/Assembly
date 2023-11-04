.globl _start
.section .data
    array: 
        .quad 1,2,3,4
    size:
        .quad 4

.section .text
    _start:

#       leaq    array          %rbx   
        mov     size,          %rsi  
        mov     $0,             %rbx
        mov     $0,          %rdi              
#        movq    (%rbx,%rsi,8),    %rdi           
#        incq    %rsi
#        movq    (%rbx, %rsi, 8),  %rdi          
#        mov     (%rbx), %rdi                    
#        addq    $8,     %rbx                    
#        mov     (%rbx), %rdi            
#        movq    (%rbx, %rsi, 8),  %rdi        

        movq    array+8(,%rbx,8), %rdi        






        jmp end
    end: 
        mov     $60,    %rax
        syscall
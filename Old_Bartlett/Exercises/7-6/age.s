.globl _start
.section .text
_start:
    # Initialize register 
    # Pointer to first record 
    leaq    people,     %rbx
    # Total record count 
    movq    numpeople,  %rcx

    # assig.n first element as youngest 
    mov  AGE_OFFSET(%rbx),   %rdi
    
    # Check preconditions
    # if there are no records, finish 
    cmpq    $0,     %rcx
    je      finish


mainloop:
    mov AGE_OFFSET(%rbx),   %rax
    cmp %rdi, %rax
    jae endloop
    mov %rax,   %rdi
    jmp endloop

endloop:
    addq    $PERSON_RECORD_SIZE,    %rbx
    loopq   mainloop

finish:
    
    movq    $60,    %rax
    syscall
    
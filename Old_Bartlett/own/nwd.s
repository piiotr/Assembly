.globl _start 
    _start:
        mov     $12,    %rax
        mov     $32,    %rbx
        jmp     check

    check:
        cmp     %rbx,   %rax
        jb      switch
    
    switch:
        movq   %rax,    %r10
        movq   %rbx,    %rax
        movq   %r10,    %rbx

    myloop:
        divq    %rbx
        
        cmpq    $0,     %rdx
        je      rem
        
        movq    %rbx,   %rax
        movq    %rdx,   %rbx
        xorq    %rdx,   %rdx
        jmp     myloop

    rem:
        movq    %rdx,   %rdi
        addq    %rbx,   %rdi        
        jmp     finish

    finish:
        mov     $60,    %rax
        syscall

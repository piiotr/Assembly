.section .text
.globl _start 
    _start: 
        leaq    people,     %rbx
        movq    numpeople,  %rcx
        movq    $0,         %rdi
        movq    $0,         %rdx

    myloop: 
        incq    %rdx
        movb    (%rbx),     %al
        cmpb      $0,     %al
        je      check
        incq    %rbx
        jmp myloop

    check:
        cmp     %rdx,   %rdi
        cmovng  %rdx,   %rdi
        mov     $0,     %rdx
        loopq   findnext    
        jmp     finish

    findnext:
        movb    (%rbx), %al
        cmpb    $'a',   %al
        jb      loopcontrol
        cmpb    $'z',   %al
        ja      loopcontrol
        jmp     myloop
        

    loopcontrol:
        incq    %rbx
        jmp     findnext

    finish:
        decq    %rdi
        movq    $60,    %rax
        syscall

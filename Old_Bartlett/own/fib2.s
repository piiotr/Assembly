.section .text 
.globl _start 
    _start: 
        # Program oblicza sume pierwszyn n liczb z ciągu fibbonnaciego 
        # ilosc liczb
        movq    $5,     %rcx 
        # pierwsza liczba
        movq    $0,     %r8 
        # druga liczba 
        movq    $1,     %r9
        # kontener na wynik pary
        movq    $0,     %r15
        # rejestr na finalny wynik
        movq    $0,     %rdi 


    # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 
    myloop:
        cmpq    $0,     %rcx 
        je      finish

        addq    %r8,    %r15
        addq    %r8,    %rdi
        decq    %rcx 

        # bez sprawdzania rcx w tym miejscu i następnym może zejść poniżej zera i program się nie kończy 
        cmpq    $0,     %rcx 
        je      finish

        addq    %r9,    %r15
        addq    %r9,    %rdi
        decq    %rcx 
        cmpq    $0,     %rcx 
        je      finish
       
        movq    %r15,   %r8
        addq    %r15,   %r9
        movq    $0,     %r15
        
        jmp     myloop

    finish:
        movq    $60,    %rax 
        syscall


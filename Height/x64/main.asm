
AGE             equ     0
WEIGHT          equ     8
HEIGHT          equ     16
PERSON_SIZE     equ     24 ; the size of bytes in terms of one person

section .data
                        ;   age, weight, height  
    people          dq      17, 70, 170 ; first person  
                    dq      47, 59, 189 ; second person
                    dq      36, 64, 210 ; third person
        .TYPE       equ     8
        .SIZEOF     equ $-people
        .LENGTHOF   equ people.SIZEOF / people.TYPE
        .QUANTITY   equ (people.SIZEOF / PERSON_SIZE)

section .bss 
section .text
global _start  
    _start:
        ; let's find the person who has smallest weight 
        mov     rsi,    people
        mov     rdi,    WEIGHT[rsi]
        mov     rcx,    people.QUANTITY

    theloop:
        cmp     rcx,    0
        je      finish

        mov     rax,    WEIGHT[rsi]
        cmp     rdi,    rax
        cmova   rdi,    rax
        dec     rcx
        add     rsi,    PERSON_SIZE
        jmp     theloop



    finish:
        mov     rax,    60
        syscall
section .data
    heights         dq      174, 160, 180, 190, 179
        .TYPE       equ     8
        .SIZEOF     equ $-heights
        .LENGTHOF   equ heights.SIZEOF / heights.TYPE
section .bss 
section .text
global _start  
    _start:
       
        mov     rsi,    heights ; move the address of the first element to rsi 
        ; mov     rdi,    [rsi] ; if I want to find the smallest height
        xor     rdi,    rdi     ; if I want to find the biggest height  
        mov     rcx,    heights.LENGTHOF

    theloop:
        cmp     rcx,    0
        je      finish

        mov     rax,    [rsi]
        cmp     rdi,    rax
        cmova   rdi,    rax
        dec     rcx
        add     rsi,    heights.TYPE
        jmp     theloop

    finish:
        mov     rax,    60
        syscall
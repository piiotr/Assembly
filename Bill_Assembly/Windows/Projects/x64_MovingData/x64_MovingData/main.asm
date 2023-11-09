ExitProcess PROTO
.data 
	someByte        db      11h
    someWord        dw      2222h
    someDWord       dd      3333333h
    someQWord       dq      4444444444444444h

.code 
main PROC	
	   ; Moving memory into registers
        mov     rax,    0h

       
       ; movzx  rax,   [someByte]
         mov    al,    [someByte]
       


        ; Moving literals to registers
        mov     rax,    01000011b
        mov     eax,    123h
        mov     ax,     55h
        mov     al,     32h
        mov     ah,     00h
        mov     al,     'A'

        ; Moving between registers
        mov     r8,     rax
        mov     rcx,    rax
        movzx   rcx,    al      ; unsigned small to large

        mov     rax,    0h
        mov     al,     -12
        movzx   rcx,    al
        movsx   rcx,    al

	
	    mov		rcx,	0
	    call ExitProcess
main ENDP
END
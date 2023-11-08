ExitProcess PROTO
.data 

.code 
main PROC
	nop

	mov		rax,	0ffffffffffffffffh
	mov		al,		11h
	mov		ah,		22h
	mov		ax,		3333h
	mov		eax,	44444444h

	mov		r10,	0ffffffffffffffffh


	nop
	mov		rcx,	0
	call ExitProcess
main ENDP
END
ExitProcess PROTO
MY_CONSTANT1 = 22H

.data 

.code 
main PROC
	nop

	mov		rax,	MY_CONSTANT1
	mov		eax,	MY_CONSTANT1
	mov		al,	MY_CONSTANT1


	nop
	mov		rcx,	0
	call ExitProcess
main ENDP
END
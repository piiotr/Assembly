.386
.model flat, stdcall
.stack 4096 
ExitProcess PROTO, dwExitCode:DWORD  
.data 

.code 
main PROC
	nop

	mov		eax,	0ffffffffh
	mov		al,		11h
	mov		ah,		22h

	mov		eax,	0ffffffffh
	mov		ax,		3333h


	nop
	INVOKE ExitProcess, 0
main ENDP 
END main
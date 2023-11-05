.386
.model flat, stdcall
.stack 4096 
ExitProcess PROTO, dwExitCode:DWORD  

.data 
	byteVariable	db	192

.code 
main PROC
	nop
	
	mov		edi,	12

	nop
	INVOKE ExitProcess, 0
main ENDP 
END main
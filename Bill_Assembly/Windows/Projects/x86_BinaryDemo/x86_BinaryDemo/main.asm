.386
.model flat, stdcall
.stack 4096 
ExitProcess PROTO, dwExitCode:DWORD  

.data 
	byteVariable	db	192

.code 
main PROC
	xor		ebx,	ebx
	mov		ecx,	4
	mov		eax,	2

	myloop:
		add		ebx,	eax
		loop	myloop
	
	

	
	INVOKE ExitProcess, 0
main ENDP 
END main2e
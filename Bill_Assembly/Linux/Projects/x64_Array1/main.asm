section .data
	byteArray	db	11h, 22h, 33h, 44h, 55h
	wordArray	dw	6666h, 7777h, 8888h, 9999h
	dwordArray	dd	0bbbbbbbbh, 0cccccccch, 0ddddddddh
	qwordArray	dq	0eeeeeeeeeeeeeeeeh, 0ffffffffffffffffh, 0h, 1111h
section .bss
section .text
global  _start 
	_start:
		mov		rax,	0h							
		mov		rsi,	0h							
		
		mov		rsi,	OFFSET	byteArray			
		movzx	rax,	BYTE PTR [rsi]				
		add		rsi,	TYPE	byteArray			 
		movzx	rax,	BYTE PTR [rsi]				

		mov		rsi,	OFFSET	wordArray
		movzx	rax,	WORD PTR [rsi]
		add		rsi,	TYPE	wordArray
		movzx	rax,	WORD PTR [rsi]

		mov		rsi,	OFFSET	qwordArray
		mov		rax,	[rsi]						
		add		rsi,	TYPE	qwordArray
		mov		rax,	[rsi]

		mov		rax,	SIZEOF		qwordArray
		mov		rax,	LENGTHOF	qwordArray

		mov		rax, 60					
		mov		rdi, 0					
		syscall							
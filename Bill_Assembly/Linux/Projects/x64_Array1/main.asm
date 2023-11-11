section .data
	byteArray	db	11h, 22h, 33h, 44h, 55h
		.TYPE	equ		1
		.SIZEOF equ 	$-byteArray
		.LENGTHOF equ	byteArray.SIZEOF / byteArray.TYPE	 

	wordArray	dw	6666h, 7777h, 8888h, 9999h
		.TYPE 	equ 	2
		.SIZEOF	equ 	$-wordArray
		.LENGTHOF equ	wordArray.SIZEOF / wordArray.TYPE	 
	
	dwordArray	dd	0bbbbbbbbh, 0cccccccch, 0ddddddddh
		.TYPE	equ		4
		.SIZEOF	equ		$-dwordArray
		.LENGTHOF equ	dwordArray.SIZEOF / dwordArray.TYPE	 
	
	qwordArray	dq	0eeeeeeeeeeeeeeeeh, 0ffffffffffffffffh, 0h, 1111h
		.TYPE	equ		8
		.SIZEOF	equ		$-qwordArray
		.LENGTHOF equ	qwordArray.SIZEOF / qwordArray.TYPE	 

section .bss
section .text
global  _start 
	_start:
		mov		rax,	0h							
		mov		rsi,	0h							
		
		mov		rsi,	byteArray			
		movzx	rax,	BYTE [rsi]				
		add		rsi,	byteArray.TYPE			 
		movzx	rax,	BYTE [rsi]				

		mov		rsi,	wordArray
		movzx	rax,	WORD [rsi]
		add		rsi,	wordArray.TYPE
		movzx	rax,	WORD [rsi]

		mov		rsi,	qwordArray
		mov		rax,	[rsi]						
		add		rsi,	qwordArray.TYPE
		mov		rax,	[rsi]

		mov		rax,	qwordArray.SIZEOF
		mov		rsi,	qwordArray
		mov		rax,	[rsi]
		add		rsi,	qwordArray.TYPE
		mov		rax,	qwordArray.LENGTHOF
		mov		rax,	[rsi]

		mov		rdi,	rax
		mov		rax, 	60					
		syscall							
section .data
	; A 5 value byte array 
	byteArray		db		11h, 22h, 33h, 44h, 55h
		.TYPE		equ		1	
		.SIZEOF		equ		$-byteArray
		.LENGTHOF	equ		byteArray.SIZEOF/byteArray.TYPE
	; 4 value word array 
	wordArray		dw		6666h, 7777h, 8888h, 9999h
		.TYPE		equ		2
		.SIZEOF		equ		$-wordArray
		.LENGTHOF	equ		wordArray.SIZEOF/wordArray.TYPE
	; 3 value double word array 
	doublewordArray	dd		0bbbbbbbbh, 0cccccccch, 0ddddddddh
		.TYPE		equ		4
		.SIZEOF		equ		$-doublewordArray
		.LENGTHOF	equ		doublewordArray.SIZEOF/doublewordArray.TYPE
	; 4 value word array 
	; 7 value quad word array 
	qwordArray		dq		0eeeeeeeeeeeeeeeeh, 0ffffffffffffffffh, 0h, 1111111111111111h
					dq		2222222222222222h, 3333333333333333h, 44444444444444444
		.TYPE		equ		8
		.SIZEOF		equ		$-qwordArray
		.LENGTHOF	equ		qwordArray.SIZEOF/qwordArray.TYPE
	; 4 value word array 

section .bss
section .text
	global  _start 
	_start:
	mov			rax,	0h
	mov			rsi,	0h

	movzx		rax, BYTE [byteArray]				;copy the first byte in our array into rax
	mov			rsi, byteArray						;offset puts the address of byteArray into rsi
	movzx		rax, BYTE [rsi]						; ptr puts a value pointerd to intro rax
	add			rsi, byteArray.TYPE					; take us to the next byteArray value
	movzx		rax, BYTE [rsi]						; ptr puts a value pointerd to intro rax

	mov			rsi, wordArray
	movzx		rax, WORD [rsi]
	add			rsi, wordArray.TYPE
	movzx		rax, WORD [rsi]

	mov			rsi, qwordArray
	movzx		rax, WORD [rsi]
	add			rsi, qwordArray.TYPE
	movzx		rax, WORD [rsi] 

	mov			rax, wordArray.SIZEOF

	mov			rax, wordArray.LENGTHOF

	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel

	

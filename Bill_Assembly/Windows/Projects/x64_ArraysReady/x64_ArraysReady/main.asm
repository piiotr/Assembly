ExitProcess PROTO
.data 
	
	; A 5 value byte array 
	byteArray		db		11h, 22h, 33h, 44h, 55h
	
	; 4 value word array 
	wordArray		dw		6666h, 7777h, 8888h, 9999h

	; 3 value double word array 
	doublewordArray	dd		0bbbbbbbbh, 0cccccccch, 0ddddddddh

	; 7 value quad word array 
	qwordArray		dq		0eeeeeeeeeeeeeeeeh, 0ffffffffffffffffh, 0h, 1111111111111111h, 
							2222222222222222h, 3333333333333333h, 44444444444444444

.code 
main PROC
	nop
	mov			rax,	0h
	mov			rsi,	0h

	movzx		rax, byteArray				;copy the first byte in our array into rax
	mov			rsi, OFFSET	byteArray		;offset puts the address of byteArray into rsi
	movzx		rax, BYTE PTR[rsi]			; ptr puts a value pointerd to intro rax
	add			rsi, TYPE byteArray			; take us to the next byteArray value
	movzx		rax, BYTE PTR[rsi]			; ptr puts a value pointerd to intro rax

	mov			rsi, OFFSET	wordArray
	movzx		rax, WORD PTR[rsi]
	add			rsi, TYPE wordArray
	movzx		rax, WORD PTR[rsi]

	mov			rsi, OFFSET	qwordArray
	movzx		rax, WORD PTR[rsi]
	add			rsi, TYPE qwordArray
	movzx		rax, WORD PTR[rsi] */


	nop
	mov		rcx,	0
	call ExitProcess
main ENDP
END
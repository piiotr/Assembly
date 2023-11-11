ExitProcess PROTO
.data 
	byteArray	db	11h, 22h, 33h, 44h, 55h
	wordArray	dw	6666h, 7777h, 8888h, 9999h
	dwordArray	dd	0bbbbbbbbh, 0cccccccch, 0ddddddddh
	qwordArray	dq	0eeeeeeeeeeeeeeeeh, 0ffffffffffffffffh, 0h, 1111h
.code
main PROC
	mov		rax,	0h							; used for values 
	mov		rsi,	0h							; used for addresses 
	
	mov		rsi,	OFFSET	byteArray			; Offset puts the address of byteArray intro rsi 
	movzx	rax,	BYTE PTR [rsi]				; PTR puts a value pointed to intro rax 
	add		rsi,	TYPE	byteArray			; go to the next value in byteArray 
	movzx	rax,	BYTE PTR [rsi]				; PTR puts a value pointed to intro rax 

	mov		rsi,	OFFSET	wordArray
	movzx	rax,	WORD PTR [rsi]
	add		rsi,	TYPE	wordArray
	movzx	rax,	WORD PTR [rsi]

	mov		rsi,	OFFSET	qwordArray
	mov		rax,	[rsi]						; you don't have to put WORD PTR and movezx, becuase rax is a quadword register 
	add		rsi,	TYPE	qwordArray
	mov		rax,	[rsi]

	mov		rax,	SIZEOF		qwordArray
	mov		rax,	LENGTHOF	qwordArray




	
























	mov		rcx,	0
	call ExitProcess
main ENDP
END
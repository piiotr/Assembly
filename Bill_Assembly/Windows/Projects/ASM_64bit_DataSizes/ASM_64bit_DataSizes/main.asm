ExitProcess PROTO
.data 

	;Define a single Byte 
	byteVariable		db		11h
	wordVariable		dw		2233h
	dwordVariable		dd		44556677h
	quadWordVariable	dq		9900112233445566h

	sByteVariable		db		-125
	sWordVariable		dw		-2567
	sDWordVariabl		dd		-32678
	sQuadWordVariable	dq		-4385344573



.code 
main PROC
	nop


	nop
	mov		rcx,	0
	call ExitProcess
main ENDP
END
ExitProcess PROTO
.data 
	welcomeMessage	db	'Hello World!', 00h
	pEndMessage		db	'Program ending, have a great day!', 00h
	
	; Integers allocated 
	byteVar			db		0ffh
	byteVar2		db		?
	byteVar3		BYTE	123

	wordVar			dw		0ffffh
	wordVar2		dw		?
	wordVar3		WORD	123h

	dWordVar1		dd		1234567h
	dWordVar2		DWORD	0h
	dWordVar3		dd		?

	qWordVar1		dq		1234h
	qWordVar2		dq		?
	qWordVar3		QWORD	567h

	; Floating point
	aFloatSP		REAL4	123.45
	aFloatSP2		dd		-123.45

	aFloatDP		REAL8	123.33
	aFloatDP2		dq		-123.33
	
	aFloatEP		REAL10	123.58345345
	aFloatEP2		dt		-123.3434434

	; Characters
	aChar			db		'A'
	aChar2			BYTE	"A"

	myName			db		"Hello, my name is Peter", 0h
	myName2			BYTE	"Hello, my name is Peter", 0h
	myName3			db		"Hello, my name is Peter", 0ah, 0dh, 0h ; endl \n

	; Arrays
	array1			db		'A', 12, Offh ; five bytes long 
	array2			dq		123, 565, 895 ; 24 bytes long - 3 quads 
	array3			db		10 dup(?)
	array4			dq		10000 dup(?)
	array5			dq		50000 dup(0)
	array6			dd		40	dup(99h)



.code 
main PROC



	mov		rcx,	0
	call ExitProcess
main ENDP
END
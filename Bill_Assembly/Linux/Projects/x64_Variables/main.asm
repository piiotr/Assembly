section .data
	aByteVar	db	0h
	aWordVar	dw	0ffffh
	aDwordVar	dd	01234567h
	aQwordVar	dq	0123456789012345h
	
	aDwordFloat	dd	123.45	;Single Precision
	aQwordFloat	dq	123.45	;Double Precision
	aTwordFloat	dt	123.45	;Extended Precision

	aChar 		db	"A",0h
	aString		db	"Hello There",0h
	aString2	db	"Program Error - Try Again", 0ah, 0dh, 0h ; \n, endl

	byteArray	db	10,20,30,40,50
	wordArray	dw	100,200,300,400,500
	dWordArray	dd	1000,2000,3000
	qWordArray	dq	34, 'A', 5953h, 23h
	charArray	db	'A', 'B', 'C'
	charArray2	db	'ABC'
	floatArray	dt	123.25, 456.22
	
	;Repeating Array Initializer
	bigByteArray	times	10000	db	0h


section .bss
	aByteVar2	resb	1
	aWordVar2	resw	20	; Reserve 20 words or 40 bytes 
	aDwordVar2	resd	1	
	aQwordVar2	resq	1	
	
	allocMemory	times 	10 	resb	1

section .text
global  _start 
	_start:







	mov		rax, 60					;60 = system exit
	mov		rdi, 14					;0 = return code
	syscall							;Poke the kernel

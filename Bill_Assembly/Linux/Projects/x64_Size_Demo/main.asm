
section .data
;variables with values go here
		byteVariable		db		12h
		wordVariable		dw		1122h
		dwordVariable		dd		11223344h
		quadWordVariable	dq		1122334455667788h

		sByteVariable		db		-125
		sWordVariable		dw		-2567
		sDWordVariabl		dd		-32678
		sQuadWordVariable	dq		-4385344573

	
section .bss
;reserved memory goes here
section .text
;Your program code goes here
	global  _start 
	_start:

	nop	
	;Your program code should go here
	

	nop
	;Do not remove/change the lines below
	;These exit out of the application and back
	;to linux in an orderly fashion
	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel

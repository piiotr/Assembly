
section .data
;variables with values go here

section .bss
;reserved memory goes here
section .text
;Your program code goes here
	global  _start 
	_start:

	nop	
	;Your program code should go here
	
	mov	rax,	0fffffffffffffffh
	mov	al,	11h
	mov	ah,	22h
	mov	ax,	3333h
	mov	eax,	44444444h	

	nop
	;Do not remove/change the lines below
	;These exit out of the application and back
	;to linux in an orderly fashion
	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel

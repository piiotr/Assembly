; Assembler 32bit template

bits 32
section .data
;variables with values go here
section .bss
;reserved memory goes here
section .text
;Your program code goes here

	global _start
_start:
    nop
	
	mov	eax,	0ffffffffh
	mov	al,	22h
	mov	ah,	11h	
	mov	ax,	3333h



	;Your program code should go here

	;Do not remove/change the lines below here.
	;These exit out of the application and back
	;to linux in an orderly fashion
	nop
	mov eax,1      ; Exit system call value
	mov ebx,0      ; Exit return code
	int 80h        ; Call the kernel

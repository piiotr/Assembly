 section .data
	
	someByte	db	11h
	someWord	dw	2222h
	someDWord	dd	3333333h
	someQWord	dq	4444444444444444h
	
	somePointer	dq	0h

section .bss
section .text
	global  _start 
	_start:

	mov	rsi,	someByte
	mov	[somePointer], rsi
	mov	[someQWord], rax

	; Windows method 
	; mov	rsi,	OFFSET	someByte
	; mov	[somePointer], rsi
	

	; Moving memory into registers 
	mov	rax,	0h
	;movzx	rax,	BYTE[someByte]
	mov 	al,	[someByte]


	; Moving literals to registers
	mov	rax,	01000011b
	mov	eax,	123h
	mov	ax,	55h
	mov	al,	32h
	mov	ah,	00h
	mov	al,	'A'

	; Moving between registers 
	mov	r8,	rax
	mov	rcx,	rax
	movzx	rcx,	al	; unsigned small to large
	
	mov	rax,	0h
	mov	al,	-12
	movzx	rcx,	al
	movsx	rcx,	al	
	

		
 	

	mov		rax, 60					;60 = system exit
	mov		rdi, 0					;0 = return code
	syscall							;Poke the kernel

bits 32

AGE			equ		0
WEIGHT		equ		4
HEIGHT		equ		8
PERSON_SIZE	equ		12

section .data
    people          dd      17, 70, 210 ; first person  
                    dd      47, 59, 188 ; second person
                    dd      36, 64, 199 ; third person
        .TYPE       equ     4
        .SIZEOF     equ 	($-people)
        .LENGTHOF   equ 	(people.SIZEOF / people.TYPE)
        .QUANTITY   equ 	(people.SIZEOF / PERSON_SIZE)


section .bss
section .text
global _start
	
	; ebx for the output 
	_start:
		mov		esi,	people
		mov		ebx,	HEIGHT[esi]	
		mov		ecx,	people.QUANTITY

	theloop:
		cmp		ecx,	0
		je		finish

		mov		eax,	HEIGHT[esi]
		cmp		ebx,	eax

		cmova	ebx,	eax
		dec		ecx
		add		esi,	PERSON_SIZE
		jmp		theloop

	finish:
		mov eax,1      ; Exit system call value
		int 80h        ; Call the kernel

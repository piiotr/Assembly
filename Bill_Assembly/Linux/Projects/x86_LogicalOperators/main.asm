;
;This program will test out the functions library to show the user of number formatted output
;

;
;Include our external functions library functions
%include "./functions.inc"

SECTION .data
	openPrompt	db	"Welcome to my Program", 0h
	closePrompt	db	0ah, "Program ending, have a nice day", 0h
    testingAND  db  "Testing the AND function", 0h
    printEAX    db  "EAX has a value of ", 0h
    printEBX    db  "EBX has a value of ", 0h
	
SECTION .bss
	

SECTION     .text
	global      _start

_start:
	nop
	
    push	openPrompt
    call	PrintString
    call	Printendl

    push    testingAND
    call    PrintString
    call    Printendl
    mov     eax,    10010000111010101b
    mov     ebx,    00000000000000001b

    push    printEAX
    call    PrintString
    push    eax
    call    Print32bitNumBinary 
    call    Printendl    
    
    push    printEBX
    call    PrintString
    push    ebx
    call    Print32bitNumBinary 
    call    Printendl    
    
    push    eax
    ; and is destructive logical operator 
    and     eax, ebx 


    push    printEAX
    call    PrintString
    push    eax
    call    Print32bitNumBinary 
    call    Printendl    
 
    pop     eax     ;restore eax    
    
    
    
    
    push	closePrompt			;The prompt address - argument #1
    call  	PrintString
    call  	Printendl
    
    nop
;
;Setup the registers for exit and poke the kernel
	mov		eax,sys_exit				;What are we going to do? Exit!
	mov		ebx,0						;Return code
	int		80h							;Poke the kernel

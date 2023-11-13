%include "./functions.inc"
SECTION .data
	openPrompt	db	"Welcome to my Program", 0h
	closePrompt	db	"Program ending, have a nice day", 0h
    testingAND  db  "Testing the AND function", 0h
    testingTEST db  "Testing the TEST operator",0h
    zeroFlagSet db  "The zero flag is set",0h
    printEAX    db  "EAX has a value of: ", 0h
    printEBX    db  "EBX has a value of: ", 0h
SECTION .bss
SECTION .text
global  _start
    _start:
        push	openPrompt
        call	PrintString
        call	Printendl
 
        mov     eax,    10010000111010101b
        mov     ebx,    00000000000000001b

        push    testingAND
        call    PrintString
        call    Printendl
      
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


        ; AND is a destructive logical operator  
        and     eax,    ebx
        

        push    printEAX
        call    PrintString
        push    eax
        call    Print32bitNumBinary
        call    Printendl 

        ; Test the TEST operator         
        push    testingTEST
        call    PrintString
        call    Printendl
        mov     eax,    10010000111010101b
        mov     ebx,    00000000000000000b

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


        ; non destructive and
        test    eax,    ebx
        jz      zeroIsSet
        ; AND is a destructive logical operator  
        ; and     eax,    ebx

        push    printEAX
        call    PrintString
        push    eax
        call    Print32bitNumBinary
        call    Printendl 
        jmp     testOR

    zeroIsSet:
        push    zeroFlagSet
        call    PrintString
        call    Printendl
        push    printEAX
        call    PrintString
        push    eax
        call    Print32bitNumBinary
        call    Printendl 
        
    testOR:


        push	closePrompt			
        call  	PrintString
        call  	Printendl
        
        mov		eax,sys_exit				
        mov		ebx,0						
        int		80h							

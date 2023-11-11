.section .data
    byteArray:  .byte   0x11, 0x22, 0x33, 0x44, 0x55
        byteArray.TYPE      = 1
        byteArray.SIZEOF    = (. - byteArray)
        byteArray.LENGTHOF  = (byteArray.SIZEOF / byteArray.TYPE)
    
    wordArray: .word  0x11111111, 0x44444444, 0x33433333
        wordArray.TYPE      = 2
        wordArray.SIZEOF    = (. - wordArray)
        wordArray.LENGTHOF  = (wordArray.SIZEOF / wordArray.TYPE)
   
    dwordArray: .dword  0x6666666666666666, 0x7777777777777777, 0x888888888888888
        dwordArray.TYPE      = 4
        dwordArray.SIZEOF    = (. - dwordArray)
        dwordArray.LENGTHOF  = (dwordArray.SIZEOF / dwordArray.TYPE)

.section .bss
.section .text
.global _start
    _start:

        ldr     x1,     =byteArray        
        ldr     w0,     [x1]
        add     x1,     x1,     byteArray.TYPE
        ldrb    w0,     [x1]

        ldr     x1,     =wordArray        
        ldr     w0,     [x1]
        add     x1,     x1,     wordArray.TYPE
        ldrb    w0,     [x1]

        ldr     x1,     =dwordArray        
        ldr     w0,     [x1]
        add     x1,     x1,     dwordArray.TYPE
        ldrb    w0,     [x1]

        mov x0, #0 			//Move the return value of 0 into x0
        mov w8, #93 		//Move 93, end program, into w8
        svc #0				//Poke the kernel


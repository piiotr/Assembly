.section .data
    dWordVar:   .dword      0x1122334455667788
    wordVar:    .word       0xaabbccdd
    byteVar:    .byte       'A'
    sByteVar:   .byte       -10
    hWordVar:   .word       999 
    dWordVar2:  .word       0
.section .bss	
.section .text
.global _start
    _start:
        
        // Move some literals or immediate values into the registers
        mov     x0,     #100    //Move the decimal value 100 into x0
        mov     x1,     #0x100  //Move the hexadecimal value 100 into x1

        // Move some register value into other register 
        mov     x3,     x0
        mov     x4,     x1    

        // Move some data from variables into registers 
        // 1 Move the address of the variable into a register 
        // 2 Dereference that register and put that data into a register 
        ldr     x3,     =dWordVar // Put the address of dWordVar into x3
        ldr     x0,     [x3]

        // Move a byte into x0
        ldr     x3,     =wordVar
        ldr     w0,     [x3] 

        //Move a signed byte into x0
        ldr     x3,     =byteVar
        ldrsb   w0,     [x3]

        ldr     x3,     =hWordVar
        ldrh    w0,     [x3]        

        ldr     x3,     =dWordVar2
        str     x0,     [x3]

        strb    w0,     [x3]

        mov x0, #0 			//Move the return value of 0 into x0
        mov w8, #93 		//Move 93, end program, into w8
        svc #0				//Poke the kernel


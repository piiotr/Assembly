.section .data
    mydword:        .dword      99
.section .bss	
.section .text
.global _start
    _start:
        // use x0 for output 
        ldr     x3,     =mydword    ; load the address of mydword to x3
        ldr     x4,     [x3]        ; load the value of the address inside the x3 into x4
        mov     x0,     x4          ; move the value of the x4 to x0 to have get an output

        ; now the output is 99

        ldr     x3,     =mydword    ; load the address of mydword to x3 
        mov     x1,     100         ; mov the desired value into any register, x1 in that case 
        str     x1,     [x3]        ; store the value inside the address in x3 into x1

        ; so now, mydword == 100 thanks to the previous line  

        ldr     x3,     =mydword    ; load the address of mydwowrd to x3 
        ldr     x4,     [x3]        ; load the value from the address in x3 into x4 
        mov     x0,     x4          ; mov the value from x4 to x0 to get an output 

        ; now the output is 100








        mov w8, #93 		//Move 93, end program, into w8
        svc #0				//Poke the kernel


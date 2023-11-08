/* Assembler ARM 32bit template */
.section .data
	/* Place your variable with values here */
	msg:	.ascii "Hello, ARM32!\n"
		msglen = . - msg

.section .text
.global _start

_start:
/* syscall write(int fd, const void *buf, size_t count) */

    mov r0, #1 			@Place 1 into the r0 32-bit register, stdout
    ldr r1, =msg 		@Place the address of the msg variable into r1
    ldr r2, =msglen 		@Place the address of the string length into r2
    mov r7, #4 			@Place a 4, write, into r7
    svc #0			@Poke the kernel
    
    ldr 	R0,	=0x12345678	
    ldr 	R0,	=0xab
    ldr 	R1,	=0
    ldrh 	R1,	=0xabcd

/* syscall exit(int status) */
    mov r0, #0 		@Place 0 into the r0 register, Return code
    mov r7, #1 		@Place 1 into r7, Exit the program
    svc #0			@Poke the kernel


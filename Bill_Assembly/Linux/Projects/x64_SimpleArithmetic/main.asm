/* ARM 64-bit assembly template */

.section .data
	/* Place your initialized variables here */
	msg:	.ascii "Hello, ARM64!\n"
		msglen = . - msg

.section .bss
	/* Place your uninitialized variables here */
	
.section .text
.global _start

_start:
/* syscall write(int fd, const void *buf, size_t count) */
    mov x0, #1     		//Move 1, stdout, to the 64-bit x0 register
    ldr x1, =msg 		//Place the address of the msg variable into x1
    ldr x2, =msglen 	//Place the address of the length of msg into x2
    mov w8, #64 		//Place 64 into w8 - write
    svc #0				//Poke the kernel

/* syscall exit(int status) */
    mov x0, #0 			//Move the return value of 0 into x0
    mov w8, #93 		//Move 93, end program, into w8
    svc #0				//Poke the kernel


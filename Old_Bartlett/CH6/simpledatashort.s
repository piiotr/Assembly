.globl _start

# Program Data
.section .data
    first_value:
        .quad 4
    second_value:
        .quad 6

.section .text
    _start:
        # Load values into registers
        movq    first_value,     %rdi

        # perform the computation
        addq    second_value,   %rdi

        # return the value to the operating system
        movq    $60,    %rax
        syscall   
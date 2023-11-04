.globl _start

.section .data
    first_value:
        .quad 4
    second_value:
        .quad 6
    final_result:
        .quad 0

.section .text
    _start: 
        # Load values intro registers
        movq    first_value,   %rbx
        movq    second_value,  %rcx

        # Perform the computation
        addq    %rbx,   %rcx

        # Store result into memory
        movq    %rcx,   final_result

        # return the value to the operating system
        movq    $60,    %rax
        movq    final_result,   %rdi
        syscall


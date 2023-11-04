.globl _start

.section .data
    w_value:
        .quad 400
    h_value:
        .quad 650
    px_min:
        .quad PIXEL_MIN_OFF(%rbx)
    px_max:
        .quad PIXEL_MAX_OFF(%rbx)

.section .text
    _start:
        # Load the address of the first element of pixel array
        leaq    pixel,   %rbx

        # Comparing width 
        cmpq    px_min, w_value
        jb      invalid
        addq    $8,     %rbx
        cmpq    px_min, w_value
        ja      invalid

        jmp     correct

    correct:
        mov     $1,     %rdi
        jmp     end

    invalid:
        mov     $240,     %rdi
        jmp     end

    end: 
        movq    $60,    %rax
        syscall
# Make a mistake! Use the wrong mov instruction for a given register
# (i.e., movq $5, %rax). What does the assembler say when this
# happens?

.globl _start
.section .text
_start: 
    mov     $10,    %rbx
    movb     $5,     %rax  # 4_3.s:5: Error: `%rax' not allowed with `movb'
    addq    %rbx,   %rax
    subq    $2,     %rax
    mov     %rax,   %rdi
    mov     $60,    %rax
    syscall

    # the result should be 13
    
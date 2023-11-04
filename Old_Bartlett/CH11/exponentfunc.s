.globl exponent 
.type exponent, @function 

.section .text 
    exponent: 
        # %rdi has a base 
        # %rsi has the exponent 
        # Create the stack frame with one 8-byte local varialbe 
        # which will be refered to using -8(%rbp). 
        # This will store the current value of the exponent as 
        # we iterate through it. 
        # We are allocating 16 bytes so that we maintain 
        # 16-byte aligement 
        enter   $16, $0
        # Accumulated value in %rax 
        movq    $1, %rax 
        # Store the exponent 
        movq    %rsi,   -8(%rbp)

    mainloop:
        mulq    %rdi 
        decq    -8(%rbp) 
        jnz     mainloop
    
    complete:
        # result is already in %rax 
        leave 
        ret 

    
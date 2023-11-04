.section .text
.globl _start
    _start: 
        # bh (leftmost) - 00000001, bl (rightmost) 00000010
        # dived = bh = 1, bl = 2, but together its 258  
        movw    $0b0000000100000010,    %bx
        # bh = 1, bl = 3
        # 00000001 = 1   
        # 00000010 = 2 
        # 00000011 = 3 
        addb    %bh,    %bl # (1 + 2), but rbx is stil 258
        movq    $0b00000100, %rdi         
        movb    $0,     %bh
        mov     $60,    %rax
        syscall




#  00000001 = 1 
#  00000011 = 3
#  00000100 = 4 (1 + 1 = 0 and 1 is carried, 1 + 1 again = 0 and 1 is carried and at the end 0 + 1 = 1)
# 
# 
# 
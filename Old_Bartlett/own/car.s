.section .data 
.globl cars, numcars

# quad: numofwheels, color, model

# 1 - RED
# 2 - GREEN
# 3 - BLUE

# 11 - AUDI
# 22 - BMW
# 33 - CITROEN

numcars:
    .quad (endcars - cars) / CSIZE

cars:
    .quad 4,1,11    # RED AUDI
    .quad 4,2,22    # GREEN BMW
    .quad 4,3,33    # BLUE CITROEN

endcars:

.globl  DOORS_O, COLOR_O, MODEL_O
#offsets
.equ DOORS_O, 0
.equ COLOR_O, 8
.equ MODEL_O, 16 
    
    .globl CSIZE
    .equ   CSIZE, 24

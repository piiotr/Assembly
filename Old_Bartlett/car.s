.section .data 
.globl size, cars
    # doors, hp, year, gears
    size: 
        .quad (endcars - cars) / RECORD_SIZE 

    cars:
        .quad 4, 120, 14, 6
        .quad 4, 190, 23, 7
        .quad 4, 210, 22, 6

    endcars:

    .globl DOORS, HP, YEAR, GEARS
    .equ    DOORS, 0
    .equ    HP,    8
    .equ    YEAR,  16
    .equ    GEARS, 24

    .globl RECORD_SIZE
    .equ RECORD_SIZE, 32  

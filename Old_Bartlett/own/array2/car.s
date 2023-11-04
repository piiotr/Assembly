.section .data
.globl size, stats

    size:
        .quad (endstats - stats) / RECORD_SIZE

    # year, hp, seats, gen 
    stats:
        .quad 96, 120, 5, 3
        .quad 99, 200, 2, 5
        .quad 80, 160, 5, 1

    endstats: 

.globl YEAR, HP, SEATS, GEN
.equ YEAR, 0
.equ HP, 8
.equ SEATS, 16
.equ GEN, 24

.globl RECORD_SIZE
.equ RECORD_SIZE, 32


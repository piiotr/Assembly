.globl parameters, size 
.section .data
    size:
         .quad  (endparameters - parameters) / RECORD_SIZE
    # memory, disk, cores, gpu   
    parameters:
        .quad 32, 128, 8, 16
        .quad 64, 255, 16, 32 

    endparameters:

.globl MEMORY_O, DISK_O, CORES_O, GPU_O
.equ MEMORY_O, 0
.equ DISK_O, 8
.equ CORES_O, 16
.equ GPU_O, 24

.globl RECORD_SIZE
.equ RECORD_SIZE, 32

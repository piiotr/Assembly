.section .data
.globl people, numpeople

numpeople:
    # Calculate the number of people in array 
    .quad (endpeople - people) / PERSON_RECORD_SIZE

people:
    
    # 4 is age

    # Array of people
    .quad 200, 3, 74, 20
    .quad 280, 3, 72, 44
    .quad 150, 2, 68, 30
    .quad 250, 2, 75, 24
    .quad 250, 1, 70, 11
    .quad 180, 1, 69, 65

endpeople: # Marks the end of the array for calculation purposes 
    
.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ WEIGHT_OFFSET,0
.equ HAIR_OFFSET,8
.equ HEIGHT_OFFSET,16
.equ AGE_OFFSET,24

# total size of the struct 
.globl  PERSON_RECORD_SIZE
.equ    PERSON_RECORD_SIZE, 32 

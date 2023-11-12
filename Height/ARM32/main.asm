.section .data

    .equ    AGE,            0
    .equ    WEIGHT,         8
    .equ    HEIGHT,         16
    .equ    PERSON_SIZE,    24


    people:     .quad      17, 70, 174
                .quad      25, 65, 180
                .quad      36, 80, 190
        people.TYPE     = 8
        people.SIZEOF   = (. - people)
        people.LENGTHOF = (people.SIZEOF / people.TYPE)
        people.QUANTITY = (people.SIZEOF / PERSON_SIZE)

.section .bss
.section .text
.global  _start
    _start:
        // r1 will act as a counter 
        mov     r1,     #people.QUANTITY
        // r2 will hold the address to the array 
        ldr     r2,     =people
        add     r2,     r2,     #AGE

        ldr     r0,     [r2]



    theloop:
        cmp     r1,     #0
        beq     finish
        
        ldr     r3,     [r2]

        cmp     r3,     r0
        blt     action

        sub     r1,     r1,     #1
        add     r2,     r2,     #PERSON_SIZE
        b       theloop

    action:
        mov     r0,     r3
        sub     r1,     r1,     #1
        add     r2,     r2,     #PERSON_SIZE
        b       theloop

    finish:
        mov     r7,     #1
        svc     #0

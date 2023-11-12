.section .data
    .equ    AGE,             0
    .equ    WEIGHT,          8
    .equ    HEIGHT,          16
    .equ    PERSON_SIZE,     24

    people:     .quad      17, 70, 174
                .quad      25, 65, 180
                .quad      36, 80, 190
        people.TYPE        =   8
        people.SIZEOF      =   (. - people)
        people.LENGTHOF    =   (people.SIZEOF / people.TYPE)
        people.QUANTITY    =   (people.SIZEOF / PERSON_SIZE)


.section .bss
.section .text
.global _start
    // use x0 for output 
    _start:
        // x0 will hold the tallest value 
        mov     x0,     #0

        // x5 will hold the number of people
        mov     x5,     people.QUANTITY

        // load the address of first element of people into x1
        ldr     x1,     =people
    
        // add   16 to the address to point to third element
        add     x1,     x1,     HEIGHT
    
    theloop:
        cmp     x5,     #0
        beq     finish

        // put dereferenced value into x2    
        ldr     x2,     [x1]
        
        cmp     x0,     x2
        blt     action        
        
        sub     x5,     x5,     #1
        add     x1,     x1,     PERSON_SIZE
        b       theloop


    action: 
        mov     x0,     x2
        sub     x5,     x5,     #1
        add     x1,     x1,     PERSON_SIZE
        b       theloop

    








    finish:
        mov     w8,     #93
        svc     #0 

# Think about various things on the computer and how they would
# be represented as a data structure. How would the position of your
# cursor be represented? What about the pixels on your screen?

.globl pixel
.section .data
    pixel:
        .quad 0, 1024

    endpixel:

    .globl PIXEL_MIN_OFF, PIXEL_MAX_OFF
    .equ PIXEL_MIN_OFF, 0
    .equ PIXEL_MAX_OFF, 8
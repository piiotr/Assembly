.section .data
.globl preferences 
    # 1 - create new folder
    # 2 - create new document 
    # 3 - copy
    # 4 - cut
    # 5 - pase 
    
    preferences:
        .quad 1,2,3,4,5

    .globl FOLDER_OFFSET, DOCUMENT_OFFSET, COPY_OFFSET, CUT_OFFSET, PASTE_OFFSET
    .equ FOLDER_OFFSET, 0
    .equ DOCUMENT_OFFSET, 8
    .equ COPY_OFFSET, 16
    .equ CUT_OFFSET, 24
    .equ PASTE_OFFSET, 32
    
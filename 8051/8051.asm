; 8051-style 8-bit Multiplication (MASM-compatible)
.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB 25H
    NUM2 DB 10H
    RESULT DW ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; 8051-like multiplication (A * B)
    MOV AL, NUM1
    MOV BL, NUM2
    MUL BL           ; AX = AL * BL
    MOV RESULT, AX
    
    MOV AH, 4CH
    INT 21H
END START

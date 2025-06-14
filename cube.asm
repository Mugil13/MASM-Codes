; Cube of a Number (8-bit)
.MODEL SMALL
.STACK 100H
.DATA
    NUM DB 05H
    CUBE DW ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; Calculate cube: NUM^3
    MOV AL, NUM
    MOV BL, AL
    MUL BL          ; AX = AL * BL (NUM^2)
    MUL BL          ; AX = AX * BL (NUM^3)
    MOV CUBE, AX
    
    MOV AH, 4CH
    INT 21H
END START
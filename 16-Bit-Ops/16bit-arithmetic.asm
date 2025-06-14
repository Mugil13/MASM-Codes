; 16-bit Addition/Subtraction
.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DW 1234H
    NUM2 DW 5678H
    RESULT DW ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AX, NUM1
    ADD AX, NUM2    ; Replace with SUB for subtraction
    MOV RESULT, AX
    
    MOV AH, 4CH
    INT 21H
END START

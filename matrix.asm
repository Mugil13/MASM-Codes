; Matrix Operations
.MODEL SMALL
.STACK 100H
.DATA
    MAT1 DB 01H,02H,03H,04H
    MAT2 DB 05H,06H,07H,08H
    RESULT DB 4 DUP(?)
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    MOV SI, 0
    MOV CX, 4
    
LOOP1:
    MOV AL, MAT1[SI]
    ADD AL, MAT2[SI]    ; SUB for subtraction
    MOV RESULT[SI], AL
    INC SI
    LOOP LOOP1
    
    MOV AH, 4CH
    INT 21H
END START
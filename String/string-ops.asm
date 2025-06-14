; String Length Calculation
.MODEL SMALL
.STACK 100H
.DATA
    STR DB 'HELLO$'
    LEN DB ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    LEA SI, STR
    MOV AL, '$'
    MOV CX, 0
    
COUNT:
    CMP [SI], AL
    JE DONE
    INC SI
    INC CX
    JMP COUNT
    
DONE:
    MOV LEN, CL
    
    MOV AH, 4CH
    INT 21H
END START

; Uppercase to Lowercase
.MODEL SMALL
.STACK 100H
.DATA
    STR DB 'HELLO WORLD$'
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    LEA SI, STR
    
CONVERT:
    MOV AL, [SI]
    CMP AL, '$'
    JE DONE
    CMP AL, 'A'
    JB SKIP
    CMP AL, 'Z'
    JA SKIP
    ADD AL, 20H
    MOV [SI], AL
SKIP:
    INC SI
    JMP CONVERT
    
DONE:
    MOV AH, 4CH
    INT 21H
END START

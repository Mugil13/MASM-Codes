; BCD to Hex Conversion
.MODEL SMALL
.STACK 100H
.DATA
    BCD DB 25H
    HEX DB ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, BCD
    MOV BL, AL
    AND AL, 0FH
    AND BL, 0F0H
    MOV CL, 04H
    SHR BL, CL
    MOV AH, 0AH
    MUL AH
    ADD AL, BL
    MOV HEX, AL
    
    MOV AH, 4CH
    INT 21H
END START

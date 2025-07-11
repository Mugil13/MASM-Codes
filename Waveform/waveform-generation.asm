; Staircase Wave Generation
.MODEL SMALL
.STACK 100H
.DATA
    PORT_ADDR EQU 0C8H
.CODE
START:
    MOV AL, 00H
    
LABEL1:
    OUT PORT_ADDR, AL
    CALL DELAY
    INC AL
    CMP AL, 0FFH
    JNE LABEL1
    JMP START
    
DELAY:
    MOV CX, 0FFFH
DELAY_LOOP:
    DEC CX
    JNZ DELAY_LOOP
    RET
    
END START

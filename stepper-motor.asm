; Stepper Motor Control
.MODEL SMALL
.STACK 100H
.DATA
    PORT_ADDR EQU 0C8H
    STEPS DB 09H, 05H, 06H, 0AH
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    MOV CX, 100
    
ROTATE:
    MOV SI, 0
    MOV BX, 4
    
NEXT_STEP:
    MOV AL, STEPS[SI]
    OUT PORT_ADDR, AL
    CALL DELAY
    INC SI
    DEC BX
    JNZ NEXT_STEP
    LOOP ROTATE
    
    MOV AH, 4CH
    INT 21H
    
DELAY PROC
    MOV DX, 0FFFFH
D1:
    DEC DX
    JNZ D1
    RET
DELAY ENDP

END START
; 8255 PPI Configuration (Port A = Output, Port B = Input)
.MODEL SMALL
.STACK 100H
.DATA
    PPI_CTRL EQU 63H
    PORT_A EQU 60H
    PORT_B EQU 61H
    PORT_C EQU 62H
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; Configure 8255: Port A = Output, Port B = Input, Mode 0
    MOV AL, 82H      ; Control word: 10000010
    OUT PPI_CTRL, AL
    
    ; Read from Port B and write to Port A
    IN AL, PORT_B
    OUT PORT_A, AL
    
    MOV AH, 4CH
    INT 21H
END START

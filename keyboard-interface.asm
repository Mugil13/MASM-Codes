; 8279 Keyboard/Display Interface
.MODEL SMALL
.STACK 100H
.DATA
    KBD_PORT EQU 60H
    DISP_PORT EQU 61H
    PROMPT DB 'Press any key: $'
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; Initialize 8279
    MOV AL, 00H     ; Mode set command
    OUT DISP_PORT, AL
    
    ; Display prompt
    MOV AH, 09H
    LEA DX, PROMPT
    INT 21H
    
    ; Read key
WAIT_KEY:
    IN AL, KBD_PORT
    TEST AL, 80H     ; Check if key pressed
    JZ WAIT_KEY
    
    ; Display key
    MOV AH, 02H
    MOV DL, AL
    INT 21H
    
    MOV AH, 4CH
    INT 21H
END START
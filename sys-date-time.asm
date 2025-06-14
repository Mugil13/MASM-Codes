; Display System Date
.MODEL SMALL
.STACK 100H
.DATA
    DATE_STR DB 'DD/MM/YYYY$'
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2AH    ; Get system date
    INT 21H
    
    ; CX = year, DH = month, DL = day
    LEA SI, DATE_STR
    
    ; Convert day
    MOV AL, DL
    CALL CONVERT
    MOV [SI], AX
    
    ; Convert month
    MOV AL, DH
    CALL CONVERT
    MOV [SI+3], AX
    
    ; Convert year
    MOV AX, CX
    CALL CONVERT_YEAR
    MOV [SI+6], BX
    MOV [SI+8], DX
    
    ; Display
    MOV AH, 09H
    LEA DX, DATE_STR
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
CONVERT PROC
    ; Converts AL to ASCII digits
    RET
CONVERT ENDP

CONVERT_YEAR PROC
    ; Converts AX to ASCII year
    RET
CONVERT_YEAR ENDP

END START
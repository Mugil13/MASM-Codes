; BCD Addition with DAA (Decimal Adjust)
.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB 25H     ; BCD 25
    NUM2 DB 19H     ; BCD 19
    RESULT DB ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AL, NUM1
    ADD AL, NUM2    ; Binary addition
    DAA             ; Adjust for BCD
    MOV RESULT, AL
    
    ; For subtraction:
    ; MOV AL, NUM1
    ; SUB AL, NUM2
    ; DAS            ; Decimal Adjust after Subtraction
    
    MOV AH, 4CH
    INT 21H
END START

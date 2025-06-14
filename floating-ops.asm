; Floating-Point Addition/Subtraction
.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DD 3.14159265
    NUM2 DD 1.57079632
    RESULT DD ?
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load numbers into FPU stack
    FLD NUM1        ; ST(0) = NUM1
    FLD NUM2        ; ST(0) = NUM2, ST(1) = NUM1
    
    FADD            ; ST(0) = NUM1 + NUM2 (replace with FSUB for subtraction)
    FSTP RESULT     ; Store result and pop stack
    
    MOV AH, 4CH
    INT 21H
END START
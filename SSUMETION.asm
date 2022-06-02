.MODEL SMALL
.STACK 100H
.DATA
    
    NUM DW 1
    RESULT DW ?
    
    
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    
    SUB AL,48
    
    MOV CX,0
    MOV CL,AL
    
    MOV BX,0
    
    SUM:
    ADD BX,NUM
    INC NUM
    LOOP SUM
    
    MOV RESULT,BX
    
    MOV AH,2
    MOV DX,RESULT
    INT 21H 
  
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
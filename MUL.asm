.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB ?
    NUM2 DB ?
    RESULT DB ?
    

.CODE

MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H 
    SUB AL,48
    MOV NUM1,AL 
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV NUM2,AL
    
    MUL NUM1
    
    MOV RESULT,AL
    AAM 
    
    ADD AH,48
    ADD AL,48
    
    MOV BX,AX
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

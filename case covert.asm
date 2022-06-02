.MODEL SMALL
.STACK 100H
.DATA 

.CODE 

MAIN PROC  
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    CMP BL,97
    JGE SMALL_TO_BIG 
    
    BIG_TO_SMALL:
    ADD BL,32
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP EIXT
    
    SMALL_TO_BIG:
    
    SUB BL,32
    MOV AH,2
    MOV DL,BL
    INT 21H
    
   EIXT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
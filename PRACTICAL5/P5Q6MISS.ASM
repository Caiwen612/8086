.MODEL SMALL 
.STACK 100 
.DATA
    MENU DB "Green: G"
         DB 13,10,"Red: R"
         DB 13,10,"Blue: B"
         DB 13,10,"---------------------------"
         DB 13,10,"Please enter G, B, or R for font's color: $ "
    INPUT  DB ?
    STRG DB "YOU CHOOSE GREEN COLOR!$"
    STRR DB "YOU CHOOSE RED COLOR!$"
    STRB DB "YOU CHOOSE BLUE COLOR!$"

.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX

AGAIN:
;---OUTPUT STRING:09H(MENU)
 MOV AH,09H
 LEA DX,MENU
 INT 21H
;---INPUT BYTE:01H(INPUT)
 MOV AH,01H
 INT 21H
 MOV INPUT,AL
;CHECKING
CHECK:
 CMP INPUT,'G'
 JE PRINTG
 CMP INPUT,'R'
 JE PRINTR
 CMP INPUT,'B'
 JE PRINTB

PRINTG:
    MOV AX,0600H

    ;--------TEXT COLOR  
    MOV AX,0600H
    MOV BH,72H
    MOV CX,1800H
    MOV DX,184FH
    INT 10H


    ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    JMP AGAIN



PRINTR:
  ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H

;   ;--------TEXT COLOR  
;     MOV AH, 09H ;screen function
;     MOV BL, 04H   ;COLOR CODE
;     MOV CX, 21 ;HOW MUCH THE COLOR YOU WANT 
;     INT 10H    
;     MOV DX,OFFSET REDSTR  ;put variable
;     INT 21H
    ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    JMP AGAIN

PRINTB:
  ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H

;   ;--------TEXT COLOR  
;     MOV AH, 09H ;screen function
;     MOV BL, 01H  ;COLOR CODE
;     MOV CX, 22 ;HOW MUCH THE COLOR YOU WANT 
;     INT 10H    
;     MOV DX,OFFSET BLUESTR  ;put variable
;     INT 21H
    ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    JMP AGAIN
  

 
 
 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN
.MODEL SMALL 
.STACK 100 
.DATA
    MENU DB "Green: G"
         DB 13,10,"Red: R"
         DB 13,10,"Blue: B"
         DB 13,10,"---------------------------"
         DB 13,10,"Please enter G, B, or R for font's color: $ "
    OPT  DB 0
    GREENSTR DB "YOU CHOOSE GREEN COLOR!$"
    REDSTR   DB "YOU CHOOSE RED COLOR!$"
    BLUESTR  DB "YOU CHOOSE BLUE COLOR!$"

.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX

AGAIN:
;---OUTPUT STRING
 MOV AH,09H
 LEA DX,MENU
 INT 21H
;---INPUT BYTE
 MOV AH,01H
 INT 21H
 MOV OPT,AL
;CHECKING
CHECK: ;NO DIFF BBETWEEN " " AND ''
 CMP OPT,"G"
 JE GREEN
 CMP OPT,"R"
 JE RED
 CMP OPT,"B"
 JE BLUE

GREEN:
;   ;--COLOR GREEN(dailou)(another method)
;     MOV AH,09H ;SCREEN
;     MOV CX,1000H ;1000H ;DETERMINE HOW MANY CHARACTER YOU USE
;     MOV AL,20H ;SPACING 
;     MOV BL,2H ;COLOR CODE
;     INT 10H
    
  ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H

  ;--------TEXT COLOR  
    MOV AH, 09H ;screen function
    MOV BL, 02H   ;COLOR CODE
    MOV CX, 23 ;HOW MUCH THE COLOR YOU WANT 
    INT 10H    
    MOV DX,OFFSET GREENSTR  ;put variable
    INT 21H

    ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    JMP AGAIN



RED:
  ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H

  ;--------TEXT COLOR  
    MOV AH, 09H ;screen function
    MOV BL, 04H   ;COLOR CODE
    MOV CX, 21 ;HOW MUCH THE COLOR YOU WANT 
    INT 10H    
    MOV DX,OFFSET REDSTR  ;put variable
    INT 21H
    ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    JMP AGAIN

BLUE:
  ;--------CALL NEW LINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H

  ;--------TEXT COLOR  
    MOV AH, 09H ;screen function
    MOV BL, 01H  ;COLOR CODE
    MOV CX, 22 ;HOW MUCH THE COLOR YOU WANT 
    INT 10H    
    MOV DX,OFFSET BLUESTR  ;put variable
    INT 21H
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
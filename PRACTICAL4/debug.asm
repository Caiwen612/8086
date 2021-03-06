.MODEL SMALL
.STACK 100
.DATA
 VAR1 DB "COMPUTER"
 VAR2 DB 8 DUP ("*")
 STR1 DB "(1)ORIGINAL$"
 STR2 DB 13,10,13,10,"(2)AFTER EXCHANGE$"
 STR3 DB 13,10,13,10,"(3)AFTER CHANGE CASE$"
 STR4 DB 13,10,13,10,"(4)AFTER REVERSE$"
 VSTR1 DB 13,10,"VAR1 = $"
 VSTR2 DB 13,10,"VAR2 = $"
.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX
;-------------------------------------------(1)ORIGINAL
 ;--OUTPUT STRING:09H(STR1)
 MOV AH,09H
 LEA DX,STR1
 INT 21H
 ;--OUTPUT STRING:09H(VSTR1)
 MOV AH,09H
 LEA DX,VSTR1
 INT 21H
 ;--OUTPUT BYTE:02H(VAR1[SI]), USING LOOP PRINT1
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT1:
 MOV AH,02H
 MOV DL,VAR1[SI]
 INT 21H
 INC SI	
 LOOP PRINT1
 ;--OUTPUT STRING:09H(VSTR2)
 MOV AH,09H
 LEA DX,VSTR2
 INT 21H
 ;--OUTPUT BYTE:02H(VAR2[SI]), USING LOOP PRINT2
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT2:
 MOV AH,02H
 MOV DL,VAR2[SI]
 INT 21H
 INC SI	
 LOOP PRINT2
;-------------------------------------------(2)EXCHANGE(XCHG)
;--OUTPUT STRING:09H(STR2)
 MOV AH,09H
 LEA DX,STR2
 INT 21H
 ;--OUTPUT STRING:09H(VSTR1)
 MOV AH,09H
 LEA DX,VSTR1
 INT 21H
 ;--EXCHANGE VAR1[SI] WITH VAR2[SI]
 MOV CX,8
 MOV SI,0
 EXCHANGE:
 MOV BL,VAR1[SI]
 XCHG BL,VAR2[SI]
 MOV VAR1[SI],BL
 INC SI	
 LOOP EXCHANGE
 ;--OUTPUT BYTE:02H(VAR1[SI]), USING LOOP PRINT3
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT3:
 MOV AH,02H
 MOV DL,VAR1[SI]
 INT 21H
 INC SI	
 LOOP PRINT3
 ;--OUTPUT STRING:09H(VSTR2)
 MOV AH,09H
 LEA DX,VSTR2
 INT 21H
 ;--OUTPUT BYTE:02H(VAR2[SI]), USING LOOP PRINT4
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT4:
 MOV AH,02H
 MOV DL,VAR2[SI]
 INT 21H
 INC SI	
 LOOP PRINT4
;------------------------------------------(3)CHANGE CASE
;--OUTPUT STRING:09H(STR3)
 MOV AH,09H
 LEA DX,STR3
 INT 21H
 ;--OUTPUT STRING:09H(VSTR1)
 MOV AH,09H
 LEA DX,VSTR1
 INT 21H
;--EXCHANGE VAR1[SI] WITH VAR2[SI]
 MOV CX,8
 MOV SI,0
 CHANGE:
 MOV BL,VAR2[SI]
 XCHG BL,VAR1[SI]
 MOV VAR2[SI],BL
 INC SI	
 LOOP CHANGE
 ;--OUTPUT BYTE:02H(VAR1[SI]), USING LOOP PRINT5
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT5:
 MOV AH,02H
 MOV DL,VAR1[SI]
 INT 21H
 INC SI	
 LOOP PRINT5
 ;--OUTPUT STRING:09H(VSTR2)
 MOV AH,09H
 LEA DX,VSTR2
 INT 21H
 ;--CHANGE CASE: ADD 20H TO VAR1[SI], THEN MOVE TO VAR2[SI]
 MOV CX,0
 MOV CX,8
 MOV SI,0
 CASE:
 ADD VAR1[SI],20H
 MOV BL,VAR1[SI]
 MOV VAR2[SI],BL
 INC SI	
 LOOP CASE
;--OUTPUT BYTE:02H(VAR2[SI]), USING LOOP PRINT6
 MOV CX,0
 MOV CX,8
 MOV SI,0
 PRINT6:
 MOV AH,02H
 MOV DL,VAR2[SI]
 INT 21H
 INC SI	
 LOOP PRINT6
;-------------------------------------------(4)REVERSE
;--OUTPUT STRING:09H(STR4)
 MOV AH,09H
 LEA DX,STR4
 INT 21H
;--OUTPUT STRING:09H(VSTR1)
 MOV AH,09H
 LEA DX,VSTR1
 INT 21H
;UPPER CASE
 MOV CX,0
 MOV CX,8
 MOV SI,0
 MOV BX,0
UPPERCASE:
 SUB VAR1[SI],20H
 MOV BL,VAR1[SI]
 MOV VAR2[SI],BL
 INC SI
 LOOP UPPERCASE
; VAR2[DI] R E T U P M O C
;      DI  0 1 2 3 4 5 6 7
;      DI INITIALIZED WITH 0
;      DI INCREMENT
;--OUTPUT BYTE:02H(VAR1[SI]), USING LOOP PRINT7
 MOV CX,0
 MOV CX,8
 MOV SI,0
PRINT7:
 MOV AH,02H
 MOV DL,VAR1[SI]
 INT 21H
 INC SI
 LOOP PRINT7
;--OUTPUT STRING:09H(VSTR2)
 MOV AH,09H
 LEA DX,VSTR2
 INT 21H
;      SI  0 1 2 3 4 5 6 7
; VAR1[SI] C O M P U T E R
;      SI INITIALIZED WITH 7
;      SI DECREMENT (DEC)
;--OUTPUT BYTE:02H(VAR2[SI]), USING LOOP PRINT8
 MOV CX,0
 MOV CX,8
 MOV SI,0
 MOV SI,7
 PRINT8:
 MOV AH,02H
 MOV DL,VAR2[SI]
 INT 21H
 DEC SI
 LOOP PRINT8

 MOV AH,4CH
 INT 21H
MAIN ENDP
 END MAIN
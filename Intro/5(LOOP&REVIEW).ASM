;-------------------------------QUICK REVIEW------------------------------------;
;IN WEEK 5: INPUT(I)/OUTPUT(O) | BYTE(B) / STRING(S)                            |
;           FUNCTION CODE: 01H(IB), 02H(OB), 07H(IB-PSW),                       |
;                          09H(OS), 0AH(IS),4CH(TERMINATE RUN)                  |
;IN WEEK 6: CALC - 1 DIGIT, 2 DIGITS, 3 DIGITS                                  |
;-------------------------------LOOP--------------------------------------------|
;IN WEEK 7: LOOP INSTRUCTION                                                    |
;           DEFINITION: REPEAT A GROUP OF INSTRUCTION FOR CX TIME               |
;           CHARACTERISTIC: -CX = NUMBER OF TIMES TO REPEAT  (Count register)   |
;                           -SET CX = MAX, IT WILLL DECREMENT                   |
;                            AFTER EACH LOOP INSTRUCTION STOPPED WHEN CX=0      |
;           CODE: INC = INCREASE , DEC= DECREASE                                |
;-------------------------------------------------------------------------------;


;--------(1)USING 01H/07H TO GET USER PASSWORD (3 DIGITS)(WITHOUT LOOP)-------------
;WITHOUT LOOP,YOU NEED TO DECLARE MANY VARIABLE                                    |
;                                                                                  |
; .DATA                                                                            |
;  PSW1 DB 0                                                                       |
;  PSW2 DB 0                                                                       |
;  PSW3 DB 0                                                                       |
; .CODE                                                                            |
;  MOV AX,@DATA                                                                    |
;  MOV DS,AX                                                                       |
;  ;---GETPSW                                                                      |
;  MOV AH,01H                                                                      |
;  INT 21H                                                                         |
;  MOV PSW1,AL                                                                     |
;  MOV AH,01H                                                                      |
;  INT 21H                                                                         |
;  MOV PSW2,AL                                                                     |         
;  MOV AH,01H                                                                      |
;  INT 21H                                                                         |
;  MOV PSW3,AL                                                                     |
;----------------------------------------------------------------------------------;

;----------------(2)USING 01H/07H TO GET USER PASSWORD (3 DIGITS)(WITH LOOP)-------;
;       .DATA(Below all same , choose 1 you prefer to declare is ok)               |
;          PSW DB 3 DUP(0) ;DUP=DUPLICATE                                          |
;          PSW DB 3 DUP("$") ;DUP=DUPLICATE                                        |
;          PSW DB "A","B","C"   ;PSW[0] = "1", PSW[1] = "2", PSW[2] = "3"          |
;          PSW DB 0,0,0                                                            |
;          PSW[0]="1",PSW[1]="2",PSW[2]="3"                                        |
;       .CODE                                                                      |     
;               MOV CX,3        ;CX=3 #LOOP 3 TIMES                                |
;               MOV SI,0        ;SI=0 SI = 0000H , BX,SI,DI COULD BE USE INDEXING. |
;          GETPSW:                                                                 |                     
;             MOV AH,07H ;INPUT BYTE                                               |     
;             INT 21H                     ;AL="1"     > "2"        >"3"            |
;             MOV PSW[SI],AL              ;PSW[0]="1" > PSW[1]="2" > PSW[2]="3"    |
;             INC SI ;INC = INCREASEMENT  ;SI=1       > 2          > 3             |
;             LOOP GETPSW                 ;CX=2       > 1          > 0             |
;                                                                                  |
;----------------------------------------------------------------------------------;

.MODEL SMALL 
.STACK 100 
.DATA
 PSW DB 3 DUP(0) ;DUPLICATE
;PSW DB 3 DUP("$") 
;DUP=DUPLICATE
;PSW DB "A","B","C"   ;PSW[0] = "1", PSW[1] = "2", PSW[2] = "3"
;PSW DB 0,0,0
;PSW[0]="1",PSW[1]="2",PSW[2]="3"
.CODE
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX
 
 ;---GETPSW
 MOV CX,3 ;CX=3 #LOOP 3 TIMES
 MOV SI,0 ;SI = 0000H , BX,SI,DI COULD BE USE INDEXING.
GETPSW:
 MOV AH,01H ;INPUT BYTE
 INT 21H                     ;AL="1"  > "2" >"3"
 MOV PSW[SI],AL              ;PSW[0]="1" > PSW[1]="2" > PSW[2]="3"
 INC SI ;INC = INCREASEMENT  ;SI=1       > 2          > 3
 LOOP GETPSW                 ;CX=2       > 1          > 0

;-----DIRECT ADDRESSING--------------------------------------------------
 MOV AH,02H ;OUTPUT BYTE
 MOV DL,PSW[1]
 INT 21H


 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN

;--------------------P3Q3B.ASM (QTY*UP=TOTAL)---------------------------
;             | ASCII | COMPUTER   | HEX change to DEC |  DECIMAL       |
;USER INPUT:  |   8   |    38H     |       -30H        |  8H/8D/8       |
;USER INPUT:  |   5*  |    35H*    |       -30H        |  5H/5D/5*      |
;     TOTAL:  |       |            |                   |        40      |
;             |  "X"  |    58H     |       +30H        |  40D=28H  <-XX |
;------------------------------------------------------------------------;
;---------------------------------------------------SEPARATE 40 TO 4 & 0;
;             |       |            |                      4-Quotients (value 4 will be assign to Q variable)
;             |       |            |                   10)40
;             |   4   |    Q=34H   |                      0-Remainder (value 0 will be assign to R variable)
;             |   0   |    R=30H   |       +30H     AX=RQ=0(AH-R),4(AL-Q)#will store remainder first, then store quotients
;                                                 #Result will store in AX ; AX=40;
;                                                 #Remainder will store in AH register. ;AH=0
;                                                 #Quotient is store in AL register.    ;AL=4
;#AFTER SEPARATE NUMBER THEN ADD 30H WILL GET RESULT
;--------------------------------------------------------------------------     
.MODEL SMALL
.STACK 100
.DATA
 MSG1 DB 13,10,"QUANTITY (UNIT): $"
 MSG2 DB 13,10,"UNIT PRICE (RM):$"
 MSG3 DB 13,10,"TOTAL AMOUNT IS RM$"
 IMSG DB 13,10,"INVALID INPUT! ENTER DIGIT ONLY!$"
 QTY DB 0
 UP DB 0
 TOT DB 0
 TEN DB 10
 Q   DB 0   
 R   DB 0
.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX

 ;---OUTPUT STRING:09H (MSG1)
 QUANTITY:
    MOV AH,09H
    LEA DX,MSG1
    INT 21H
    ;---INPUT BYTE:01H
    MOV AH,01H  
    INT 21H ;AL=ASCII-8(38H)
    ;SUB AL,30H,This process do in the result
    ;---MOVE USER INPUT FROM AL TO QTY
    ;THIS IS INTERNAL OPERATION, SO NO NEED INT 21H, 
    ;BECAUSE THIS DID NOT USE INPUT AND OUTPUT FUNCTION
    MOV QTY,AL ;#QTY=38H 
    JMP CHECK 
    
 CHECK:
    CMP QTY,"0"
    JAE CHECK2
    JB PRINTI
 CHECK2:
    CMP QTY,"9"
    JBE UNITPRICE
    JB PRINTI
 PRINTI:
    MOV AH,09H
    LEA DX,IMSG
    INT 21H
 
    JMP QUANTITY


 ;---OUTPUT STRING:09H (MSG2)
 UNITPRICE:
 MOV AH,09H
 LEA DX,MSG2
 INT 21H
 ;---INPUT BYTE:01H
 MOV AH,01H
 INT 21H ;AL = ASCII - 5 (35H)
 ;---MOVE USER INPUT FROM AL TO UP
 MOV UP,AL ;#UP=35H
 JMP CHECKUP

 CHECKUP:
    CMP UP,"0"
    JAE CHECKUP2
    JB PRINTIUP
 CHECKUP2:
    CMP UP,"9"
    JBE CALC
    JB PRINTIUP
 PRINTIUP:
    MOV AH,09H
    LEA DX,IMSG
    INT 21H
    JMP UNITPRICE
CALC:
;OUTPUT STRING:09H (MSG3)
    MOV AH,09H
    LEA DX,MSG3
    INT 21H
 ;---CALCULATION
 ;---(1) CONVERT HEX TO DEC: -30H, FOR QTY & UP (HEX>DEC)
 SUB QTY,30H ;QTY=QTY-30H=8H/8D/8
 SUB UP,30H ;UP=UP-30H=5H/5D/5
 ;---(2) CLEAR AX (REMEMBER CLEAR AX BEFORE CALCULATION)
 MOV AX,0 ;AX=0
 ;---(3) MOVE UP TO AL (MULTIPLICANT) QTY TO AL OR AX
 MOV AL,QTY ;AL=8
 ;---(4) MULTIPLY WITH QTY(MULTIPLIER)(CANNOT PUT VALUE ,ONLY CAN PUT VARIABLE)
 MUL UP ;AX= AL*UP = 8*5 = 40 
 ;---(5) MOVE RESULT FROM AL TO TOT
 MOV TOT,AL ;TOT=40

;----SEPERATE 40 INTO 4 & 0----;
;          4 -Q(AL)
;(DL)- 10)40 -AL (TOTAL)
;          0 -R(AH)
;----(6) MOVE DIVIDED TO AL
MOV AL,TOT ;AL=40
;---(7) DIVIDE DIVIDEND BY DIVISOR (;MOV DL,TEN; THIS NO NEED WRITE)
DIV TEN ;AX= AX/TEN =40   RQ => 0(AH=R),4(AL=Q) 
;8)MOVE RESULT INTO Q & R
MOV Q,AL ;Q=4
MOV R,AH ;R=0
;9) DEC > HEX
ADD Q,30H ;Q=Q+30H=34H
ADD R,30H ;R=R+30H=30H
;---OUTPUT BYTE:02H (Q)
MOV AH,02H    
MOV DL,Q   ;DL=Q=34H(ASCII-4)
INT 21H
;--OUTPUT BYTE:02H (R)
MOV AH,02H
MOV DL,R   ;DL=R=34H(ASCII-0)
INT 21H

 MOV AH,4CH
 INT 21H
MAIN ENDP
END MAIN
;----------------P3Q3C.ASM  (QTY*UP=TOTAL)---------------------------------------
;               ASCII    COMPUTER          HEX > DEC         DEC 
; USER INPUT      1        31H              -30H           1H/1D/1  X 10
; USER INPUT      5        35H              -30H           5H/5D/5   + 5
;                                                               15
; USER INPUT      7        37H              -30H           7H/7D/7
;                                                              105  15*7=105
;       
;                                                                10-Q1
;                                                            10)105
;                                                                 5-R1  
;                               
;                                                                1 -Q2
;                                                            10)10 -Q1
;                                                                0 -R2
;
;      Q2=31H,R2=30H,R1=35H                 +30H           Q2=1,R2=0,R1=5
;      ASCII: 1 0 5
;                                         DEC>HEX     
;;----------------------------------------------------------------------------------------
.MODEL SMALL
.STACK 100
.DATA
 MSG1 DB "QUANTITY (UNIT): $"
 MSG2 DB 13,10,"UNIT UPCE (RM):$"
 MSG3 DB 13,10,"TOTAL AMOUNT IS RM$"
 QTY1 DB 0
 QTY2 DB 0
 UP DB 0
 TOT DB 0
 TEN DB 10
 Q1   DB 0   
 R1   DB 0
 Q2   DB 0
 R2   DB 0
.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX

 ;---OUTPUT STRING:09H (MSG1)
 MOV AH,09H
 LEA DX,MSG1
 INT 21H
 ;---INPUT BYTE:01H
 MOV AH,01H  
 INT 21H ;AL=ASCII-1(31H)
 ;---MOVE USER INPUT FROM AL TO QTY
 MOV QTY1,AL ;#QTY=38H
 ;---INPUT BYTE:01H
 MOV AH,01H  
 INT 21H ;AL=ASCII-5(35H)
 ;MOVE USER INPUT FROM AL TO QTY2
 MOV QTY2,AL ;QTY2=35H 
 
 ;---OUTPUT STRING:09H (MSG2)
 MOV AH,09H
 LEA DX,MSG2
 INT 21H
 ;---INPUT BYTE:01H
 MOV AH,01H
 INT 21H ;AL = ASCII - 7 (37H)
 ;---MOVE USER INPUT FROM AL TO UP
 MOV UP,AL ;#UP=37H

;OUTPUT STRING:09H (MSG3)
    MOV AH,09H
    LEA DX,MSG3
    INT 21H


 ;---CALCULATION
 ;---(1) CONVERT HEX TO DEC: -30H, FOR QTY & UP (HEX>DEC)
 SUB QTY1,30H ;QTY1=QTY1-30H=1H/1D/1
 SUB QTY2,30H ;QTY2=QTY2-30H=5H/5D/5
 SUB UP,30H ;UP=UP - 30H  =7H/7D/7
 ;---(2) CLEAR AX (REMEMBER CLEAR AX BEFORE CALCULATION)
 MOV AX,0 ;AX=0
 ;---(3) MOVE UP TO AL (MULTIPLICANT) (QTY1) TO AL OR AX
 MOV AL,QTY1 ;AL=1
 ;---(4) MULTIPLY WITH QTY(MULTIPLIER)(CANNOT PUT VALUE ,ONLY CAN PUT VARIABLE)
 MUL TEN ;AX=AL * TEN = 1*10 = 10  
 ;---(5)ADD QTY1 IN TEN BASIS WITH QTY2
 ADD AL,QTY2 ; AL=AL+QTY2=10+5=15
 ;---(6) MULTIPLY MULTICAND WITH MULTIPLIER (UP)
 MUL UP      ;AX=AL*UP=15*7=105 (1 BYTE=MAX  FFH=255D)
 ;---(7) MOVE RESULT FROM AL TO TOT
 MOV TOT,AL ;TOT=105
;----------SEPERATE 105 INTO 10 & 5
;----(8) MOVE DIVIDED TO AL
MOV AL,TOT ;AL=105
;---(9) DIVIDE DIVIDEND BY DIVISOR
DIV TEN ;AX= AX/TEN = 105/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
;(10)MOVE RESULT INTO Q1 & R1
MOV Q1,AL ;Q1=10
MOV R1,AH ;R1=5
;----------SEPERATE 10 INTO 1 & 0
;----(11) MOVE DIVIDED TO AL
MOV AX,0 ;AX=0
MOV AL,Q1 ;AL=10
;---(12) DIVIDE DIVIDEND BY DIVISOR
DIV TEN ;AX= AX/TEN = 10/10  =R2Q2=>0(AH=R2),1(AL=Q2)
;----(13) MOVE RESULT INTO Q2 & R2
MOV Q2,AL ;Q2=1
MOV R2,AH ;R2=0 debug
;----(14)DEC > HEX
ADD Q2,30H ;Q2=Q2+30H=31H
ADD R2,30H ;R2=R2+30H=30H
ADD R1,30H ;R1=R1+30H=35H
;---OUTPUT BYTE:02H (Q2)
MOV AH,02H    
MOV DL,Q2   ;DL=Q2=31H(ASCII-1)
INT 21H
;--OUTPUT BYTE:02H (R2)
MOV AH,02H
MOV DL,R2   ;DL=R2=30H(ASCII-0)
INT 21H
;--OUTPUT BYTE:02H (R1)
MOV AH,02H 
MOV DL,R1  ;DL=R1
INT 21H

 MOV AH,4CH
 INT 21H
MAIN ENDP
END MAIN
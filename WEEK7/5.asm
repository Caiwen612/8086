;IN WEEK 5: I/O BYTE / STRING, 
;           FUNCTION CODE:01H(IB),02H(OB),07H(IB-PSW),
;                         09H(OS),0AH(IS),4CH(TERMINATE RUN)
;IN WEEK 6: CALC - 1 digit, 2 digits , 3 digits
;IN WEEK 7: LOOP INSTRUCTION
;           DEFINITION: REPAT A GROUP OF INSTRUCTIONS FOR CX TIME
;           CHARACTERISTIC: - CX = NO OF TIMES TO REPEAT
;                           - SET CX = MAX, IT WILL DECREMENT 
;                             AFTER EACH LOOP INSTRUCTION
;----------------------------------------------------------------
;(1)USING 01H/07H TO GET USER PSW (3 DIGITS)
; 	.DATA
;	   PSW1 DB 0
;	   PSW2 DB 0
;	   PSW3 DB 0
;	.CODE
;          MOV AH,07H
;          INT 21H
;          MOV PSW1,AL
;          MOV AH,07H
;          INT 21H
;          MOV PSW2,AL
;          MOV AH,07H
;          INT 21H
;          MOV PSW3,AL
;---------------------------
;(2)USING 01H/07H TO GET USER PSW (3 DIGITS), WITH LOOP 
;	.DATA
;	   PSW DB "A","B","C"  ;PSW[0]="A", PSW[1]="B",PSW[2]="C"
;	.DATA
;          	MOV CX,3	;CX=3
;		MOV SI,0	;SI=0
;           GETPSW:
; 		MOV AH,07H
;		INT 21H		;AL="1"     > "2"	 > "3"
;		MOV PSW[SI],AL	;PSW[0]="1" > PSW[1]="2" > PSW[2]="3"
; 		INC SI		;SI=1	    > 2		 > 3
;		LOOP GETPSW	;CX=2	    > 1		 > 0
;
;----------------------------------------------------------------  
.MODEL SMALL
.STACK 100
.DATA
 PSW1 DB 0
 PSW2 DB 0
 PSW3 DB 0
.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX
 ;----GETPSW
 MOV AH,07H
 INT 21H
 MOV PSW1,AL
 MOV AH,07H
 INT 21H
 MOV PSW2,AL
 MOV AH,07H
 INT 21H
 MOV PSW3,AL

 MOV AH,4CH
 INT 21H
MAIN ENDP
 END MAIN
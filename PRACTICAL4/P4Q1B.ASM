.MODEL SMALL 
.STACK 100 
.DATA
 ITEM1 DB 1,2,3 ;ITEM1 DB 3 DUP(0)
 
.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX

;---CLEAR AX (IMPORTANT STEP)
MOV AX,0
 ;---LOOP FOR ADD VALUE
 MOV CX,3  
 MOV SI,0
CALC:
 ADD AL,ITEM1[SI]
 INC SI
 LOOP CALC
;---DEC > HEX
 ADD AL,30H
;---OUTPUT BYTE:02H
 MOV AH,02H
 MOV DL,AL ;DL=AL=36H=ASCII-6
 INT 21H

 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN
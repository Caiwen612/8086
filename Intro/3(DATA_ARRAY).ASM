;TO GET 20 INPUT BYTE; MOV AH,01H   X20 TIMES
;                      INT 21H      X20 TIMES
;USE ARRAY MORE EFFICIENT INSTEAD of YOU WRITE this CODE(line1-line2) 20 TIMES
;
;Every array must have 2 control information ,max and act
;      <-------------ARRAY--------->
;      |MAX|ACT|Q|W|E|R|T|Y|0|0|0|0| 
;               <-----ARRAYDATA---->
;note：everything start from 0   
; ARRAY[0] = MAX : maximum value of the array.
; ARRAY[1] = ACT(Actual number)(this is a variable,can change what you want) = 6 : how many value key in by user. for this case,the value is Q W E R T Y
; ARRAY[2] == ARRAYDATA[0] == "Q"
; ARRAYDATA[MAX-1] = ENTER KEY (why need (max -1) because enter key also consider one character) 
;so you can only key in 9 character + 1 enter key if your max data is 10.
;------------------------------
; USER = ASCII CODE = ASCII 6
; COMPUTER RECEIVE HEX = 36H
; TO SHOW NUM (ASCII), CONVERT DEC TO HEX (+30H) 
; TO SHOW HEX (ASCII), CONVERT HEX TO DEC(-30H)
;------------------------------------

;--------------------------------------------
.MODEL SMALL 
.STACK 100 
.DATA
 MSG            DB      "ENTER YOUR NAME:$"
 NL             DB      13,10,"$"
 ARRAY          LABEL   BYTE
 MAX            DB      10
 ACT            DB      ?
 ARRAYDATA      DB      10 DUP (0); 0,0,0,0,0,0,0,0,0,0,0
;ARRAYDATA     DB      0,0,0,0,0,0,0,0,0,0,0

.CODE
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX
 ;----OUTPUT STRING:09H
 MOV AH,09H
 LEA DX,MSG
 INT 21H
 ;----INPUT STRING:0AH
 MOV AH,0AH
 LEA DX,ARRAY
 INT 21H
 ;----NEWLINE
 MOV AH,09H
 LEA DX,NL
 INT 21H

;This two is same ,see which you prefer
 ;--OUTPUT BYE:02H
 MOV AH,02H
 MOV DL,ARRAY[2]
 INT 21H
 ;--OUTPUT BYE:02H
 MOV AH,02H
 MOV DL,ARRAYDATA[0]
 INT 21H
;----NEWLINE
 MOV AH,09H
 LEA DX,NL
 INT 21H


;This show how many value type by user 
; --OUTPUT BYE:02H
 ADD ACT,30H ;convert dec to hex
 MOV AH,02H
 MOV DL,ACT
 INT 21H 


;  ;--OUTPUT BYE:02H
;  MOV AX,0
;  MOV AL,ARRAY[1] 
;  ADD AL,30H
;  MOV AH,02H
;  MOV DL,ARRAY[1] ;display how many item inslide in array
;  INT 21H


 MOV AH,4CH
 INT 21H
MAIN ENDP
 END MAIN
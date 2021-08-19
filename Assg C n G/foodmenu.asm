include 'A.inc'
.MODEL SMALL
.STACK 100
.DATA
 F_MENU              DB "Below is our food Menu"
                     DB 13,10, "|~ _  _  _|  |\/| _._    "
                     DB 13,10, "|~(_)(_)(_|  |  |}_| ||_|"      
                     DB 0DH,0AH,13,10,"[1] Nasi Lemak RM1.00 "
                     DB 13,10,        "[2] Sandwidth  RM2.00 "
                     DB 13,10,        "[3] Sandwidth  RM3.00 "
                     DB 13,10,        "[4] Sandwidth  RM4.00 "
                     DB 13,10,        "[5] Salad      RM5.00 $"
 F_PRICE             DB 1,2,3,4,5
 F_CHOOSE            DB 13,10,13,10,"PLEASE CHOOSE WHAT YOU WANT: $" ;1
 F_QUANTITY          DB 13,10,13,10,"PLEASE CHOOSE YOUR QUANTITY(0-9): $" ;10
 I_CHOOSE            DB 1 DUP(0)
 I_QUANTITY          DB 2 DUP(0)
 F_CHOOSE2           DB "DO YOU WANT TO MORE? (Y/N)"
.CODE 
MAIN PROC
 MOV AX,@DATA 
 MOV DS,AX

PRINT F_MENU
CALL NEXT_LINE           
 ;Display Food Menu
 MOV AH,09H
 LEA DX,F_MENU
 INT 21H

 ;DISPLAY USER SELECTION
 MOV AH,09H
 LEA DX,F_CHOOSE
 INT 21H

 ;GET USER SELECTION
 MOV AH,01H
 INT 21H
 MOV I_CHOOSE,DL

 ;DISPLAY USER QUANTITY
 MOV AH,09H
 LEA DX,F_QUANTITY
 INT 21H

 ;GET USER QUANTITY
 MOV AH,01H
 INT 21H
 MOV I_QUANTITY,DL
 MOV AH,01H

 ;VALIDATE USER SELECTION AND QUANTITY MUST BE NUMBER(!)



 ;COMPARE SELECTION
;  MOV I_CHOOSE,SI
;  CMP LIST[SI],1
;  JE PRICE1
   

;  MOV I_CHOOSE,SI
;  CMP LIST[SI],2
;  JE PRICE2

;  MOV I_CHOOSE,SI
;  CMP LIST[SI],3
;  JE PRICE3

;  MOV I_CHOOSE,SI
;  CMP LIST[SI],4
;  JE PRICE4

;  MOV I_CHOOSE,SI
;  CMP LIST[SI],5
;  JE PRICE5

 
 

 



 MOV AH,4CH
 INT 21h
MAIN ENDP
DEFINE_NEXT_LINE
 END MAIN
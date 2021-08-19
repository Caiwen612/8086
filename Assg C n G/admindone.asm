.MODEL SMALL
.STACK 100
.DATA
 ;ADMIN PAGES VARIABLE;
 ;R=Register,IS=input string, 
 R_STR1          DB "Welcome to register pages$"
 R_STR2          DB 13,10,13,10,"Please key in your founder username and boss password"
                 DB 13,10,"PLEASE KEY IN FOUNDER USER NAME: $"
 R_STR3          DB 13,10,"PLEASE KEY IN FOUNDER PASSWORD:  $" 
 ;FOUNDER USERNAME ANMD PASSWORD.
 CW              DB "CAIWEN" 
 YQ              DB "YIQING" 
 R_PASSWORD      DB "CnG#8086"
 ;STRING TO STORE VALUE OF USER
 I_USER          LABEL   BYTE
 MAX_USER        DB       7
 ACT_USER        DB       ?
 USER            DB       7
;STRING TO STORE PASSWORD
;  I_PW            LABEL   BYTE
;  MAX_PW          DB       9  
;  ACT_PW          DB       ?
 PASSWORD        DB      8 DUP(0)
 ;PROMPT MESSAGE
 R_ERROR         DB 13,10,13,10,"Your username did not match with our founder username ^-^$"
 R_PW_ERROR      DB 13,10,13,10,"Your password did not match with our founder password ^-^$"
 R_SUCESSFULL    DB 13,10,"Your login is sucessfully.$"

.CODE 
MAIN PROC
 MOV AX,@DATA 
 MOV DS,AX  

; ;ALLIGN CENTER
; MOV AH,02H 
; MOV BH,00 ;SET PAGE NUMBER 0 
; MOV DH,02 ;SET ROW 2
; MOV DL,20 ;SET COLUMN 20
; INT 10H   ;CALL INTERRUPT SERVICE

;PROMPT WELCOME MESSAGE FOR USER
 MOV AH,09H
 LEA DX,R_STR1
 INT 21H 
 
LOGINUSER:
;PROMPT INPUT MESSAGE FOR USERNAME
 MOV AH,09H
 LEA DX,R_STR2
 INT 21H

;GET USER INPUT 
 MOV AH,0AH 
 LEA DX,I_USER
 INT 21H 
;CHECK WHETHER USERNAME SAME WITH FOUNDERNAME OR NOT
MOV SI,0
CHECK:
    CMP SI,6
    JE DONE
    JNE CHECKCW
CHECKCW:
    MOV BL,CW[SI]
    CMP BL,USER[SI]
    JE NEXT
    JNE CHECKYQ
CHECKYQ:
    MOV BL,YQ[SI]
    CMP BL,USER[SI]
    JE NEXT
    JNE ERROR
NEXT:
    INC SI
    JMP CHECK
ERROR:
    MOV AH,0
    MOV AH,09H
    LEA DX,R_ERROR
    INT 21H
    JMP LOGINUSER

DONE:
    MOV AH,0
    MOV AH,09H
    LEA DX,R_SUCESSFULL
    INT 21H
    JMP LOGINPW ;JUMP PASSWORD

LOGINPW:
;PROMPT INPUT MESSAGE FOR USERPASSWORD
MOV AH,09H
LEA DX,R_STR3
INT 21H

;GET USER PASSWORD (LOOP)
 MOV CX,8
 MOV SI,0
GETUSERPW:
 MOV AH,07H
 INT 21H
 MOV PASSWORD[SI],AL
 MOV AH,02H
 MOV DL,"*"
 INT 21H
 INC SI
 LOOP GETUSERPW
;CHECK WHETHER USER PASSWORD SAME WITH FOUNDER PASSWORD
MOV SI,0
CHECKPW:
    CMP SI,8
    JE DONEPW
    JNE CHECKFPW
CHECKFPW:
    MOV BL,R_PASSWORD[SI] ;SI VERY IMPORTANT
    CMP BL,PASSWORD[SI]
    JE NEXTPW
    JNE ERRORPW
DONEPW:
    MOV AH,0
    MOV AH,09H
    LEA DX,R_SUCESSFULL
    INT 21H
    JMP EXIT

NEXTPW:
    INC SI
    JMP CHECKPW
ERRORPW:
    MOV AH,0
    MOV AH,09H
    LEA DX,R_PW_ERROR
    INT 21H
    JMP LOGINPW

EXIT:
 MOV AH,4CH
 INT 21H
MAIN ENDP
 END MAIN
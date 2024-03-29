.MODEL SMALL
.STACK 100
.DATA
    MSG1 DB "QUANTITY (unit): $"
    UNIT DB ?
    NEWLINE DB 0AH,0DH,"$"
    MSG2 DB "UNIT PRICE (RM): $"
    RM DB ?
    MSG3 DB "TOTAL AMOUNT IS RM$"
    TOTAL DB ?
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    ;OUTPUT STRING:09H
    MOV AH,09H  
    LEA DX,MSG1
    INT 21H
    ;INPUT BYTE:01H
    MOV AH,01H  
    INT 21H
    SUB AL,30H
    MOV UNIT,AL  
    ;NEWLINE
    MOV AH,02H
    MOV DL,NEWLINE 
    INT 21H

    ;OUTPUT STRING:09H
    MOV AH,09H
    LEA DX,MSG2
    INT 21H
    ;INPUT BYTE:01H
    MOV AH,01H 
    INT 21H
    SUB AL,30H
    MOV RM,AL
    ;NEWLINE
    MOV AH,02H
    MOV DL,NEWLINE
    INT 21H

    ;OUTPUT STRING:09H
    MOV AH,09H
    LEA DX,MSG3
    INT 21H
 
    ;process
    MOV AL,UNIT
    MOV BL,RM
    MUL BL ;AL = AL * BL
    ADD AL,30H
    MOV MSG3,AL
    
    ;DISPLAY result
    MOV AH,02H
    MOV DL,MSG3
    INT 21H

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
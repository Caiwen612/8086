.MODEL SMALL 
.STACK 100 
.386
.DATA 
;---MEMBERSHIP
	MSI1 DB 0DH, 0AH, "		    |=========================================|		"
	 DB 0DH, 0AH, "		    |			Join Membership ?			  |		"
	 DB 0DH, 0AH, "		    |-----------------------------------------|		"
	 DB 0DH, 0AH, "		    |										  |     "
	 DB 0DH, 0AH, "		    |	Members of CityCab Transportation	  |		"
	 DB 0DH, 0AH, "		    |   get to enjoy up to 15% per ride!!	  |		"
	 DB 0DH, 0AH, "		    |										  |		"
	 DB 0DH, 0AH, "		    |			   Interested?			      |		"
	 DB 0DH, 0AH, "		    |						  				  |		"
	MSI10 DB 0DH, 0AH, "	    |=========================================|		"
	MSI11 DB 0DH, 0AH, " 	    		Please ENTER (Y/N): $ 				 	"
	;-----------------VALIDATE ERROR MSI------------------------------------ ;
	MSI_CHOICEVLD	DB	"	PLEASE ENTER THE AVAILABLE characters only(Y/N): $	"
	PAUSEMSI			DB  "		 Press any key to continue . . . . $	"
	
	;VARIABLE USED TO STORE USER'S DESCISION ON JOINING MEMBERSHIP
	I_CONTINUEJOIN				LABEL	BYTE
	MAX_CONTINUEJOIN		 	 DB		 2	
	ACT_CONTINUEJOIN 			 DB		 ?	
	CONTINUEJOIN				 DB		 2 DUP(0)

.CODE 
MAIN PROC
 MOV AX,@DATA 
 MOV DS,AX 

 MEMBERSHIPFUNCTION:
    ;CALL NEW LINE
	MOV AH, 02H
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H                 
                     
	MOV AH, 09H	; DISPLAY MSI1-MSI11
	LEA DX, MSI1
	INT 21H
	
	;CHECK USER INPUT
	MOV AH, 0AH
	LEA DX, I_CONTINUEJOIN
	INT 21H   
	
	MOV SI, 0
CONTINUESELECTIONJOIN:
	CMP CONTINUEJOIN[SI],79h
	JE CAPLOCKJOIN
	CMP CONTINUEJOIN[SI],'n'
	JE CAPLOCKJOIN
	CMP CONTINUEJOIN[SI],'Y'
	JE DISPLAYPAYMENTINTERFACE    ;  Proceed to payment interface if user enter Y or N
	CMP CONTINUEJOIN[SI],'N'
	JE DISPLAYMENUINTERFACE
    JNE VALIDATIONMSI_JOIN  
    
    ;IF USER ENTER LOWER CASE
CAPLOCKJOIN:
    SUB CONTINUEJOIN[SI],20H
    JMP CONTINUESELECTIONJOIN
	
VALIDATIONMSI_JOIN:   
    ;CALL NEW LINE
	MOV AH, 02H
	MOV DL,0DH
	INT 21H
	MOV DL, 0AH
	INT 21H   
	      
	;DISPLAY VALIDATION MESSAGE
    MOV AH, 09H
    LEA DX, MSI_CHOICEVLD
    INT 21H
    XOR BX, BX
    MOV AH, 0AH
    INT 21H        
    MOV SI, AX
    JMP CONTINUESELECTIONJOIN  


 MOV AH,4CH
 INT 21H
MAIN ENDP
 END MAIN
.MODEL SMALL 
.STACK 100 
.DATA
;-------------------WELCOME PAGES-----------------------;
WELCOME_TXT  DB    13,10,"  #####                       "
             DB    13,10," #     #  ####  #    # ###### "
             DB    13,10," #       #    # ##  ## #      "
             DB    13,10," #       #    # # ## # #####  "
             DB    13,10," #       #    # #    # #      "
             DB    13,10," #     # #    # #    # #      "
             DB    13,10,"  #####   ####  #    # ###### "
             DB    13,10,"                              "
             DB    13,10,"             #    #           "
             DB    13,10,"             ##   #           "
             DB    13,10,"             # #  #           "
             DB    13,10,"             #  # #           "
             DB    13,10,"             #   ##           "
             DB    13,10,"             #    #           "
             DB    13,10,"                              "
             DB    13,10,"  #####                       "
             DB    13,10," #     # #####    ##   #####  "
             DB    13,10," #       #    #  #  #  #    # "
             DB    13,10," #  #### #    # #    # #####  "
             DB    13,10," #     # #####  ###### #    # "
             DB    13,10," #     # #   #  #    # #    # "
             DB    13,10,"  #####  #    # #    # #####  "
             DB    13,10," Press any key to continue . . . $ "            
  
.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX 

 MOV AH,09H
 LEA DX,WELCOME_TXT
 INT 21H

 ;PRESS ANY KEY TO CONTINUE
 PUSH CX
 PUSH AX
 PUSH DX
 PUSH BX

 MOV AH,08H
 INT 21H

 POP BX
 POP AX
 POP DX
 POP CX
 
 ;CLEAR SCREEN
 MOV AX, 0600H
 MOV BH,71H    ;COLOR PROBLEMS
 MOV CX, 0000H ;COLOR PROBLEM
 MOV DX,174FH
 INT 10H 


 
 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN
.MODEL SMALL 
.STACK 100 
.DATA 
 ;--------------LOGIN & REGISTER----------;
MAIN_MENU DB 13,10,"                         ******                 ********                     "
          DB 13,10,"                       **////**               **//////**                     "  
          DB 13,10,"                       **    //    *******    **      //                     "
          DB 13,10,"                       /**         //**///**  /**                            "
          DB 13,10,"                       /**          /**  /**  /**    *****                   "
          DB 13,10,"                       //**    **   /**  /**  //**  ////**                   "
          DB 13,10,"                       //******    ***  /**   //********                     "
          DB 13,10,"                       //////    ///   //     ////////                       "
          DB 13,10,13,10,"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              "
          DB 13,10,13,10,"             WELCOME TO COME N GRAB BREAKFAST RESTAURANT              "
          DB 13,10,13,10,"             @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "
          DB 13,10,"                           [1] Admin/Staff                            "
          DB 13,10,"                           [2] Customer                               "    
          DB 13,10,"                           [3] Guess                                 $"
LR_TXT1   DB 13,10,13,10,"                         ENTER YOUR CHOICES: $                        "
LR_CHOICE DB 1 dup(0)


.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX  

 ;PROMPT MENU   
 MOV AH,09H
 LEA DX,MAIN_MENU
 INT 21H

 ;PROMPT L_R OPTION
 MOV AH,09H
 LEA DX,LR_TXT1
 INT 21H

 ;GET OPTION FROM USER
 MOV AH,01H
 INT 21H
 MOV LR_CHOICE,AL

 ;COMPARE SELECTION 
 CMP LR_CHOICE,"1" 
 JE ADMIN
 
;  CMP LR_CHOICE,"2"
;  JE 

;  CMP,LR_CHOICE,"3"
;  JE


 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN
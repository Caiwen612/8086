.MODEL SMALL 
.STACK 100
.386 
.DATA
;---------------------------------------------------------GLOBAL VARIABLE-------------------------------;
LOGO      DB 13,10,      "                         ******                 ********                     "
          DB 13,10,      "                       **////**               **//////**                     "  
          DB 13,10,      "                       **    //    *******    **      //                     "
          DB 13,10,      "                       /**         //**///**  /**                            "
          DB 13,10,      "                       /**          /**  /**  /**    *****                   "
          DB 13,10,      "                       //**    **   /**  /**  //**  ////**                   "
          DB 13,10,      "                       //******    ***  /**   //********                     "
          DB 13,10,      "                       //////    ///   //     ////////  $                    "

;------------------------------------------------------FOOD & DRINK SUBMENU-----------------------------; 

FDSUBMENU       DB 13,10,"     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                "
                DB 13,10,"                  WELCOME TO COME N GRAB BREAKFAST RESTAURANT                "
                DB 13,10,"                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   "
                DB 13,10,"                           [1] FOOD                                          "
                DB 13,10,"                           [2] DRINK                                         "    
                DB 13,10,"                           [3] BACK TO MAINMENU                             $"
FD_CHOICE_TXT   DB   "                         ENTER YOUR CHOICES: $                                   "
;-------------------------------------------------VALIDATE ERROR MSG-----------------------------------;
FD_CHOICEVLD    DB   "             PLEASE ONLY KEY IN THE AVAILABLE SELECTIONS(1-3)$                   "
PAUSEFD         DB   "                       Press any key to continue . . . .  $                      "
;-----------------------------------------------ARRAY TO STORE USER CHOICES FOR FD_MENU----------------;
I_FD_CHOICE     LABEL   BYTE
MAX_FD_CHOICE   DB       2
ACT_FD_CHOICE   DB       ?
FD_CHOICE       DB       2 DUP(0)
 ;----------------------------------------------------------FOOD MENU------------------------------------;
 FOOD_MENU            DB 13,10,13,10, "                              |~ _  _  _|  |\/| _._    "
                      DB 13,10,       "                              |~(_)(_)(_|  |  |}_| ||_|" 
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                    | CHO0SE |        NAME      |    PRICE    |   "
                      DB 13,10,       "                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    "     
                      DB 13,10,       "                    |  [1]   |       Waffle     |   Rm 3.20   |   "
                      DB 13,10,       "                    |  [2]   |      Sandwich    |   RM 3.50   |   "
                      DB 13,10,       "                    |  [3]   |     Nasi Lemak   |   RM 4.70   |   "
                      DB 13,10,       "                    |  [4]   |        Salad     |   RM 5.00   |   "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                          ENTER B GO BACK TO PREVIOUS PAGES $     "
 ;--------------------------------DRINK MENU-------------------------------------------------------------;
 DRINK_MENU           DB 13,10,13,10, "                              |~\ _. _ |   |\/| _  _              "
                      DB 13,10,       "                              |_/| || ||<  |  |(/_| ||_|          "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                    | CHO0SE |      NAME      |    PRICE      |   "
                      DB 13,10,       "                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    " 
                      DB 13,10,13,10, "                    |  [5]   |       Milo     |    RM2.30     |   "
                      DB 13,10,       "                    |  [6]   |      Coffee    |    RM3.90     |   "
                      DB 13,10,       "                    |  [7]   |       Milk     |    RM3.50$    |   "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                          ENTER B GO BACK TO PREVIOUS PAGES$      "
;--------------------------------------------------------------PROMPT MESSAGE----------------------------;
 F_CHOOSE            DB 13,10,13,10,"                          PLEASE CHOOSE WHAT YOU WANT: $" ;
 F_QUANTITY          DB 13,10,13,10,"                       PLEASE CHOOSE YOUR QUANTITY (0-99): $" ;
 F_ORDER_QUANTITY    DB 13,10,      "YOUR QUANTITY IS $"
 F_ORDER_PRICE       DB 13,10,      "YOUR OP IS RM $ "
 F_TOTAL             DB 13,10,13,10,"                          YOUR TOTAL PAYMENT IS RM $"
 F_CURRENT           DB 13,10,13,10,"                          YOUR CURRENT PAYMENT IS RM $"
 F_FLOATING          DB ".00$"
 POINT               DB ".$"
 ZERO                DB "0$"
 F_CONTINUE          DB 13,10,13,10,"                           REMINDER: DON'T WASTE FOOD. ^-^ "
                     DB 13,10,      "                            DO YOU WAN ORDER MORE? (Y/N) $"
 F_SWITCHPAGES       DB 13,10,      "                       DO YOU WANT CONTINUE ORDER IN THIS PAGES? (Y/N)$"
 F_CHOOSEVLD         DB             "                      PLEASE ONLY KEY IN THE AVAILABLE SELECTIONS(1-4)$"
 F_QUANTITYVLD       DB             "                        PLEASE ONLY KEY IN THE RANGE OF NUMBER (1-99).$"
 F_ERRORYNVLD        DB             "                         PLEASE ONLY KEY IN CHARACTER Y OR N.$ "
 ;---------------------------ARRAY TO STORE  SELECTION WHICH TYPE BY USER--------------------------------;
 I_FOOD          LABEL   BYTE
 MAX_FOOD        DB       2
 ACT_FOOD        DB       ?
 FOOD            DB       2 DUP (0)
 ;--------------------ARRAY TO STORE QUANTITY WHICH TYPE BY USER------------;
 I_QUANTITY      LABEL  BYTE
 MAX_QUANTITY    DB      3
 ACT_QUANTITY    DB      ?
 QUANTITY        DB      3 DUP (0) ; 2 0 
  ;----------------------------USER INPUT QUANTITY--------------------------;
 QUANTITY_TENS            DB 0 
 QUANTITY_ONES            DB 0 
;-------------ARRAY TO STORE CONTINUE SELECTION WHICH TYPE BY USER----------;
 I_CONTINUE          LABEL   BYTE
 MAX_CONTINUE        DB       2
 ACT_CONTINUE        DB       ?
 CONTINUE            DB       2 DUP (0)
 ;-------------ARRAY TO STORE SWITCH PAGES SELECTION WHICH TYPE BY USER----------;
 I_SWITCH          LABEL   BYTE
 MAX_SWITCH        DB       2
 ACT_SWITCH        DB       ?
 SWITCH            DB       2 DUP (0)
 ;--------------------------------PRICE LIST--------------------------------;               
 PRICE_LIST          DB 32,35,47,50,23,39,35;0+1=WAFFLE
 PRICE               DB ?
 ;---------------------------CALCULATION PURPOSES---------------------------;
 REALQUANTITY             DB ?
 SUM                      DW ? 
 SUMS                     DB ? ;USE TO SEPARATE DIGITS
 VALUE1                   DB ? ;USE TO SEPARATE DIGITS
 VALUE2                   DB ? ;USE TO SEPARATE DIGITS
 TEN                      DB 10 
 HUNDRED                  DB 100
 TOTAL                    DW ?
 ;------------------------------TOTAL RESULTS-------------------------------;
 ONES                     DB 0 
 TENS                     DB 0 
 HUNDREDS                 DB 0 
 THOUSANDS                DB 0
 TOTAL_ONES               DB 0
 TOTAL_TENS               DB 0
 TOTAL_HUNDREDS           DB 0
 TOTAL_THOUSANDS          DB 0
 ;----------------------------VARIABLE TO STORE EACH DATA-------------------;
 QTYF1                    DB ?
 QTYF1TENS                DB ?
 QTYF1ONES                DB ?
 QTYF2                    DB ?
 QTYF2TENS                DB ?
 QTYF2ONES                DB ?
 QTYF3                    DB ?
 QTYF3TENS                DB ?
 QTYF3ONES                DB ?
 QTYF4                    DB ?
 QTYF4TENS                DB ?
 QTYF4ONES                DB ?
;-----------------------------VARIABLE TO STORE EACH PRICE(PC=PRICE)------------------;
 PC1                      DW ?
 PC1THOUSANDS             DB 0
 PC1HUNDREDS              DB 0
 PC1TENS                  DB 0
 PC1ONES                  DB 0
 PC2                      DW ? 
 PC2THOUSANDS             DB 0
 PC2HUNDREDS              DB 0
 PC2TENS                  DB 0
 PC2ONES                  DB 0
 PC3                      DW ?
 PC3THOUSANDS             DB 0
 PC3HUNDREDS              DB 0
 PC3TENS                  DB 0
 PC3ONES                  DB 0
 PC4                      DW ?
 PC4THOUSANDS             DB 0
 PC4HUNDREDS              DB 0
 PC4TENS                  DB 0
 PC4ONES                  DB 0




.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX

 MOV AH,2
 MOV DL,07H
 INT 21H
DISPLAYFDSUBMENU:
 MOV AH,09H     
 LEA DX,LOGO
 INT 21H
 LEA DX,FDSUBMENU
 INT 21H
 ;PROMPT FOR CHOICE
 ;CALL NEW LINE
  MOV AH,02H
  MOV DL,13
  INT 21H
  MOV DL,10
  INT 21H
  MOV DL,13
  INT 21H
  MOV DL,10
  INT 21H
  ;TEXT COLOR 
  MOV AH, 09H 
  MOV BL, 03H   
  MOV CX, 45 
  INT 10H    
  MOV DX,OFFSET FD_CHOICE_TXT 
  INT 21H
  ;GET USER CHOICE
  MOV AH,0AH
  LEA DX,I_FD_CHOICE
  INT 21H
  ;VALIDATE USER INPUT
  CHECKFDCHOICE:
    CMP FD_CHOICE,"1"
    JAE CHECKFDCHOICE2
    JB FD_CHOICE_ERROR
  CHECKFDCHOICE2:
    CMP FD_CHOICE,"4"
    JAE FD_CHOICE_ERROR
    JB CHOOSEFOODORDRINK
  FD_CHOICE_ERROR:
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,61
       INT 10H
       MOV DX,OFFSET FD_CHOICEVLD
       INT 21H 
       ;CALL NEW LINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;TEXT COLOR 
       MOV AH, 09H ;screen function
       MOV BL, 03H   ;COLOR CODE
       MOV CX, 57 ;HOW MUCH THE COLOR YOU WANT 
       INT 10H    
       MOV DX,OFFSET PAUSEFD 
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
       MOV BH,0H    ;BLACK BACKGROUND(0) ;WHITE FOREGROUND 7
       MOV CX, 0000H 
       MOV DX,184FH
       INT 10H 
       JMP DISPLAYFDSUBMENU
    ;----CHOOSE WHETHER GO FOOD MENU OR DRINK MENU OR MAIN MENU
    CHOOSEFOODORDRINK:
        ;CLEAR SCREEN
         MOV AX, 0600H
         MOV BH,0H    ;BLACK BACKGROUND(0) ;WHITE FOREGROUND 7
         MOV CX, 0000H 
         MOV DX,184FH
         INT 10H
         CMP FD_CHOICE,"1"
         JMP DISPLAYFOODMENU
         CMP FD_CHOICE,"2"
         ;JMP DISPLAYDRINKMENU
        ;  CMP FD_CHOICE,"3"
        ;  JMP DISPLAYMAINMENU

DISPLAYFOODMENU:
    ;DISPLAY FOOD MENU
    MOV AH,09H
    LEA DX,FOOD_MENU
    INT 21H
    ; LEA DX,DRINK_MENU
    ; INT 21H

FOODCHOOSE:
    ;PROMPT FOR USER INPUT FOOD CHOOSE
    MOV AH,09H
    LEA DX,F_CHOOSE    
    INT 21H
    ;CHECK USER INPUT
    MOV AH,0AH
    LEA DX,I_FOOD
    INT 21H
    ;VALIDATE USER INPUT
    CHECKFOODCHOOSE:
        CMP FOOD,"1" 
        JAE CHECKFOODCHOOSE2 
        JB FOODCHOOSEERROR
    CHECKFOODCHOOSE2: 
        CMP FOOD,"5"  
        JAE FOODCHOOSEERROR 
        JB FINDPRICE 
    FOODCHOOSEERROR: ;ASK USER KEY IN AGAIN
       ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,70
       INT 10H
       MOV DX,OFFSET F_CHOOSEVLD
       INT 21H 
       JMP FOODCHOOSE

    FINDPRICE:
        SUB FOOD,30H ;CONVERT HEX TO DEC
        MOV BL,FOOD
        MOV SI,BX
        DEC SI ;This is because array start from 0
        MOV DL,PRICE_LIST[SI]
        ADD DL,30H
        MOV PRICE,DL
        ;--DEBUG PURPOSE--;
        ; ;NEWLINE
        ; MOV AH,02H 
        ; MOV DL,13
        ; INT 21H
        ; MOV DL,10
        ; INT 21H
        ; ;OUTPUT PRICE
        ; MOV DL,PRICE
        ; INT 21H
        JMP FOODQUANTITY

FOODQUANTITY:
    ;PROMPT FOR USER INPUT QUANTITY
    MOV AH,09H
    LEA DX,F_QUANTITY
    INT 21H
    ;CHECK USER INPUT FOR QUANTITY
    MOV AH,0AH
    LEA DX,I_QUANTITY
    INT 21H
    ;VALIDATE QUANTITY
    MOV SI,0
    CHECKQUANTITYFIRSTDIGIT:
     CMP QUANTITY[SI],"1"
     JAE CHECKQUANTITYFIRSTDIGIT2
     JB QUANTITYERROR
    CHECKQUANTITYFIRSTDIGIT2:
     CMP QUANTITY[SI],"9"
     JA QUANTITYERROR
     JBE CHECKHOWMANYDIGIT
    CHECKHOWMANYDIGIT:
     ADD ACT_QUANTITY,30H;CONVERT DEC TO HEX
     CMP ACT_QUANTITY,"1"
     ;SUB ACT_QUANTITY,30H
     JE CHECKACTQUANTITY
     ;-------------------
     ;ADD ACT_QUANTITY,30H;CONVERT DEC TO HEX
     CMP ACT_QUANTITY,"2"
     SUB ACT_QUANTITY,30H
     JE CHECKQUANTITYSECONDDIGIT 
    CHECKQUANTITYSECONDDIGIT:
     INC SI
     CMP QUANTITY[SI],"0"
     JAE CHECKQUANTITYSECONDDIGIT2
     JB QUANTITYERROR
    CHECKQUANTITYSECONDDIGIT2:
     CMP QUANTITY[SI],"9"
     JA QUANTITYERROR
     JBE CHECKACTQUANTITY
    QUANTITYERROR:
     ;CALL NEWLINE
     MOV AH,02H
     MOV DL,13
     INT 21H
     MOV DL,10
     INT 21H
     ;RED COLOR
     MOV AH,09H
     MOV BL,04H
     MOV CX,70
     INT 10H
     MOV DX,OFFSET F_QUANTITYVLD
     INT 21H 
     JMP FOODQUANTITY

    CHECKACTQUANTITY:
        ;CHECK USER INPUT HOW MANY DIGIT FOR QUANTITY
        ADD ACT_QUANTITY,30H
        CMP ACT_QUANTITY,"1"
        JE SINGLE
        CMP ACT_QUANTITY,"2"
        JE DOUBLE

SINGLE:
    MOV AX,0
    MOV QUANTITY_TENS,0 ;PREVIOUS CALCULATION MAYBE HAVE VALUES
    MOV AL,QUANTITY[0]
    MOV QUANTITY_ONES, AL
    JMP CALC
DOUBLE:
    MOV AX,0
    MOV AL,QUANTITY[0]
    MOV QUANTITY_TENS, AL
    MOV BX,0
    MOV BL,QUANTITY[1]  ;LATER TRY BL
    MOV QUANTITY_ONES, BL
    JMP CALC

CALC:
;--CLEAR AX BECOME 0
    MOV AX,0
;--CHECK WHETHER NEED QUANTITY_TENS OR NOT
CHECKQUANTITY_TENS:
    CMP QUANTITY_TENS,0
    JE IGNORE10
    JNE NEED10
NEED10:
    SUB QUANTITY_TENS,30H
    JMP IGNORE10
;---CONVERT HEX TO DEC
IGNORE10:
    SUB QUANTITY_ONES,30H
    SUB PRICE,30H
    ;--CLEAR AX BECOME 0
    MOV AX,0
    ;--MOVE Quantity BECOME MULTIPLICANT
    MOV AL,QUANTITY_TENS
    ;--MULTIPLE 10
    MUL TEN
    ;--ADD QUANTITY_TENS AND QUANTITY_ONES
    ADD AL,QUANTITY_ONES
    ;MOVE QUANTITY TO ONE VARIABLE
    MOV REALQUANTITY,AL
    ;COMPARE TO EACH FOOD CHOOSE AND ADD IN THIS VARIABLE INSLIDE
    JMP ADDFOODQUANTITY
MULPRICEWITHQTY:
    MOV AL,REALQUANTITY
    ;--MOVE PRICE BECOME MULTIPLIER 
    MUL PRICE
    ;--MOV RESULT TO VARIABLE
    MOV SUM,AX
    JMP ADDFOODPRICE
    ;JMP CALC4 (PUT IN ADDFOODPRICE)
    ;JMP ADDTOTAL
    ;ADD SUM,30H MOVE NEXTLINE

ADDFOODQUANTITY:
    CMP FOOD,1
    JE ADDFOOD1
    CMP FOOD,2
    JE ADDFOOD2
    CMP FOOD,3
    JE ADDFOOD3
    CMP FOOD,4
    JE ADDFOOD4
;FIND WHICH FOOD TO ADD IN
ADDFOOD1:
    MOV AL,QTYF1
    ADD AL,REALQUANTITY
    MOV QTYF1,AL
    ;DISPLAY QTYF1
    MOV AX,0
    MOV AL,QTYF1
    DIV TEN
    MOV QTYF1TENS,AL
    MOV QTYF1ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF1TENS,30H
    ADD QTYF1ONES,30H
    ;PROMPT
    MOV AH,09H
    LEA DX,F_ORDER_QUANTITY
    INT 21H
    MOV AH,02H
    MOV DL,QTYF1TENS
    INT 21H
    MOV DL,QTYF1ONES
    INT 21H
    JMP MULPRICEWITHQTY
ADDFOOD2:
    MOV AL,QTYF2
    ADD AL,REALQUANTITY
    MOV QTYF2,AL
    ;DISPLAY QTYF2
    MOV AX,0
    MOV AL,QTYF2
    DIV TEN
    MOV QTYF2TENS,AL
    MOV QTYF2ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF2TENS,30H
    ADD QTYF2ONES,30H
    ;PROMPT
    MOV AH,09H
    LEA DX,F_ORDER_QUANTITY
    INT 21H
    MOV AH,02H
    MOV DL,QTYF2TENS
    INT 21H
    MOV DL,QTYF2ONES
    INT 21H
    JMP MULPRICEWITHQTY
ADDFOOD3:
    MOV AL,QTYF3
    ADD AL,REALQUANTITY
    MOV QTYF3,AL
    ;DISPLAY QTYF2
    MOV AX,0
    MOV AL,QTYF3
    DIV TEN
    MOV QTYF3TENS,AL
    MOV QTYF3ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF3TENS,30H
    ADD QTYF3ONES,30H
    ;PROMPT
    MOV AH,09H
    LEA DX,F_ORDER_QUANTITY
    INT 21H
    MOV AH,02H
    MOV DL,QTYF3TENS
    INT 21H
    MOV DL,QTYF3ONES
    INT 21H
    JMP MULPRICEWITHQTY
ADDFOOD4:
    MOV AL,QTYF4
    ADD AL,REALQUANTITY
    MOV QTYF4,AL
    ;DISPLAY QTYF2
    MOV AX,0
    MOV AL,QTYF4
    DIV TEN
    MOV QTYF4TENS,AL
    MOV QTYF4ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF4TENS,30H
    ADD QTYF4ONES,30H
    ;PROMPT
    MOV AH,09H
    LEA DX,F_ORDER_QUANTITY
    INT 21H
    MOV AH,02H
    MOV DL,QTYF4TENS
    INT 21H
    MOV DL,QTYF4ONES
    INT 21H
    JMP MULPRICEWITHQTY  

ADDFOODPRICE:
    CMP FOOD,1
    JE ADDFOODPRICE1
    CMP FOOD,2
    JE ADDFOODPRICE2
    ; CMP FOOD,3
    ; JE ADDFOODPRICE3
    ; CMP FOOD,4
    ; JE ADDFOODPRICE4  
ADDFOODPRICE1:
    MOV AX,PC1
    ADD AX,SUM
    MOV PC1,AX
DISPLAYF1PRICE:
        CALC4PC1:
            CMP PC1,999
            JA SEPARATE4DIGITPC1
            JB CALC3PC1
        CALC3PC1:
            CMP PC1,99
            JA SEPARATE3DIGITPC1 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC1
        CALC2PC1:
            CMP SUM,9
            JA SEPARATE2DIGITPC1 ;IF > 9 , GO DO ANOTHER CALCULATION
            SEPARATE4DIGITPC1: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC1 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC1THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC1HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC1TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC1ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC1THOUSANDS,30H
                ADD PC1HUNDREDS,30H
                ADD PC1TENS,30H
                ADD PC1ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC1THOUSANDS
                INT 21H
                MOV DL,PC1HUNDREDS
                INT 21H
                MOV DL,PC1TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC1ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP CALC4
            SEPARATE3DIGITPC1: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC1
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC1ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC1HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC1TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC1HUNDREDS,30H
                ADD PC1TENS,30H
                ADD PC1ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC1HUNDREDS
                INT 21H
                MOV DL,PC1TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC1ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;--ADD THIS VALUE TO TOTAL
                JMP CALC4
            SEPARATE2DIGITPC1:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC1 
                DIV TEN
                MOV PC1TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC1ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC1TENS,30H
                ADD PC1ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC1TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC1ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                JMP CALC4
ADDFOODPRICE2:
    MOV AX,PC2
    ADD AX,SUM
    MOV PC2,AX
DISPLAYF2PRICE:
        CALC4PC2:
            CMP PC2,999
            JA SEPARATE4DIGITPC2
            JB CALC3PC2
        CALC3PC2:
            CMP PC2,99
            JA SEPARATE3DIGITPC2 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC2
        CALC2PC2:
            CMP SUM,9
            JA SEPARATE2DIGITPC2 ;IF > 9 , GO DO ANOTHER CALCULATION
            SEPARATE4DIGITPC2: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC2 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC2THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC2HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC2TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC2ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC2THOUSANDS,30H
                ADD PC2HUNDREDS,30H
                ADD PC2TENS,30H
                ADD PC2ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC2THOUSANDS
                INT 21H
                MOV DL,PC2HUNDREDS
                INT 21H
                MOV DL,PC2TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC2ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP CALC4
            SEPARATE3DIGITPC2: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC2
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC2ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC2HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC2TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC2HUNDREDS,30H
                ADD PC2TENS,30H
                ADD PC2ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC2HUNDREDS
                INT 21H
                MOV DL,PC2TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC2ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;--ADD THIS VALUE TO TOTAL
                JMP CALC4
            SEPARATE2DIGITPC2:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC2 
                DIV TEN
                MOV PC2TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC2ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC2TENS,30H
                ADD PC2ONES,30H
                ;--PROMPT OUTPUT
                MOV AH,09H
                LEA DX,F_ORDER_PRICE
                INT 21H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC2TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC2ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                JMP CALC4





;COMPARE DECIMAL VALUE WHETHER NEED SEPARATE OR NOT
CALC4:
    CMP SUM,999
    JA SEPARATE4DIGIT
    JB CALC3
CALC3:
    ; MOV BL,63h
    CMP SUM,99
    JA SEPARATE3DIGIT ;IF > 99,GO DO SEPARATE 3 DIGITS
    JB CALC2
CALC2:
    CMP SUM,9
    JA SEPARATE2DIGIT ;IF > 9 , GO DO ANOTHER CALCULATION
    JB SINGLEDIGIT         ;IF < 9 , CONTINUE BELOW CODE

ADDTOTAL:
    MOV AX,SUM
    ADD TOTAL,AX
ADDTOTAL4:
    CMP TOTAL,999
    JA SEPARATE4DIGITTOTAL
    JB ADDTOTAL3
ADDTOTAL3:
    CMP TOTAL,99
    JA SEPARATE3DIGITTOTAL
    JB ADDTOTAL2
ADDTOTAL2:
    CMP TOTAL,9
    JA SEPARATE2DIGITTOTAL
    JB SINGLEDIGITTOTAL

SINGLEDIGITTOTAL:
    MOV AX,0
    MOV AX,TOTAL
    MOV TOTAL_ONES,AL
    ;CONVERT DEC TO HEX
    ADD TOTAL_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_TOTAL
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,TOTAL_ONES
    INT 21H
    ;--PROMPT FLOATING
    MOV AH,09H
    LEA DX,F_FLOATING
    INT 21H
    ;--ADD ON FOOD
    JMP FOODCONTINUE

SEPARATE2DIGITTOTAL:;SEPARATE 2 DIGIT INTO TENS AND ONES
    ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
    MOV AX,0
    MOV AX,TOTAL
    DIV TEN
    MOV TOTAL_TENS,AL ;QUOTIENT = 8(TENS)
    MOV TOTAL_ONES,AH ;REMAINDER = 7(ONES)
    ;CONVERT DEC TO HEX
    ADD TOTAL_TENS,30H
    ADD TOTAL_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_TOTAL
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,TOTAL_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    ;--SHOW RESULTS
    MOV AH,02H
    MOV DL,TOTAL_ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--ADD ON FOOD
    JMP FOODCONTINUE 

SEPARATE3DIGITTOTAL: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
    ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
    MOV AX,0
    MOV AX,TOTAL
    DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
    MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
    MOV TOTAL_ONES,AH ;REMAINDER = 0(ONES)
    ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
    ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
    MOV AX,0
    MOV AL,SUMS
    DIV TEN
    MOV TOTAL_HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
    MOV TOTAL_TENS,AH     ;REMAINDER = 2(TENS)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD TOTAL_HUNDREDS,30H
    ADD TOTAL_TENS,30H
    ADD TOTAL_ONES,30H
     ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_TOTAL
    INT 21H
     ;--SHOW RESULT
    MOV AH,02H
    MOV DL,TOTAL_HUNDREDS
    INT 21H
    MOV DL,TOTAL_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,TOTAL_ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,09H
    LEA DX,ZERO
    INT 21H
    ;--ADD ON FOOD
    JMP FOODCONTINUE

SEPARATE4DIGITTOTAL: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
    ;SEPARATE 4 DIGITS BECOME 2 VALUE
    ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
    MOV AX,0
    MOV AX,TOTAL 
    DIV HUNDRED 
    MOV VALUE1,AL
    MOV VALUE2,AH
    ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
    ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
    MOV AX,0
    MOV AL,VALUE1
    DIV TEN
    MOV TOTAL_THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
    MOV TOTAL_HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
    ;SEPARATE VALUE2 INTO TENS AND ONES
    ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
    MOV AX,0
    MOV AL,VALUE2
    DIV TEN
    MOV TOTAL_TENS,AL      ;QUOTIENT = 8(TENS) 
    MOV TOTAL_ONES,AH      ;REMAINDER = 7(ONES)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD TOTAL_THOUSANDS,30H
    ADD TOTAL_HUNDREDS,30H
    ADD TOTAL_TENS,30H
    ADD TOTAL_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_TOTAL
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,TOTAL_THOUSANDS
    INT 21H
    MOV DL,TOTAL_HUNDREDS
    INT 21H
    MOV DL,TOTAL_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,TOTAL_ONES
    INT 21H
     ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--ADD ON FOOD
    JMP FOODCONTINUE

SINGLEDIGIT:;CONVERT DEC TO HEX
    MOV AX,0
    MOV AX,SUM
    MOV ONES,AL
    ;CONVERT DEC TO HEX
    ADD ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_CURRENT
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,ONES
    INT 21H
    ;--PROMPT FLOATING
    MOV AH,09H
    LEA DX,F_FLOATING
    INT 21H
    JMP ADDTOTAL

SEPARATE2DIGIT:;SEPARATE 2 DIGIT INTO TENS AND ONES
    ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
    MOV AX,0
    MOV AX,SUM 
    DIV TEN
    MOV TENS,AL ;QUOTIENT = 8(TENS)
    MOV ONES,AH ;REMAINDER = 7(ONES)
    ;CONVERT DEC TO HEX
    ADD TENS,30H
    ADD ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_CURRENT
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,ONES
    INT 21H
    ;--PUT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP ADDTOTAL

SEPARATE3DIGIT: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
    ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
    MOV AX,0
    MOV AX,SUM
    DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
    MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
    MOV ONES,AH ;REMAINDER = 0(ONES)
    ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
    ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
    MOV AX,0
    MOV AL,SUMS
    DIV TEN
    MOV HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
    MOV TENS,AH     ;REMAINDER = 2(TENS)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD HUNDREDS,30H
    ADD TENS,30H
    ADD ONES,30H
     ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_CURRENT
    INT 21H
     ;--SHOW RESULT
    MOV AH,02H
    MOV DL,HUNDREDS
    INT 21H
    MOV DL,TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--ADD THIS VALUE TO TOTAL
    JMP ADDTOTAL

SEPARATE4DIGIT: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
    ;SEPARATE 4 DIGITS BECOME 2 VALUE
    ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
    MOV AX,0
    MOV AX,SUM
    DIV HUNDRED 
    MOV VALUE1,AL
    MOV VALUE2,AH
    ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
    ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
    MOV AX,0
    MOV AL,VALUE1
    DIV TEN
    MOV THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
    MOV HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
    ;SEPARATE VALUE2 INTO TENS AND ONES
    ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
    MOV AX,0
    MOV AL,VALUE2
    DIV TEN
    MOV TENS,AL      ;QUOTIENT = 8(TENS) 
    MOV ONES,AH      ;REMAINDER = 7(ONES)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD THOUSANDS,30H
    ADD HUNDREDS,30H
    ADD TENS,30H
    ADD ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,F_CURRENT
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,THOUSANDS
    INT 21H
    MOV DL,HUNDREDS
    INT 21H
    MOV DL,TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--ADD THIS VALUE TO TOTAL
    JMP ADDTOTAL




FOODCONTINUE:
    ;PROMPT FOR CONTINUE
    MOV AH,09H
    LEA DX,F_CONTINUE
    INT 21H
    ;CHECK USER INPUT
    MOV AH,0AH
    LEA DX,I_CONTINUE
    INT 21H

MOV SI,0
;FIND DO YOU WANT CONTINUE OR NOT
CONTINUESELECTION:
    CMP CONTINUE[SI],'y'
    JE CAPLOCK
    CMP CONTINUE[SI],'n'
    JE CAPLOCK
    CMP CONTINUE[SI],'Y'
    JE SWITCHMENU
    CMP CONTINUE[SI],'N'
    JE FOODCHOOSE ;CHANGE LATER 
    JNE ERROR_YN_MSG
;IN CASE USER ENTER THE LOWER LETTER
CAPLOCK:
    SUB CONTINUE[SI],20H 
    JMP CONTINUESELECTION
ERROR_YN_MSG:;ASK USER KEYIN AGAIN
    ;CALL NEWLINE
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    ;RED COLOR
    MOV AH,09H
    MOV BL,04H
    MOV CX,61
    INT 10H
    MOV DX,OFFSET  F_ERRORYNVLD
    INT 21H
    JMP FOODCONTINUE

SWITCHMENU:
    MOV AH,09H
    LEA DX,F_SWITCHPAGES
    INT 21H
    ;CHECK USER INPUT
    MOV AH,0AH
    LEA DX,I_SWITCH
    INT 21H
MOV SI,0
;FIND DO YOU WANT CONTINUE OR NOT
SWITCHMENUSELECTION:
    CMP SWITCH[SI],'y'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'n'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'Y'
    JE FOODCHOOSE
    CMP SWITCH[SI],'N'
    ;JE DRINKCHOOSE
    JNE ERROR_YN_MSG
;IN CASE USER ENTER THE LOWER LETTER
CAPLOCKSWITCH:
    SUB SWITCH[SI],20H 
    JMP SWITCHMENUSELECTION
    
    

 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN

.MODEL SMALL 
.STACK 100 
.386 
.DATA 
;----------------------------------------------------WELCOME PAGES VARIABLES--------------------------------------;
  WELCOME_TXT1   DB          " #####                                                                         "
                 DB    13,10,"#     #  ####  #    # ######                                                   "
                 DB    13,10,"#       #    # ##  ## #                                                        "
                 DB    13,10,"#       #    # # ## # #####                                                    "
                 DB    13,10,"#       #    # #    # #                                                        "
                 DB    13,10,"#     # #    # #    # #                                                        "
                 DB    13,10," #####   ####  #    # ######                                                   "
                 DB    13,10,"                                                                               "
                 DB    13,10,"            #    #                                                             "
                 DB    13,10,"            ##   #                                                             "
                 DB    13,10,"            # #  #                                                             "
                 DB    13,10,"            #  # #                                                             "
                 DB    13,10,"            #   ##                                                             "
                 DB    13,10,"            #    #                                                             "
                 DB    13,10,"                                                                               "
                 DB    13,10," #####                                                                         "
                 DB    13,10,"#     # #####    ##   #####                                                    "
                 DB    13,10,"#       #    #  #  #  #    #                                                   "
                 DB    13,10,"#  #### #    # #    # #####                                                    "
                 DB    13,10,"#     # #####  ###### #    #                                                   "
                 DB    13,10,"#     # #   #  #    # #    #                                                   "
                 DB    13,10," #####  #    # #    # #####                                                   $"
  WELCOME_TXT2   DB          "                          #####                                                "
                 DB    13,10,"                         #     #  ####  #    # ######                          "
                 DB    13,10,"                         #       #    # ##  ## #                               "
                 DB    13,10,"                         #       #    # # ## # #####                           "
                 DB    13,10,"                         #       #    # #    # #                               "
                 DB    13,10,"                         #     # #    # #    # #                               "
                 DB    13,10,"                          #####   ####  #    # ######                          "
                 DB    13,10,"                                                                               "
                 DB    13,10,"                                     #    #                                    "
                 DB    13,10,"                                     ##   #                                    "
                 DB    13,10,"                                     # #  #                                    "
                 DB    13,10,"                                     #  # #                                    "
                 DB    13,10,"                                     #   ##                                    "
                 DB    13,10,"                                     #    #                                    "
                 DB    13,10,"                                                                               "
                 DB    13,10,"                          #####                                                "
                 DB    13,10,"                         #     # #####    ##   #####                           "
                 DB    13,10,"                         #       #    #  #  #  #    #                          "
                 DB    13,10,"                         #  #### #    # #    # #####                           "
                 DB    13,10,"                         #     # #####  ###### #    #                          "
                 DB    13,10,"                         #     # #   #  #    # #    #                          "
                 DB    13,10,"                          #####  #    # #    # #####                          $"
  WELCOME_TXT3   DB          "                                                   #####                       "
                 DB    13,10,"                                                  #     #  ####  #    # ###### "
                 DB    13,10,"                                                  #       #    # ##  ## #      "
                 DB    13,10,"                                                  #       #    # # ## # #####  "
                 DB    13,10,"                                                  #       #    # #    # #      "
                 DB    13,10,"                                                  #     # #    # #    # #      "
                 DB    13,10,"                                                   #####   ####  #    # ###### "
                 DB    13,10,"                                                                               "
                 DB    13,10,"                                                              #    #           "
                 DB    13,10,"                                                              ##   #           "
                 DB    13,10,"                                                              # #  #           "
                 DB    13,10,"                                                              #  # #           "
                 DB    13,10,"                                                              #   ##           "
                 DB    13,10,"                                                              #    #           "
                 DB    13,10,"                                                                               "
                 DB    13,10,"                                                   #####                       "
                 DB    13,10,"                                                  #     # #####    ##   #####  "
                 DB    13,10,"                                                  #       #    #  #  #  #    # "
                 DB    13,10,"                                                  #  #### #    # #    # #####  "
                 DB    13,10,"                                                  #     # #####  ###### #    # "
                 DB    13,10,"                                                  #     # #   #  #    # #    # "
                 DB    13,10,"                                                   #####  #    # #    # ##### $"   
  WELCOME_BUTTON DB          "                       Press any key to continue . . . $                       "

 ;--------------LOGIN & REGISTER VARIABLE----------;
  LR_UI           DB 13,10,"                         ******                 ********                     "
                  DB 13,10,"                       **////**               **//////**                     "  
                  DB 13,10,"                       **    //    *******    **      //                     "
                  DB 13,10,"                       /**         //**///**  /**                            "
                  DB 13,10,"                       /**          /**  /**  /**    *****                   "
                  DB 13,10,"                       //**    **   /**  /**  //**  ////**                   "
                  DB 13,10,"                       //******    ***  /**   //********                     "
                  DB 13,10,"                       //////    ///   //     ////////                       "
                  DB 13,10,13,10,"     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              "
                  DB 13,10,13,10,"                  WELCOME TO COME N GRAB BREAKFAST RESTAURANT              "
                  DB 13,10,13,10,"                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "
                  DB 13,10,"                           [1] Admin/Staff                            "
                  DB 13,10,"                           [2] Customer                               "    
                  DB 13,10,"                           [3] Guess                                 $"
  LR_TXT1         DB       "                         ENTER YOUR CHOICES: $                        "
  ;----------------------VALIDATE ERROR MSG--;
  LR_CHOICEVLD    DB   "             PLEASE ONLY KEY IN THE AVAILABLE SELECTIONS(1-3)$                   "
  PAUSELR         DB   "                       Press any key to continue . . . .  $                      "
  ;----STORE USER INPUT----;
  I_LR_CHOICE             LABEL    BYTE
  MAX_LR_CHOICE            DB       2    
  ACT_LR_CHOICE            DB       ?
  LR_CHOICE                DB       2 DUP(0)


 ;--------------------------------------------------ADMIN LOGIN PAGES VARIABLE----------------------------;
 ;--------------------------------------------------ADMIN LOGIN PAGES VARIABLE----------------------------;
   ;ADMIN PAGES VARIABLE; ;L=LOGIN,IS=input string, 
   L_MENU          DB 13,10,      "                         ******                 ********                     " 
                   DB 13,10,      "                       **////**               **//////**                     "  
                   DB 13,10,      "                       **    //    *******    **      //                     "
                   DB 13,10,      "                       /**         //**///**  /**                            "
                   DB 13,10,      "                       /**          /**  /**  /**    *****                   "
                   DB 13,10,      "                       //**    **   /**  /**  //**  ////**                   "
                   DB 13,10,      "                       //******    ***  /**   //********                     "
                   DB 13,10,      "                       //////    ///   //     ////////                       "
                   DB 13,10,13,10,"                             +------------------+                            "
                   DB 13,10,      "                             |   ADMIN LOGIN    |                            "
                   DB 13,10,      "                             -~~~~~~~~~~~~~~~~~~- $                          "
   L_ASKADMIN      DB 13,10,      "DO YOU SURE YOU ARE A ADMIN/STAFF?(Y/N)(Y=CONTINUE/N=GOBACKPREVIOUSMENU): $  "
   L_STR2          DB 13,10,13,10,"           REMINDER: PASSWORD BOX CANNOT USE KEYBOARD BACKSPACE FUNCTION     " 
                   DB 13,10,13,10,"               PLEASE ENTER YOUR FOUNDER ADMIN NAME AND PASSWORD             "
                   DB 13,10,13,10,"                                 ADMINNAME : $                               "
   L_STR3          DB 13,10,13,10,"                                 PASSWORD : $                                " 
   ;VARIABLE TO STORE WHETHER ADMIN CORRECT OR NOT
   I_CONTINUEADMIN          LABEL   BYTE
   MAX_CONTINUEADMIN        DB       2
   ACT_CONTINUEADMIN        DB       ?
   CONTINUEADMIN            DB       2 DUP (0)
   ;(ADMIN/FOUNDER) ADMINNAME AND PASSWORD. #SECRET KEY VARIABLE
   CW                       DB             "CAIWEN" 
   YQ                       DB             "YIQING" 
   L_PASSWORD               DB             "CnG#8086"
   ;STRING(DATA ARRAY) TO STORE VALUE OF ADMIN AND COMPARE
   I_ADMIN                  LABEL   BYTE
   MAX_ADMIN                DB       7
   ACT_ADMIN                DB       ?
   ADMIN                    DB       7
   ;VARIABLE TO STORE PASSWORD AND COMPARE
   ADMINPASSWORD            DB       8 DUP(0)
   ;VARIABLE TO STORE HOW MANY CHANCES LEFT FOR ADMIN
   TRYADMIN                 DB       5
   TRYPW                    DB       3
   ;PROMPT MESSAGE
   L_ERRORADMINVLD          DB             "                         PLEASE ONLY KEY IN CHARACTER Y OR N.$               "
   L_ERROR                  DB             "               YOUR ADMINNAME DID NOT MATCH WITH OUR ADMINNAME ^-^$          "
   L_PW_ERROR               DB             "               YOUR PASSWORD DID NOT MATCH WITH OUR FOUNDER PASSWORD ^-^$    "
   PAUSEAL                  DB             "                            Press any key to continue . .  $                 "
   L_SUCESSFULL             DB             "                              YOUR LOGIN IS SUCESSFULLY.$                                                  "
   L_TRY                    DB 13,10,      "                         YOU LEFT $                                          " 
   L_TRYADMIN               DB             " CHANCES TO TRY ADMINNAME.$                                                  "
   L_TRYPW                  DB             " CHANCES TO TRY PASSWORD.$                                                   "
 

;-----YQ
;---YQ CODE VARIABELE-----------------------;
     ;---MAIN PAGE
      STR1  DB 13,10,13,10," "
            DB 13,10,13,10,"                  ========ENTER YOUR SELECTION (1/2/3)========          "
            DB 13,10,13,10,"                              [1] REGISTER                              "
            DB 13,10,      "                              [2] LOGIN                                 "
            DB 13,10,      "                              [3] EXIT                                  "
            DB 13,10,13,10,"                              CHOICE: $                                 "
     LOGIN_CONTINUE DB       "                    Press any key to continue . . . $                "
     ;---CHOICE
      CHOICE DB 3
      ICHOICE DB 13,10,13,10,"                           INVALID CHOICE !    $                   "
      ICHOICE2 DB 13,10,"                     PLEASE ENTER YOUR CHOICE AGAIN !$                  "
     
     ;---REGISTER PAGE
      STR2 DB 13,10,13,10,"                          +-+-+-+-+-+-+-+-+                              "
           DB 13,10,      "                          |R|E|G|I|S|T|E|R|                              "
           DB 13,10,      "                          +-+-+-+-+-+-+-+-+                              "
           DB 13,10,      "                       ENTER YOUR USERNAME: $                          "
     
     ;---GET USER INPUT
      PSWD  DB 13,10,     "                       ENTER YOUR PASSWORD: $                         "
     
     ;---LOGIN PAGE
     STR3 DB 13,10,13,10,"                         ____ ____ ____ ____ ____                         "
          DB 13,10,      "                        ||L |||O |||G |||I |||N ||                        "
          DB 13,10,      "                        ||__|||__|||__|||__|||__||                        "
          DB 13,10,      "                        |/__\|/__\|/__\|/__\|/__\|  $                      "
     STR4 DB 13,10,      "                       ONLY 3 CHANCES AVAILABLE !   $                         "
     STR5 DB 13,10,13,10,"                       ENTER YOUR USERNAME: $                           "
     
     ;---USERNAME LENGTH
      INAME          LABEL    BYTE
      MAX_UNAME       DB      8
      ACT_UNAME       DB      ?
      UNAME           DB      8 DUP (0)
      UNAME1          DB      8 DUP (0)
     ;---PASSWORD LENGTH
      RPSWD           DB      8 DUP (0)
      LPSWD           DB      8 DUP (0)
     ;---PROMPT MSG
      VRMSG  DB 13,10,13,10,"                         REGISTRATION SUCCESSFUL !$                     "
      VLMSG  DB 13,10,"                         LOGIN SUCCESSFUL !$                            "
      ILMSG  DB 13,10,"                         LOGIN FAILED !$                                "
      VUNAME DB       "                               $                                        "
      IUNAME DB 13,10,"                         INVALID USERNAME !$                            "
      IPSWD  DB 13,10,"                         INVALID PASSWORD !$                            "
      COUNT  DB 0
      COUNT1  DB 0

;-------------------------------------MAIN MENU VARIABLE----------------------------;                  
 MAINMENU             DB 13,10,      "                        .o88b.   d8b   db    d888b                        "
                      DB 13,10,      "                       d8P  Y8   888o  88   88' Y8b                       "
                      DB 13,10,      "                       8P        88V8o 88   88                            "
                      DB 13,10,      "                       8b        88 V8o88   88  ooo                       "
                      DB 13,10,      "                       Y8b  d8   88  V888   88. ~8~                       "
                      DB 13,10,      "                        `Y88P'   VP   V8P    Y888P                        "
                      DB 13,10,      "         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            "
                      DB 13,10,      "                   WELCOME TO COME N GRAB BREAKFAST RESTAURANT            " ;MOVE LOVE TO LEFT HAND SLIDE
                      DB 13,10,      "                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~     "
                      DB 13,10,13,10,"                                [1] BREAKFAST "
                      DB 13,10,      "                                [2] PAYMENT   "
                      DB 13,10,13,10,"                            !!!!!!!!!!!!!!!!!!!!! "
                      DB 13,10,      "                            !   [3] LOG OUT     ! "
                      DB 13,10,      "                            !   [4] SHUT DOWN   ! "
                      DB 13,10,      "                            !!!!!!!!!!!!!!!!!!!!!$"                                              
 MAINMENUCHOICES      DB             "                         ENTER YOUR SELECTION: $                        " ;CHANGE VARIABLE NAMES
 ;----------------------VALIDATE ERROR MSG--;
  MM_CHOICEVLD    DB   "             PLEASE ONLY KEY IN THE AVAILABLE SELECTIONS(1-4)$                   "
  PAUSEMM         DB   "                       Press any key to continue . . . .  $                      "
 ;----STORE USER INPUT----;
  I_MM_CHOICE             LABEL    BYTE
  MAX_MM_CHOICE            DB       2    
  ACT_MM_CHOICE            DB       ?
  MM_CHOICE                DB       2 DUP(0)
  
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
                DB 13,10,"                           [3] BACK TO MAINMENU                              "
                DB 13,10,13,10,"  IMPORTANT: ONLY RECEIVE MAXIMUM TOTAL RM 999.90.                     "
                DB 13,10,      "             ONLY CAN RECEIVE MAXIMUM 99 QUANTITY FOR EACH ITEM.       "
                DB 13,10,      "             PLEASE NO ORDER MORE THAN THIS MAXIMUM VALUE.THANKS.      "
                DB 13,10,      "             THE FINAL INTERPRETATION OF THIS SYSTEMS BELONGS TO CnG.$ "
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
                      DB 13,10,       "                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    "     
                      DB 13,10,       "                    |  [1]   |       Waffle     |   Rm 3.20   |   "
                      DB 13,10,       "                    |  [2]   |      Sandwich    |   RM 3.50   |   "
                      DB 13,10,       "                    |  [3]   |     Nasi Lemak   |   RM 4.70   |   "
                      DB 13,10,       "                    |  [4]   |        Salad     |   RM 5.20   |   "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                          ENTER 8 GO BACK TO PREVIOUS PAGES $     "
 ;--------------------------------DRINK MENU-------------------------------------------------------------;
 DRINK_MENU           DB 13,10,13,10, "                              |~\ _. _ |   |\/| _  _              "
                      DB 13,10,       "                              |_/| || ||<  |  |(/_| ||_|          "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                    | CHO0SE |      NAME      |    PRICE      |   "
                      DB 13,10,       "                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~    " 
                      DB 13,10,       "                    |  [5]   |       Milo     |    RM2.30     |   "
                      DB 13,10,       "                    |  [6]   |      Coffee    |    RM3.90     |   "
                      DB 13,10,       "                    |  [7]   |       Milk     |    RM3.50     |   "
                      DB 13,10,       "                    +-----------------------------------------+   "
                      DB 13,10,       "                          ENTER 8 GO BACK TO PREVIOUS PAGES $     "
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
                     DB 13,10,      "                            DO YOU WANT ORDER MORE? (Y/N) $"
 F_SWITCHPAGES       DB 13,10,      "                       DO YOU WANT CONTINUE ORDER IN THIS PAGES? (Y/N)$"
 F_CHOOSEVLD         DB             "   PLEASE ONLY KEY IN THE AVAILABLE SELECTIONS (1-4 FOR FOOD)(5-7 FOR DRINK)$"
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
 PRICE_LIST          DB 32,35,47,52,23,39,35;0+1=WAFFLE
 PRICE               DB ?
 ;---------------------------CALCULATION PURPOSES---------------------------;
 REALQUANTITY             DB ?
 SUM                      DW ? 
 SUMS                     DB ? ;USE TO SEPARATE DIGITS
 VALUE1                   DB ? ;USE TO SEPARATE DIGITS
 VALUE2                   DB ? ;USE TO SEPARATE DIGITS
 TEN                      DB 10 
 HUNDRED                  DB 100
 THOUSAND                 DW 1000
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
 QTYF1                    DB 0
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
 QTYF5                    DB ?
 QTYF5TENS                DB ?
 QTYF5ONES                DB ?
 QTYF6                    DB ?
 QTYF6TENS                DB ?
 QTYF6ONES                DB ?
 QTYF7                    DB ?
 QTYF7TENS                DB ?
 QTYF7ONES                DB ?
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
 PC5                      DW ?
 PC5THOUSANDS             DB 0
 PC5HUNDREDS              DB 0
 PC5TENS                  DB 0
 PC5ONES                  DB 0
 PC6                      DW ?
 PC6THOUSANDS             DB 0
 PC6HUNDREDS              DB 0
 PC6TENS                  DB 0
 PC6ONES                  DB 0
 PC7                      DW ?
 PC7THOUSANDS             DB 0
 PC7HUNDREDS              DB 0
 PC7TENS                  DB 0
 PC7ONES                  DB 0
;----------------PAYMENT PAGES------------------------------------------;
 CART       DB       "                                   PAYMENT PAGES                         "
            DB 13,10,"                                   ~~~~~~~~~~~~~                         "
            DB 13,10,"          +------------------------------------------------------------+ "
            DB 13,10,"          | QTY         ITEM                                 PRICE(RM) | "
            DB 13,10,"          +------------------------------------------------------------+$ "
 CARTOFF    DB 13,10,"          +------------------------------------------------------------+$ "
 CARTTOTAL  DB 13,10,"                                                    TOTAL    = RM$       "
 ;--DESIGN LATOUT OF ITEMS---;
 S10     DB "          $"
 S2      DB "  |$"
 S3      DB "   |$"
 S4      DB "    |$"
 F1      DB "WAFFLE                                 $"
 F2      DB "SANDWICH                               $"
 F3      DB "NASI LEMAK                             $"
 F4      DB "SALAD                                  $"
 F5      DB "MILO                                   $"
 F6      DB "COFFEE                                 $"
 F7      DB "MILK                                   $"
 ;--------------------------------PROMPT FOR RECEIPT---------------------------------;
 CONFIRMPAY_TXT  DB  13,10, "Y FOR PAYMENT , N FOR GO BACK MAIN MENU"
                 DB 13,10,"DO YOU WANT CONFIRM WANT PAY NOW?(Y/N)$"
 ;----------ARRAY FOR STORE INPUT STRING FROM USER------------;
  I_CONFIRMPAY          LABEL   BYTE
  MAX_CONFIRMPAY        DB       2
  ACT_CONFIRMPAY        DB       ?
  CONFIRMPAY            DB       2 DUP (0)
  ASKUSERPAY_GUIDE      DB 13,10,"PLEASE FOLLOW THIS FORMAT TO KEY IN {RM XXX.Y0}$"
  ASKUSERPAY_TXT        DB 13,10,"ENTER PAYMENT AMOUNT X(NO INCLUDE FLOATING POINT) : $RM"
  R_PAYMENTVLD          DB       "                        PLEASE ONLY KEY IN THE RANGE OF NUMBER (1-999).$"
  ;--------USER INPUT PAYMENT-----;
  REAL_PAYMENT           DW 0
  PAYMENT_HUNDREDS       DB 0
  PAYMENT_TENS           DB 0
  PAYMENT_ONES           DB 0
  VALUE_PAYMENT_HUNDREDS DW 0
  VALUE_PAYMENT_TENS     DW 0
  VALUE_PAYMENT_ONES     DW 0
  I_PAYMENT             LABEL BYTE
  MAX_PAYMENT           DB    4
  ACT_PAYMENT           DB    ?
  PAYMENT               DB    4 DUP(0)
  ASKUSERPAY2_TXT       DB 13,10,"ENTER PAYMENT AMOUNT Y(ONLY ONE FLOATING POINT): $RM0."
  R_PAYMENTFPVLD        DB       "PLEASE ONLY KEY IN NUMBER (0-9).$"
  I_PAYMENT_FP          LABEL BYTE
  MAX_PAYMENT_FP        DB     2
  ACT_PAYMENT_FP        DB     ?
  PAYMENT_FP            DB     2 DUP(0)
  ;-----USER INPUT PAYMENTFP----;
  PAYMENTFP_ONES      DW 0
  ;--RESULT
  CHANGE_ONES               DB 0
  CHANGE_TENS               DB 0
  CHANGE_HUNDREDS           DB 0
  CHANGE_THOUSANDS          DB 0
  PAYMENT_SUCCESS           DB "YOUR PAYMENT IS SUCESSFUL$"
  PAYMENT_CHANGE            DB 13,10,"YOUR CHANGE IS RM $ "
  PAYMENT_WARNING           DB "INSUFFICIENT AMOUNT,SYSTEM WILL REJECT YOUR PAYMENT.^-^$"
  PAYMENT_CHANGENOENOUGH    DB "SORRY, YOU DID NOT PAY ENOUGH MONEY , YOU STILL NEED TO PAY RM$"
  PAUSEPAYMENT              DB "                       Press any key to continue . . . .  $    "
  PAYMENTTHANKYOU           DB 13,10, "THANK YOU FOR YOUR PAYMENT. HOPE TO SEE YOU AGAIN.^-^"
                            DB 13,10, "WISH YOU HAVE A NICE DAYS,DON'T FORGET EAT BREAKFAST EVERY MORNING ^-^."
                            DB 13,10,"FEEL FREE CAN TAKE A LOOK ON OUR HEALTHY AND ABOUT PAGES$"

.CODE 
MAIN PROC 
 MOV AX,@DATA 
 MOV DS,AX
;--------------------------------------------------WELCOME PAGES--------------------------------------------;
 WELCOMEPAGES:
   ;CLS FOR WHOLE SCREEN
   MOV AH, 00H
   MOV AL, 02H
   INT 10H
 LOOPSCENE:
   ;DISPLAY SCENE 1
     MOV AH,09H
     LEA DX,WELCOME_TXT1
     INT 21H
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
     ;TEXT COLOR(BLUE) 
     MOV AH, 09H ;screen function
     MOV BL, 03H   ;COLOR CODE
     MOV CX, 55 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET WELCOME_BUTTON  
     INT 21H
     ;PRESS ANY KEY TO CONTINUE
     ;PUSH stores 16 bit value in the stack.
     PUSH CX
     PUSH AX
     PUSH DX
     PUSH BX
     MOV AH,08H
     INT 21H
     ;POP gets 16 bit value from the stack.
     POP BX
     POP AX
     POP DX
     POP CX
     ;CLEAR SCREEN
     MOV AH, 00H
     MOV AL, 02H
     INT 10H
 
   ;DISPLAY SCENE2
     MOV AH,09H
     LEA DX,WELCOME_TXT2
     INT 21H
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
     ;PRESS ANY KEY TO CONTINUE
     ;TEXT COLOR 
     MOV AH, 09H ;screen function
     MOV BL, 03H   ;COLOR CODE
     MOV CX, 55 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET WELCOME_BUTTON  
     INT 21H
     ;PRESS ANY KEY TO CONTINUE
     ;PUSH stores 16 bit value in the stack.
     PUSH CX
     PUSH AX
     PUSH DX
     PUSH BX
     MOV AH,08H
     INT 21H
     ;POP gets 16 bit value from the stack.
     POP BX
     POP AX
     POP DX
     POP CX
     ;CLEAR SCREEN
     MOV AH, 00H
     MOV AL, 02H
     INT 10H
 
   ;DISPLAY SCENE3
     MOV AH,09H
     LEA DX,WELCOME_TXT3
     INT 21H
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
     MOV AH, 09H ;screen function
     MOV BL, 03H   ;COLOR CODE
     MOV CX, 55 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET WELCOME_BUTTON  
     INT 21H
     ;PRESS ANY KEY TO CONTINUE
     ;PUSH stores 16 bit value in the stack.
     PUSH CX
     PUSH AX
     PUSH DX
     PUSH BX
     MOV AH,08H
     INT 21H
     ;POP gets 16 bit value from the stack.
     POP BX
     POP AX
     POP DX
     POP CX
     ;CLEAR SCREEN
     MOV AH, 00H
     MOV AL, 02H
     INT 10H


;-----------------------------------LOGIN REGISTER MENU PAGES--------------------------------------;
 CLSDISPLAYLRMENU:
   ;CLEAR SCREEN
   MOV AH,00H
   MOV AL,02H
   INT 10H
   JMP DISPLAYLRMENU
 DISPLAYLRMENU:
  ;PROMPT MENU   
   MOV AH,09H
   LEA DX,LR_UI
   INT 21H
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
   MOV AH, 09H ;screen function
   MOV BL, 03H   ;COLOR CODE
   MOV CX, 45 ;HOW MUCH THE COLOR YOU WANT 
   INT 10H    
   MOV DX,OFFSET LR_TXT1  
   INT 21H
  ;GET OPTION FROM USER
   MOV AH,0AH
   LEA DX,I_LR_CHOICE
   INT 21H
  ;VALIDATE USER INPUT
   CHECKLRCHOICE:
    CMP LR_CHOICE,"1"
    JAE CHECKLRCHOICE2
    JB LR_CHOICE_ERROR
   CHECKLRCHOICE2:
    CMP LR_CHOICE,"4"
    JAE LR_CHOICE_ERROR
    JB CHOOSEADMINORCUSTOMER
  ;ERROR MESSAGE
   LR_CHOICE_ERROR:
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
       MOV DX,OFFSET LR_CHOICEVLD
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
       MOV DX,OFFSET PAUSELR
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
        MOV AH, 00H
	    MOV AL, 02H
	    INT 10H
       JMP DISPLAYLRMENU
    ;----CHOOSE WHETHER GO ADMIN , CUSTOMER OR GUEST
    CHOOSEADMINORCUSTOMER:
        ;CLEAR SCREEN
        MOV AH, 00H
	      MOV AL, 02H
	      INT 10H
        ;COMPARE CHOICE
        CMP LR_CHOICE,"1"
        JE ADMINPAGESCONTINUE
        CMP LR_CHOICE,"2"
        JE  CLSDISPLAYCUSTOMER
        CMP LR_CHOICE,"3"
        JE CLSDISPLAYMAINMENU
;--------------------------------------ADMIN LOGIN PAGES------------------------------------;
;--------------------------------------ADMIN LOGIN PAGES------------------------------------;
 ADMINPAGESCONTINUE:
    ;PROMPT FOR CONTINUE
    MOV AH,09H
    LEA DX,L_ASKADMIN
    INT 21H
    ;CHECK ADMIN INPUT
     MOV AH,0AH
     LEA DX,I_CONTINUEADMIN
     INT 21H
 
 MOV SI,0
 ;FIND DO YOU WANT CONTINUE OR NOT
 CONTINUESELECTIONADMIN:
     ;LOWERCASE JUMP TO CAPLOCK
     CMP CONTINUEADMIN[SI],'y'
     JE CAPLOCKADMIN
     CMP CONTINUEADMIN[SI],'n'
     JE CAPLOCKADMIN
     CMP CONTINUEADMIN[SI],'Y'
     JE CLSDISPLAYSTAFFLOGINPAGES
     CMP CONTINUEADMIN[SI],'N'
     JE CLSDISPLAYLRMENU
     JNE ERROR_YN_MSG_CONTINUEADMIN
 ;IN CASE ADMIN ENTER THE LOWER LETTER
 CAPLOCKADMIN:
     SUB CONTINUEADMIN[SI],20H 
     JMP CONTINUESELECTIONADMIN
 ERROR_YN_MSG_CONTINUEADMIN:;ASK ADMIN KEYIN AGAIN
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
     MOV DX,OFFSET L_ERRORADMINVLD
     INT 21H
     JMP ADMINPAGESCONTINUE
 CLSDISPLAYSTAFFLOGINPAGES:
    ;CLEAR SCREEN
    MOV AH, 00H
 	MOV AL, 02H
 	INT 10H
    JMP DISPLAYSTAFFLOGINPAGES
 DISPLAYSTAFFLOGINPAGES:
 TRYAGAINADMIN: ;SEE ADMIN HAVE HOW MANY CHANCES TO ENTER AGAIN
     CMP TRYADMIN,4
     JE TRYADMINCOUNTMSG
     CMP TRYADMIN,3
     JE TRYADMINCOUNTMSG
     CMP TRYADMIN,2
     JE TRYADMINCOUNTMSG
     CMP TRYADMIN,1
     JE TRYADMINCOUNTMSG
     CMP TRYADMIN,0
     JE CLSDISPLAYLRMENU
 LOGINSTAFF:
  ;PROMPT WELCOME MESSAGE FOR ADMIN
  MOV AH,09H
  LEA DX,L_MENU
  INT 21H
  ;PROMPT INPUT MESSAGE FOR ADMINNAME
  MOV AH,09H
  LEA DX,L_STR2
  INT 21H
  ;GET ADMIN INPUT 
  MOV AH,0AH 
  LEA DX,I_ADMIN
  INT 21H 
  ;CHECK WHETHER ADMINNAME SAME WITH FOUNDERNAME OR NOT
  MOV SI,0
  CHECK:
     CMP SI,6
     JE SUCCESS
     JNE CHECKCW
  CHECKCW:
     MOV BL,CW[SI]
     CMP BL,ADMIN[SI]
     JE NEXTADMIN
     JNE CHECKYQ
  CHECKYQ:
     MOV BL,YQ[SI]
     CMP BL,ADMIN[SI]
     JE NEXTADMIN
     JNE ERRORADMIN
  NEXTADMIN:;CHECK ONE CHARACTER BY ONE CHARACTER
     INC SI
     JMP CHECK
  ERRORADMIN:;IF ADMINNAME NOT SAME WITH FOUNDER NAME
     MOV AH,0
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
     ;COLOR RED
     MOV AH, 09H 
     MOV BL, 04H   ;COLOR CODE
     MOV CX, 66    ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET L_ERROR 
     INT 21H
     MOV AH,09H
     DEC TRYADMIN
     JMP TRYAGAINADMIN
 
  TRYADMINCOUNTMSG:;PROMPT COUNT MESSAGE 
     MOV AH,09H
     LEA DX,L_TRY
     INT 21H
     MOV AH,02H
     ADD TRYADMIN,30H
     MOV DL,TRYADMIN
     INT 21H
     SUB TRYADMIN,30H
     MOV AH,09H
     LEA DX,L_TRYADMIN
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
     MOV DX,OFFSET PAUSEAL 
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
      MOV AH, 00H
 	   MOV AL, 02H
 	   INT 10H
     JMP LOGINSTAFF
  SUCCESS:;JUMP PASSWORD
     JMP LOGINADMINPW 
 
 
 TRYAGAINPW: ;SEE ADMIN HAVE HOW MANY CHANCES TO ENTER AGAIN
  CMP TRYPW,2
  JE TRYPWCOUNTMSG
  CMP TRYPW,1
  JE TRYPWCOUNTMSG
  CMP TRYPW,0
  JE CLSDISPLAYLRMENU
 LOGINADMINPW: ;LOGIN PASSWORD
  ;PROMPT INPUT MESSAGE FOR ADMINPASSWORD
  MOV AH,09H
  LEA DX,L_STR3
  INT 21H
 
  ;GET ADMIN PASSWORD (LOOP)
  MOV CX,8
  MOV SI,0
 GETADMINPW:
  MOV AH,07H
  INT 21H
  MOV ADMINPASSWORD[SI],AL
  MOV AH,02H
  MOV DL,"*" ;DISPLAY BY STAR
  INT 21H
  INC SI
  LOOP GETADMINPW
 ;CHECK WHETHER ADMIN PASSWORD SAME WITH FOUNDER PASSWORD
  MOV SI,0
  CHECKPW:
     CMP SI,8
     JE DONEPW
     JNE CHECKFPW
  CHECKFPW:
     MOV BL,L_PASSWORD[SI] ;SI VERY IMPORTANT
     CMP BL,ADMINPASSWORD[SI]
     JE NEXTPW
     JNE ERRORPW
  DONEPW:
     MOV AH,0
     ;CALL NEW LINE
     MOV AH,02H
     MOV DL,13
     INT 21H
     MOV DL,10
     INT 21H
     ;TEXT COLOR 
     MOV AH, 09H ;screen function
     MOV BL, 02H   ;COLOR CODE
     MOV CX, 56 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET L_SUCESSFULL
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
     MOV DX,OFFSET PAUSEAL 
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
     JMP CLSDISPLAYMAINMENU ;!JUMP MAIN MENU
  NEXTPW:
     INC SI
     JMP CHECKPW
  ERRORPW:
     MOV AH,0
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
     ;COLOR RED
     MOV AH,09H
     MOV BL, 04H   ;COLOR CODE
     MOV CX, 72 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET L_PW_ERROR  ;put variable
     INT 21H
     DEC TRYPW
     JMP TRYAGAINPW
  TRYPWCOUNTMSG:
     MOV AH,09H
     LEA DX,L_TRY
     INT 21H
     MOV AH,02H
     ADD TRYPW,30H
     MOV DL,TRYPW
     INT 21H
     SUB TRYPW,30H
     MOV AH,09H
     LEA DX,L_TRYPW
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
     MOV DX,OFFSET PAUSEAL 
     INT 21H
     ;PRESS ANY KEY TO CONTINUE
     PUSH CX
     PUSH AX
     PUSH DX
     PUSH BX
 
     MOV AH,08H
     INT 21H
     ;POP gets 16 bit value from the stack.
     POP BX
     POP AX
     POP DX
     POP CX
     JMP LOGINADMINPW

;--------------------------------------CUSTOMER LOGIN PAGES(YQ)----------------------------;
;--------------------------------------YQ CODE--------------------------;
  CLSDISPLAYCUSTOMER:
   ;CLEAR SCREEN
   MOV AH, 00H
   MOV AL, 02H
   INT 10H
   JMP MAINPAGE
  START:
  ;-------------------------------------------MAINPAGE-------------------------------------------
  
  MAINPAGE:
  ;CLEAR SCREEN
   MOV AX, 0600H
   MOV BH,07H
   MOV CX, 0000H
   MOV DX,184FH
   INT 10H 
   MOV AH,02H
   MOV BH,00
   MOV DX,0000H
   INT 10H
  
  ;---DISPLAY MAIN PAGE
   MOV AH,09H
   LEA DX,STR1
   INT 21H
  
  ;---USER INPUT CHOICE:01H
   MOV CX,1		;CX=1
   MOV SI,0		;SI=0
  GETCHOICE:
   MOV AH,01H
   INT 21H 			
   MOV CHOICE[SI],AL	;CHOICE[SI]
   INC SI			
   LOOP GETCHOICE		
  
  ;---VALIDATION:"1"-"3"
  CHK: 
   CMP CHOICE,"1"
   JE REGISTERPAGE
   JNE CHK1
  
  CHK1:
   CMP CHOICE,"2"
   JE LOGINPAGE
   JNE CHK2
  
  CHK2:
   CMP CHOICE,"3"
   JE CLSDISPLAYLRMENU
   JNE PRINTI
  
  PRINTI:
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  
   MOV AH,09H
   LEA DX,ICHOICE
   INT 21H
   
   MOV AX,0600H
   MOV BH,84H
   MOV CH,15
   MOV CL,00
   MOV DH,15
   MOV DL,79
   INT 10H
  
   MOV AH,09H
   LEA DX,ICHOICE2
   INT 21H
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  ;TEXT COLOR 
   MOV AH, 09H ;screen function
   MOV BL, 04H   ;COLOR CODE
   MOV CX, 51 ;HOW MUCH THE COLOR YOU WANT 
   INT 10H    
   MOV DX,OFFSET LOGIN_CONTINUE 
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
   JMP START
  
  ;-------------------------------------------REGISTERPAGE--------------------------------------------
  
  REGISTERPAGE:
  ;CLEAR SCREEN
  MOV AX, 0600H
   MOV BH,07H
   MOV CX, 0000H
   MOV DX,184FH
   INT 10H 
   MOV AH,02H
   MOV BH,00
   MOV DX,0000H
   INT 10H
  ;---OUTPUT REGISTER PAGE
   MOV AH,09H
   LEA DX,STR2
   INT 21H
  
  ;---INPUT BYTE:01H(UNAME[SI])
   MOV CX,8		;CX=8
   MOV SI,0		;SI=0
  GETUNAME:
   MOV AH,01H
   INT 21H 			
   MOV UNAME[SI],AL	;UNAME[SI]
   INC SI			
   LOOP GETUNAME		
  
  ;---OUTPUT REGISTER PAGE
   MOV AH,09H
   LEA DX,PSWD
   INT 21H
  
   ;---GET PASSWORD(PSWD)
   MOV CX,0
   MOV CX,8
   MOV SI,0
  GETPSWD:
   MOV AH,01H
   INT 21H
   MOV RPSWD[si],al
   INC SI
   LOOP GETPSWD
  
  ;---OUTPUT REGISTER PAGE
  
   MOV AH,09H
   LEA DX,VRMSG
   INT 21H
  
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  ;TEXT COLOR 
   MOV AH, 09H ;screen function
   MOV BL, 02H   ;COLOR CODE
   MOV CX, 51 ;HOW MUCH THE COLOR YOU WANT 
   INT 10H    
   MOV DX,OFFSET LOGIN_CONTINUE 
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
   MOV BH,07H
   MOV CX, 0000H
   MOV DX,184FH
   INT 10H 
   MOV AH,02H
   MOV BH,00
   MOV DX,0000H
   INT 10H
  
  ;---OUTPUT CHOICE PAGE
   MOV AH,09H
   LEA DX,STR1
   INT 21H
  
   ;---USER INPUT CHOICE:01H
   MOV CX,1		;CX=1
   MOV SI,0		;SI=0
  GETCHOICE1:
   MOV AH,01H
   INT 21H 			
   MOV CHOICE[SI],AL	;CHOICE[SI]
   INC SI			
   LOOP GETCHOICE1		
  
  ;---VALIDATION:"1"-"3"
  CHK3: 
   CMP CHOICE,"1"
   JE LOGINPAGE
   JNE CHK4
  
  CHK4:
   CMP CHOICE,"2"
   JE MAINPAGE
   JNE CHK5
  
  CHK5:
   CMP CHOICE,"3"
   JE CLSDISPLAYLRMENU
   JNE PRINTI1
  
  PRINTI1:
  ;CALL NEW LINE
   MOV AH,0
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  
   MOV AH,09H
   LEA DX,ICHOICE
   INT 21H
   
   MOV AX,0600H
   MOV BH,84H
   MOV CH,15
   MOV CL,00
   MOV DH,15
   MOV DL,79
   INT 10H
  
   MOV AH,09H
   LEA DX,ICHOICE2
   INT 21H
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  ;TEXT COLOR 
   MOV AH, 09H 
   MOV BL, 04H   
   MOV CX, 51 
   INT 10H    
   MOV DX,OFFSET LOGIN_CONTINUE 
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
   JMP START
  
  ;----------------------------------------------LOGIN------------------------------------------
  LOGINPAGE:
  
  ;CLEAR SCREEN
  MOV AX, 0600H
   MOV BH,07H
   MOV CX, 0000H
   MOV DX,184FH
   INT 10H 
   MOV AH,02H
   MOV BH,00
   MOV DX,0000H
   INT 10H
  ;---OUTPUT LOGIN PAGE
   MOV AH,09H
   LEA DX,STR3
   INT 21H
   MOV AH,09H
   LEA DX,STR4
   INT 21H
  
   USERNAME:
   CMP COUNT,3
   JE CLSDISPLAYLRMENU
  
  ;GET USERNAME
   MOV AH,09H
   LEA DX,STR5
   INT 21H
  
  ;---INPUT BYTE:01H(UNAME[SI])
   MOV CX,8		;CX=8
   MOV SI,0		;SI=0
  GETUNAME1:
   MOV AH,01H
   INT 21H 			
   MOV UNAME1[SI],AL	;UNAME[SI]
   INC SI			
   LOOP GETUNAME1		
  
  ;---VALIDATE
  MOV SI,0
  CHKNAME:
   CMP SI,8
   JE SAME
   MOV BL,UNAME[SI]
   CMP BL,UNAME1[SI]
   JE NEXTNAME
   JNE NOTSAME
  
  NEXTNAME:
   INC SI
   JMP CHKNAME
  
  SAME:
   MOV AH,09H
   LEA DX,VUNAME
   INT 21H
   JMP PASSWORD
  
  NOTSAME:
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  
   MOV AH,09H
   LEA DX,IUNAME
   INT 21H
   INC COUNT
   JMP USERNAME
  
  PASSWORD:
  CMP COUNT1,3
  JE CLSDISPLAYLRMENU
  
  ;---OUTPUT LOGIN PSWD PAGE
   MOV AH,09H
   LEA DX,PSWD
   INT 21H
  
   ;---GET PASSWORD(PSWD)
   MOV CX,0
   MOV CX,8
   MOV SI,0
  GETPSWD1:
   MOV AH,01H
   INT 21H
   MOV LPSWD[SI],AL
   INC SI
   LOOP GETPSWD1
  
   
   MOV CX, 8
   MOV SI, 0
  CHKPSW:
   
   MOV BX, 0
   MOV BL,RPSWD[SI]
   CMP BL,LPSWD[SI]
   JNE NOTSAME1
   INC SI
   LOOP CHKPSW 
  
  SAME1:
  ;---OUTPUT LOGIN PAGE
   MOV AH,09H
   LEA DX,VLMSG
   INT 21H
  
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  ;TEXT COLOR 
   MOV AH, 09H 
   MOV BL, 02H   
   MOV CX, 51  
   INT 10H    
   MOV DX,OFFSET LOGIN_CONTINUE 
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
   JMP CLSDISPLAYMAINMENU
  
  ;CLEAR SCREEN
  MOV AX, 0600H
   MOV BH,07H
   MOV CX,0000H
   MOV DX,184FH
   INT 10H 
   MOV AH,02H
   MOV BH,00
   MOV DX,0000H
   INT 10H
   JMP NEXT
  
  NOTSAME1:
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  
   MOV AH,09H
   LEA DX,IPSWD
   INT 21H
   INC COUNT1
   JMP PASSWORD
  
  NEXT:
  ;---OUTPUT CHOICE PAGE
   MOV AH,09H
   LEA DX,STR1
   INT 21H
  
  ;---USER INPUT CHOICE:01H
   MOV CX,1		;CX=1
   MOV SI,0		;SI=0
  GETCHOICE2:
   MOV AH,01H
   INT 21H 			
   MOV CHOICE[SI],AL	;CHOICE[SI]
   INC SI			
   LOOP GETCHOICE2		
  
  ;---VALIDATION:"1"-"3"
  CHK6: 
   CMP CHOICE,"1"
   JE REGISTERPAGE
   JNE CHK7
  
  CHK7:
   CMP CHOICE,"2"
   JE LOGINPAGE
   JNE CHK8
  
  CHK8:
   CMP CHOICE,"3"
   JE CLSDISPLAYLRMENU
   JNE PRINTI2
  
  PRINTI2:
   ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  
   MOV AH,09H
   LEA DX,ICHOICE
   INT 21H
   
   MOV AX,0600H
   MOV BH,84H
   MOV CH,15
   MOV CL,00
   MOV DH,15
   MOV DL,79
   INT 10H
  
   MOV AH,09H
   LEA DX,ICHOICE2
   INT 21H
  ;CALL NEW LINE
   MOV AH,02H
   MOV DL,13
   INT 21H
   MOV DL,10
   INT 21H
  ;TEXT COLOR 
   MOV AH, 09H 
   MOV BL, 04H   
   MOV CX, 51 
   INT 10H    
   MOV DX,OFFSET LOGIN_CONTINUE 
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
   JMP START
;------------------------------------------MAIN MENU-------------------------------------;
  CLSDISPLAYMAINMENU:
     ;CLEAR SCREEN
     MOV AH,00H
     MOV AL,02H
     INT 10H
     JMP DISPLAYMAINMENU
  
  DISPLAYMAINMENU:
   ;PROMPT MENU   
   MOV AH,09H
   LEA DX,MAINMENU
   INT 21H
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
    MOV AH, 09H ;screen function
    MOV BL, 03H   ;COLOR CODE
    MOV CX, 46 ;HOW MUCH THE COLOR YOU WANT 
    INT 10H    
    MOV DX,OFFSET MAINMENUCHOICES  
    INT 21H
     ;GET OPTION FROM USER
   MOV AH,0AH
   LEA DX,I_MM_CHOICE
   INT 21H
  ;VALIDATE USER INPUT
   CHECKMMCHOICE:
    CMP MM_CHOICE,"1"
    JAE CHECKMMCHOICE2
    JB MM_CHOICE_ERROR
   CHECKMMCHOICE2:
    CMP MM_CHOICE,"5"
    JAE MM_CHOICE_ERROR
    JB CHOOSEWHICHMMOPTIONTOGO
  ;ERROR MESSAGE
   MM_CHOICE_ERROR:
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
       MOV DX,OFFSET MM_CHOICEVLD
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
       MOV DX,OFFSET PAUSEMM
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
        MOV AH, 00H
	    MOV AL, 02H
	    INT 10H
       JMP DISPLAYMAINMENU
    ;----CHOOSE WHETHER GO WHICH PAGES
    CHOOSEWHICHMMOPTIONTOGO:
        ;CLEAR SCREEN
        MOV AH,00H
	    MOV AL,02H
	    INT 10H
        ;COMPARE CHOICE
        CMP MM_CHOICE,"1"
        JE DISPLAYFDSUBMENU
        CMP MM_CHOICE,"2"
        JE DISPLAYPAYMENT
        CMP MM_CHOICE,"3"
        JE DISPLAYLRMENU
        CMP MM_CHOICE,"4"
        JE SHUTDOWN
      

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
        MOV AH, 00H
	    MOV AL, 02H
	    INT 10H
       JMP DISPLAYFDSUBMENU
    ;----CHOOSE WHETHER GO FOOD MENU OR DRINK MENU OR MAIN MENU
    CHOOSEFOODORDRINK:
        ;CLEAR SCREEN
        MOV AH, 00H
	    MOV AL, 02H
	    INT 10H
        ;COMPARE CHOICE
         CMP FD_CHOICE,"1"
         JE DISPLAYFOODMENU
         CMP FD_CHOICE,"2"
         JE DISPLAYDRINKMENU
         CMP FD_CHOICE,"3"
         JE DISPLAYMAINMENU



;-----------------------FOOD MENU---------------------------------------------;
DISPLAYFOODMENU:
    MOV AH,09H
    LEA DX,FOOD_MENU
    INT 21H
    JMP FOODCHOOSE
;------------------------DRINK MENU-------------------------------------------;
DISPLAYDRINKMENU:
    MOV AH,09H
    LEA DX,DRINK_MENU
    INT 21H
    JMP FOODCHOOSE

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
        CMP FOOD,"8"
        JE CLSDISPLAYFDSUBMENU 
        CMP FOOD,"9"  
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
       MOV CX,76
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
    ;  ADD ACT_QUANTITY,30H;CONVERT DEC TO HEX
     CMP ACT_QUANTITY,1
     ;SUB ACT_QUANTITY,30H
     JE CHECKACTQUANTITY
     ;-------------------
     ;ADD ACT_QUANTITY,30H;CONVERT DEC TO HEX
     CMP ACT_QUANTITY,2
    ;  SUB ACT_QUANTITY,30H
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
        ; ADD ACT_QUANTITY,30H
        CMP ACT_QUANTITY,1
        JE SINGLE
        CMP ACT_QUANTITY,2
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
    CMP FOOD,5
    JE ADDFOOD5
    CMP FOOD,6
    JE ADDFOOD6
    CMP FOOD,7
    JE ADDFOOD7
;FIND WHICH FOOD TO ADD AND STORE THE VALUE INSLIDE OF THE VARIABLE
    ADDFOOD1:
        MOV AL,QTYF1
        ADD AL,REALQUANTITY
        MOV QTYF1,AL
        JMP MULPRICEWITHQTY
    ADDFOOD2:
        MOV AL,QTYF2
        ADD AL,REALQUANTITY
        MOV QTYF2,AL
        JMP MULPRICEWITHQTY
    ADDFOOD3:
        MOV AL,QTYF3
        ADD AL,REALQUANTITY
        MOV QTYF3,AL
        JMP MULPRICEWITHQTY
    ADDFOOD4:
        MOV AL,QTYF4
        ADD AL,REALQUANTITY
        MOV QTYF4,AL
        JMP MULPRICEWITHQTY  
    ADDFOOD5:
        MOV AL,QTYF5
        ADD AL,REALQUANTITY
        MOV QTYF5,AL
        JMP MULPRICEWITHQTY 
    ADDFOOD6:
        MOV AL,QTYF6
        ADD AL,REALQUANTITY
        MOV QTYF6,AL
        JMP MULPRICEWITHQTY
    ADDFOOD7:
        MOV AL,QTYF7
        ADD AL,REALQUANTITY
        MOV QTYF7,AL
        JMP MULPRICEWITHQTY     

ADDFOODPRICE:
    CMP FOOD,1
    JE ADDFOODPRICE1
    CMP FOOD,2
    JE ADDFOODPRICE2
    CMP FOOD,3
    JE ADDFOODPRICE3
    CMP FOOD,4
    JE ADDFOODPRICE4
    CMP FOOD,5  
    JE ADDFOODPRICE5
    CMP FOOD,6 
    JE ADDFOODPRICE6
    CMP FOOD,7
    JE ADDFOODPRICE7
    ADDFOODPRICE1:
        MOV AX,PC1
        ADD AX,SUM
        MOV PC1,AX
        JMP CALC4
    ADDFOODPRICE2:
        MOV AX,PC2
        ADD AX,SUM
        MOV PC2,AX
        JMP CALC4
    ADDFOODPRICE3:
        MOV AX,PC3
        ADD AX,SUM
        MOV PC3,AX
        JMP CALC4
    ADDFOODPRICE4:
        MOV AX,PC4
        ADD AX,SUM
        MOV PC4,AX
        JMP CALC4
    ADDFOODPRICE5:
        MOV AX,PC5
        ADD AX,SUM
        MOV PC5,AX
        JMP CALC4
    ADDFOODPRICE6:
        MOV AX,PC6
        ADD AX,SUM
        MOV PC6,AX
        JMP CALC4
    ADDFOODPRICE7:
        MOV AX,PC7
        ADD AX,SUM
        MOV PC7,AX
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




;---ASK USER WHETHER WANT CONTINUE OR NOT
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
    ;LOWERCASE JUMP TO CAPLOCK
    CMP CONTINUE[SI],'y'
    JE CAPLOCK
    CMP CONTINUE[SI],'n'
    JE CAPLOCK
    CMP CONTINUE[SI],'Y'
    JE SWITCHMENU
    CMP CONTINUE[SI],'N'
    JE CLSDISPLAYPAYMENT
    JNE ERROR_YN_MSG_CONTINUE
;IN CASE USER ENTER THE LOWER LETTER
CAPLOCK:
    SUB CONTINUE[SI],20H 
    JMP CONTINUESELECTION
ERROR_YN_MSG_CONTINUE:;ASK USER KEYIN AGAIN
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

;---SWITCH MENU OR REMAIN SAME---;
SWITCHMENU:
    MOV AH,09H
    LEA DX,F_SWITCHPAGES
    INT 21H
    ;CHECK USER INPUT
    MOV AH,0AH
    LEA DX,I_SWITCH
    INT 21H
;CHECK WHETHER IS FOOD MENU OR DRINK MENU
CHECKSWITCHMENU:
    ;-FOOD
    CMP FOOD,1
    JE FOODSWITCHMENUSELECTION
    CMP FOOD,2
    JE FOODSWITCHMENUSELECTION
    CMP FOOD,3
    JE FOODSWITCHMENUSELECTION
    CMP FOOD,4
    JE FOODSWITCHMENUSELECTION
    ;-DRINK
    CMP FOOD,5
    JE DRINKSWITCHMENUSELECTION
    CMP FOOD,6
    JE DRINKSWITCHMENUSELECTION
    CMP FOOD,7
    JE DRINKSWITCHMENUSELECTION

;FIND DO YOU WANT CONTINUE OR NOT
FOODSWITCHMENUSELECTION:
MOV SI,0
    CMP SWITCH[SI],'y'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'n'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'Y'
    JE CLSDISPLAYFOODMENU
    CMP SWITCH[SI],'N'
    JE CLSDISPLAYFDSUBMENU
    JNE ERROR_YN_MSG_SWITCH
;FIND DO YOU WANT CONTINUE OR NOT
DRINKSWITCHMENUSELECTION:
MOV SI,0
    CMP SWITCH[SI],'y'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'n'
    JE CAPLOCKSWITCH
    CMP SWITCH[SI],'Y'
    JE CLSDISPLAYDRINKMENU
    CMP SWITCH[SI],'N'
    JE CLSDISPLAYFDSUBMENU
    JNE ERROR_YN_MSG_SWITCH
;IN CASE USER ENTER THE LOWER LETTER
CAPLOCKSWITCH:
    SUB SWITCH[SI],20H 
    JMP CHECKSWITCHMENU

ERROR_YN_MSG_SWITCH:;ASK USER KEYIN AGAIN
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
    JMP SWITCHMENU
;----CLEAR SCREEN AND SHOW MENU---;
CLSDISPLAYFOODMENU:
    ; ;CLEAR SCREEN
    MOV AH, 00H
	MOV AL, 02H
	INT 10H
    JMP DISPLAYFOODMENU

CLSDISPLAYFDSUBMENU:
    ;CLEAR SCREEN
    MOV AH, 00H
	MOV AL, 02H
	INT 10H
    JMP DISPLAYFDSUBMENU
CLSDISPLAYDRINKMENU:
    ;CLEAR SCREEN
    MOV AH, 00H
	MOV AL, 02H
	INT 10H
    JMP DISPLAYDRINKMENU
CLSDISPLAYPAYMENT:
    ;CLEAR SCREEN
    MOV AH, 00H
	MOV AL, 02H
	INT 10H
    JMP DISPLAYPAYMENT

;------------------------------PAYMENT PAGES----------------------------;
DISPLAYPAYMENT:
 MOV AH,09H
 LEA DX,CART
 INT 21H

;COMPARE QUANTITY WHETEHER OVER 1 OR NOT
OVERF1:
 CMP QTYF1,0
 JA DISPLAYF1
 JB OVERF2
OVERF2:
 CMP QTYF2,0         
 JA DISPLAYF2
 JB OVERF3
OVERF3:
 CMP QTYF3,0
 JA DISPLAYF3
 JB OVERF4
OVERF4:
 CMP QTYF4,0
 JA DISPLAYF4
 JB OVERF5
OVERF5:
 CMP QTYF5,0       
 JA DISPLAYF5
 JB OVERF6
OVERF6:
 CMP QTYF6,0
 JA DISPLAYF6
 JB OVERF7
OVERF7:
 CMP QTYF7,1
 JAE DISPLAYF7
 JB DISPLAYCARTOFF


    





;DISPLAY FOR 1
DISPLAYF1:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF1
    DIV TEN
    MOV QTYF1TENS,AL
    MOV QTYF1ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF1TENS,30H
    ADD QTYF1ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF1TENS
    INT 21H
    MOV DL,QTYF1ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F1
    INT 21H
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF2
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF2
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF2
;DISPLAY FOR 2
DISPLAYF2:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF2
    DIV TEN
    MOV QTYF2TENS,AL
    MOV QTYF2ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF2TENS,30H
    ADD QTYF2ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF2TENS
    INT 21H
    MOV DL,QTYF2ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F2
    INT 21H
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF3
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF3
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
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF3

;DISPLAY FOR 3
DISPLAYF3:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF3
    DIV TEN
    MOV QTYF3TENS,AL
    MOV QTYF3ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF3TENS,30H
    ADD QTYF3ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF3TENS
    INT 21H
    MOV DL,QTYF3ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F3
    INT 21H
    CALC4PC3:
            CMP PC3,999
            JA SEPARATE4DIGITPC3
            JB CALC3PC3
     CALC3PC3:
            CMP PC3,99
            JA SEPARATE3DIGITPC3 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC3
     CALC2PC3:
            CMP SUM,9
            JA SEPARATE2DIGITPC3 ;IF > 9 , GO DO ANOTHER CALCULATION
        SEPARATE4DIGITPC3: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC3 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC3THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC3HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC3TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC3ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC3THOUSANDS,30H
                ADD PC3HUNDREDS,30H
                ADD PC3TENS,30H
                ADD PC3ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC3THOUSANDS
                INT 21H
                MOV DL,PC3HUNDREDS
                INT 21H
                MOV DL,PC3TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC3ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF4
            SEPARATE3DIGITPC3: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC3
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC3ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC3HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC3TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC3HUNDREDS,30H
                ADD PC3TENS,30H
                ADD PC3ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC3HUNDREDS
                INT 21H
                MOV DL,PC3TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC3ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF4
            SEPARATE2DIGITPC3:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC3 
                DIV TEN
                MOV PC3TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC3ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC3TENS,30H
                ADD PC3ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC3TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC3ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF4
;DISPLAY FOR 4
DISPLAYF4:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF4
    DIV TEN
    MOV QTYF4TENS,AL
    MOV QTYF4ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF4TENS,30H
    ADD QTYF4ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF4TENS
    INT 21H
    MOV DL,QTYF4ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F4
    INT 21H
    CALC4PC4:
            CMP PC4,999
            JA SEPARATE4DIGITPC4
            JB CALC3PC4
     CALC3PC4:
            CMP PC4,99
            JA SEPARATE3DIGITPC4 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC4
     CALC2PC4:
            CMP SUM,9
            JA SEPARATE2DIGITPC4 ;IF > 9 , GO DO ANOTHER CALCULATION
        SEPARATE4DIGITPC4: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC4 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC4THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC4HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC4TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC4ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC4THOUSANDS,30H
                ADD PC4HUNDREDS,30H
                ADD PC4TENS,30H
                ADD PC4ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC4THOUSANDS
                INT 21H
                MOV DL,PC4HUNDREDS
                INT 21H
                MOV DL,PC4TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC4ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF5
            SEPARATE3DIGITPC4: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC4
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC4ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC4HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC4TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC4HUNDREDS,30H
                ADD PC4TENS,30H
                ADD PC4ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC4HUNDREDS
                INT 21H
                MOV DL,PC4TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC4ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF5
            SEPARATE2DIGITPC4:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC4 
                DIV TEN
                MOV PC4TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC4ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC4TENS,30H
                ADD PC4ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC4TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC4ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF5
;DISPLAY FOR 5
DISPLAYF5:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF5
    DIV TEN
    MOV QTYF5TENS,AL
    MOV QTYF5ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF5TENS,30H
    ADD QTYF5ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF5TENS
    INT 21H
    MOV DL,QTYF5ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F5
    INT 21H
    CALC4PC5:
            CMP PC5,999
            JA SEPARATE4DIGITPC5
            JB CALC3PC5
     CALC3PC5:
            CMP PC5,99
            JA SEPARATE3DIGITPC5 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC5
     CALC2PC5:
            CMP SUM,9
            JA SEPARATE2DIGITPC5 ;IF > 9 , GO DO ANOTHER CALCULATION
        SEPARATE4DIGITPC5: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC5 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC5THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC5HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC5TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC5ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC5THOUSANDS,30H
                ADD PC5HUNDREDS,30H
                ADD PC5TENS,30H
                ADD PC5ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC5THOUSANDS
                INT 21H
                MOV DL,PC5HUNDREDS
                INT 21H
                MOV DL,PC5TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC5ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF6
            SEPARATE3DIGITPC5: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC5
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC5ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC5HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC5TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC5HUNDREDS,30H
                ADD PC5TENS,30H
                ADD PC5ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC5HUNDREDS
                INT 21H
                MOV DL,PC5TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC5ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF6
            SEPARATE2DIGITPC5:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC5 
                DIV TEN
                MOV PC5TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC5ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC5TENS,30H
                ADD PC5ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC5TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC5ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF6
;DISPLAY FOR 6
DISPLAYF6:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF6
    DIV TEN
    MOV QTYF6TENS,AL
    MOV QTYF6ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF6TENS,30H
    ADD QTYF6ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF6TENS
    INT 21H
    MOV DL,QTYF6ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F6
    INT 21H
    CALC4PC6:
            CMP PC6,999
            JA SEPARATE4DIGITPC6
            JB CALC3PC6
     CALC3PC6:
            CMP PC6,99
            JA SEPARATE3DIGITPC6 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC6
     CALC2PC6:
            CMP SUM,9
            JA SEPARATE2DIGITPC6 ;IF > 9 , GO DO ANOTHER CALCULATION
        SEPARATE4DIGITPC6: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC6 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC6THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC6HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC6TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC6ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC6THOUSANDS,30H
                ADD PC6HUNDREDS,30H
                ADD PC6TENS,30H
                ADD PC6ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC6THOUSANDS
                INT 21H
                MOV DL,PC6HUNDREDS
                INT 21H
                MOV DL,PC6TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC6ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP OVERF7
            SEPARATE3DIGITPC6: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC6
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC6ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC6HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC6TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC6HUNDREDS,30H
                ADD PC6TENS,30H
                ADD PC6ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC6HUNDREDS
                INT 21H
                MOV DL,PC6TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC6ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP OVERF7
            SEPARATE2DIGITPC6:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC6 
                DIV TEN
                MOV PC6TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC6ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC6TENS,30H
                ADD PC6ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC6TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC6ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP OVERF7
;DISPLAY FOR 7
DISPLAYF7:
    ;SHOW DESIGN LAYOUT
    MOV AH,02H
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    MOV AH,09H
    LEA DX,S10
    INT 21H
    MOV AH,02H
    MOV DL,"|"
    INT 21H
    MOV DL," "
    INT 21H
    ;--DISPLAY VARIABLE VALUE CONE OUT
    MOV AX,0
    MOV AL,QTYF7
    DIV TEN
    MOV QTYF7TENS,AL
    MOV QTYF7ONES,AH
    ;CONVERT DEC TO HEX
    ADD QTYF7TENS,30H
    ADD QTYF7ONES,30H
    ;PROMPT
    MOV AH,02H
    MOV DL,QTYF7TENS
    INT 21H
    MOV DL,QTYF7ONES
    INT 21H
    ;DISPLAY LAYOUT
    MOV AH,09H
    LEA DX,S10
    INT 21H
    ;DISPLAY ITEM
    MOV AH,09H
    LEA DX,F7
    INT 21H
    CALC4PC7:
            CMP PC7,999
            JA SEPARATE4DIGITPC7
            JB CALC3PC7
     CALC3PC7:
            CMP PC7,99
            JA SEPARATE3DIGITPC7 ;IF > 99,GO DO SEPARATE 3 DIGITS
            JB CALC2PC7
     CALC2PC7:
            CMP SUM,9
            JA SEPARATE2DIGITPC7 ;IF > 9 , GO DO ANOTHER CALCULATION
        SEPARATE4DIGITPC7: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
                ;SEPARATE 4 DIGITS BECOME 2 VALUE
                ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
                MOV AX,0
                MOV AX,PC7 
                DIV HUNDRED 
                MOV VALUE1,AL
                MOV VALUE2,AH
                ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
                ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
                MOV AX,0
                MOV AL,VALUE1
                DIV TEN
                MOV PC7THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
                MOV PC7HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
                ;SEPARATE VALUE2 INTO TENS AND ONES
                ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
                MOV AX,0
                MOV AL,VALUE2
                DIV TEN
                MOV PC7TENS,AL      ;QUOTIENT = 8(TENS) 
                MOV PC7ONES,AH      ;REMAINDER = 7(ONES)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC7THOUSANDS,30H
                ADD PC7HUNDREDS,30H
                ADD PC7TENS,30H
                ADD PC7ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC7THOUSANDS
                INT 21H
                MOV DL,PC7HUNDREDS
                INT 21H
                MOV DL,PC7TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC7ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S2
                INT 21H
                ;--JUMP ANOTHER PLACE
                JMP DISPLAYCARTOFF
            SEPARATE3DIGITPC7: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
                ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
                MOV AX,0
                MOV AX,PC7
                DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
                MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
                MOV PC7ONES,AH ;REMAINDER = 0(ONES)
                ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
                ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
                MOV AX,0
                MOV AL,SUMS
                DIV TEN
                MOV PC7HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
                MOV PC7TENS,AH     ;REMAINDER = 2(TENS)
                ;CONVERT DECIMAL TO HEXADECIMAL
                ADD PC7HUNDREDS,30H
                ADD PC7TENS,30H
                ADD PC7ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC7HUNDREDS
                INT 21H
                MOV DL,PC7TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC7ONES
                INT 21H
                ;--PROMPT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S3
                INT 21H
                ;--JUMP ANOTHER PLACE TO CHECK
                JMP DISPLAYCARTOFF
            SEPARATE2DIGITPC7:;SEPARATE 2 DIGIT INTO TENS AND ONES
                ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
                MOV AX,0
                MOV AX,PC7 
                DIV TEN
                MOV PC7TENS,AL ;QUOTIENT = 8(TENS)
                MOV PC7ONES,AH ;REMAINDER = 7(ONES)
                ;CONVERT DEC TO HEX
                ADD PC7TENS,30H
                ADD PC7ONES,30H
                ;--SHOW RESULT
                MOV AH,02H
                MOV DL,PC7TENS
                INT 21H
                ;--MAKE FLOATING
                MOV AH,02H
                MOV DL,POINT
                INT 21H
                MOV AH,02H
                MOV DL,PC7ONES
                INT 21H
                ;--PUT ZERO
                MOV AH,02H
                MOV DL,ZERO
                INT 21H
                ;DESIGN LAYOUT
                MOV AH,09H
                LEA DX,S4
                INT 21H
                JMP DISPLAYCARTOFF
DISPLAYCARTOFF:
    MOV AH,09H
    LEA DX,CARTOFF
    INT 21H
    JMP DISPLAYCARTTOTALPRICE
DISPLAYCARTTOTALPRICE:
    MOV AH,09H
    LEA DX,CARTTOTAL
    INT 21H
    CARTTOTAL4:
        CMP TOTAL,999
        JA SEPARATE4DIGITTOTALCART
        JB CARTTOTAL3
    CARTTOTAL3:
        CMP TOTAL,99
        JA SEPARATE3DIGITTOTALCART
        JB CARTTOTAL2
    CARTTOTAL2:
        CMP TOTAL,9
        JA SEPARATE2DIGITTOTALCART
        JB SINGLEDIGITTOTALCART

    SINGLEDIGITTOTALCART:
        MOV AX,0
        MOV AX,TOTAL
        MOV TOTAL_ONES,AL
        ;CONVERT DEC TO HEX
        ADD TOTAL_ONES,30H
        ;--SHOW RESULT
        MOV AH,02H
        MOV DL,TOTAL_ONES
        INT 21H
        ;--PROMPT FLOATING
        MOV AH,09H
        LEA DX,F_FLOATING
        INT 21H
        ;--ADD ON FOOD
        JMP DISPLAYDISCOUNT

    SEPARATE2DIGITTOTALCART:;SEPARATE 2 DIGIT INTO TENS AND ONES
        ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
        MOV AX,0
        MOV AX,TOTAL
        DIV TEN
        MOV TOTAL_TENS,AL ;QUOTIENT = 8(TENS)
        MOV TOTAL_ONES,AH ;REMAINDER = 7(ONES)
        ;CONVERT DEC TO HEX
        ADD TOTAL_TENS,30H
        ADD TOTAL_ONES,30H
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
        JMP DISPLAYDISCOUNT 

    SEPARATE3DIGITTOTALCART: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
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
        JMP DISPLAYDISCOUNT

    SEPARATE4DIGITTOTALCART: ;SEPARATE 4 DIGITS INTO THOUSANDS,HUNDREDS ,TENS AND ONES
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
        JMP DISPLAYDISCOUNT

DISPLAYDISCOUNT:
    JMP PROMPTCONFIRMPAY

;ASK USER WHETHER WANT PAY OR GO BACK TO MAIN MENU
PROMPTCONFIRMPAY:
    ;PROMPT FOR CONFIRM
    MOV AH,09H
    LEA DX,CONFIRMPAY_TXT
    INT 21H
    ;CHECK USER INPUT
    MOV AH,0AH
    LEA DX,I_CONFIRMPAY
    INT 21H

CONFIRMPAYSELECTION:
MOV SI,0
;LOWERCASE JUMP TO CAPLOCK
    CMP CONFIRMPAY[SI],'y'
    JE CAPLOCKCONFIRM
    CMP CONFIRMPAY[SI],'n'
    JE CAPLOCKCONFIRM
    CMP CONFIRMPAY[SI],'Y'
    JE DISPLAYASKUSERPAYGUIDE
    CMP CONFIRMPAY[SI],'N'
    JMP CLSDISPLAYMAINMENU 
    JNE ERROR_YN_MSG_CONFIRMPAY
CAPLOCKCONFIRM:
    SUB CONFIRMPAY[SI],20H
    JMP CONFIRMPAYSELECTION
ERROR_YN_MSG_CONFIRMPAY:
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
    MOV DX,OFFSET F_ERRORYNVLD
    INT 21H
    JMP PROMPTCONFIRMPAY
DISPLAYASKUSERPAYGUIDE:
    ;PROMPT FOR GUIDE
    MOV AH,09H
    LEA DX,ASKUSERPAY_GUIDE
    INT 21H
DISPLAYASKUSERPAYMENT:
    ;PROMPT FOR X
    MOV AH,09H
    LEA DX,ASKUSERPAY_TXT
    INT 21H
    ;GET USER INPUT
    MOV AH,0AH
    LEA DX,I_PAYMENT
    INT 21H
;VALIDATE USER INPUT
MOV SI,0
CHECKPAYMENTFIRSTDIGIT:
 CMP PAYMENT[SI],"1"
 JAE CHECKPAYMENTFIRSTDIGIT2
 JB PAYMENTERROR
CHECKPAYMENTFIRSTDIGIT2:
 CMP PAYMENT[SI],"9"
 JA PAYMENTERROR
 JBE CHECKHOWMANYDIGITPAYMENT
 ;BUG POINT
CHECKHOWMANYDIGITPAYMENT:
 ;ONE DIGIT
 CMP ACT_PAYMENT,1
 JE DISPLAYASKUSERPAYMENTFP
 ;2DIGIT
 CMP ACT_PAYMENT,2
 JE CHECKPAYMENTSECONDDIGIT
CHECKPAYMENTSECONDDIGIT:
 INC SI
 CMP PAYMENT[SI],"0"
 JAE CHECKPAYMENTSECONDDIGIT2
 JB PAYMENTERROR
CHECKPAYMENTSECONDDIGIT2:
 CMP PAYMENT[SI],"9"
 JA PAYMENTERROR
 JBE CHECKHOWMANYDIGITPAYMENT2
CHECKHOWMANYDIGITPAYMENT2:
 ;SECOND DIGIT
 CMP ACT_PAYMENT,2
 JE DISPLAYASKUSERPAYMENTFP
 CMP ACT_PAYMENT,3
 JE CHECKPAYMENTTHIRDDIGIT
CHECKPAYMENTTHIRDDIGIT:
 INC SI
 CMP PAYMENT[SI],"0"
 JAE CHECKPAYMENTTHIRDDIGIT2
 JB PAYMENTERROR
CHECKPAYMENTTHIRDDIGIT2:
 CMP PAYMENT[SI],"9"
 JA PAYMENTERROR
 JBE DISPLAYASKUSERPAYMENTFP
PAYMENTERROR:
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
 MOV DX,OFFSET R_PAYMENTVLD
 INT 21H 
 JMP DISPLAYASKUSERPAYMENT

DISPLAYASKUSERPAYMENTFP:
 ;PROMPT
 MOV AH,09H
 LEA DX,ASKUSERPAY2_TXT
 INT 21H
 ;GET INPUT
 MOV AH,0AH
 LEA DX,I_PAYMENT_FP
 INT 21H
CHECKPAYMENTFPDIGIT:
    CMP PAYMENT_FP,"0"
    JAE CHECKPAYMENTFP2
    JB PAYMENTFPERROR
CHECKPAYMENTFP2:
    CMP PAYMENT_FP,"9"
    JBE CHECKACTPAYMENT
    JB  PAYMENTFPERROR

PAYMENTFPERROR: 
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
 MOV DX,OFFSET R_PAYMENTFPVLD
 INT 21H 
 JMP DISPLAYASKUSERPAYMENTFP

CHECKACTPAYMENT:
 CMP ACT_PAYMENT,1
 JE SINGLEPAYMENT
 CMP ACT_PAYMENT,2
 JE DOUBLEPAYMENT
 CMP ACT_PAYMENT,3
 JE TRIPLEPAYMENT

SINGLEPAYMENT:
    MOV AX,0
    ;CLEAR PREVIOUS VALUE
    MOV PAYMENT_HUNDREDS,0
    MOV PAYMENT_TENS,0 ;PREVIOUS CALCULATION MAYBE HAVE VALUES
    MOV AL,PAYMENT[0]
    MOV PAYMENT_ONES,AL
    JMP CHECKPAYMENTFP
DOUBLEPAYMENT:
    MOV AX,0
    ;CLEAR PREVIOUS VALUE
    MOV PAYMENT_HUNDREDS,0  ;PREVIOUS CALCULATION MAYBE HAVE VALUES
    MOV AL,PAYMENT[0]
    MOV PAYMENT_TENS, AL
    MOV BX,0
    MOV BL,PAYMENT[1]  
    MOV PAYMENT_ONES, BL
    JMP CHECKPAYMENTFP
TRIPLEPAYMENT:
    MOV AX,0
    MOV AL,PAYMENT[0]
    MOV PAYMENT_HUNDREDS, AL
    MOV BX,0
    MOV BL,PAYMENT[1]  
    MOV PAYMENT_TENS, BL
    MOV AX,0
    MOV AL,PAYMENT[2]
    MOV PAYMENT_ONES,AL
    JMP CHECKPAYMENTFP

CHECKPAYMENTFP:
    CMP ACT_PAYMENT_FP,1
    MOV AX,0
    MOV AL,PAYMENT_FP[0]
    MOV PAYMENTFP_ONES,AX
    JMP CALCCHANGE

CALCCHANGE:
    ;CLEAR AX BECOME 0
    MOV AX,0
    ;--CHECK WHETHER NEED PAYMENT_TENS AND PAYMENT_HUNREDAS OR NOT
    CHECKPAYMENT_HUNDREDS:
    ;IF RMXYZ, X IS 0, THEN IGNORE
        CMP PAYMENT_HUNDREDS,0
        JNE NEEDPAYMENT_HUNDREDS
        JE CHECKPAYMENT_TENS
    CHECKPAYMENT_TENS:
    ;IF RMXYZ.00 , Y IS 0, THEN IGNORE
        CMP PAYMENT_TENS,0
        JNE NEEDPAYMENT_TENS
        JE NONEEDPAYMENT_HUNDREDS_TENS   
    NEEDPAYMENT_HUNDREDS:
        SUB PAYMENT_HUNDREDS,30H
        SUB PAYMENT_TENS,30H
        JMP NONEEDPAYMENT_HUNDREDS_TENS
    NEEDPAYMENT_TENS:
        SUB PAYMENT_TENS,30H
        JMP NONEEDPAYMENT_HUNDREDS_TENS

;START CALCULATION
NONEEDPAYMENT_HUNDREDS_TENS:
    SUB PAYMENTFP_ONES,30H ;need conditiont to check!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    SUB PAYMENT_ONES,30H
    ;CLEAR AX BECOME 0
    MOV AX,0
    ;--MAKE PAYMENT COME OUT FIRST
    MOV AL,PAYMENT_HUNDREDS ;1DIGIT = 5 DB
    MUL THOUSAND
    MOV VALUE_PAYMENT_HUNDREDS,AX
    ;CLEAR AX
    MOV AX,0
    ;--MAKE PAYMENT COME OUT FIRST
    MOV AL,PAYMENT_TENS
    MUL HUNDRED
    MOV VALUE_PAYMENT_TENS,AX
    ;-CLEAR AX
    MOV AX,0
    ;--MAKE PAYMENT COME OUT FIRST
    MOV AL,PAYMENT_ONES
    MUL TEN
    MOV VALUE_PAYMENT_ONES,AX
    ;CLEAR AX
    MOV AX,0
    ;--ADD ALL
    MOV REAL_PAYMENT,0
    MOV AX,REAL_PAYMENT
    ADD AX,VALUE_PAYMENT_HUNDREDS
    ADD AX,VALUE_PAYMENT_TENS
    ADD AX,VALUE_PAYMENT_ONES
    ADD AX,PAYMENTFP_ONES
    MOV REAL_PAYMENT,AX
    ;RP-TOTAL
    ;CHECK WHETHER WHO OVER OR NOT
    ;COMPARE WHO MORE BIGGER
    ;IF REAL_PAYMENT > TOTAL , PROCESS
    ;IF REAL_PAYMENT < TOTAL, RED COLOR NO ENOUGH TO PAY , PAY AGAIN
    MOV AX,REAL_PAYMENT
    CMP TOTAL,AX
    JA CALCINSUF4
    JB CALCCHANGE4
   

    

;--COMPARE WHETHER NEED SEPERATE OR NOT
CALCCHANGE4:
;CALCUALATION
    MOV AX,0
    MOV AX,REAL_PAYMENT
    SUB AX,TOTAL
    MOV REAL_PAYMENT,AX
    ;SEPERATE
    CMP REAL_PAYMENT,999
    JA SEPARATE4DIGITPAYMENT
    JB CALCCHANGE3
CALCCHANGE3:
    CMP REAL_PAYMENT,99
    JA SEPARATE3DIGITPAYMENT
    JB CALCCHANGE2
CALCCHANGE2:
    CMP REAL_PAYMENT,9
    JA SEPARATE2DIGITPAYMENT
    JB SINGLEDIGITPAYMENT

SEPARATE4DIGITPAYMENT:
    ;SEPARATE 4 DIGITS BECOME 2 VALUE
    ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
    MOV AX,0
    MOV AX,REAL_PAYMENT 
    DIV HUNDRED 
    MOV VALUE1,AL
    MOV VALUE2,AH
    ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
    ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
    MOV AX,0
    MOV AL,VALUE1
    DIV TEN
    MOV CHANGE_THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
    MOV CHANGE_HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
    ;SEPARATE VALUE2 INTO TENS AND ONES
    ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
    MOV AX,0
    MOV AL,VALUE2
    DIV TEN
    MOV CHANGE_TENS,AL      ;QUOTIENT = 8(TENS) 
    MOV CHANGE_ONES,AH      ;REMAINDER = 7(ONES)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD CHANGE_THOUSANDS,30H
    ADD CHANGE_HUNDREDS,30H
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,PAYMENT_CHANGE
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_THOUSANDS
    INT 21H
    MOV DL,CHANGE_HUNDREDS
    INT 21H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
     ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP PAYMENTDONE
 SEPARATE3DIGITPAYMENT: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
    ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
    MOV AX,0
    MOV AX,REAL_PAYMENT
    DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
    MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
    MOV CHANGE_ONES,AH ;REMAINDER = 0(ONES)
    ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
    ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
    MOV AX,0
    MOV AL,SUMS
    DIV TEN
    MOV CHANGE_HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
    MOV CHANGE_TENS,AH     ;REMAINDER = 2(TENS)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD CHANGE_HUNDREDS,30H
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,PAYMENT_CHANGE
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_HUNDREDS
    INT 21H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--JUMP ANOTHER PLACE TO CHECK
    JMP PAYMENTDONE
SEPARATE2DIGITPAYMENT:;SEPARATE 2 DIGIT INTO TENS AND ONES
    ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
    MOV AX,0
    MOV AX,REAL_PAYMENT 
    DIV TEN
    MOV CHANGE_TENS,AL ;QUOTIENT = 8(TENS)
    MOV CHANGE_ONES,AH ;REMAINDER = 7(ONES)
    ;CONVERT DEC TO HEX
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,PAYMENT_CHANGE
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PUT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP PAYMENTDONE
SINGLEDIGITPAYMENT:
    MOV AX,0
    MOV AX,REAL_PAYMENT
    MOV CHANGE_ONES,AL
    ;CONVERT DEC TO HEX
    ADD CHANGE_ONES,30H
    ;--PROMPT OUTPUT
    MOV AH,09H
    LEA DX,PAYMENT_CHANGE
    INT 21H
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PUT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP PAYMENTDONE
CALCINSUF4:
;CALCUALATION
    MOV AX,0
    MOV AX,TOTAL
    SUB AX,REAL_PAYMENT
    MOV REAL_PAYMENT,AX
    ;SEPERATE
    CMP REAL_PAYMENT,999
    JA SEPARATE4DIGITPAYMENTNOENOUGH
    JB CALCINSUF3
CALCINSUF3:
    CMP REAL_PAYMENT,99
    JA SEPARATE3DIGITPAYMENTNOENOUGH
    JB CALCINSUF2
CALCINSUF2:
    CMP REAL_PAYMENT,9
    JA SEPARATE2DIGITPAYMENTNOENOUGH
    JB SINGLEDIGITPAYMENTNOENOUGH
SEPARATE4DIGITPAYMENTNOENOUGH:
    ;SEPARATE 4 DIGITS BECOME 2 VALUE
    ;LOGIC: 9487/100=94.87 ;QUOTIENT = 94(VALUE1) ;REMAINDER = 87(VALUE2)
    MOV AX,0
    MOV AX,REAL_PAYMENT 
    DIV HUNDRED 
    MOV VALUE1,AL
    MOV VALUE2,AH
    ;SEPARATE VALUE1 INTO THOUSANDS AND HUNDREDS
    ;#9487 94/10=9.4 ;QUOTIENT = 9(THOUSANDS) ;REMAINDER = 4(HUNDREDS)
    MOV AX,0
    MOV AL,VALUE1
    DIV TEN
    MOV CHANGE_THOUSANDS,AL ;QUOTIENT = 9(THOUSANDS)
    MOV CHANGE_HUNDREDS,AH  ;REMAINDER = 4(HUNDREDS)
    ;SEPARATE VALUE2 INTO TENS AND ONES
    ;#9487 87/10=8.7 ;QUOTIENT = 8(TENS) ;REMAINDER = 7(ONES)
    MOV AX,0
    MOV AL,VALUE2
    DIV TEN
    MOV CHANGE_TENS,AL      ;QUOTIENT = 8(TENS) 
    MOV CHANGE_ONES,AH      ;REMAINDER = 7(ONES)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD CHANGE_THOUSANDS,30H
    ADD CHANGE_HUNDREDS,30H
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
    ;--PROMPT WARNING MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,55
       INT 10H
       MOV DX,OFFSET PAYMENT_WARNING
       INT 21H 
    ;PROMPT NO ENOUGH MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
    ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,68
       INT 10H
       MOV DX,OFFSET PAYMENT_CHANGENOENOUGH 
       INT 21H 
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_THOUSANDS
    INT 21H
    MOV DL,CHANGE_HUNDREDS
    INT 21H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
     ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP CLSPAUSEDISPLAYPAYMENT
 SEPARATE3DIGITPAYMENTNOENOUGH: ;SEPARATE 3 DIGITS INTO HUNDREDS ,TENS AND ONES
    ;LOGIC:520/10=52.0 ;QUOTIENT=52(SUMS) ;REMAINDER=0(ONES)
    MOV AX,0
    MOV AX,REAL_PAYMENT
    DIV TEN ;AX= AX/TEN = SUM/10 =R1Q1=>5(AH=R1),10(AL=Q1) 
    MOV SUMS,AL ;QUOTIENT = SUMS :USE TO SEPARATE AGAIN
    MOV CHANGE_ONES,AH ;REMAINDER = 0(ONES)
    ;SEPARATE 2 DIGITS INTO HUNDRED AND TENS
    ;52/10=5.2   ;QUOTIENT=5(HUNDREDS) ;REMAINDER=2(TENS)
    MOV AX,0
    MOV AL,SUMS
    DIV TEN
    MOV CHANGE_HUNDREDS,AL ;QUOTIENT = 5(HUNDRED)
    MOV CHANGE_TENS,AH     ;REMAINDER = 2(TENS)
    ;CONVERT DECIMAL TO HEXADECIMAL
    ADD CHANGE_HUNDREDS,30H
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
    ;--PROMPT WARNING MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,55
       INT 10H
       MOV DX,OFFSET PAYMENT_WARNING
       INT 21H 
    ;PROMPT NO ENOUGH MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
    ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,67
       INT 10H
       MOV DX,OFFSET PAYMENT_CHANGENOENOUGH 
       INT 21H 
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_HUNDREDS
    INT 21H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PROMPT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--JUMP ANOTHER PLACE TO CHECK
    JMP CLSPAUSEDISPLAYPAYMENT
SEPARATE2DIGITPAYMENTNOENOUGH:;SEPARATE 2 DIGIT INTO TENS AND ONES
    ;87/10=8.7 ;QUOTIENT = 8 ;REMAINDER = 7
    MOV AX,0
    MOV AX,REAL_PAYMENT 
    DIV TEN
    MOV CHANGE_TENS,AL ;QUOTIENT = 8(TENS)
    MOV CHANGE_ONES,AH ;REMAINDER = 7(ONES)
    ;CONVERT DEC TO HEX
    ADD CHANGE_TENS,30H
    ADD CHANGE_ONES,30H
   ;--PROMPT WARNING MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,55
       INT 10H
       MOV DX,OFFSET PAYMENT_WARNING
       INT 21H 
    ;PROMPT NO ENOUGH MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
    ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,66
       INT 10H
       MOV DX,OFFSET PAYMENT_CHANGENOENOUGH 
       INT 21H 
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,CHANGE_TENS
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PUT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP CLSPAUSEDISPLAYPAYMENT
SINGLEDIGITPAYMENTNOENOUGH:
    MOV AX,0
    MOV AX,REAL_PAYMENT
    MOV CHANGE_ONES,AL
    ;CONVERT DEC TO HEX
    ADD CHANGE_ONES,30H
    ;--PROMPT WARNING MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
       ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,55
       INT 10H
       MOV DX,OFFSET PAYMENT_WARNING
       INT 21H 
    ;PROMPT NO ENOUGH MESSAGE
    ;CALL NEWLINE
       MOV AH,02H
       MOV DL,13
       INT 21H
       MOV DL,10
       INT 21H
    ;RED COLOR
       MOV AH,09H
       MOV BL,04H
       MOV CX,66
       INT 10H
       MOV DX,OFFSET PAYMENT_CHANGENOENOUGH 
       INT 21H 
    ;--SHOW RESULT
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    ;--MAKE FLOATING
    MOV AH,02H
    MOV DL,POINT
    INT 21H
    MOV AH,02H
    MOV DL,CHANGE_ONES
    INT 21H
    ;--PUT ZERO
    MOV AH,02H
    MOV DL,ZERO
    INT 21H
    JMP CLSPAUSEDISPLAYPAYMENT

CLSPAUSEDISPLAYPAYMENT:
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
    MOV AH, 00H
	MOV AL, 02H
	INT 10H
    JMP DISPLAYPAYMENT

PAYMENTDONE:
    ;CALLNEXTLINE
     MOV AH,02H
     MOV DL,13
     INT 21H
     MOV DL,10
     INT 21H
    ;TEXTCOLOR GREEN
     MOV AH, 09H ;screen function
     MOV BL, 02H   ;COLOR CODE
     MOV CX, 25 ;HOW MUCH THE COLOR YOU WANT 
     INT 10H    
     MOV DX,OFFSET PAYMENT_SUCCESS
     INT 21H
    ;CLEAR TOTAL VALUE BECOME 0
    MOV SUM,0
    MOV TOTAL,0
    MOV REALQUANTITY,0
    ;CLEAR QUANTITY BECOME 0
    MOV QTYF1,0
    MOV QTYF2,0
    MOV QTYF3,0
    MOV QTYF4,0
    MOV QTYF5,0
    MOV QTYF6,0
    MOV QTYF7,0
    ;CLEAR PRICE BECOME 0
    MOV PC1,0
    MOV PC2,0
    MOV PC3,0
    MOV PC4,0
    MOV PC5,0
    MOV PC6,0
    MOV PC7,0
    ;CLEAR USER MONEY BECOME 0
    MOV REAL_PAYMENT,0
    MOV VALUE_PAYMENT_HUNDREDS,0
    MOV VALUE_PAYMENT_TENS,0
    MOV VALUE_PAYMENT_ONES,0
    MOV PAYMENT_FP,0
    ;PROMPT THANKS YOU
    MOV AH,09H
    LEA DX,PAYMENTTHANKYOU
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
    MOV DX,OFFSET PAUSEPAYMENT 
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
    JMP CLSDISPLAYMAINMENU





 
SHUTDOWN:
 MOV AH,4CH 
 INT 21H 
MAIN ENDP 
 END MAIN

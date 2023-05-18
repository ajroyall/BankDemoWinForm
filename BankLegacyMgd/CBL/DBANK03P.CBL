000100*****************************************************************  
000200*                                                               *  
000300*   Copyright (C) 1998-2011 opentext™. All Rights Reserved.   *  
000400*   This demonstration program is provided for use by users     *  
000500*   of opentext™ products and may be used, modified and       *  
000600*   distributed as part of your application provided that       *  
000700*   you properly acknowledge the copyright of opentext™       *  
000800*   in this material.                                           *  
000900*                                                               *  
001000*****************************************************************  
001100                                                                   
001200*****************************************************************  
001300* Program:     DBANK03P.CBL                                     *  
001400* Function:    Obtain Bank Account balances                     *  
001500*              SQL version                                      *
      *              Re-written in 2011-2012 to Visual COBOL          *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBANK03P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
002500                                                                   
002800 DATA DIVISION.                                                    
002900                                                                   
003000 WORKING-STORAGE SECTION.                                          
004100     EXEC SQL                                                      
004200          BEGIN DECLARE SECTION                                   
004300     END-EXEC.                                                     
003100
       01  WS-MISC-STORAGE.                                              
003500   05  DISP-SQLCODE                          PIC -9(5).       
003500   05  WS-SUB1                               PIC S9(4) COMP.       
003600   05  WS-COUNT                              PIC S9(10) COMP-3.    
003700   05  WS-TXN-TYPE                           PIC X(1)              
003800       VALUE '1'.                                                  
003900                                                                   
005100     EXEC SQL                                                      
005200          INCLUDE CBANKSAC                                         
005300     END-EXEC.                                                     

005400     EXEC SQL                                                      
005500          INCLUDE CBANKSAT                                          
005600     END-EXEC.                                                     

005700*    EXEC SQL                                                      
005800*         INCLUDE CBANKSTX                                         
005900*    END-EXEC.                                                     
      *
005000 COPY SQLCA.                                                                  

006700 COPY CBANKSACX.                                                   
006700 COPY CBANKSATX.                                                   
       
004500     EXEC SQL                                                      
004600          END DECLARE SECTION                                      
004700     END-EXEC.                                                     
006800                                                                   
006900 LINKAGE SECTION.                                                  
       01  BANK-USERID         PIC X(5).
       
001400 COPY CBANKVC3 .
       
007600*****************************************************************  
007400* use 'by Reference' to ensure data is passed to calling pgm    * 
001400 PROCEDURE DIVISION USING    by Reference BANK-USERID
                                   by Reference CD03-DATA. 
                                                                
008300* Initialize our output area
008500     INITIALIZE CD03-DATA.
           INITIALIZE SQLCA.             
008600                                                                   
008800* Set up the cursor to get our data
           EXEC SQL                                                      
009100          DECLARE BAL_CSR CURSOR FOR                               
009200          SELECT BAC.BAC_ACCNO,                                    
009300                 BAT.BAT_DESC,                                     
009400                 BAC.BAC_BALANCE,                                  
009500                 BAC.BAC_LAST_STMT_DTE,                            
009600                 BAC.BAC_LAST_STMT_BAL                             
009700          FROM BNKACC BAC,                                         
009800               BNKATYPE BAT                                        
009900          WHERE (BAC.BAC_ACCTYPE = BAT.BAT_TYPE)               
010000           AND      (BAC.BAC_PID = :BANK-USERID)                
010100*         ORDER BY BAT.BAT_DESC ASC                                
010200          FOR FETCH ONLY                                           
010300     END-EXEC.                                                     
010400                                                                   
010500     PERFORM P400-OPEN-CURSOR.                                                     
                                                   
011200     IF SQLCODE = ZERO
               MOVE 1 TO WS-SUB1
               PERFORM P100-FETCH-LOOP VARYING WS-SUB1 FROM 1 BY 1
                 UNTIL WS-SUB1 = 99 OR SQLCODE <> ZERO
           END-IF.  

           PERFORM P490-CLOSE-CURSOR.
           
           GOBACK.
                                                   
011100*****************************************************************  
011300 P100-FETCH-LOOP.                                               
011800     PERFORM P410-FETCH-CURSOR.                                                     
012600                                                                   
012800* Is there any data to store?  
           MOVE ZERO TO WS-COUNT.
           
013000     IF SQLCODE = ZERO                                   
013100         MOVE DCL-BAC-ACCNO         TO  CD03O-ACC (WS-SUB1)   
013200         MOVE DCL-BAT-DESC          TO  CD03O-DSC (WS-SUB1)    
013300         MOVE DCL-BAC-BALANCE       TO  CD03O-BALN (WS-SUB1)
013400         MOVE DCL-BAC-LAST-STMT-DTE TO  CD03O-DTE (WS-SUB1) 
014200     END-IF.
       
013000     IF SQLCODE = ZERO                                   
               PERFORM P600-SELECT-BNKTXN  
014200     END-IF.

           IF WS-COUNT IS GREATER THAN ZERO THEN
014500        MOVE '*' TO CD03O-TXN (WS-SUB1).
                                                              
           EXIT.
           
011100*****************************************************************  
015500 P400-OPEN-CURSOR.                                          
010500     EXEC SQL                                                      
010600          OPEN BAL_CSR                                             
010700     END-EXEC .                                                     
           PERFORM P800-ERROR-CHECK.                                                

           EXIT.
                                                              
015500 P410-FETCH-CURSOR.                                          
011800     EXEC SQL                                                      
011900          FETCH BAL_CSR                                            
012000          INTO :DCL-BAC-ACCNO,                                     
012100               :DCL-BAT-DESC,                                      
012200               :DCL-BAC-BALANCE,                                   
012300               :DCL-BAC-LAST-STMT-DTE,                             
012400               :DCL-BAC-LAST-STMT-BAL                              
012500     END-EXEC. 
           PERFORM P800-ERROR-CHECK.                                                
           
           EXIT.
           
015500 P490-CLOSE-CURSOR.                                          
015600     EXEC SQL                                                      
015700          CLOSE BAL_CSR                                            
015800     END-EXEC.       
                                     
           EXIT.
           
       P600-SELECT-BNKTXN.                                          
013500     EXEC SQL                                                   
013600         SELECT COUNT(*)                                       
013700         INTO :WS-COUNT                                        
013800         FROM BNKTXN                                           
013900         WHERE (BTX_ACCNO = :DCL-BAC-ACCNO)
014000           AND (BTX_TYPE  = :WS-TXN-TYPE)                       
014100     END-EXEC                                                   
           PERFORM P800-ERROR-CHECK.                                                
                                     
           EXIT.
           
       P800-ERROR-CHECK.                                          
           IF SQLCODE NOT EQUAL ZERO AND SQLCODE NOT EQUAL +100
                   MOVE SQLCODE    TO  DISP-SQLCODE
                   STRING 'SQLCODE: '  DELIMITED BY SIZE
                          DISP-SQLCODE DELIMITED BY SIZE 
                     INTO CD03O-DSC(1)
           END-IF.
           
           EXIT.

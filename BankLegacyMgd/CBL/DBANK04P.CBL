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
001300* Program:     DBANK04P.CBL                                     *  
001400* Function:    Update account balances                          *  
001500*              SQL version                                      *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBANK04P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
002500                                                                   
002800 DATA DIVISION.                                                    
002900                                                                   
003000 WORKING-STORAGE SECTION.                                          
           EXEC SQL                                                      
004200          BEGIN DECLARE SECTION                                    
004300     END-EXEC.                                                     
003500                                                                   
      * DCL Gen for SQL
004400     EXEC SQL                                                      
004500          INCLUDE CBANKSAC                                         
004600     END-EXEC. 
                                                           
004500 COPY CBANKSACX.                                         
004800 
       COPY SQLCA .                                           
005000                                                                   
005100* General working variables                                                    
005200 01 BAC-OLD-BALANCE                PIC S9(7)V99 COMP-3.        
005200 01 DISP-SQLCODE                   PIC -9(9).        
                                                                  
004100     EXEC SQL                                                      
004200          END DECLARE SECTION                                      
004300     END-EXEC.                                                     
005400                                                                   
005500 LINKAGE SECTION.                                                  
001400 COPY CBANKVC4 .
         
       01 BANK-ERRMSG              PIC X(65).
       01 GOOD-ERRMSG              PIC X(65).
006000                                                                   
001400 PROCEDURE DIVISION USING    BY REFERENCE CD04-DATA
                                   BY REFERENCE BANK-ERRMSG
                                   BY REFERENCE GOOD-ERRMSG.
                                          
           IF BANK-ERRMSG = SPACES THEN
               PERFORM P410-UPDATE-FROM.
                                                                     
           IF BANK-ERRMSG = SPACES THEN
               PERFORM P420-UPDATE-TO.

           GOBACK.
           
      *===================================================================================
      * Update the 'from' balance                              *  
       P410-UPDATE-FROM.
            MOVE CD04I-FROM-NEW-BAL  TO DCL-BAC-BALANCE .                     
            MOVE CD04I-PERSON-PID    TO DCL-BAC-PID     .                 
            MOVE CD04I-FROM-ACC      TO DCL-BAC-ACCNO   .                   
            MOVE CD04I-FROM-OLD-BAL  TO BAC-OLD-BALANCE .
            
           PERFORM P900-UPDATE-BNKACC.                     
                                                                    
      * Update the 'to' balance 
       P420-UPDATE-TO.
            MOVE CD04I-TO-NEW-BAL  TO DCL-BAC-BALANCE .                     
            MOVE CD04I-PERSON-PID  TO DCL-BAC-PID     .                 
            MOVE CD04I-TO-ACC      TO DCL-BAC-ACCNO   .                   
            MOVE CD04I-TO-OLD-BAL  TO BAC-OLD-BALANCE .
            
           PERFORM P900-UPDATE-BNKACC. 
                               
      *===================================================================================
       P900-UPDATE-BNKACC.
            EXEC SQL                                                      
                UPDATE BNKACC                                            
                SET BAC_BALANCE = :DCL-BAC-BALANCE
                WHERE (BAC_PID     = :DCL-BAC-PID      AND                   
                       BAC_ACCNO   = :DCL-BAC-ACCNO    AND                     
                       BAC_BALANCE = :BAC-OLD-BALANCE)                  
            END-EXEC.                                                     

           IF SQLCODE IS NOT EQUAL TO ZERO
               MOVE SQLCODE TO DISP-SQLCODE
               STRING 'Update failed- Id/Account: ' DELIMITED BY SIZE             
                   DCL-BAC-PID DELIMITED BY SIZE
                   '/' DELIMITED BY SIZE                      
                   DCL-BAC-ACCNO DELIMITED BY SIZE
                   ' with Sqlcode: ' DELIMITED BY SIZE                      
                   DISP-SQLCODE  DELIMITED BY SIZE                      
                                       INTO  BANK-ERRMSG .

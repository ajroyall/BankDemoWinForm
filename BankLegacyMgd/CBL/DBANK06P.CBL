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
001300* Program:     DBANK06P.CBL                                     *  
001400* Function:    Write transaction records for audit trail        *  
001500*              SQL version                                      *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBANK06P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
002700                                                                   
002800 DATA DIVISION.                                                    
002900                                                                   
003000 WORKING-STORAGE SECTION.                                          
004100     EXEC SQL                                                      
004200          BEGIN DECLARE SECTION                                    
004300     END-EXEC. 
                                                           
004700     EXEC SQL                                                      
004800          INCLUDE CBANKSTX                                         
004900     END-EXEC.                                                     

       COPY CBANKSTXX.
005200                                                                   
005400 COPY SQLCA .
005600                                                                   
004100     EXEC SQL                                                      
004200          END DECLARE SECTION                                      
004300     END-EXEC.                                                     
005800                                                                   
005900 LINKAGE SECTION.                                                  
006400 COPY CBANKVC6 .        

       01 BANK-ERRMSG              PIC X(65).
       01 GOOD-ERRMSG              PIC X(65).
                                                                 
001400 PROCEDURE DIVISION  using   by reference  CD06-DATA
                                   by reference  BANK-ERRMSG   
                                   by reference  GOOD-ERRMSG.   
007600                                                                   
007800* Insert two rows/records (From/To)  
011600     MOVE CD06I-PERSON-PID   TO DCL-BTX-PID.
           MOVE '1'                TO DCL-BTX-TYPE.
           MOVE '1'                TO DCL-BTX-SUB-TYPE.
           MOVE CD06I-FROM-ACC     TO DCL-BTX-ACCNO.
           MOVE CD06I-FROM-AMOUNT  TO DCL-BTX-AMOUNT.
           MOVE CD06I-FROM-DESC    TO DCL-BTX-DATA-OLD.
         
      *    IF SQLCODE = ZERO
               PERFORM P900-INSERT-BNKTXN.                      
013400                                                                   
010600     IF SQLCODE IS NOT EQUAL TO ZERO                               
010800        MOVE 'Unable to insert FROM transaction record'            
010900          TO BANK-ERRMSG                                             
011000     END-IF. 
                                                             
      *== second row/record                                                                   
           MOVE CD06I-PERSON-PID   TO DCL-BTX-PID.
           MOVE '1'                TO DCL-BTX-TYPE.
           MOVE '2'                TO DCL-BTX-SUB-TYPE.
           MOVE CD06I-TO-ACC       TO DCL-BTX-ACCNO.
           MOVE CD06I-TO-AMOUNT    TO DCL-BTX-AMOUNT.
           MOVE CD06I-TO-DESC      TO DCL-BTX-DATA-OLD.
         
           IF SQLCODE = ZERO
               PERFORM P900-INSERT-BNKTXN.                      
013400                                                                   
013800     IF SQLCODE IS NOT EQUAL TO ZERO                               
014000        MOVE 'Unable to insert TO transaction record'              
010900          TO BANK-ERRMSG                                             
014200     END-IF.                                                       
014300                                                                   
001600     GOBACK. 
       
      *=======================================================
      * Make Table Insert
011700 P900-INSERT-BNKTXN.
       
           EXEC SQL                                                      
011800          INSERT INTO BNKTXN (
                   BTX_PID,                                    
012000             BTX_TYPE,                                   
012100             BTX_SUB_TYPE,                               
012200             BTX_ACCNO,                                  
012400             BTX_AMOUNT,                                 
012500             BTX_DATA_OLD                               
012600          ) VALUES (
                   :DCL-BTX-PID,                               
012700             :DCL-BTX-TYPE,                                             
012800             :DCL-BTX-SUB-TYPE,
012900             :DCL-BTX-ACCNO,                                   
013100             :DCL-BTX-AMOUNT,                                
013200             :DCL-BTX-DATA-OLD)
013300     END-EXEC.                                                     


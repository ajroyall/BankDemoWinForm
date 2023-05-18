      *****************************************************************  
      *                                                               *  
      *   Copyright (C) 1998-2011 opentext™. All Rights Reserved.   *  
      *   This demonstration program is provided for use by users     *  
      *   of opentext™ products and may be used, modified and       *  
      *   distributed as part of your application provided that       *  
      *   you properly acknowledge the copyright of opentext™       *  
      *   in this material.                                           *  
      *                                                               *  
      *****************************************************************  
                                                                         
      *****************************************************************  
      * Program:     DBANK05P.CBL                                     *  
      * Function:    Obtain list of transactions for an account       *  
      *              SQL version                                      *  
      *****************************************************************  
                                                                         
       IDENTIFICATION DIVISION.                                          
       PROGRAM-ID.                                                       
           DBANK05P.                                                     
       DATE-WRITTEN.                                                     
           September 2011.                                               
                                                                         
       DATA DIVISION.                                                    
                                                                         
       WORKING-STORAGE SECTION.                                          

       01  WS-MISC-STORAGE.                                              
003500   05  DISP-SQLCODE                          PIC -9(5).       
         05  WS-SUB1                               PIC S9(4) COMP.       
002100   05  TXN-DATA-OLD                          PIC X(150).           
002200   05  TXN-T1-OLD REDEFINES TXN-DATA-OLD.                          
002300     15  TXN-T1-OLD-DESC                     PIC X(30).            

           EXEC SQL                                                     
004200          BEGIN DECLARE SECTION                               
004300     END-EXEC.                                                    
                                                                         
           EXEC SQL                                                      
                INCLUDE CBANKSTX                                         
           END-EXEC.  
           
       COPY CBANKSTXX.
                                                        
       COPY SQLCA   .
                                                
004100     EXEC SQL                                                   
004200          END DECLARE SECTION                                   
004300     END-EXEC.  
                                                                                                                              
       LINKAGE SECTION.                                                  
001500 COPY CBANKVC5 .         
014700                                                                   
       01  BANK-ERRMSG                 PIC X(65).
                                                                         
001400 PROCEDURE DIVISION  USING   BY REFERENCE CD05-DATA
                                   BY REFERENCE BANK-ERRMSG. 
                                                   
           INITIALIZE CD05O-DATA.
           INITIALIZE SQLCA. 
                                              
           EXEC SQL                                
                DECLARE TXN_CSR CURSOR FOR                 
                SELECT TX.BTX_TIMESTAMP,                        
                       TX.BTX_AMOUNT,                              
                       TX.BTX_DATA_OLD                             
                FROM BNKTXN TX                                     
                WHERE (TX.BTX_ACCNO    = :CD05I-ACC) AND                 
                      (TX.BTX_TYPE     = '1')              
                ORDER BY TX.BTX_TIMESTAMP ASC                        
                FOR FETCH ONLY                                      
           END-EXEC.                                                  
           
           PERFORM P100-OPEN-CURSOR.
                                                                         
           PERFORM P110-FETCH-DATA VARYING WS-SUB1 FROM 1 BY 1 
              UNTIL SQLCODE NOT EQUAL ZERO.
                                                                        
           PERFORM P190-CLOSE-CURSOR.

           GOBACK.                                                      
       
       P100-OPEN-CURSOR.
           EXEC SQL                                                  
                OPEN TXN_CSR                                   
           END-EXEC. 
                                                            
           PERFORM P800-ERROR-CHECK.
       
       P110-FETCH-DATA.
            EXEC SQL                                                  
                FETCH TXN_CSR                                
                INTO :DCL-BTX-TIMESTAMP,                             
                     :DCL-BTX-AMOUNT,                                
                     :DCL-BTX-DATA-OLD                               
            END-EXEC.                                                 
                                                                         
           IF SQLCODE = 1 
               MOVE ZERO TO SQLCODE.
           
           PERFORM P800-ERROR-CHECK.
                                                 
           IF SQLCODE IS EQUAL TO ZERO                                   
              MOVE DCL-BTX-TIMESTAMP   TO CD05O-ID (WS-SUB1)               
              MOVE DCL-BTX-AMOUNT      TO CD05O-AMT-N (WS-SUB1)               
              MOVE DCL-BTX-DATA-OLD    TO TXN-T1-OLD                        
              MOVE TXN-T1-OLD-DESC     TO CD05O-DESC (WS-SUB1)               
           END-IF.                                                       

       P190-CLOSE-CURSOR.
           EXEC SQL                                                  
               CLOSE TXN_CSR                                 
           END-EXEC.
                                                             
           PERFORM P800-ERROR-CHECK.
       
       P800-ERROR-CHECK.                                          
           IF SQLCODE NOT EQUAL ZERO AND SQLCODE NOT EQUAL +100
                   MOVE SQLCODE    TO  DISP-SQLCODE
                   STRING 'SQLCODE: '  DELIMITED BY SIZE
                          DISP-SQLCODE DELIMITED BY SIZE 
                     INTO BANK-ERRMSG
           END-IF.
           
           EXIT.

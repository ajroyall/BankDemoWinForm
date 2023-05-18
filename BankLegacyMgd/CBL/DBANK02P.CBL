000100*****************************************************************  
000200*                                                               *  
000300*   Copyright (C) 1998-2002 opentext™. All Rights Reserved.   *  
000400*   This demonstration program is provided for use by users     *  
000500*   of opentext™ products and may be used, modified and       *  
000600*   distributed as part of your application provided that       *  
000700*   you properly acknowledge the copyright of opentext™       *  
000800*   in this material.                                           *  
000900*                                                               *  
001000*****************************************************************  
001100                                                                   
001200*****************************************************************  
001300* Program:      .CBL                                     *  
001400* Function:    Obtain/update address information                *  
001500*              SQL version                                      *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000      DBANK02P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
                                                   
002800 DATA DIVISION.                                                    
002900                                                                   
003000 WORKING-STORAGE SECTION.                                          
       01  WS-FIELDS.
           05  DISP-SQLCODE            PIC -9(5).
           
           EXEC SQL                                                      
004200          BEGIN DECLARE SECTION                                    
004300     END-EXEC.                                                     
003500                                                                   
004400     EXEC SQL                                                      
004500          INCLUDE CBANKSCS                                          
004600     END-EXEC.
                                                            
004800 COPY SQLCA.                                            
005000                                                                   
       COPY CBANKSCSX.
       
004100     EXEC SQL                                                      
004200          END DECLARE SECTION                                      
004300     END-EXEC.                                                     
005200                                                                   
005300 LINKAGE SECTION.                                                  
       01  BANK-USERID             PIC X(5).

       COPY CBANKVC2 .         

       01  BANK-ERRMSG             PIC X(65).
004200                                               
001400 PROCEDURE DIVISION USING by reference BANK-USERID
                                by reference CD02-DATA 
                                BY REFERENCE BANK-ERRMSG.
006500                                                                   
007100*****************************************************************  
007200* See if we have a read or write request and react accordingly  *  
007300*****************************************************************  
007400     EVALUATE TRUE                                                 
007500       WHEN CD02I-READ                                             
006900         MOVE SPACES TO CD02O-DATA                                   
007600         PERFORM READ-PROCESSING                              
007700                              
007800       WHEN CD02I-WRITE                                            
007900         PERFORM WRITE-PROCESSING
                                     
008100       WHEN OTHER                                                  
008200         MOVE HIGH-VALUES        TO BANK-USERID                      
008300         MOVE 'Bad request code' TO BANK-ERRMSG 
                   
008400     END-EVALUATE.                                                 
008500                                                                   
001600     GOBACK.                  
009500                                                                   
009600*****************************************************************  
009700* Read request                                                  *  
009800*****************************************************************  
009900 READ-PROCESSING.                                                  
010000     EXEC SQL                                                      
010100          SELECT CS.BCS_NAME,                                      
010300                 CS.BCS_ADDR1,                                     
010400                 CS.BCS_ADDR2,                                     
010500                 CS.BCS_STATE,                                     
010600                 CS.BCS_COUNTRY,                                   
010700                 CS.BCS_POST_CODE,                                 
010800                 CS.BCS_TEL,                                       
010900                 CS.BCS_EMAIL,                                     
011000                 CS.BCS_SEND_MAIL,                                 
011100                 CS.BCS_SEND_EMAIL                                 
011200          INTO :DCL-BCS-NAME,                                      
011400               :DCL-BCS-ADDR1,                                     
011500               :DCL-BCS-ADDR2,                                     
011600               :DCL-BCS-STATE,                                     
011700               :DCL-BCS-COUNTRY,                                   
011800               :DCL-BCS-POST-CODE,                                 
011900               :DCL-BCS-TEL,                                       
012000               :DCL-BCS-EMAIL,                                     
012100               :DCL-BCS-SEND-MAIL,                                 
012200               :DCL-BCS-SEND-EMAIL                                 
012300          FROM BNKCUST CS                                          
012400          WHERE CS.BCS_PID = :BANK-USERID                     
012500     END-EXEC.                                                     
012600                                                                   
013000     IF SQLCODE IS EQUAL TO ZERO                                   
013200        MOVE DCL-BCS-NAME        TO CD02O-NAME                    
013300        MOVE DCL-BCS-ADDR1       TO CD02O-ADDR1                  
013400        MOVE DCL-BCS-ADDR2       TO CD02O-ADDR2                  
013500        MOVE DCL-BCS-STATE       TO CD02O-STATE                  
013600        MOVE DCL-BCS-COUNTRY     TO CD02O-CNTRY                
013700        MOVE DCL-BCS-POST-CODE   TO CD02O-PSTCDE             
013800        MOVE DCL-BCS-TEL         TO CD02O-TELNO                    
013900        MOVE DCL-BCS-EMAIL       TO CD02O-EMAIL                  
014000        MOVE DCL-BCS-SEND-MAIL   TO CD02O-SEND-MAIL          
014100        MOVE DCL-BCS-SEND-EMAIL  TO CD02O-SEND-EMAIL        
014200     ELSE                                                       
019500        PERFORM ERROR-PROCESS
           END-IF.                  
015200                                                                   
015300*READ-PROCESSING-EXIT.                                             
015400     EXIT.                                                         
015500                                                                   
015600*****************************************************************  
015700* Write request                                                 *  
015800*****************************************************************  
015900 WRITE-PROCESSING.                                                 
016000     MOVE CD02I-NAME         TO DCL-BCS-NAME.                    
016000     MOVE CD02I-ADDR1        TO DCL-BCS-ADDR1.                    
016100     MOVE CD02I-ADDR2        TO DCL-BCS-ADDR2.                    
016200     MOVE CD02I-STATE        TO DCL-BCS-STATE.                    
016300     MOVE CD02I-CNTRY        TO DCL-BCS-COUNTRY.                  
016400     MOVE CD02I-PSTCDE       TO DCL-BCS-POST-CODE.               
016500     MOVE CD02I-TELNO        TO DCL-BCS-TEL.                      
016600     MOVE CD02I-EMAIL        TO DCL-BCS-EMAIL.                    
016700     MOVE CD02I-SEND-MAIL    TO DCL-BCS-SEND-MAIL.            
016800     MOVE CD02I-SEND-EMAIL   TO DCL-BCS-SEND-EMAIL.          
016900     EXEC SQL                                                      
017000          UPDATE BNKCUST                                           
017100          SET BCS_NAME       = :DCL-BCS-NAME,                          
017100              BCS_ADDR1      = :DCL-BCS-ADDR1,                          
017200              BCS_ADDR2      = :DCL-BCS-ADDR2,                          
017300              BCS_STATE      = :DCL-BCS-STATE,                          
017400              BCS_COUNTRY    = :DCL-BCS-COUNTRY,                      
017500              BCS_POST_CODE  = :DCL-BCS-POST-CODE,                  
017600              BCS_TEL        = :DCL-BCS-TEL,                              
017700              BCS_EMAIL      = :DCL-BCS-EMAIL,                          
017800              BCS_SEND_MAIL  = :DCL-BCS-SEND-MAIL,                  
017900              BCS_SEND_EMAIL = :DCL-BCS-SEND-EMAIL                 
018000          WHERE BCS_PID = :BANK-USERID                        
018100     END-EXEC.                                                     
018200                                                                   
018600     IF SQLCODE NOT EQUAL ZERO                                 
019500        PERFORM ERROR-PROCESS                  
018900     END-IF.                                                       
019900                                                                   
020000*WRITE-PROCESSING-EXIT.                                            
020100     EXIT.                                                         

      *========================================================================                                                                   
020000 ERROR-PROCESS.                                            
           IF SQLCODE = 100                                   
018800        MOVE "Customer not found for Update"  TO BANK-ERRMSG                     
019400     ELSE                              
              MOVE SQLCODE    TO  DISP-SQLCODE
       
              STRING 'Error - SQLCODE: '   DELIMITED BY SIZE
                      DISP-SQLCODE         DELIMITED BY SIZE
                INTO BANK-ERRMSG                  
020200     END-IF.                                                                 

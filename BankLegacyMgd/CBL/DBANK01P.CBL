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
001300* Program:     DBANK01P.CBL                                     *  
001400* Function:    Obtain User details                              *  
 01500*              SQL version                                      *
      *              Re-written in 2011-2012 to Visual COBOL          *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBANK01P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
002500                                                                   
002800 DATA DIVISION.                                                    
002900                                                                   
003000 WORKING-STORAGE SECTION.                                          
003100 01  WS-MISC-STORAGE.                                              
003500   05  SQLCODE-DISP                          PIC -9(5).             
004100
           EXEC SQL                                                      
004200          BEGIN DECLARE SECTION                                    
004300     END-EXEC.                                                     
003600
004400     EXEC SQL                                                      
004500          INCLUDE CBANKSCS                                          
004600     END-EXEC.
                                                    
005000 COPY SQLCA.                                                                  

006700 COPY CBANKSCSX.                                                   

           EXEC SQL                                                      
004200          END DECLARE SECTION                                      
004300     END-EXEC.                                                     
005200                                                                   
005300 LINKAGE SECTION.                                                  
005800 01  BANK-USERID         PIC X(5).
       
       COPY CBANKVC1 . 
                                                                         
007600*****************************************************************  
007400* use 'by Reference' to ensure data is passed to calling pgm    * 
007600*****************************************************************  
001400 PROCEDURE DIVISION USING    by Reference BANK-USERID
                                   by Reference CD01-DATA.
                                              
006900     MOVE SPACES TO CD01O-DATA.
           Move BANK-USERID  to  CD01I-PERSON-PID.                                    
007000                                                                   
007200* Now fetch the requested record                                *  
007400     EXEC SQL                                                      
007500          SELECT CS.BCS_PID,                                       
007600                 CS.BCS_NAME                                       
007700          INTO :DCL-BCS-PID,                                       
007800               :DCL-BCS-NAME                                       
007900          FROM BNKCUST CS                                          
008000          WHERE CS.BCS_PID = :CD01I-PERSON-PID                     
008100     END-EXEC.                                                     
008200                                                                   
008600     EVALUATE SQLCODE
              WHEN ZERO                                                  
008700             MOVE DCL-BCS-PID TO CD01O-PERSON-PID                  
008800             MOVE DCL-BCS-NAME TO CD01O-PERSON-NAME                
008900        WHEN +100                                                  
009500             MOVE SPACES TO CD01O-PERSON-PID                       
009600             MOVE 'Person not found' TO CD01O-PERSON-NAME          
009700        WHEN OTHER                                                 
009500             MOVE SPACES TO CD01O-PERSON-PID                       
009600             MOVE SQLCODE to SQLCODE-DISP
                   STRING 'SQLCODE : ' delimited by size
                          SQLCODE-DISP delimited by size
                     INTO CD01O-PERSON-NAME                              
009800             END-STRING
           END-EVALUATE                                                  

           GOBACK.                                                    

000100*****************************************************************  
000200*                                                               *  
000300*   Copyright (C) 1998-2011 opentext�. All Rights Reserved.   *  
000400*   This demonstration program is provided for use by users     *  
000500*   of opentext� products and may be used, modified and       *  
000600*   distributed as part of your application provided that       *  
000700*   you properly acknowledge the copyright of opentext�       *  
000800*   in this material.                                           *  
000900*                                                               *  
001000*****************************************************************  
001100                                                                   
001200*****************************************************************  
001300* Program:     BBANK60P.CBL                                     *  
001400* Layer:       Business logic                                   *  
001500* Function:    Update address information                       *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     BBANK60P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2011.                                               
002700                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
005900                                                                   
006000 COPY CSTATESD.                                                    
006100                                                                   
       01  CD01-DATA.                                                  
001500     10  CD01I-DATA.                                               
001600       15  CD01I-PERSON-PID                  PIC X(5).             
001700     10  CD01O-DATA.                                               
001800       15  CD01O-PERSON-PID                  PIC X(5).             
001900       15  CD01O-PERSON-NAME                 PIC X(25).                                                                  
009600 
       LINKAGE SECTION.
       01  BANK-USERID             PIC X(5).
           
       COPY CBANKVC2.             
           
       01  BANK-ERRMSG             PIC X(65).
       01  GOOD-ERRMSG             PIC X(65).

                                                                 
      * Use of 'VALUE' to send the Key and 'Reference' to get back data
001400 PROCEDURE DIVISION USING by value     BANK-USERID
                                by reference CD02-DATA 
                                by reference BANK-ERRMSG 
                                by reference GOOD-ERRMSG .

011400     MOVE SPACES TO BANK-ERRMSG GOOD-ERRMSG.     
006700                                                                   
008700     IF CD02I-READ AND BANK-USERID > SPACES THEN
               PERFORM READ-DATA.
               
           IF CD02I-WRITE THEN
               PERFORM UPDATE-DATA.
               
           GOBACK.                                                            
011200                                                                   
031200*===============================================================================                                                                  
015100 UPDATE-DATA.                                                                
020800     PERFORM VALIDATE-DATA .                                 

002000     IF BANK-ERRMSG = SPACES THEN
               CALL 'DBANK02P' USING   by reference BANK-USERID
                                       by reference CD02-DATA
                                       by reference BANK-ERRMSG .
                                       
002000     IF BANK-ERRMSG = SPACES THEN
027700        MOVE 'Address Successfully Updated' TO GOOD-ERRMSG.                  
028600                                                                   
001600     EXIT.
       
031200*===============================================================================                                                                  
031300 VALIDATE-DATA.
           IF BANK-USERID = SPACES THEN
035300           MOVE 'No User Reference given'        TO BANK-ERRMSG    
           END-IF.
                                                                   
           IF CD02I-ADDR1 = SPACES THEN
035300           MOVE 'Address Line 1 must be present' TO BANK-ERRMSG    
           END-IF.
                                                                   
           IF BANK-ERRMSG = SPACES AND
              CD02I-PSTCDE = SPACES THEN
035300           MOVE 'Post Code must be present'      TO BANK-ERRMSG    
           END-IF.
                                                                   
           IF BANK-ERRMSG = SPACES AND
              CD02I-CNTRY = SPACES THEN
035300           MOVE 'Country must be present'        TO BANK-ERRMSG    
           END-IF.
                                                                   
           IF BANK-ERRMSG = SPACES AND
              CD02I-NAME = SPACES THEN
035300           MOVE 'Name must be present'           TO BANK-ERRMSG    
           END-IF.
                                                                   
034800     IF BANK-ERRMSG = SPACES AND
              CD02I-EMAIL IS NOT EQUAL TO SPACES                
034900          MOVE 0 TO STATE-PROV-SUB                                   
035000          INSPECT CD02I-EMAIL TALLYING STATE-PROV-SUB FOR ALL '@'                                              
035200          IF STATE-PROV-SUB IS NOT EQUAL TO 1                        
035300             MOVE 'E-Mail address format invalid' TO BANK-ERRMSG    
035500          END-IF                                                     
035600     END-IF.
                                                              
036900     IF BANK-ERRMSG = SPACES AND 
              CD02I-SEND-EMAIL = 'Y' AND CD02I-EMAIL = SPACES                    
037100          MOVE 'Email Address required for SEND Email' TO 
                BANK-ERRMSG
037300     END-IF.                                                       
                                           
037900 VALIDATE-DATA-EXIT.                                               
038000     EXIT.
        
038100*=========================================================================                                                                   
038200 READ-DATA.                                             
038300     MOVE SPACES TO CD02O-DATA.
                                                
038800* Now go get the data                                              
            CALL 'DBANK02P' USING   by reference BANK-USERID
                                    by reference CD02-DATA
                                    BY REFERENCE BANK-ERRMSG .
       
      * Put any post-retrieval data manipulation here
           IF BANK-ERRMSG = SPACES
               MOVE "Successfully Retrieved"  TO GOOD-ERRMSG.
                                                           
041700     EXIT.                                                         
041800                                                                   

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
001100*                                                                  
001200*****************************************************************  
001300* Program:     BBANK03P.CBL                                     *  
001400* Layer:       Business logic                                   *  
001500* Function:    Display account balances                         *  
001600*****************************************************************  
001700*                                                                  
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     BBANK30P.                                                     
002100 DATE-WRITTEN.                                                 
002200     September 2011.                                             
002500                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
003000 01  WS-MISC-STORAGE.                                              
004500   05  WS-SUB1                               PIC S9(4) COMP.       
                                                                            
005100 01  WS-SERVICE-CHARGES.                                           
005200   05  WS-SRV-MSG.                                                 
005300     10  FILLER                              PIC X(43)             
005400         VALUE 'Service charges are estimated based on your'.      
005500     10  FILLER                              PIC X(19)             
005600         VALUE ' existing balances '.                              
005700   05  WS-SRV-BAL                            PIC X(9).             
005800   05  WS-SRV-BAL-N REDEFINES WS-SRV-BAL     PIC S9(7)V99.         
005900   05  WS-SRV-CHARGE                         PIC ZZ9.99            
006000                                             BLANK ZERO.           
006100   05  WS-SRV-AMT                            PIC 9(3)V99.          
006200   05  WS-SRV-CHARGE-LIMITS.                                       
006300     10  WS-SRV-BAND0.                                             
006400       15  WS-SRV-BAL0     VALUE 9999999       PIC S9(7).          
006500       15  WS-SRV-CHG0     VALUE 050.00        PIC 9(3)V99.        
006600     10  WS-SRV-BAND1.                                             
006700       15  WS-SRV-BAL1     VALUE 0000000       PIC S9(7).          
006800       15  WS-SRV-CHG1     VALUE 025.00        PIC 9(3)V99.        
006900     10  WS-SRV-BAND2.                                             
007000       15  WS-SRV-BAL2     VALUE 0001000       PIC S9(7).          
007100       15  WS-SRV-CHG2     VALUE 020.00        PIC 9(3)V99.        
007200     10  WS-SRV-BAND3.                                             
007300       15  WS-SRV-BAL3     VALUE 0005000       PIC S9(7).          
007400       15  WS-SRV-CHG3     VALUE 015.00        PIC 9(3)V99.        
007500     10  WS-SRV-BAND4.                                             
007600       15  WS-SRV-BAL4     VALUE 0010000       PIC S9(7).          
007700       15  WS-SRV-CHG4     VALUE 010.00        PIC 9(3)V99.        
007800     10  WS-SRV-BAND5.                                             
007900       15  WS-SRV-BAL5     VALUE 0100000       PIC S9(7).          
008000       15  WS-SRV-CHG5     VALUE 000.00        PIC 9(3)V99.        
008100                                                                   
009400 COPY UDATECC2 .                                                     
       COPY CBANKVC1 . 
                                                                         
009600 LINKAGE SECTION.
       01  BANK-USERID         PIC X(5).
       01  BANK-USERNM         PIC X(25).
       
001400 COPY CBANKVC3 .                 
       
       01  BANK-ERRMSG         PIC X(65).
       01  BANK-SRVMSG         PIC X(90).
                                                                 
      * Use of 'VALUE' to send and 'Reference' to get back data
001400 PROCEDURE DIVISION USING by value     BANK-USERID
                                by reference BANK-USERNM  
                                by reference CD03-DATA 
                                by reference BANK-ERRMSG
                                by reference BANK-SRVMSG.

      *  Clear all previous data 
011400     MOVE SPACES TO BANK-ERRMSG BANK-USERNM CD01-DATA CD03-DATA.     
011500                                                                   
011700* This is the main process
024400     PERFORM P100-POPULATE-SCREEN-DATA .                                
024600                                                                   
026300     GOBACK.                                                       
026400                                                                   
011600*****************************************************************  
027400 P100-POPULATE-SCREEN-DATA.                                             
027500     MOVE SPACES TO CD03-DATA.                                     
               
027700* Now go get the data. First User Name, then Account Balances                                              
002000     IF BANK-USERID > Spaces Then
               CALL 'DBANK01P' USING   by reference BANK-USERID
                                       by Reference CD01-DATA.

002000     IF BANK-USERID > Spaces Then  
               CALL 'DBANK03P' USING   by reference BANK-USERID
                                       by Reference CD03-DATA.
           
           If CD01O-PERSON-NAME > Spaces Then
               Move CD01O-PERSON-NAME to BANK-USERNM.

           MOVE 1 TO WS-SUB1 .
           
           Perform varying WS-SUB1 from 1 by 1
             until CD03O-ACC(WS-SUB1) = SPACES

               MOVE CD03O-BAL(WS-SUB1) TO WS-SRV-BAL
028800         PERFORM P200-CALC-SERVICE-CHARGE                               
               MOVE WS-SRV-AMT     TO WS-SRV-CHARGE                            
029000         MOVE WS-SRV-CHARGE  TO CD03O-SRVN(WS-SUB1)   

               MOVE CD03O-DTE(WS-SUB1) TO DDIDATA                             
029700         PERFORM P300-CALL-DATECONV                                  
029900         MOVE DDODATA-DEF-1 TO CD03O-DTE(WS-SUB1)
                                  
           END-PERFORM.
           
041000     EXIT.                                                         
041200                                                                   
041300*****************************************************************  
041400* Calculate any service charges based on provided balance       *  
041500*****************************************************************  
041600 P200-CALC-SERVICE-CHARGE.       
                                       
           IF WS-SRV-BAL IS EQUAL TO SPACES Then
              MOVE ZERO   TO WS-SRV-AMT
           ELSE
              MOVE WS-SRV-MSG TO BANK-SRVMSG
                                      
              EVALUATE WS-SRV-BAL-N
              WHEN GREATER THAN WS-SRV-BAL5
                MOVE WS-SRV-CHG5 TO WS-SRV-AMT                             
              WHEN GREATER THAN WS-SRV-BAL4
                MOVE WS-SRV-CHG4 TO WS-SRV-AMT                             
              WHEN GREATER THAN WS-SRV-BAL3
                MOVE WS-SRV-CHG3 TO WS-SRV-AMT                             
              WHEN GREATER THAN WS-SRV-BAL2
                MOVE WS-SRV-CHG2 TO WS-SRV-AMT                             
              WHEN GREATER THAN WS-SRV-BAL1
                MOVE WS-SRV-CHG1 TO WS-SRV-AMT                             
              WHEN OTHER
                MOVE WS-SRV-CHG0 TO WS-SRV-AMT  
              END-EVALUATE
           END-IF.
                                  
044700     EXIT.                                                         
044800*                                                                  
044900*****************************************************************  
045000* Call common routine to perform date conversions
      * Convert from YYYY-MM-DD to DD-MMM-YYYY   
045100*****************************************************************  
045200 P300-CALL-DATECONV.
           MOVE "0" to DDITYPE.
           MOVE "1" TO DDOTYPE.                                                    
045500     CALL 'UDATECNV' USING by Reference CDATED.             

045700     EXIT.                                                         

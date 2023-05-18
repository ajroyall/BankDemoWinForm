000100*****************************************************************  
000200*                                                               *  
000300*   Copyright (C) 1998-2012 opentext�. All Rights Reserved.   *  
000400*   This demonstration program is provided for use by users     *  
000500*   of opentext� products and may be used, modified and       *  
000600*   distributed as part of your application provided that       *  
000700*   you properly acknowledge the copyright of opentext�       *  
000800*   in this material.                                           *  
000900*                                                               *  
001000*****************************************************************  
001100                                                                   
001200*****************************************************************  
001300* Program:     BBANK50P.CBL                                     *  
001400* Layer:       Business logic                                   *  
001500* Function:    Transfer funds between accounts                  *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     BBANK50P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2012.                                               
002700                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
003000 01  WS-MISC-STORAGE.                                              
004600   05  WS-SEL-COUNT                          PIC 9(1).             
004700   05  WS-XFER-AMT                           PIC X(8).             
004800   05  WS-XFER-AMT-TMP                       PIC X(9).             
004900   05  WS-XFER-AMT-TMP-N REDEFINES WS-XFER-AMT-TMP                 
005000                                             PIC S9(7)V99.         
005100   05  WS-XFER-AMT-NUM                       PIC X(9).             
005200   05  WS-XFER-AMT-NUM-N REDEFINES WS-XFER-AMT-NUM                 
005300                                             PIC S9(7)V99.         
005400   05  WS-XFER-ACCT-FROM                     PIC X(9).             
005500   05  WS-XFER-ACCT-FROM-BAL                 PIC X(13).            
005600   05  WS-XFER-ACCT-FROM-BAL-N               PIC S9(7)V99.         
005700   05  WS-XFER-ACCT-FROM-NEW-BAL-N           PIC S9(7)V99.         
005800   05  WS-XFER-ACCT-TO                       PIC X(9).             
005900   05  WS-XFER-ACCT-TO-BAL                   PIC X(13).            
006000   05  WS-XFER-ACCT-TO-BAL-N                 PIC S9(7)V99.         
006100   05  WS-XFER-ACCT-TO-NEW-BAL-N             PIC S9(7)V99.         
006200                                                                   
006400  01  CD06-DATA.                                                  
001600       15  CD06I-PERSON-PID                  PIC X(5).             
001800       15  CD06I-FROM-ACC                    PIC X(9).             
001900       15  CD06I-FROM-AMOUNT                 PIC S9(7)V99 COMP-3.  
002000       15  CD06I-FROM-DESC                   PIC X(30).            
002100       15  CD06I-TO-ACC                      PIC X(9).             
002200       15  CD06I-TO-AMOUNT                   PIC S9(7)V99 COMP-3.  
002300       15  CD06I-TO-DESC                     PIC X(30).            
007700                                                                   
008000 LINKAGE SECTION.                                                  
001400 COPY CBANKVC4 .

       01 BANK-ERRMSG              PIC x(65).
       01 GOOD-ERRMSG              PIC x(65).

                                                                  
001400 PROCEDURE DIVISION  USING   by reference    CD04-DATA
                                   by reference    BANK-ERRMSG 
                                   by reference    GOOD-ERRMSG. 
                                   
009800     MOVE SPACES TO BANK-ERRMSG GOOD-ERRMSG.                                
009900                                                                   
010000*****************************************************************  
010100* This is the main process                                      *  
020400     PERFORM P300-VALIDATE-DATA THRU                                    
020500             VALIDATE-DATA-EXIT.                                   
020600                                                                   
020800     IF BANK-ERRMSG = SPACES                                                
021600        PERFORM P100-PREPARE-TRANSFER
021700     END-IF.
                                                              
020800     IF BANK-ERRMSG = SPACES                                                
021600        PERFORM P200-MAKE-TRANSFER
021700     END-IF.
       
020800     IF BANK-ERRMSG = SPACES                                                
021600        PERFORM P210-SAVE-AUDIT
021700     END-IF.
                                                              
001600     GOBACK.  
021800     
      *===================================================================== 
       P100-PREPARE-TRANSFER.                                                              
021900*    MOVE SPACES                         TO  CD04-DATA.
                                                
022200     MOVE WS-XFER-ACCT-FROM-BAL-N        TO  CD04I-FROM-OLD-BAL.           
022300     SUBTRACT WS-XFER-AMT-NUM-N FROM WS-XFER-ACCT-FROM-BAL-N       
022400       GIVING WS-XFER-ACCT-FROM-NEW-BAL-N.                         
022500     MOVE WS-XFER-ACCT-FROM-NEW-BAL-N    TO  CD04I-FROM-NEW-BAL.       
022700     MOVE WS-XFER-ACCT-TO-BAL-N          TO  CD04I-TO-OLD-BAL.               
022800     ADD WS-XFER-AMT-NUM-N               TO  WS-XFER-ACCT-TO-BAL-N                
022900       GIVING WS-XFER-ACCT-TO-NEW-BAL-N.                           
023000     MOVE WS-XFER-ACCT-TO-NEW-BAL-N      TO  CD04I-TO-NEW-BAL.           
023100     MOVE WS-XFER-ACCT-FROM-BAL-N        TO  CD04I-FROM-OLD-BAL.  
      *
       P200-MAKE-TRANSFER.
002000     CALL 'DBANK04P' USING   BY REFERENCE CD04-DATA
                                   BY REFERENCE BANK-ERRMSG 
                                   BY REFERENCE GOOD-ERRMSG .
                                   
       P210-SAVE-AUDIT.
023900     STRING 'Transferred '    DELIMITED BY SIZE                    
024000            CD04I-AMT         DELIMITED BY SIZE                   
024100            ' from '          DELIMITED BY SIZE                          
024200            WS-XFER-ACCT-FROM DELIMITED BY SIZE                 
024300            ' to '            DELIMITED BY SIZE                            
024400            WS-XFER-ACCT-TO   DELIMITED BY SIZE                   
024500        INTO GOOD-ERRMSG.                                      
       
024600* Now produce the audit trail - record transactions                                     
024700      MOVE SPACES                  TO  CD06-DATA        .                           
024800      MOVE CD04I-PERSON-PID        TO  CD06I-PERSON-PID .                      
025000      MOVE CD04I-FROM-ACC          TO  CD06I-FROM-ACC   .                   
025100      MULTIPLY WS-XFER-AMT-NUM-N BY -1                           
025200                               GIVING  CD06I-FROM-AMOUNT.                                 
025300      STRING 'Transferred to a/c ' DELIMITED BY SIZE             
025400             CD04I-TO-ACC DELIMITED BY SIZE                      
025500                                 INTO  CD06I-FROM-DESC.                                     
025600      MOVE CD04I-TO-ACC            TO  CD06I-TO-ACC   .                       
025700      MULTIPLY WS-XFER-AMT-NUM-N BY +1                           
025800                               GIVING  CD06I-TO-AMOUNT.                                   
025900      STRING 'Transferred from a/c ' DELIMITED BY SIZE           
026000             CD04I-FROM-ACC DELIMITED BY SIZE                    
026100                                 INTO  CD06I-TO-DESC. 
                                  
002000     CALL 'DBANK06P' USING   by reference    CD06-DATA  
                                   by reference    BANK-ERRMSG 
                                   by reference    GOOD-ERRMSG. 
026300                                                                   
029400     EXIT.                                                             
       
      *===================================================================== 
029900 P300-VALIDATE-DATA.                                                    
030200     MOVE CD04I-AMT TO WS-XFER-AMT.                          
030300 
           PERFORM VALIDATE-XFER THRU                                    
030400             VALIDATE-XFER-EXIT.                                   
030500 
           IF BANK-ERRMSG > SPACES                                               
030600        GO TO VALIDATE-DATA-EXIT                                  
030700     END-IF.                                                       
030800                                                                   
031100     MOVE SPACES TO WS-XFER-ACCT-FROM.                             
031200     MOVE SPACES TO WS-XFER-ACCT-FROM-BAL.                         
031300     MOVE SPACES TO WS-XFER-ACCT-TO.                               
031400                                                                   
031500     IF CD04I-FROM-ACC IS NOT EQUAL TO LOW-VALUES                 
031700        MOVE CD04I-FROM-ACC      TO WS-XFER-ACCT-FROM                  
031800        MOVE CD04I-FROM-OLD-BAL  TO WS-XFER-ACCT-FROM-BAL-N              
031900     END-IF.                                                       
034000                                                                   
035300     MOVE ZERO TO WS-SEL-COUNT.                                    
035400                                                                   
035500     IF CD04I-TO-ACC IS NOT EQUAL TO LOW-VALUES                  
035700        MOVE CD04I-TO-ACC        TO WS-XFER-ACCT-TO                    
035800        MOVE CD04I-TO-OLD-BAL    TO WS-XFER-ACCT-TO-BAL-N                
035900     END-IF.                                                       
038000                                                                   
039300     IF WS-XFER-ACCT-FROM IS EQUAL TO WS-XFER-ACCT-TO              
039400        MOVE 'Please select an different to & from accounts'       
039500          TO BANK-ERRMSG                                          
039600        GO TO VALIDATE-DATA-EXIT                                  
039700     END-IF.                                                       
039800                                                                   
042500     IF WS-XFER-ACCT-FROM-BAL-N IS LESS THAN ZERO                  
042600        MOVE 'Cannot transfer from a negative balance' TO 
                BANK-ERRMSG
042800        GO TO VALIDATE-DATA-EXIT                                  
042900     END-IF.                                                       
043000     IF WS-XFER-AMT-NUM-N IS GREATER THAN WS-XFER-ACCT-FROM-BAL-N  
043100        MOVE 'Insufficient funds in from account'  TO BANK-ERRMSG                                          
043300        GO TO VALIDATE-DATA-EXIT                                  
043400     END-IF.                                                       
043500                                                                   
044000 VALIDATE-DATA-EXIT.                                               
044100     EXIT.                                                         
044200                                                                   
      *===================================================================== 
044300 VALIDATE-XFER.                                                    
044400 VALIDATE-XFER-RIGHT-JUSTIFY.                                      
044500     IF WS-XFER-AMT IS EQUAL TO SPACES OR                          
044600        WS-XFER-AMT IS EQUAL TO LOW-VALUES                         
044700        MOVE 'Please enter transfer amount' TO BANK-ERRMSG                                          
044900        GO TO VALIDATE-XFER-EXIT                                  
045000     END-IF.
                                                              
045100     IF WS-XFER-AMT (8:1) IS EQUAL TO SPACE OR                     
045200        WS-XFER-AMT (8:1) IS EQUAL TO LOW-VALUE                    
045300        MOVE WS-XFER-AMT (1:7)   TO WS-XFER-AMT-TMP                  
045400        MOVE SPACES              TO WS-XFER-AMT                                 
045500        MOVE WS-XFER-AMT-TMP     TO WS-XFER-AMT (2:7)                  
045600        GO TO VALIDATE-XFER-RIGHT-JUSTIFY                          
045700     END-IF.                                                       
045800 
           IF WS-XFER-AMT (6:1) IS NOT EQUAL TO '.'                      
045900        MOVE 'Period missing/misplaced in transfer amount'         
046000          TO BANK-ERRMSG                                          
046100        GO TO VALIDATE-XFER-EXIT                                  
046200     END-IF.                                                       
046300 
           MOVE SPACES TO WS-XFER-AMT-NUM.                               
046400     MOVE WS-XFER-AMT (1:5) TO WS-XFER-AMT-NUM (3:5).              
046500     MOVE WS-XFER-AMT (7:2) TO WS-XFER-AMT-NUM (8:2).              
046600 
           INSPECT WS-XFER-AMT-NUM REPLACING LEADING SPACES BY ZEROS.    
046700 
           IF WS-XFER-AMT-NUM IS NOT NUMERIC                             
046800        MOVE 'Transfer amount is invalid (not numeric)' TO 
                BANK-ERRMSG
047000        GO TO VALIDATE-XFER-EXIT                                  
047100     END-IF.                                                       
047200 
           IF WS-XFER-AMT-NUM IS EQUAL TO ZERO                           
047300        MOVE 'Please enter a non-zero transfer amount'  TO 
                BANK-ERRMSG
047500        GO TO VALIDATE-XFER-EXIT                                  
047600     END-IF.                                                       
047700                                                                   
048200 VALIDATE-XFER-EXIT.                                               
048300     EXIT.                                                         

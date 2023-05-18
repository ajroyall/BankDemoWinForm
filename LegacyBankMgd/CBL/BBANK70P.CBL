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
001300* Program:     BBANK70P.CBL                                     *  
001400* Layer:       Business logic                                   *  
001500* Function:    Calculate cost of loan                           *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     BBANK70P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2012.                                               
002700                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
003000 01  WS-MISC-STORAGE.                                              
003300*  05  WS-INPUT-FLAG                         PIC X(1).             
003400*    88  INPUT-OK                            VALUE '0'.            
003500*    88  INPUT-ERROR                         VALUE '1'.            
004600   05  WS-CALC-WORK-AREAS.                                         
004700* Used to count no of periods in rate                              
004800     10  WS-CALC-WORK-RATE-PERIOD            PIC 9(1).             
004900* Generate work area                                               
005000     10  WS-CALC-WORK-TEMP                   PIC X(7).             
005100* Work area for AMOUNT                                             
005200     10  WS-CALC-WORK-AMOUNT                 PIC X(7).             
005300     10  WS-CALC-WORK-AMOUNT-N REDEFINES WS-CALC-WORK-AMOUNT       
005400                                             PIC 9(7).             
005500* Work area for RATE                                               
005600     10  WS-CALC-WORK-RATE                   PIC X(7).             
005700* Used to hold first part of rate (before the period)              
005800     10  WS-CALC-WORK-RATE-P1                PIC X(6).             
005900     10  WS-CALC-WORK-RATE-P1-N REDEFINES WS-CALC-WORK-RATE-P1     
006000                                             PIC 9(6).             
006100* Used to hold second part of rate (before the period)             
006200     10  WS-CALC-WORK-RATE-P2                PIC X(6).             
006300     10  WS-CALC-WORK-RATE-P2-N REDEFINES WS-CALC-WORK-RATE-P2     
006400                                             PIC 9(6).             
006500* Used to hold rate as percentage (xxxvxxx)                        
006600     10  WS-CALC-WORK-PERC                   PIC X(6).             
006700     10  WS-CALC-WORK-PERC-N REDEFINES WS-CALC-WORK-PERC           
006800                                             PIC 9(3)V9(3).        
006900* Work area for TERM                                               
007000     10  WS-CALC-WORK-TERM                   PIC X(5).             
007100     10  WS-CALC-WORK-TERM-N REDEFINES WS-CALC-WORK-TERM           
007200                                             PIC 9(5).             
007300* Work area for PAYMENT                                            
007400     10  WS-CALC-WORK-PAYMENT                PIC X(9).             
007500     10  WS-CALC-WORK-PAYMENT-N REDEFINES WS-CALC-WORK-PAYMENT     
007600                                             PIC ZZZZZ9.99.        
007700                                                                   
007800   05  WS-LOAN-AREAS.                                              
007900     10  WS-LOAN-PRINCIPAL                   PIC S9(7).            
008000     10  WS-LOAN-INTEREST                    PIC SV9(8).           
008100     10  WS-LOAN-TERM                        PIC S9(5).            
008200     10  WS-LOAN-MONTHLY-PAYMENT             PIC S9(6)V99.         
                                                    
009200 LINKAGE SECTION.                                                  
       COPY CBANKVC7 .
        
       01 BANK-ERRMSG                              PIC X(65).            
009500                                                                   
001400 PROCEDURE DIVISION using    by reference LOAN-ENQUIRY
                                   by reference BANK-ERRMSG .

011000     MOVE SPACES TO BANK-ERRMSG.                                
011100                                                                   
011300* This is the main process 
020700     PERFORM VALIDATE-DATA.                                   
022200     
           IF BANK-ERRMSG = SPACES
               PERFORM CALCULATE-DATA THRU
                       CALCULATE-DATA-EXIT.
                                                                             
001600     GOBACK.                                                       
026500                                                                   
      *============================================================================
026600 CALCULATE-DATA.
022300* Calculate the monthly cost of the loan                       
022400     MOVE WS-CALC-WORK-AMOUNT-N TO WS-LOAN-PRINCIPAL.              
022500     DIVIDE 100 INTO WS-CALC-WORK-PERC-N                           
022600       GIVING WS-LOAN-INTEREST.                                    
022700     MOVE WS-CALC-WORK-TERM-N TO WS-LOAN-TERM.                     
022800     MOVE ZERO TO WS-LOAN-MONTHLY-PAYMENT.                         
022900                                                                   
023000     DIVIDE WS-LOAN-INTEREST BY 12                                 
023100       GIVING WS-LOAN-INTEREST ROUNDED.                            
023200     COMPUTE WS-LOAN-MONTHLY-PAYMENT ROUNDED =                     
023300       ((WS-LOAN-INTEREST * ((1 + WS-LOAN-INTEREST)                
023400           ** WS-LOAN-TERM)) /                                     
023500       (((1 + WS-LOAN-INTEREST) ** WS-LOAN-TERM) - 1 ))            
023600         * WS-LOAN-PRINCIPAL.                                      
023700     MOVE WS-LOAN-MONTHLY-PAYMENT TO WS-CALC-WORK-PAYMENT-N.       
023800     MOVE WS-CALC-WORK-PAYMENT TO BANK-SCR70-PAYMENT.              

023900* Left justify the result                                          
024000 LEFT-JUST-PAYMENT.                                                
024100     IF BANK-SCR70-PAYMENT (1:1) IS EQUAL TO ' '                   
024200        MOVE BANK-SCR70-PAYMENT (2:8) TO BANK-SCR70-PAYMENT (1:8)  
024300        MOVE ' ' TO BANK-SCR70-PAYMENT (9:1)                       
024400        GO TO LEFT-JUST-PAYMENT                                    
024500     END-IF.          
                                                     
       CALCULATE-DATA-EXIT.
           EXIT.    
                                                           
      *============================================================================
026600 VALIDATE-DATA.                                                    
026900     MOVE BANK-SCR70-AMOUNT TO WS-CALC-WORK-AMOUNT                
027000     PERFORM VALIDATE-AMOUNT THRU                                  
027100             VALIDATE-AMOUNT-EXIT.
                                        
027200     IF BANK-ERRMSG EQUAL SPACES THEN                                               
027600         MOVE BANK-SCR70-RATE TO WS-CALC-WORK-RATE                    
027700         PERFORM VALIDATE-RATE THRU                                    
027800                 VALIDATE-RATE-EXIT.                                   

027200     IF BANK-ERRMSG EQUAL SPACES THEN                                               
028300         MOVE BANK-SCR70-TERM TO WS-CALC-WORK-TERM                    
028400         PERFORM VALIDATE-TERM THRU                                    
028500                 VALIDATE-TERM-EXIT.                                   
029100                                                                   
029500     EXIT.                                                         

      *====
029700 VALIDATE-AMOUNT.                                                  
029800 VALIDATE-AMOUNT-RIGHT-JUSTIFY.                                    
029900     IF WS-CALC-WORK-AMOUNT IS EQUAL TO SPACES OR                  
030000        WS-CALC-WORK-AMOUNT IS EQUAL TO LOW-VALUES                 
030100        MOVE 'Please enter an amount'          TO BANK-ERRMSG                                          
030300        GO TO VALIDATE-AMOUNT-EXIT                                
030400     END-IF.                                                       

030500     IF WS-CALC-WORK-AMOUNT (7:1) IS EQUAL TO SPACES OR            
030600        WS-CALC-WORK-AMOUNT (7:1) IS EQUAL TO LOW-VALUE            
030700        MOVE WS-CALC-WORK-AMOUNT (1:6) TO WS-CALC-WORK-TEMP        
030800        MOVE SPACES TO WS-CALC-WORK-AMOUNT                         
030900        MOVE WS-CALC-WORK-TEMP (1:6) TO WS-CALC-WORK-AMOUNT (2:6)  
031000        GO TO VALIDATE-AMOUNT-RIGHT-JUSTIFY                        
031100     END-IF.                                                       

031200     INSPECT WS-CALC-WORK-AMOUNT                                   
031300       REPLACING LEADING SPACES BY ZEROS.                          

031400     IF WS-CALC-WORK-AMOUNT IS NOT NUMERIC                         
031500        MOVE 'Amount is invalid (not numeric)' TO BANK-ERRMSG                                          
031700        GO TO VALIDATE-AMOUNT-EXIT                                
031800     END-IF.                                                       

031900     IF WS-CALC-WORK-AMOUNT IS EQUAL TO ZERO                       
032000        MOVE 'Please enter a non-zero amount'  TO BANK-ERRMSG                                          
032200        GO TO VALIDATE-AMOUNT-EXIT                                
032300     END-IF.                                                       
032400                                                                   
032900 VALIDATE-AMOUNT-EXIT.                                             
033000     EXIT.                                                         
033100                                                                   
      *==== TOTALLY Unchanged from Original Code ====
033200 VALIDATE-RATE.                                                    
033300 VALIDATE-RATE-RIGHT-JUSTIFY.                                      
033400     IF WS-CALC-WORK-RATE IS EQUAL TO SPACES OR                    
033500        WS-CALC-WORK-RATE IS EQUAL TO LOW-VALUES                   
033600        MOVE 'Please enter an interest rate in the form 999.999'   
033700          TO BANK-ERRMSG                                          
033800        GO TO VALIDATE-RATE-EXIT                                  
033900     END-IF.                                                       
034000     IF WS-CALC-WORK-RATE (7:1) IS EQUAL TO SPACES OR              
034100        WS-CALC-WORK-RATE (7:1) IS EQUAL TO LOW-VALUE              
034200        MOVE WS-CALC-WORK-RATE (1:6) TO WS-CALC-WORK-TEMP          
034300        MOVE SPACES TO WS-CALC-WORK-RATE                           
034400        MOVE WS-CALC-WORK-TEMP (1:6) TO WS-CALC-WORK-RATE (2:6)    
034500        GO TO VALIDATE-RATE-RIGHT-JUSTIFY                          
034600     END-IF.                                                       
034700     INSPECT WS-CALC-WORK-RATE REPLACING LEADING SPACES BY ZERO.   
034800     MOVE ZERO TO WS-CALC-WORK-RATE-PERIOD.                        
034900     MOVE ZEROS TO WS-CALC-WORK-RATE-P1.                           
035000     MOVE ZEROS TO WS-CALC-WORK-RATE-P2.                           
035100* Rate is in form .xxxxxx                                          
035200     IF WS-CALC-WORK-RATE (1:1) IS EQUAL TO '.'                    
035300        MOVE ZEROS                   TO WS-CALC-WORK-RATE-P1       
035400        MOVE WS-CALC-WORK-RATE (2:6) TO WS-CALC-WORK-RATE-P2 (1:6) 
035500        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
035600     END-IF.                                                       
035700* Rate is in form x.xxxxx                                          
035800     IF WS-CALC-WORK-RATE (2:1) IS EQUAL TO '.'                    
035900        MOVE WS-CALC-WORK-RATE (1:1) TO WS-CALC-WORK-RATE-P1 (6:1) 
036000        MOVE WS-CALC-WORK-RATE (3:5) TO WS-CALC-WORK-RATE-P2 (1:5) 
036100        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
036200     END-IF.                                                       
036300* Rate is in form xx.xxxx                                          
036400     IF WS-CALC-WORK-RATE (3:1) IS EQUAL TO '.'                    
036500        MOVE WS-CALC-WORK-RATE (1:2) TO WS-CALC-WORK-RATE-P1 (5:2) 
036600        MOVE WS-CALC-WORK-RATE (4:4) TO WS-CALC-WORK-RATE-P2 (1:4) 
036700        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
036800     END-IF.                                                       
036900* Rate is in form xxx.xxx                                          
037000     IF WS-CALC-WORK-RATE (4:1) IS EQUAL TO '.'                    
037100        MOVE WS-CALC-WORK-RATE (1:3) TO WS-CALC-WORK-RATE-P1 (4:3) 
037200        MOVE WS-CALC-WORK-RATE (5:3) TO WS-CALC-WORK-RATE-P2 (1:3) 
037300        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
037400     END-IF.                                                       
037500* Rate is in form xxxx.xx                                          
037600     IF WS-CALC-WORK-RATE (5:1) IS EQUAL TO '.'                    
037700        MOVE WS-CALC-WORK-RATE (1:4) TO WS-CALC-WORK-RATE-P1 (3:4) 
037800        MOVE WS-CALC-WORK-RATE (6:2) TO WS-CALC-WORK-RATE-P2 (1:2) 
037900        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
038000     END-IF.                                                       
038100* Rate is in form xxxxx.x                                          
038200     IF WS-CALC-WORK-RATE (6:1) IS EQUAL TO '.'                    
038300        MOVE WS-CALC-WORK-RATE (1:5) TO WS-CALC-WORK-RATE-P1 (2:5) 
038400        MOVE WS-CALC-WORK-RATE (7:1) TO WS-CALC-WORK-RATE-P2 (1:1) 
038500        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
038600     END-IF.                                                       
038700* Rate is in form xxxxxx.                                          
038800     IF WS-CALC-WORK-RATE (7:1) IS EQUAL TO '.'                    
038900        MOVE WS-CALC-WORK-RATE (1:6) TO WS-CALC-WORK-RATE-P1 (1:6) 
039000        MOVE ZEROS                   TO WS-CALC-WORK-RATE-P2 (1:1) 
039100        ADD 1 TO WS-CALC-WORK-RATE-PERIOD                          
039200     END-IF.                                                       
039300     IF WS-CALC-WORK-RATE-PERIOD IS NOT EQUAL TO 1                 
039400        MOVE 'Decimal point missing/misplaced in interest rate'    
039500          TO BANK-ERRMSG                                          
039600        GO TO VALIDATE-RATE-EXIT                                  
039700     END-IF.                                                       
039800     IF WS-CALC-WORK-RATE-P1 IS NOT NUMERIC OR                     
039900        WS-CALC-WORK-RATE-P2 IS NOT NUMERIC                        
040000        MOVE 'Rate is not numeric'                                 
040100          TO BANK-ERRMSG                                          
040200        GO TO VALIDATE-RATE-EXIT                                  
040300     END-IF.                                                       
040400     IF WS-CALC-WORK-RATE-P2 (4:3) IS NOT EQUAL TO '000'           
040500        MOVE 'Rate has too many decimal places'                    
040600          TO BANK-ERRMSG                                          
040700        GO TO VALIDATE-RATE-EXIT                                  
040800     END-IF.                                                       
040900* Bring parts of rate together with no physical decimal point      
041000     MOVE WS-CALC-WORK-RATE-P1 (4:3) TO WS-CALC-WORK-PERC (1:3).   
041100     MOVE WS-CALC-WORK-RATE-P2 (1:3) TO WS-CALC-WORK-PERC (4:3).   
041200                                                                   
041300     IF WS-CALC-WORK-PERC-N IS NOT GREATER THAN ZERO               
041400        MOVE 'Nothing''s free. Rate must be greater than 0%'       
041500          TO BANK-ERRMSG                                          
041600        GO TO VALIDATE-RATE-EXIT                                  
041700     END-IF.                                                       
041800     IF WS-CALC-WORK-PERC-N IS NOT LESS THAN 100.000               
041900        MOVE 'Outrageous rate - 100% or more'                      
042000          TO BANK-ERRMSG                                          
042100        GO TO VALIDATE-RATE-EXIT                                  
042200     END-IF.                                                       
042300                                                                   
042800 VALIDATE-RATE-EXIT.                                               
042900     EXIT.                                                         
043000                                                                   
      *====
043100 VALIDATE-TERM.                                                    
043200 VALIDATE-TERM-RIGHT-JUSTIFY.                                      
043300     IF WS-CALC-WORK-TERM IS EQUAL TO SPACES OR                    
043400        WS-CALC-WORK-TERM IS EQUAL TO LOW-VALUES                   
043500        MOVE 'Please enter a term as a number of months' TO 
                BANK-ERRMSG
043700        GO TO VALIDATE-TERM-EXIT                                  
043800     END-IF.                                                       

043900     IF WS-CALC-WORK-TERM (5:1) IS EQUAL TO SPACES OR              
044000        WS-CALC-WORK-TERM (5:1) IS EQUAL TO LOW-VALUE              
044100        MOVE WS-CALC-WORK-TERM (1:4) TO WS-CALC-WORK-TEMP          
044200        MOVE SPACES TO WS-CALC-WORK-TERM                           
044300        MOVE WS-CALC-WORK-TEMP (1:4) TO WS-CALC-WORK-TERM (2:4)    
044400        GO TO VALIDATE-TERM-RIGHT-JUSTIFY                          
044500     END-IF.                                                       

044600     INSPECT WS-CALC-WORK-TERM                                     
044700       REPLACING LEADING SPACES BY ZEROS.                          

044800     IF WS-CALC-WORK-TERM IS NOT NUMERIC                           
044900        MOVE 'Term is invalid (not numeric)' TO BANK-ERRMSG                                          
045100        GO TO VALIDATE-TERM-EXIT                                  
045200     END-IF.                                                       

045300     IF WS-CALC-WORK-TERM IS EQUAL TO ZERO                         
045400        MOVE 'Please enter a non-zero term'  TO BANK-ERRMSG                                          
045600        GO TO VALIDATE-TERM-EXIT                                  
045700     END-IF.                                                       

045800     IF WS-CALC-WORK-TERM-N IS GREATER THAN 1200                   
045900        MOVE 'Term exceeds 100 years!'       TO BANK-ERRMSG                          
046100        GO TO VALIDATE-TERM-EXIT                                  
046200     END-IF.                                                       
046300                                                                   
046800 VALIDATE-TERM-EXIT.                                               
046900     EXIT.                                                         
047000                                                                   

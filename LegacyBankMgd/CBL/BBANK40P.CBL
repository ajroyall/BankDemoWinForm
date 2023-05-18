000100*****************************************************************  
000200*                                                                *  
000300*    Copyright (C) 1998-2012 opentext™. All Rights Reserved.   *  
000400*    This demonstration program is provided for use by users     *  
000500*    of opentext™ products and may be used, modified and       *  
000600*    distributed as part of your application provided that       *  
000700*    you properly acknowledge the copyright of opentext™       *  
000800*    in this material.                                           *  
000900*                                                                *  
001000* ****************************************************************  
001100                                                                   
001200* ****************************************************************  
001300*  Program:     BBANK40P.CBL                                     *  
001400*  Layer:       Business logic                                   *  
001500*  Function:    Populate transaction details list for user       *  
001600* ****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     BBANK40P.                                                     
002100 DATE-WRITTEN.                                                     
002200     September 2012.                                               
002700                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
003000 01  WS-MISC-STORAGE.                                              
003100   05  WS-PROGRAM-ID                         PIC X(8)              
003200       VALUE ' '.                                           
003600   05  WS-RETURN-FLAG                        PIC X(1).             
003700     88  WS-RETURN-FLAG-OFF                  VALUE LOW-VALUES.     
003800     88  WS-RETURN-FLAG-ON                   VALUE '1'.            
003900   05  WS-RETURN-MSG                         PIC X(75).            
004000     88  WS-RETURN-MSG-OFF                   VALUE SPACES.         
004400   05  WS-ERROR-MSG                          PIC X(75).            
004500   05  WS-EDIT-AMT                           PIC Z,ZZZ,ZZ9.99-.    
004600   05  WS-DYNAMIC-PGM                        PIC X(8)              
004700       VALUE 'UNKNOWN'.                                            
004800   05  WS-SUB1                               PIC S9(4) COMP.       
004900   05  WS-SUB-LIMIT                          PIC S9(4) COMP.       
005000   05  WS-TEMP-TIME-IP                       PIC X(8).             
005100   05  WS-TEMP-TIME-OP                       PIC X(8).             
005200                                                                   
009400 COPY UDATECC2.                                                     
005500                                                                   
005600*01  WS-BANK-DATA.                                                 
005700*COPY CBANKDAT.                                                    
006700 LINKAGE SECTION.                                                  
00     COPY CBANKVC5 .
       
       01  BANK-ERRMSG                 PIC X(65).            
                                                                  
001400 PROCEDURE DIVISION USING    BY REFERENCE CD05-DATA
                                   BY REFERENCE BANK-ERRMSG.       

008500     MOVE SPACES TO CD05O-DATA BANK-ERRMSG.                                
008600                                                                   
           PERFORM P100-LOAD-DATA . 
009600                                                                   
001600     GOBACK.
           
024000*========================================================                                                                   
024100 P100-LOAD-DATA.                                             

002000     CALL 'DBANK05P' USING   BY REFERENCE CD05-DATA
                                   BY REFERENCE BANK-ERRMSG.
       
031000     IF CD05O-ID(1) > SPACES
               MOVE 1 TO WS-SUB1                                            
               PERFORM P200-FORMAT-DATA VARYING WS-SUB1 FROM 1 BY 1 
                 UNTIL WS-SUB1 = 99 OR CD05O-ID(WS-SUB1) = SPACES
           END-IF.
                                          
034900     EXIT.                                                         
                                     
031400 P200-FORMAT-DATA.                                                   
031600     IF CD05O-DATE (WS-SUB1) IS GREATER THAN SPACES                    
031900        MOVE CD05O-DATE (WS-SUB1) TO DDIDATA                      
032200        PERFORM CALL-DATECONV                                  
032400        MOVE DDODATA-DEF-1 TO CD05O-DATE (WS-SUB1)  
032500     END-IF.
                                                              
032900     MOVE CD05O-TIME (WS-SUB1) TO WS-TEMP-TIME-IP               
033000     MOVE WS-TEMP-TIME-IP (1:2) TO WS-TEMP-TIME-OP (1:2)        
033100     MOVE ':' TO WS-TEMP-TIME-OP (3:1)                          
033200     MOVE WS-TEMP-TIME-IP (4:2) TO WS-TEMP-TIME-OP (4:2)        
033300     MOVE ':' TO WS-TEMP-TIME-OP (6:1)                          
033400     MOVE WS-TEMP-TIME-IP (7:2) TO WS-TEMP-TIME-OP (7:2)        
033500     MOVE WS-TEMP-TIME-OP TO CD05O-TIME (WS-SUB1)          

034600     EXIT.                                                         
                                      
035000                                                                   
035100* ****************************************************************  
035200*  Call common routine to perform date conversions               *  
035300* ****************************************************************  
035400 CALL-DATECONV.                                                    
           MOVE "0" to DDITYPE.
           MOVE "1" TO DDOTYPE.                                                    
045500     CALL 'UDATECNV' USING by Reference CDATED.             

035900     EXIT.                                                         
036000                                                                   

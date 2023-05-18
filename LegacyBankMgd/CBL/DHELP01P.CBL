000100*****************************************************************  
000200*                                                               *  
000300*   Copyright (C) 1998-2004 opentext�. All Rights Reserved.   *  
000400*   This demonstration program is provided for use by users     *  
000500*   of opentext� products and may be used, modified and       *  
000600*   distributed as part of your application provided that       *  
000700*   you properly acknowledge the copyright of opentext�       *  
000800*   in this material.                                           *  
000900*                                                               *  
001000*****************************************************************  
                                                                       
001200*****************************************************************  
001300* Program:     DHELP01P.CBL                                     *  
001400* Function:    Obtain screen help information                   *  
001500*              VSAM version                                     *  
001600*****************************************************************  
                                                                         
       IDENTIFICATION DIVISION.                                          
       PROGRAM-ID.                                                       
           DHELP01P.                                                     
       DATE-WRITTEN.                                                     
           September 2012.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT helpfile ASSIGN TO DYNAMIC WS-FILENAME
           ORGANIZATION IS INDEXED
           FILE STATUS IS WS-FILE-STATUS
           RECORD KEY IS HLP-KEY .
           
       DATA DIVISION.                                                    
       FILE SECTION.
       FD helpfile.
       01  HELPFILE-RECORD.
           05  HLP-RECORD                          PIC X(83).            
           05  FILLER REDEFINES HLP-RECORD.                                
               10  HLP-KEY.                                                  
                   15  HLP-SCRN                    PIC X(6).             
                   15  HLP-LINE                    PIC X(2).             
               10  HLP-TEXT                        PIC X(75).            
                                                           
       WORKING-STORAGE SECTION.                                          
       01  WS-MISC-STORAGE.                                              
           05  WS-FILENAME                         PIC X(75)
                   VALUE "C:\BANK\DATA\HELPTEXT.DAT".       
           05  WS-SUB1                             PIC S9(4) COMP.       
           05  WS-FILE-STATUS .
               10  status-key-1                    PIC X.
                   88 File-Ok                  value "0".
                   88 E-O-F                    value "1".  *>> perform check-eof-status
                   88 Invalid-Key              value "2".  *>> perform check-inv-key-status
                   88 Permanent-Error          value "3".  *>> perform check-perm-err-status
                   88 Logic-Error              value "4".
                   88 RunTime-System-Error     value "9".
               10  status-key-2                    PIC X.
                   88 no-next-logical-record   value "0".  *>> check-eof-status.
                   88 dup-key-write            value "2".  *>> check-inv-key-status.
                   88 no-record-found          value "3".  *>> check-inv-key-status.
                   88 file-not-found           value "5".  *>> check-perm-err-status.
               10  binary-status redefines status-key-2 pic 99 comp-x.
                   88 file-not-open            value 002.
                   88 no-disk-space            value 007.
                   88 file-not-found           value 013.
                   88 disk-error               value 024.
                   88 file-locked              value 065.
                   88 record-locked            value 068.
                   88 record-inconsistent      value 039.
                   88 no-current-record        value 146.
                   88 file-malformed           value 180.
                   88 network-error            value 208.
                   88 too-many-locks           value 213.
      *            88 not-error-status         value other 
           05  FILE-STATUS                         PIC X.
               88 END-OF-FILE VALUE 'E'.            
                                                  
       LINKAGE SECTION.                                                  
       COPY CHELP01.            
                                                                  
       PROCEDURE DIVISION USING BY REFERENCE HELP01-DATA.                                                    
                                                                         
           MOVE SPACES         TO HELP01O-DATA  WS-FILE-STATUS  
                FILE-STATUS.                                  
           MOVE HELP01I-SCRN   TO HELP01O-SCRN.                            
                                                                       
           PERFORM P300-OPEN-FILE.
                                                                      
           MOVE 1 TO WS-SUB1.                                            

           PERFORM P310-READ-FILE 
             UNTIL END-OF-FILE.                                
                                                                      
           IF WS-SUB1 = 1                            
               MOVE 'No help available for this form' TO 
                HELP01O-LINE (1)                       
               MOVE HELP01I-SCRN TO HELP01O-LINE (2)
           END-IF.                                                       
                                                                       
           PERFORM P390-CLOSE-FILE.                                                                  
           GOBACK.                                                     

      *===================================================================
       P300-OPEN-FILE.
           OPEN I-O helpfile.

           EXIT.
       
       P310-READ-FILE.
           READ helpfile NEXT RECORD.
           
           IF WS-FILE-STATUS NOT EQUAL "00"
               MOVE "E" TO FILE-STATUS.
               
           If HLP-SCRN = HELP01I-SCRN AND NOT END-OF-FILE
               MOVE HLP-TEXT  TO  HELP01O-LINE (WS-SUB1)
               ADD 1 TO WS-SUB1.
       
           EXIT.
       
       P390-CLOSE-FILE.
           CLOSE helpfile.
       
           EXIT.
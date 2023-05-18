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
001700*                                                                  
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBConnect.                                                     
002100 DATE-WRITTEN.                                                 
002200     September 2011.                                             
002500                                                                   
002800 DATA DIVISION.                                                    
002900 WORKING-STORAGE SECTION.                                          
003000 01  WS-MISC-STORAGE.                                              
003100   05  WS-PROGRAM-ID PIC X(8) VALUE 'DBCnnect'.                                           
         05  CONNECT-FLAG                          PIC X VALUE "0".
             88 MAKE     VALUE "C".
             88 BREAK    VALUE "D".
                                                                         
009600 LINKAGE SECTION.
       01  DB-CONNECT          PIC X(1).
                                                                 
      * Use of 'VALUE' to send the Key and 'Reference' to get back data
001400 PROCEDURE DIVISION USING by reference DB-CONNECT.

           MOVE DB-CONNECT to CONNECT-FLAG.
           
      * Make the DATA call - current version is DB2 under ADO
      * Make the ADO Connection to the MFLAB DB
002000     IF MAKE Then
               CALL 'DBANK00P'.
               MOVE "Y" TO CONNECT-FLAG.
           
           
      * Close the ADO Connection to the MFLAB DB
           IF BREAK Then
               CALL 'DBANK99P'
               MOVE "N" TO CONNECT-FLAG.
           
           GOBACK.
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
001300* Program:     DBANK00P.CBL                                     *  
001400* Function:    Connection to ODBC DB                            *  
001600*****************************************************************  
001700                                                                   
001800 IDENTIFICATION DIVISION.                                          
001900 PROGRAM-ID.                                                       
002000     DBANK00P.                                                     
005000 COPY SQLCA.

001400 PROCEDURE DIVISION .
       
           EXEC SQL 
               CONNECT TO 'MFLAB32' 
           END-EXEC .
                                                        
           GOBACK.                                                    
010800                                                                   

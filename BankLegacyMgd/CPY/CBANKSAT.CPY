000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 opentext�. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800*  .CPY                                                  *  
000900*---------------------------------------------------------------*  
001000* Define SQL areas to access Account Type (Descriptions)        *  
001100*****************************************************************  
001200     EXEC SQL DECLARE USERID.BNKATYP TABLE                         
001300     (                                                             
001400        BAT_TYPE                       CHAR (1)                    
001500                                       NOT NULL,                   
001600        BAT_DESC                       CHAR (15)                   
001700                                       NOT NULL,                   
001800        BAT_FILLER                     CHAR (84)                   
001900                                       NOT NULL                    
002000     )                                                             
002100     END-EXEC.                                                     

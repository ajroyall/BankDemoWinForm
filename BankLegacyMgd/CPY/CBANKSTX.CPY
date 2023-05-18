000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 opentext™. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800*  .CPY                                                  *  
000900*---------------------------------------------------------------*  
001000* Define SQL areas to access bank Transaction table             *  
001100*****************************************************************  
001200     EXEC SQL DECLARE USERID.BNKTXN TABLE                          
001300     (                                                             
001400        BTX_PID                        CHAR (5)                    
001500                                       NOT NULL,                   
001600        BTX_TYPE                       CHAR (1)                    
001700                                       NOT NULL,                   
001800        BTX_SUB_TYPE                   CHAR (1)                    
001900                                       NOT NULL,                   
002000        BTX_ACCNO                      CHAR (9)                    
002100                                       NOT NULL                    
002200                                       WITH DEFAULT,               
002300        BXT_TIMESTAMP                  TIMESTAMP                   
002400                                       NOT NULL                    
002500                                       WITH DEFAULT,               
002600        BTX_TIMESTAMP_FF               CHAR (26)                   
002700                                       NOT NULL                    
002800                                       WITH DEFAULT,               
002900        BTX_AMOUNT                     DECIMAL (9,2)               
003000                                       NOT NULL                    
003100                                       WITH DEFAULT,               
003200        BTX_DATA_OLD                   CHAR (150)                  
003300                                       NOT NULL                    
003400                                       WITH DEFAULT,               
003500        BTX_DATA_NEW                   CHAR (150)                  
003600                                       NOT NULL                    
003700                                       WITH DEFAULT,               
003800        BTX_FILLER                     CHAR (27)                   
003900                                       NOT NULL                    
004000                                       WITH DEFAULT                
004100     )                                                             
004200     END-EXEC.                                                     

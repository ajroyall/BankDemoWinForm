000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 opentext™. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800*  .CPY                                                  *  
000900*---------------------------------------------------------------*  
001000* Define SQL areas to access Bank ACcount table                 *  
001100*****************************************************************  
001200     EXEC SQL DECLARE USERID.BNKACC TABLE                          
001300     (                                                             
001400        BAC_PID                        CHAR (5)                    
001500                                       NOT NULL,                   
001600        BAC_ACCNO                      CHAR (9)                    
001700                                       NOT NULL                    
001800                                       WITH DEFAULT,               
001900        BAC_ACCTYPE                    CHAR (1)                    
002000                                       NOT NULL                    
002100                                       WITH DEFAULT,               
002200        BAC_BALANCE                    DECIMAL (9,2)               
002300                                       NOT NULL                    
002400                                       WITH DEFAULT,               
002500        BAC_LAST_STMT_DTE              DATE                        
002600                                       NOT NULL                    
002700                                       WITH DEFAULT,               
002800        BAC_LAST_STMT_BAL              DECIMAL (9,2)               
002900                                       NOT NULL                    
003000                                       WITH DEFAULT,               
003100        BAC_FILLER                     CHAR (65)                   
003200                                       NOT NULL                    
003300                                       WITH DEFAULT                
003400     )                                                             
003500     END-EXEC.                                                     

000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 opentext™. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800*  .CPY                                                  *  
000900*---------------------------------------------------------------*  
001000* Define SQL areas to access CuStomer table                     *  
001100*****************************************************************  
001200     EXEC SQL DECLARE USERID.BNKCUST TABLE                         
001300     (                                                             
001400        BCS_PID                        CHAR (5)                    
001500                                       NOT NULL,                   
001600        BCS_NAME                       CHAR (25)                   
001700                                       NOT NULL,                   
001800        BCS_NAME_FF                    CHAR (25)                   
001900                                       NOT NULL,                   
002000        BCS_SIN                        CHAR (9)                    
002100                                       NOT NULL                    
002200                                       WITH DEFAULT,               
002300        BCS_ADDR1                      CHAR (25)                   
002400                                       NOT NULL                    
002500                                       WITH DEFAULT,               
002600        BCS_ADDR2                      CHAR (25)                   
002700                                       NOT NULL                    
002800                                       WITH DEFAULT,               
002900        BCS_STATE                      CHAR (2)                    
003000                                       NOT NULL                    
003100                                       WITH DEFAULT,               
003200        BCS_COUNTRY                    CHAR (6)                    
003300                                       NOT NULL                    
003400                                       WITH DEFAULT,               
003500        BCS_POST_CODE                  CHAR (6)                    
003600                                       NOT NULL                    
003700                                       WITH DEFAULT,               
003800        BCS_TEL                        CHAR (12)                   
003900                                       NOT NULL                    
004000                                       WITH DEFAULT,               
004100        BCS_EMAIL                      CHAR (30)                   
004200                                       NOT NULL                    
004300                                       WITH DEFAULT,               
004400        BCS_SEND_MAIL                  CHAR (1)                    
004500                                       NOT NULL                    
004600                                       WITH DEFAULT,               
004700        BCS_SEND_EMAIL                 CHAR (1)                    
004800                                       NOT NULL                    
004900                                       WITH DEFAULT,               
005000        BCS_FILLER                     CHAR (78)                   
005100                                       NOT NULL                    
005200                                       WITH DEFAULT                
005300     )                                                             
005400     END-EXEC.                                                     

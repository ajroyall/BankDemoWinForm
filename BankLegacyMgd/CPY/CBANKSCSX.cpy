000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 Micro Focus. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800* CBANKSCSX.CPY                                                 *  
000900*---------------------------------------------------------------*  
001000* Define Data areas to access Customer table                    *  
001100*****************************************************************  
005600 01  DCLCUST.                                                      
005700     03 DCL-BCS-PID                    PIC X(5).                   
005800     03 DCL-BCS-NAME                   PIC X(25).                  
005900     03 DCL-BCS-NAME-FF                PIC X(25).                  
006000     03 DCL-BCS-SIN                    PIC X(9).                   
006100     03 DCL-BCS-ADDR1                  PIC X(25).                  
006200     03 DCL-BCS-ADDR2                  PIC X(25).                  
006300     03 DCL-BCS-STATE                  PIC X(2).                   
006400     03 DCL-BCS-COUNTRY                PIC X(6).                   
006500     03 DCL-BCS-POST-CODE              PIC X(6).                   
006600     03 DCL-BCS-TEL                    PIC X(12).                  
006700     03 DCL-BCS-EMAIL                  PIC X(30).                  
006800     03 DCL-BCS-SEND-MAIL              PIC X(1).                   
006900     03 DCL-BCS-SEND-EMAIL             PIC X(1).                   
007000     03 DCL-BCS-FILLER                 PIC X(78).                  
007100                                                                   
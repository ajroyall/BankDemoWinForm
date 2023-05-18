000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 Micro Focus. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800* CBANKSTXX.CPY                                                 *  
000900*---------------------------------------------------------------*  
001000* Define Data areas to access bank Transaction table            *  
001100*****************************************************************  
004400 01  DCLTXN.                                                       
004500     03 DCL-BTX-PID                    PIC X(5).                   
004600     03 DCL-BTX-TYPE                   PIC X(1).                   
004700     03 DCL-BTX-SUB-TYPE               PIC X(1).                   
004800     03 DCL-BTX-ACCNO                  PIC X(9).                   
004900     03 DCL-BTX-TIMESTAMP              PIC X(26).                  
005000     03 DCL-BTX-TIMESTAMP-FF           PIC X(26).                  
005100     03 DCL-BTX-AMOUNT                 PIC S9(7)V99 COMP-3.        
005200     03 DCL-BTX-DATA-OLD               PIC X(150).                 
005300     03 DCL-BTX-DATA-NEW               PIC X(150).                 
005400     03 DCL-BTX-FILLER                 PIC X(27).                  
005500                                                                   
005600 01  DCLTXN-NULL.                                                  
005700     03 DCL-BTX-ACCNO-NULL             PIC S9(4) COMP.             
005800                                                                   

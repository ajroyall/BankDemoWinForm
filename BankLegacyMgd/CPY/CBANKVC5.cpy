00     01  CD05-DATA.                                                  
001600     10  CD05I-DATA.                                               
001700       15  CD05I-ID                      PIC X(5).             
001700       15  CD05I-ACC                     PIC X(9).             
002900     10  CD05O-DATA.                                               
013600         20  CD05O-TXN-DATA OCCURS 99 TIMES.                        
013700           25  CD05O-ID .                                             
013800             30  CD05O-DATE              PIC X(10). 
013900             30  CD05O-FILLER1           PIC X(1). 
014000             30  CD05O-TIME              PIC X(8). 
014100             30  CD05O-FILLER2           PIC X(1). 
014200             30  CD05O-MICROSEC          PIC X(6). 
014300           25  CD05O-AMT                 PIC X(9).             
014400           25  CD05O-AMT-N REDEFINES CD05O-AMT                     
014500                                         PIC S9(7)V99.         
014600           25  CD05O-DESC                PIC X(30).

001400   01  CD04-DATA.                                                  
001500     10  CD04I-DATA.                                               
001600       15  CD04I-PERSON-PID                  PIC X(5).             
001700       15  CD04I-FROM-ACC                    PIC X(9).             
             15  CD04I-AMT                         PIC X(9).          
             15  CD04I-AMTN REDEFINES CD04I-AMT    PIC S9(7)V99.      
001800       15  CD04I-FROM-OLD-BAL                PIC S9(7)V99 COMP-3.  
001900       15  CD04I-FROM-NEW-BAL                PIC S9(7)V99 COMP-3.  
002000       15  CD04I-TO-ACC                      PIC X(9).             
002100       15  CD04I-TO-OLD-BAL                  PIC S9(7)V99 COMP-3.  
002200       15  CD04I-TO-NEW-BAL                  PIC S9(7)V99 COMP-3.

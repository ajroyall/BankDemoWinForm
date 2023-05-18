000100*****************************************************************  
000200*                                                               *  
000300*  Copyright(C) 1998-2002 Micro Focus. All Rights Reserved.     *  
000400*                                                               *  
000500*****************************************************************  
000600                                                                   
000700*****************************************************************  
000800* CSTATESD.CPY                                                  *  
000900*---------------------------------------------------------------*  
001000* Work areas for run timer                                      *  
001100*****************************************************************  
001200 01  STATE-PROV-DATA-AREAS.                                        
001300   05  STATE-PROV-TABLE.                                           
001400     10  FILLER                              PIC X(28)             
001500         VALUE 'USA AK Alaska               '.                     
001600     10  FILLER                              PIC X(28)             
001700         VALUE 'USA AL Alabama              '.                     
001800     10  FILLER                              PIC X(28)             
001900         VALUE 'USA AR Arkansas             '.                     
002000     10  FILLER                              PIC X(28)             
002100         VALUE 'USA AZ Arizona              '.                     
002200     10  FILLER                              PIC X(28)             
002300         VALUE 'USA CA California           '.                     
002400     10  FILLER                              PIC X(28)             
002500         VALUE 'USA CO Colorado             '.                     
002600     10  FILLER                              PIC X(28)             
002700         VALUE 'USA CT Connecticut          '.                     
002800     10  FILLER                              PIC X(28)             
002900         VALUE 'USA DC Washington D.C.      '.                     
003000     10  FILLER                              PIC X(28)             
003100         VALUE 'USA DE Delaware             '.                     
003200     10  FILLER                              PIC X(28)             
003300         VALUE 'USA FL Florida              '.                     
003400     10  FILLER                              PIC X(28)             
003500         VALUE 'USA GA Georgia              '.                     
003600     10  FILLER                              PIC X(28)             
003700         VALUE 'USA HI Hawaii               '.                     
003800     10  FILLER                              PIC X(28)             
003900         VALUE 'USA ID Idaho                '.                     
004000     10  FILLER                              PIC X(28)             
004100         VALUE 'USA IL Illinois             '.                     
004200     10  FILLER                              PIC X(28)             
004300         VALUE 'USA IN Indiana              '.                     
004400     10  FILLER                              PIC X(28)             
004500         VALUE 'USA IA Iowa                 '.                     
004600     10  FILLER                              PIC X(28)             
004700         VALUE 'USA KS Kansas               '.                     
004800     10  FILLER                              PIC X(28)             
004900         VALUE 'USA KY Kentucky             '.                     
005000     10  FILLER                              PIC X(28)             
005100         VALUE 'USA LA Louisiana            '.                     
005200     10  FILLER                              PIC X(28)             
005300         VALUE 'USA MA Massachusetts        '.                     
005400     10  FILLER                              PIC X(28)             
005500         VALUE 'USA MD Maryland             '.                     
005600     10  FILLER                              PIC X(28)             
005700         VALUE 'USA ME Maine                '.                     
005800     10  FILLER                              PIC X(28)             
005900         VALUE 'USA MI Michigan             '.                     
006000     10  FILLER                              PIC X(28)             
006100         VALUE 'USA MN Minnesota            '.                     
006200     10  FILLER                              PIC X(28)             
006300         VALUE 'USA MO Missouri             '.                     
006400     10  FILLER                              PIC X(28)             
006500         VALUE 'USA MS Mississippi          '.                     
006600     10  FILLER                              PIC X(28)             
006700         VALUE 'USA MT Montana              '.                     
006800     10  FILLER                              PIC X(28)             
006900         VALUE 'USA NC North Carolina       '.                     
007000     10  FILLER                              PIC X(28)             
007100         VALUE 'USA ND North Dakota         '.                     
007200     10  FILLER                              PIC X(28)             
007300         VALUE 'USA NE Nebraska             '.                     
007400     10  FILLER                              PIC X(28)             
007500         VALUE 'USA NH New Hampshire        '.                     
007600     10  FILLER                              PIC X(28)             
007700         VALUE 'USA NJ New Jersey           '.                     
007800     10  FILLER                              PIC X(28)             
007900         VALUE 'USA NM New Mexico           '.                     
008000     10  FILLER                              PIC X(28)             
008100         VALUE 'USA NV Nevada               '.                     
008200     10  FILLER                              PIC X(28)             
008300         VALUE 'USA NY New York             '.                     
008400     10  FILLER                              PIC X(28)             
008500         VALUE 'USA OH Ohio                 '.                     
008600     10  FILLER                              PIC X(28)             
008700         VALUE 'USA OK Oklahoma             '.                     
008800     10  FILLER                              PIC X(28)             
008900         VALUE 'USA OR Oregon               '.                     
009000     10  FILLER                              PIC X(28)             
009100         VALUE 'USA PA Pennsylvania         '.                     
009200     10  FILLER                              PIC X(28)             
009300         VALUE 'USA RI Rhode Island         '.                     
009400     10  FILLER                              PIC X(28)             
009500         VALUE 'USA SC South Carolina       '.                     
009600     10  FILLER                              PIC X(28)             
009700         VALUE 'USA SD South Dakota         '.                     
009800     10  FILLER                              PIC X(28)             
009900         VALUE 'USA TN Tennessee            '.                     
010000     10  FILLER                              PIC X(28)             
010100         VALUE 'USA TX Texas                '.                     
010200     10  FILLER                              PIC X(28)             
010300         VALUE 'USA UT Utah                 '.                     
010400     10  FILLER                              PIC X(28)             
010500         VALUE 'USA VA Virginia             '.                     
010600     10  FILLER                              PIC X(28)             
010700         VALUE 'USA VT Vermont              '.                     
010800     10  FILLER                              PIC X(28)             
010900         VALUE 'USA WA Washington           '.                     
011000     10  FILLER                              PIC X(28)             
011100         VALUE 'USA WI Wisconsin            '.                     
011200     10  FILLER                              PIC X(28)             
011300         VALUE 'USA WV West Virginia        '.                     
011400     10  FILLER                              PIC X(28)             
011500         VALUE 'USA WY Wyoming              '.                     
011600     10  FILLER                              PIC X(28)             
011700         VALUE 'USA PR Puerto Rico          '.                     
011800     10  FILLER                              PIC X(28)             
011900         VALUE 'CDN AB Alberta              '.                     
012000     10  FILLER                              PIC X(28)             
012100         VALUE 'CDN BC British Columbia     '.                     
012200     10  FILLER                              PIC X(28)             
012300         VALUE 'CDN MB Manitoba             '.                     
012400     10  FILLER                              PIC X(28)             
012500         VALUE 'CDN NB New Brunswick        '.                     
012600     10  FILLER                              PIC X(28)             
012700         VALUE 'CDN NF Newfoundland         '.                     
012800     10  FILLER                              PIC X(28)             
012900         VALUE 'CDN NS Nova Scotia          '.                     
013000     10  FILLER                              PIC X(28)             
013100         VALUE 'CDN NU Nunavut Territory    '.                     
013200     10  FILLER                              PIC X(28)             
013300         VALUE 'CDN NT Northwest Territories'.                     
013400     10  FILLER                              PIC X(28)             
013500         VALUE 'CDN ON Ontario              '.                     
013600     10  FILLER                              PIC X(28)             
013700         VALUE 'CDN PE Prince Edward Island '.                     
013800     10  FILLER                              PIC X(28)             
013900         VALUE 'CDN QC Quebec               '.                     
014000     10  FILLER                              PIC X(28)             
014100         VALUE 'CDN SK Saskatchewan         '.                     
014200     10  FILLER                              PIC X(28)             
014300         VALUE 'CDN YT Yukon Territory      '.                     
014400   05  STATE-PROV-TABLE-R REDEFINES STATE-PROV-TABLE.              
014500     10  STATE-PROV-DATA                     OCCURS 65 TIMES.      
014600       15  STATE-PROV-CNTRY                  PIC X(3).             
014700       15  FILLER                            PIC X(1).             
014800       15  STATE-PROV-CODE                   PIC X(2).             
014900       15  FILLER                            PIC X(1).             
015000       15  STATE-PROV-NAME                   PIC X(21).            
015100   05  STATE-PROV-COUNT                      PIC 9(2).             
015200   05  STATE-PROV-SUB                        PIC 9(2).             
015300   05  STATE-PROV-WK-CNTRY                   PIC X(3).             
015400   05  STATE-PROV-WK-CODE                    PIC X(20).            
015500   05  STATE-PROV-WK-NAME                    PIC X(20).            
015600                                                                   

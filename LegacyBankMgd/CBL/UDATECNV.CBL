      *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
       IDENTIFICATION  DIVISION.
q1
       PROGRAM-ID.     UDATEC.
       DATE-COMPILED.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *-----------------------------------------------------------------

           COPY SMLASSEM.

           COPY UDATECC1.


      *-----------------------------------------------------------------
       LINKAGE SECTION.
      *-----------------------------------------------------------------

           COPY SMLLINK.CBL.

           COPY UDATECC2.

      *=================================================================
       PROCEDURE DIVISION USING CDATED.

      *=================================================================
       MAIN                           SECTION.
      *=====


           ACCEPT W-SYSTEM-TIME FROM TIME.
           MOVE W-SYSTEM-TIME-STR-1-6 TO LOCALTIM
      * ****************************************************************
      * SET DEFAULT RESPONES
           MOVE "hh:mm:s" TO DDTIMEO
      * CLEAR NUMERIC WORK AREA
           MOVE ZEROS-0 TO NUMAREA
      * MOVE IN SYSTEM TIME
           MOVE LOCALTIM TO NUMAREA-STR-10-6
      * CHECK TIME FOR NUMERIC
      * *
      * ****************************************************************
      *******
      * * Check the characters in NUMAREA for being numeric
      *     *
      * ****************************************************************
      *******
      * CHECK NUMAREA FOR NUMERICS
      * LENGTH OF NUMAREA
      *      MOVE 15 TO R1
      * POINT TO NUMAREA
      *      set TMP-ptr-1 to address of numarea
      *      CALL "ADDRESS-OF" USING NUMAREA TMP-FWORD-1
      *      MOVE TMP-FWORD-1 TO R15
      *      MOVE 0 TO FL-FLAG1
      *      PERFORM UNTIL FL-FLAG1 NOT = 0
      * IS CHAR LESS THAN 0?
      * YES - SKIP TO ERROR
      *        MOVE R15 TO TMP-FWORD
      *        SET ADDRESS OF LINK-TMP-BYTE-1 TO TMP-PTR
      *        IF (LINK-TMP-BYTE-1 < "0" OR LINK-TMP-BYTE-1 > "9") THEN
      *          MOVE R15 TO TMP-FWORD
      *          SET ADDRESS OF LINK-TMP-BYTE-1 TO TMP-PTR
      * R15,4(R0,R0)            SET ERROR CONDITION
      * SKIP TO EXIT
      *          MOVE 1 TO FL-FLAG1
      *        ELSE
      * INCREMENT POINTER
      *          ADD 1 TO R15
      * LOOP BACK
      *          SUBTRACT 1 FROM R1
      *          IF R1 = 0 THEN
      * CLEAR RETURN CODE
      *            MOVE 0 TO R15
      * SKIP TO EXIT
      *            MOVE 1 TO FL-FLAG1
      *          ELSE
      *            MOVE 0 TO FL-FLAG1
      *          END-IF
      *        END-IF
      *      END-PERFORM
      * WAS IT NUMERIC?
      * NO - SKIP TO EXIT
      *      IF (NUMAREA-STR-10-2 <= "23" AND NUMAREA-STR-12-2 <= "59"
      *         AND NUMAREA-STR-14-2 <= "59" AND R15 = 0) THEN
      * IS SS GREATER THAN 59?
      * YES - SKIP O EXIT
      * REFORMAT THE TIME
      * MOVE IN THE HH
               MOVE NUMAREA-STR-10-2 TO DDTIMEO-STR-1-2
      * MOVE IN A SEPERATOR
               MOVE ":" TO DDTIMEO-STR-3-1
      * MOVE IN THE MM
               MOVE NUMAREA-STR-12-2 TO DDTIMEO-STR-4-2
      * MOVE IN A SEPERATOR
               MOVE ":" TO DDTIMEO-STR-6-1
      * MOVE IN THE SS
               MOVE NUMAREA-STR-14-2 TO DDTIMEO-STR-7-2
      *      END-IF
      *    MOVE 0 TO EXIT-FLAG
      * LINK TO DATE RTN
      * *
      * ****************************************************************
      * * Convert date from supplied format to requested format.
      * ****************************************************************
      * CLEAR THE OUTPUT DATA AREA
           MOVE SPACES TO DDODATA
           MOVE "-"    TO DDO1S1   DDO1S2  *>> Separators (as DDO2S1/2)

      * CHECK OUTPUT TYPE IS INPUT TYPE 0 (YYYY-MM-DD)
      * YES - SKIP TO CONVDAT0
           EVALUATE DDIOTYPE
               WHEN "01" *>> Convert: YYYY-MM-DD => DD-MMM-YY
                 MOVE DDI0Y  TO DDO1Y *>> Year
                 MOVE DDI0M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO1M
                 MOVE DDI0D  TO DDO1D *>> Day
 
               WHEN "02" *>> Convert: YYYY-MM-DD => DD-MMM-YYYY
                 MOVE DDI0C  TO DDO2C *>> Year
                 MOVE DDI0Y  TO DDO2Y
                 MOVE DDI0M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO2M
                 MOVE DDI0D  TO DDO2D *>> Day

               WHEN "11" *>> Convert: YYYYMMDD => DD-MMM-YY
                 MOVE DDI1Y  TO DDO1Y *>> Year
                 MOVE DDI1M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO1M
                 MOVE DDI1D  TO DDO1D *>> Day

               WHEN "12" *>> Convert: YYYYMMDD => DD-MMM-YYYY
                 MOVE DDI1C  TO DDO2C *>> Year
                 MOVE DDI1Y  TO DDO2Y
                 MOVE DDI1M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO2M
                 MOVE DDI1D  TO DDO2D *>> Day

               WHEN "21" *>> Convert: YYMMDD => DD-MMM-YY
                 MOVE DDI2Y  TO DDO1Y *>> Year
                 MOVE DDI2M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO1M
                 MOVE DDI2D  TO DDO1D *>> Day

               WHEN "22" *>> Convert: YYMMDD => DD-MMM-YYYY
                 MOVE DDI2Y  TO DDO2Y *>> Year
                 IF DDO2Y > "50" THEN
                   MOVE "19" TO DDO2C *>> 19th Century
                 ELSE
                   MOVE "20" TO DDO2C *>> 20th Century
                 END-IF
                 MOVE DDI2M  TO WRKMM *>> Month
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO2M *>> Month
                 MOVE DDI2D  TO DDO2D *>> Day

               WHEN "31" *>> Convert: YYDDD => YY-MM-DD
                 PERFORM CONVDDD-P
                 MOVE DDI3YY TO DDO1Y *>> Year
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO1M *>> Month
                 MOVE WRKDD  TO DDO1D *>> Day

               WHEN "32" *>> Convert: YYDDD => YYYY-MM-DD
                 PERFORM CONVDDD-P
                 MOVE DDI3YY TO DDO2Y *>> Year
                 IF DDO2Y > "50" THEN
                   MOVE "19" TO DDO2C *>> 19th Century
                 ELSE
                   MOVE "20" TO DDO2C *>> 20th Century
                 END-IF
                 PERFORM MM2MTH-P
                 MOVE WRKMTH TO DDO2M *>> Month
                 MOVE WRKDD  TO DDO2D *>> Day
                                     *>> 
      * NOT VALID SO MARK AS ERROR
               WHEN OTHER
                 MOVE "ERROR2" TO DDODATA-STR-1-6

           END-EVALUATE
           
      *    MOVE 0 TO EXIT-FLAG
      * *
      * COMMOM EXIT POINT
      * RESTORE R13 RETURN (14,12),RC=0           RETURN TO CALLER

           MOVE 0 TO R15
           GOBACK.
      *=============================================================
       CONVDDD-P SECTION.
      * *
      * SET FEB TO 28 DAYS
           MOVE +028 TO MTHDAY02-PKD-1-2
      * PACK YEAR
           MOVE DDI3YY TO WRKYY-PKD
      * DIVIDE BY 4 FOR LEAP YEAR
           DIVIDE +4 BY WRKYY-PKD
             GIVING WRKYY-PKD-1-2 ROUNDED
             REMAINDER WRKYY-PKD-3-1
           END-DIVIDE
      * IS REMAINDER 0? (A LEPA YEAR)
      * NO - SKIP NEXT INSTRUCTION
           IF WRKYY-PKD-3-1 = +0 THEN
      * SET FEB TO 29 DAYS
             MOVE +029 TO MTHDAY02-PKD-1-2
           END-IF
      * *
      * CONVERT DAYS TO USEABLE FORMAT
           MOVE DDI3DDD TO WRKDAYS-PKD
      * INITIALISE MONTH COUNT
           MOVE +1 TO WRKMTH-PKD
           
      * POINTS TO TABLE OF DAYS/MTH
           set TMP-ptr-1 to address of MTHDAYS
      *    CALL "ADDRESS-OF" USING MTHDAYS TMP-FWORD-1
           MOVE TMP-FWORD-1 TO R15
           MOVE 0 TO FL-FLAG1
           PERFORM UNTIL FL-FLAG1 NOT = 0
      * DAYS LEFT GREATER THAN TABLE
      * NO - MUST BE THIS MONTH
             MOVE R15 TO TMP-FWORD
             SET ADDRESS OF LINK-TMP-HWORD-1 TO TMP-PTR
             IF (WRKDAYS-PKD = LINK-TMP-HWORD-1-PKD
                OR WRKDAYS-PKD < LINK-TMP-HWORD-1-PKD) THEN
               MOVE 1 TO FL-FLAG1
             ELSE
      * INCREMENT MONTH
               ADD +1 TO WRKMTH-PKD
      * REDUCE DAYS LEFT
               MOVE R15 TO TMP-FWORD
               SET ADDRESS OF LINK-TMP-HWORD-1 TO TMP-PTR
               SUBTRACT LINK-TMP-HWORD-1-PKD FROM WRKDAYS-PKD
      * INCREMENT TABLE POINTER
               ADD 2 TO R15
      * LOOP BACK
               MOVE 0 TO FL-FLAG1
             END-IF
           END-PERFORM
      * FLIP SIGN BITS ON MONTH
      * CONVERT MTH TO DISPLAY FORMAT
           MOVE WRKMTH-PKD-2-2 TO UNPK-TEMP
           MOVE UNPK-TEMP-STR-2-2 TO WRKMM
      * FLIP SIGN BITS ON DAYS
      * CONVERTS DAYS TO DISPLAY FORMAT
           MOVE WRKDAYS-PKD TO UNPK-TEMP
           MOVE UNPK-TEMP-STR-4-2 TO WRKDD
           PERFORM MM2MTH-P
      *    MOVE 0 TO EXIT-FLAG
           CONTINUE.
       CONVDDD-P-ENDE.
           EXIT.


      ************************************************************
       MM2MTH-P SECTION. *>> CONVERT MM TO MMM (ALPHA)
           IF WRKMM-STR-1-1 = SPACES THEN
             MOVE ZEROS TO WRKMM-STR-1-1 .

      * CHECK MM IS VALID NUMERIC AND IN RANGE 01 TO 12
           IF WRKMM-STR-1-1 < "0" OR WRKMM-STR-1-1 > "1" 
           OR WRKMM-STR-2-1 < "0" OR WRKMM-STR-2-1 > "9"
           OR  WRKMM < "01"       OR WRKMM > "12"   THEN
             MOVE "***" TO WRKMTH *>> Flag Month invalid
           ELSE
      * CONVERT MM TO BINARY
             MOVE MONTH-TXT(WRKMM-N) TO WRKMTH 
           END-IF

      * RETURN FROM SUB ROUTINE
      *    MOVE 0 TO EXIT-FLAG
           CONTINUE.
       MM2MTH-P-ENDE.
           EXIT.


      ************************************************************




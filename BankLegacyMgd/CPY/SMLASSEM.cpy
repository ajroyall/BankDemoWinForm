       01  TMP-FWORD                        PIC S9(9) COMP-5.
       01  TMP-PTR REDEFINES TMP-FWORD USAGE POINTER.
      **    COMP-5 redefinition.
       01  TMP-FWORD-1                      PIC S9(9) COMP-5.
       01  TMP-PTR-1 REDEFINES TMP-FWORD-1 USAGE POINTER.
      **    COMP-5 redefinition.
       01  EXIT-FLAG                        PIC 9 VALUE ZERO.
       01  R15                              PIC S9(9) BINARY.
       01  R1                               PIC S9(9) BINARY.
       01  FL-FLAG1                         PIC 9 VALUE ZERO.
       01  W-SYSTEM-DATE                    PIC X(5).
       01  W-SYSTEM-TIME                    PIC X(8).
       01  W-SYSTEM-TIME-DEF-1 REDEFINES W-SYSTEM-TIME.
         03  W-SYSTEM-TIME-STR-1-6          PIC X(6).
         03  FILLER                         PIC X(2).
       01  UNPK-TEMP                        PIC X(20).
       01  UNPK-TEMP-DEF-1 REDEFINES UNPK-TEMP.
         03  FILLER                         PIC X.
         03  UNPK-TEMP-STR-2-2              PIC X(2).
         03  UNPK-TEMP-STR-4-2              PIC X(2).
         03  FILLER                         PIC X(15).
      *    SSMLASSEM

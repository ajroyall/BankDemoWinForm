       01  LINK-TMP-HWORD-1                 PIC S9(4) BINARY.
       01  LINK-TMP-HWORD-1-PKD REDEFINES LINK-TMP-HWORD-1
                                            PIC S9(3) COMP-3.
       01  LINK-TMP-BYTE-1                  PIC X.
       01  LINK-TMP-DATA-1                  PIC X(1000).
       01  LINK-TMP-DATA-1-DEF-1 REDEFINES LINK-TMP-DATA-1.
         03  LINK-TMP-DATA-1-STR-1-3        PIC X(3).
         03  FILLER                         PIC X(997).

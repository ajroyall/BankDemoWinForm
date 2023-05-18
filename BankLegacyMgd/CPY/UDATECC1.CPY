       01  CDATED-BASE                      PIC S9(9) BINARY.
       01  CDATED-PTR REDEFINES CDATED-BASE USAGE POINTER.
       01  UDATECNV-CSECT.
         03  DBLEWORD                       PIC X(8).
         03  DBLEWORD-PKD REDEFINES DBLEWORD
                                            PIC S9(15) COMP-3.
         03  SAVEAREA                       PIC S9(9) BINARY.
         03  FILLER                         PIC S9(9) BINARY OCCURS 17.
         03  R14STORE                       PIC S9(9) BINARY.
         03  NUMAREA                        PIC X(15).
         03  NUMAREA-DEF-1 REDEFINES NUMAREA.
           05  FILLER                       PIC X(9).
           05  NUMAREA-STR-10-2             PIC X(2).
           05  NUMAREA-STR-12-2             PIC X(2).
           05  NUMAREA-STR-14-2             PIC X(2).
         03  NUMAREA-DEF-2 REDEFINES NUMAREA-DEF-1.
           05  FILLER                       PIC X(9).
           05  NUMAREA-STR-10-6             PIC X(6).
         03  ZEROS-0                        PIC X(15)
                                             VALUE "000000000000000".
         03  SYSDATE                        PIC S9(9) BINARY VALUE ZERO.
         03  LOCALDAT                       PIC X(5) VALUE "YYDDD".
         03  SYSTIME                        PIC S9(9) BINARY VALUE ZERO.
         03  LOCALTIM                       PIC X(6) VALUE "HHMMSS".
         03  DATE-YYYYMMDD                  PIC X(10) VALUE "YYYY-MM-DD".
         03  ENVIMS                         PIC X(4) VALUE "IMS ".
         03  ENVINET                        PIC X(4) VALUE "INET".
         03  ENVNULL                        PIC X(4) VALUE LOW-VALUES.
         03  WRKMM                          PIC X(2).
         03  WRKMM-N REDEFINES WRKMM        PIC 9(2).
         03  WRKMM-DEF-1 REDEFINES WRKMM.
           05  WRKMM-STR-1-1                PIC X.
           05  WRKMM-STR-2-1                PIC X.
         03  WRKMTH                         PIC X(3).
         03  WRKMTH-PKD REDEFINES WRKMTH    PIC S9(5) COMP-3.
         03  WRKMTH-DEF-2 REDEFINES WRKMTH-PKD.
           05  FILLER                       PIC X.
           05  WRKMTH-PKD-2-2               PIC S9(3) COMP-3.
         03  WRKDD                          PIC X(2).
         03  WRKDAYS                        PIC X(3).
         03  WRKDAYS-PKD REDEFINES WRKDAYS  PIC S9(5) COMP-3.
         03  WRKYY                          PIC X(3).
         03  WRKYY-PKD REDEFINES WRKYY      PIC S9(5) COMP-3.
         03  WRKYY-DEF-2 REDEFINES WRKYY-PKD.
           05  WRKYY-PKD-1-2                PIC S9(3) COMP-3.
           05  WRKYY-PKD-3-1                PIC S9 COMP-3.
         03  MONTHS                         PIC X(36) VALUE
          "JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".
         03  MONTHX REDEFINES MONTHS                         .
           05  MONTH-TXT  OCCURS 12         PIC X(3).
         03  MTHDAYS.
           05  MTHDAY01                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY02                     PIC S9(3) COMP-3 VALUE +28.
           05  MTHDAY02-DEF-1 REDEFINES MTHDAY02.
             07  MTHDAY02-PKD-1-2           PIC S9(3) COMP-3.
           05  MTHDAY03                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY04                     PIC S9(3) COMP-3 VALUE +30.
           05  MTHDAY05                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY06                     PIC S9(3) COMP-3 VALUE +30.
           05  MTHDAY07                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY08                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY09                     PIC S9(3) COMP-3 VALUE +30.
           05  MTHDAY00                     PIC S9(3) COMP-3 VALUE +31.
           05  MTHDAY11                     PIC S9(3) COMP-3 VALUE +30.
           05  MTHDAY12                     PIC S9(3) COMP-3 VALUE +31.
         03  DAYS                           PIC S9(5) COMP-3 VALUE +0.
       01  W-SML-EQUATE-LIST-01.
         03  NUMCHCKY                       PIC X VALUE ZERO.

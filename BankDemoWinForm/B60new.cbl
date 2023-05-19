       class-id BankDemoWinForm.B60new is partial
           inherits type System.Windows.Forms.Form.

       working-storage section.
       01  callFunc               PIC X(1).
       01  buttonFunc             PIC X(1).
           88  READ-CONTACT       VALUE "R".
           88  UPDATE-CONTACT     VALUE "W".
       01  currentUser            pic x(5).
       01  appID                   pic x(6) value "BANK60".

       method-id NEW.
       linkage section.
       01  inUser                 string.
       01  inFunc                 pic x(1).
       procedure division using by value inUser
                                by value inFunc.

           invoke self::InitializeComponent()
           move inUser to currentUser
           move inFunc to callFunc

           if callFunc = "R"
               set buttonUpdate::Visible TO FALSE
               set buttonFunc            to "R"
           else
               set buttonUpdate::Visible TO TRUE
               set buttonFunc            to "R"
           end-if
           invoke self::PopulateDetails()

           goback

       end method.

      *===================================================================================
       method-id PopulateDetails final private.
       local-storage section.
       01  BANK-USERID            PIC X(5).

       COPY CBANKVC2.

       01  BANK-ERRMSG            PIC X(65).
       01  GOOD-ERRMSG            PIC X(65).

       Procedure Division.

           move SPACES TO CD02O-DATA
           move currentUser TO BANK-USERID

           move "R" TO CD02I-FUNCTION

           IF UPDATE-CONTACT THEN
               set CD02I-NAME   TO USERNM::Text
               set CD02I-ADDR1  TO tBox-ADDR1::Text
               set CD02I-ADDR2  TO tBox-ADDR2::Text
               set CD02I-STATE  TO tBox-STATE::Text
               set CD02I-CNTRY  TO tBox-CNTRY::Text
               set CD02I-PSTCDE TO tBox-PSTCDE::Text
               set CD02I-TELNO  TO tBox-TELNO::Text
               set CD02I-EMAIL  TO tBox-EMAIL::Text
               IF cBox-SEND-MAIL::Checked THEN
                   move "Y" TO CD02I-SEND-MAIL
               ELSE
                   move "N" TO CD02I-SEND-MAIL
               end-IF
               IF cBox-SEND-EMAIL::Checked THEN
                   move "Y" TO CD02I-SEND-EMAIL
               ELSE
                   move "N" TO CD02I-SEND-EMAIL
               end-IF
               move CD02I-DATA  TO CD02O-DATA
               move "W"         TO CD02I-FUNCTION
           END-IF

           IF BANK-USERID > SPACES THEN
               CALL "BBANK60P" using by value BANK-USERID
                                     by reference CD02-DATA
                                     by reference BANK-ERRMSG
                                     by reference GOOD-ERRMSG
           END-IF

           IF CD02O-ADDR1 > SPACES THEN
               set USERNM::Text      TO CD02O-NAME
               set tBox-ADDR1::Text  TO CD02O-ADDR1
               set tBox-ADDR2::Text  TO CD02O-ADDR2
               set tBox-STATE::Text  TO CD02O-STATE
               set tBox-CNTRY::Text  TO CD02O-CNTRY
               set tBox-PSTCDE::Text TO CD02O-PSTCDE
               set tBox-TELNO::Text  TO CD02O-TELNO
               set tBox-EMAIL::Text  TO CD02O-EMAIL
           END-IF

           IF CD02O-SEND-MAIL = "Y" THEN
               set cBox-SEND-MAIL::Checked TO TRUE
           ELSE
               set cBox-SEND-MAIL::Checked TO FALSE
           END-IF

           IF CD02O-SEND-EMAIL = "Y" THEN
               set cBox-SEND-EMAIL::Checked TO TRUE
           ELSE
               set cBox-SEND-EMAIL::Checked TO FALSE
           END-IF

           IF BANK-ERRMSG > SPACES THEN
               If type MessageBox::Show(BANK-ERRMSG "ERROR HAS OCCURED" type
                   MessageBoxButtons::OK type MessageBoxIcon::Exclamation)
                 = type DialogResult::OK
                   move BANK-ERRMSG to ERRMSG::Text
               END-IF
           Else
               move GOOD-ERRMSG to ERRMSG::Text
           END-IF

           set toolStripStatusLabel1::Text to ERRMSG::Text

       end method.

      *======================================================================================
       method-id buttonUpdate_Click final private.
       procedure division using by value sender as object
                                         e as type System.EventArgs.
           set buttonFunc TO "W"
           invoke self::PopulateDetails()

           set buttonUpdate::Visible TO FALSE
           set buttonFunc            TO "R"
           invoke self::PopulateDetails()
       end method.

       method-id editDetailsToolStripMenuItem_Click final private.
       procedure division using by value sender as object
                                         e as type System.EventArgs.
           move "W"                  to callFunc
           set buttonUpdate::Visible TO TRUE
           invoke self::Show()
       end method.

      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       copy "GenericMenuOptions.cpy".

       end class.

       class-id BankDemoWinForm.B60 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01  callFunc                PIC X(1).
       01  buttonFunc              PIC X(1).
           88 READ-CONTACT     VALUE "R".
           88 UPDATE-CONTACT   VALUE "W".
       01  currentUser             pic x(5).

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

      *=================================================================================== 
       method-id PopulateDetails final private.
           local-storage section.
       01  BANK-USERID                     PIC X(5).
           
       COPY CBANKVC2.             
                                                                    
       01  BANK-ERRMSG                     PIC X(65).
       01  GOOD-ERRMSG                     PIC X(65).

       Procedure Division.
           
           IF USERID::Text = "" Then
               set USERID::Text  to currentUser.
           
           move SPACES         TO  CD02O-DATA.
           move USERID::Text   TO  BANK-USERID.
           IF READ-CONTACT THEN
               move "R"            TO  CD02I-FUNCTION.
               
           IF UPDATE-CONTACT THEN
               set CD02I-NAME      TO USERNM::Text
               set CD02I-ADDR1     TO tBox-ADDR1::Text
               set CD02I-ADDR2     TO tBox-ADDR2::Text
               set CD02I-STATE     TO tBox-STATE::Text 
               set CD02I-CNTRY     TO tBox-CNTRY::Text 
               set CD02I-PSTCDE    TO tBox-PSTCDE::Text
               set CD02I-TELNO     TO tBox-TELNO::Text
               set CD02I-EMAIL     TO tBox-EMAIL::Text 
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
               move CD02I-DATA     TO  CD02O-DATA
               move "W"            TO  CD02I-FUNCTION.
           
           IF BANK-USERID > SPACES THEN
               CALL "BBANK60P" using   by value        BANK-USERID
                                       by reference    CD02-DATA
                                       by reference    BANK-ERRMSG 
                                       by reference    GOOD-ERRMSG .
                                  
           IF CD02O-ADDR1 > SPACES THEN
               set USERNM::Text        TO CD02O-NAME
               set tBox-ADDR1::Text    TO CD02O-ADDR1
               set tBox-ADDR2::Text    TO CD02O-ADDR2
               set tBox-STATE::Text    TO CD02O-STATE
               set tBox-CNTRY::Text    TO CD02O-CNTRY
               set tBox-PSTCDE::Text   TO CD02O-PSTCDE
               set tBox-TELNO::Text    TO CD02O-TELNO
               set tBox-EMAIL::Text    TO CD02O-EMAIL .
               
           IF CD02O-SEND-MAIL = "Y" THEN    
               set cBox-SEND-MAIL::Checked  TO  TRUE
           ELSE
               set cBox-SEND-MAIL::Checked  TO  FALSE .
               
           IF CD02O-SEND-EMAIL = "Y" THEN    
               set cBox-SEND-EMAIL::Checked TO  TRUE
           ELSE
               set cBox-SEND-EMAIL::Checked TO  FALSE .
              
            IF BANK-ERRMSG > SPACES THEN
               If type MessageBox::Show (BANK-ERRMSG "ERROR HAS OCCURED" type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) 
                     = type DialogResult::OK
                   move BANK-ERRMSG to ERRMSG::Text 
               end-if
            Else
               move GOOD-ERRMSG to ERRMSG::Text 
            end-IF

            set toolStripStatusLabel1::Text    to ERRMSG::Text

       end method.
       
      *=================================================================================== 
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       
      *>>  Press the EXIT menu option
       method-id exitToolStripMenuItem_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.

      *>>  Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click final private.
       01  helpPanel           type BankDemoWinForm.Help.
       Procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK60")         
       end method.

      *>>  Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click final private.
       01  infoPanel           type BankDemoWinForm.Info.
       Procedure division using by value sender as object e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

      *>>  Press the ABOUT menu option
       method-id  aboutToolStripMenuItem_Click  final private.
       01  aboutPanel           type BankDemoWinForm.About.
       Procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
       
      *======================================================================================
      *>>  Where it all starts on initial Prgm load
       method-id Load.
       linkage section.
       01 inUser       string.
       01 inFunc       pic x(1).
       procedure division using  by value inUser by value inFunc.
           move inUser to currentUser
           move inFunc to callFunc
      *    invoke self::PopulateDetails()

           invoke self::Show()
       end method.

       method-id B60_Load final private.
       procedure division using by value sender as object e as type System.EventArgs.

           if callFunc = "R"
               set buttonUpdate::Visible TO FALSE
               set buttonFunc to "R"
           else
               set buttonUpdate::Visible TO TRUE
               set buttonFunc to "R"
           end-if.
           invoke self::PopulateDetails()
       end method.

       method-id button1_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set buttonFunc  TO "R".
           invoke self::PopulateDetails()
       end method.

       method-id buttonUpdate_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set buttonFunc  TO "W".
           invoke self::PopulateDetails()
       end method.

       method-id editDetailsToolStripMenuItem_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           move "W"  to callFunc
           set buttonUpdate::Visible TO TRUE
           invoke self::Show()
       end method.

       end class.

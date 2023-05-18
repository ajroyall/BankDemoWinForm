       class-id BankDemoWinForm.Help is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       COPY CHELP01.
       01  ws-sub1             pic 99.
       
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id Load.
       linkage section.
       01 help-key             pic x(6).
       procedure division using by value help-key.
           invoke richTextBox1::Clear()
           MOVE help-key   TO  HELP01I-SCRN.
           call "DHELP01P" USING BY REFERENCE HELP01-DATA.
           
           perform varying ws-sub1 from 1 by 1 
             until ws-sub1 = 20
               invoke richTextBox1::AppendText(HELP01O-LINE(ws-sub1))
               invoke richTextBox1::AppendText(x"0A")
           end-perform
           
           invoke self::Show()
       end method.

       method-id button1_Click final private.
       local-storage section.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.


       end class.

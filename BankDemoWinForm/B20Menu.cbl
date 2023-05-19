       class-id BankDemoWinForm.B20Menu is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
      *01 editMode     pic x(1).
       01 currentID    pic x(5)  value spaces.
       01  appID                  PIC X(8) value "BANK20".

      *= When the FORM is initiated with NEW in the calling program, this method is
      *= instantiated
       method-id NEW.
       linkage section.
       01  inUser                 PIC x(5).
       Procedure division using by reference inUser.
           invoke self::InitializeComponent
           invoke SELF::Load(inUser)
           goback.
       end method.

       method-id Load.
       working-storage section.
       01  OS64bit                string.
       01  App64bit                string.
       01  OSVersion              string.
       
       linkage section.
       01 inUser       PIC x(5).

       procedure division using  by reference inUser.
           *>>>>>> IMPORTANT - Connection to the DATA <<<<<<*
           CALL "DBConnect" using by reference "C". *>> Connect ADO

           MOVE inUser to currentID
           
           Set label1::Text        To 'Current User' 
           Set tBox1::Text         To type Environment::GetEnvironmentVariable("UserName") 
           
           Set label2::Text        To 'Customer Login ID' 
           Move currentID          To tBox2::Text
           
           Set label3::Text        To 'Data Platform' 
           Move 'MS SQL Server'    To tBox3::Text 
           
           Set label4::Text        To 'Deployment Platform' 
           Move 'Windows Forms'    To tBox4::Text
           
      * Some environment variables could be useful. Not used by this application
           set App64bit to type Environment::Is64BitProcess
           IF App64bit = 'true'
               Move 'Windows Forms 64Bit' To tBox4::Text
           else
               Move 'Windows Forms 32Bit' To tBox4::Text
           END-IF
      *    display OS64bit
           set OS64bit to type System.Runtime.InteropServices.RuntimeInformation::OSArchitecture::ToString
      *    display OSVersion
           
       end method.
 
      *=====================================================================================
       method-id balanceToolStripMenuItem_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           If currentID > Spaces
               DECLARE newForm = new BankDemoWinForm.B30new(currentID)
               set SELF::Visible = FALSE *> Hide this dialog screen
               invoke newForm::ShowDialog *> Show the new dialog screen
               set SELF::Visible = TRUE *> On return we re-show this dialog screen
           end-if
       end method.

       method-id viewDetailsToolStripMenuItem_Click final private.
         Procedure division using by value sender as object e as type System.EventArgs.
           If currentID > Spaces
               DECLARE newForm = new BankDemoWinForm.B60new(currentID, "R")
               set SELF::Visible = FALSE *> Hide this dialog screen
               invoke newForm::ShowDialog *> Show the new dialog screen
               set SELF::Visible = TRUE *> On return we re-show this dialog screen
           end-if
       end method.

       method-id editDetailsToolStripMenuItem_Click final private.
         Procedure division using by value sender as object e as type System.EventArgs.
           If currentID > Spaces
               DECLARE newForm = new BankDemoWinForm.B60new(currentID, "W")
               set SELF::Visible = FALSE *> Hide this dialog screen
               invoke newForm::ShowDialog *> Show the new dialog screen
               set SELF::Visible = TRUE *> On return we re-show this dialog screen
           end-if
       end method.

       method-id quoteToolStripMenuItem_Click final private.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           If currentID > Spaces
               DECLARE newForm = new BankDemoWinForm.B70()
               set SELF::Visible = FALSE *> Hide this dialog screen
               invoke newForm::ShowDialog *> Show the new dialog screen
               set SELF::Visible = TRUE *> On return we re-show this dialog screen
           end-if
       end method.

       method-id transferFundsToolStripMenuItem_Click final private.
         Procedure division using by value sender as object e as type System.EventArgs.
           If currentID > Spaces
               DECLARE newForm = new BankDemoWinForm.B50new(currentID)
               set SELF::Visible = FALSE *> Hide this dialog screen
               invoke newForm::ShowDialog *> Show the new dialog screen
               set SELF::Visible = TRUE *> On return we re-show this dialog screen
           end-if
       end method.

       method-id label5_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set label5::Text to "Micro Focus COBOL from opentext"
       end method.

      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       copy "GenericMenuOptions.cpy".

       end class.


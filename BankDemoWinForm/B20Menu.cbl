       class-id BankDemoWinForm.B20Menu is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01 editMode     pic x(1).
       01 currentID    pic x(5)  value spaces.
       01  appID                  PIC X(8) value "BANK20".

      *= When the FORM is initiated with NEW in the calling program, this method is
      *= instantiated
       method-id NEW.
       linkage section.
       01  inUser                 PIC x(5).
       Procedure division using by reference inUser.
           invoke self::InitializeComponent
           CALL "DBConnect" using  by reference    "C".    *>> Connect ADO
           invoke SELF::Load(inUser)
           goback.
       end method.

       method-id Menu_Load final private.
         Procedure division using by value sender as object e as type System.EventArgs.
         move "1" to editMode
       end method.
 
      *= By calling this method some initial values can be set when transfering control
       method-id Load.
       working-storage section.
       01  OS64bit                string.
       01  App64bit                string.
       01  OSVersion              string.
       
       linkage section.
       01 inUser       PIC x(5).

       procedure division using  by reference inUser.
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
      *    set OS64bit to type Environment::GetEnvironmentVariable("Is64BitProcess")
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
 
      *=================================================================================== 
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       
       method-id exitToolStripMenuItem_Click final private.
         local-storage section.
         Procedure division using by value sender as object e as type System.EventArgs.
           CALL "DBConnect" using  by reference    "D".    *>> Disconnect database
                                                           *>> 
           if type System.Windows.Forms.Application::MessageLoop
               *> WinForms app
               invoke type System.Windows.Forms.Application::Exit()
           else
               *> Console app
               invoke type System.Environment::Exit(1)
           end-if

      *    invoke self::Close()
       end method.

       method-id moreInformationToolStripMenuIte_Click final private.
         01 helpPanel           type BankDemoWinForm.Help.
         Procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK20")         
       end method.

       method-id moreInformationToolStripMenuI0_Click final private.
         01 infoPanel           type BankDemoWinForm.Info.
         Procedure division using by value sender as object e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog()
       end method.

       method-id aboutToolStripMenuItem_Click final private.
         01 aboutPanel           type BankDemoWinForm.About.
         Procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog()
       end method.
       
      *=====================================================================================
       method-id balanceToolStripMenuItem_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.

           DECLARE newForm = new BankDemoWinForm.B30new(currentID)
           set SELF::Visible = FALSE *> Hide this dialog screen
           invoke newForm::ShowDialog *> Show the new dialog screen
           set SELF::Visible = TRUE *> On return we re-show this dialog screen

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
       01 loanPanel           type BankDemoWinForm.B70.
         Procedure division using by value sender as object e as type System.EventArgs.
           set loanPanel to new BankDemoWinForm.B70
           invoke loanPanel::Load() 
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
           set label5::Text to "now opentext"
       end method.
      
       end class.


      *> TODO: Insert code to perform custom authentication using the provided username and password
      *> The custom principal can then be attached to the current thread's principal as follows: 
      *>     My.User.CurrentPrincipal = CustomPrincipal
      *> where CustomPrincipal is the IPrincipal implementation used to perform authentication. 
      *> Subsequently, My.User will return identity information encapsulated in the CustomPrincipal object
      *> such as the username, display name, etc.

       class-id BankDemoWinForm.LoginForm1 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01 currentUser    pic x(5).
       01  helpPanel           type BankDemoWinForm.Help.
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id Load.
       linkage section.
       01 inUser       pic x(5).
       01 inFunc       pic x(1).
       
       procedure division using  by reference inUser.
           MOVE inUser to tbUserName::Text
           invoke self::Show()
       end method.

       method-id btnOK_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           MOVE tbUserName::Text  to  currentUser 

           declare newForm = new BankDemoWinForm.B20Menu(currentUser)
           set SELF::Visible = FALSE           *> Hide this dialog screen
           invoke newForm::ShowDialog          *> Show the new dialog screen
      *    set SELF::Visible = TRUE            *> On return we re-show this dialog screen
      *    stop run
      *    goback
       end method.

       method-id btnCancel_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
           goback.
       end method.

             *>>  Press the HELP menu option
       method-id buttonHelp_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK10")         
       end method.

       end class.

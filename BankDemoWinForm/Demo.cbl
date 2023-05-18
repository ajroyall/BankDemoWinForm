       class-id BankDemoWinForm.Demo is partial
                 inherits type System.Windows.Forms.Form.
       
       working-storage section.
       
*>> Initialise the Application Window
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent
           goback.
       end method.
 
*>> Switch to the Bank Demo Screen
       method-id bankDemoToolStripMenuItem1_Click final private.

       local-storage section.
       01 menuForm type BankDemoWinForm.B20Menu.

*>>       procedure division.
       procedure division using by value sender as object e as type System.EventArgs.       
      *    set currentUser to "a"
           set menuForm to new BankDemoWinForm.B20Menu("")
*>         invoke type System.Windows.Forms.Application::EnableVisualStyles()
 
           invoke menuForm::ShowDialog(self)
       end method. 
             
*>> User selects EXIT from Menu Strip
       method-id exitToolStripMenuItem1_Click final private.
       local-storage section.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.


*>> User selects HELP from Menu Strip
       method-id viewHelpToolStripMenuItem_Click final private.
       01 helpPanel           type BankDemoWinForm.Help.
       procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::ShowDialog(self)      
       end method.

*>> User selects ABOUT from Menu Strip
       method-id aboutToolStripMenuItem_Click final private.
       local-storage section.
       01 aboutPanel           type BankDemoWinForm.About.
       procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)      
       end method.
       


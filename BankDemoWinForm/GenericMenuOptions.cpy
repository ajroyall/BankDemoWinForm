      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =

      *>> Press the EXIT menu option
       method-id exitToolStripMenuItem_Click final private.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           invoke self::Close() *>> Close this FORM, control will return to calling PRGM
       end method.


       method-id LogOffMenuItem_Click final private.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           CALL "DBConnect" using by reference "D"   *>> Disconnect database
      *>>
           if type System.Windows.Forms.Application::MessageLoop
               *> WinForms app
               invoke type System.Windows.Forms.Application::Exit()
           else
               *> Console app
               invoke type System.Environment::Exit(1)
           end-if
       end method.

      *>> Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click_1 final private.
       01  helpPanel              type BankDemoWinForm.Help.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load(appID)
       end method.

      *>> Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click_1 final private.
       01  infoPanel              type BankDemoWinForm.Info.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

      *>> Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click_1 final private.
       01  aboutPanel             type BankDemoWinForm.About.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
      *

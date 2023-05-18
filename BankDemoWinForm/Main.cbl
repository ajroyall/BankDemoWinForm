       class-id BankDemoWinForm.Main.
       
       working-storage section.

       method-id Main static
           attribute System.STAThread.
       local-storage section.
       01 demoForm type BankDemoWinForm.Demo.
       01 menuForm type BankDemoWinForm.B20Menu.
       01 loginForm type BankDemoWinForm.LoginForm1.
       01 currentUser      PIC X(5).
       procedure division.

      *    set demoForm to new BankDemoWinForm.Demo()
      *    invoke type System.Windows.Forms.Application::EnableVisualStyles()
      *    invoke type System.Windows.Forms.Application::Run(demoForm)
      *    goback.
           
      *    set menuForm to new BankDemoWinForm.B20Menu()
      *    invoke type System.Windows.Forms.Application::EnableVisualStyles()
      *    invoke type System.Windows.Forms.Application::Run(menuForm)
      *
           set loginForm to new BankDemoWinForm.LoginForm1()
           invoke type System.Windows.Forms.Application::EnableVisualStyles()
           invoke type System.Windows.Forms.Application::Run(loginForm)

      *    invoke loginForm::Load(currentUser)
      *    invoke loginForm::Show()
      *
      *    set menuForm to new BankDemoWinForm.B20Menu()
      *    invoke menuForm::Load(currentUser)
      *    invoke menuForm::Show()
      *
           goback.
       
       end method.
       
       end class.

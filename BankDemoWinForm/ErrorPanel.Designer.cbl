       class-id BankDemoWinForm.ErrorPanel
                 is partial inherits type System.Windows.Forms.Form.

       01 button1 type System.Windows.Forms.Button.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       procedure division.
       set button1 to new System.Windows.Forms.Button
       invoke self::SuspendLayout
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point( 147 303)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size( 91 36)
       set button1::TabIndex to 0
       set button1::Text to "Continue"
       set button1::UseVisualStyleBackColor to True
      *> 
      *> ErrorPanel
      *> 
       set self::ClientSize to new System.Drawing.Size( 384 362)
       invoke self::Controls::Add(button1)
       set self::Name to "ErrorPanel"
       set self::Text to "Error Message"
       invoke self::ResumeLayout(False)
       end method.

      *> Clean up any resources being used.
       method-id Dispose override is protected.
       procedure division using by value disposing as condition-value.
           if disposing then
               if components not = null then
                   invoke components::Dispose()
               end-if
           end-if
           invoke super::Dispose(by value disposing)
           goback.
       end method.

       end class.

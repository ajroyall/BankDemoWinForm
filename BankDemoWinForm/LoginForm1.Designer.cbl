       class-id BankDemoWinForm.LoginForm1 is partial
                 inherits type System.Windows.Forms.Form.

       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 btnOK type System.Windows.Forms.Button.
       01 btnCancel type System.Windows.Forms.Button.
       01 tbUserName type System.Windows.Forms.TextBox.
       01 tbPassword type System.Windows.Forms.TextBox.
       01 richTextBox1 type System.Windows.Forms.RichTextBox.
       01 buttonHelp type System.Windows.Forms.Button.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.LoginForm1)
       set btnOK to new System.Windows.Forms.Button
       set btnCancel to new System.Windows.Forms.Button
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set tbUserName to new System.Windows.Forms.TextBox
       set tbPassword to new System.Windows.Forms.TextBox
       set richTextBox1 to new System.Windows.Forms.RichTextBox
       set buttonHelp to new System.Windows.Forms.Button
       invoke self::SuspendLayout
      *> 
      *> btnOK
      *> 
       set btnOK::Location to new System.Drawing.Point(12 118)
       set btnOK::Name to "btnOK"
       set btnOK::Size to new System.Drawing.Size(75 23)
       set btnOK::TabIndex to 3
       set btnOK::Text to "Login"
       set btnOK::UseVisualStyleBackColor to True
       invoke btnOK::add_Click(new System.EventHandler(self::btnOK_Click))
      *> 
      *> btnCancel
      *> 
       set btnCancel::Location to new System.Drawing.Point(147 118)
       set btnCancel::Name to "btnCancel"
       set btnCancel::Size to new System.Drawing.Size(75 23)
       set btnCancel::TabIndex to 4
       set btnCancel::Text to "Exit"
       set btnCancel::UseVisualStyleBackColor to True
       invoke btnCancel::add_Click(new System.EventHandler(self::btnCancel_Click))
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(12 9)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(73 16)
       set label1::TabIndex to 2
       set label1::Text to "&User name"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(12 63)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(67 16)
       set label2::TabIndex to 3
       set label2::Text to "&Password"
      *> 
      *> tbUserName
      *> 
       set tbUserName::Location to new System.Drawing.Point(12 25)
       set tbUserName::MaxLength to 5
       set tbUserName::Name to "tbUserName"
       set tbUserName::Size to new System.Drawing.Size(210 22)
       set tbUserName::TabIndex to 1
      *> 
      *> tbPassword
      *> 
       set tbPassword::Location to new System.Drawing.Point(12 79)
       set tbPassword::Name to "tbPassword"
       set tbPassword::PasswordChar to '*'
       set tbPassword::Size to new System.Drawing.Size(210 22)
       set tbPassword::TabIndex to 2
      *> 
      *> richTextBox1
      *> 
       set richTextBox1::BackColor to type System.Drawing.SystemColors::Control
       set richTextBox1::Location to new System.Drawing.Point(245 55)
       set richTextBox1::Name to "richTextBox1"
       set richTextBox1::ReadOnly to True
       set richTextBox1::Size to new System.Drawing.Size(177 127)
       set richTextBox1::TabIndex to 9
       set richTextBox1::TabStop to False
       set richTextBox1::Text to "Valid Users:" & x"0A" & "B0001-0036" & x"0A" & x"0A" & "Check table: BNKCUST" & x"0A" & x"0A" & "For Demo no password is required"
      *> 
      *> buttonHelp
      *> 
       set buttonHelp::Location to new System.Drawing.Point(265 18)
       set buttonHelp::Name to "buttonHelp"
       set buttonHelp::Size to new System.Drawing.Size(85 27)
       set buttonHelp::TabIndex to 10
       set buttonHelp::Text to "Help"
       set buttonHelp::UseVisualStyleBackColor to True
       invoke buttonHelp::add_Click(new System.EventHandler(self::buttonHelp_Click))
      *> 
      *> LoginForm1
      *> 
       set self::ClientSize to new System.Drawing.Size(434 204)
       invoke self::Controls::Add(buttonHelp)
       invoke self::Controls::Add(richTextBox1)
       invoke self::Controls::Add(tbPassword)
       invoke self::Controls::Add(tbUserName)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(label1)
       invoke self::Controls::Add(btnCancel)
       invoke self::Controls::Add(btnOK)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "LoginForm1"
       set self::Text to "opentext™ Bank Demo Login"
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
       end method.

      *> Clean up any resources being used.
       method-id Dispose override protected.
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

       class-id BankDemoWinForm.Help
                 is partial inherits type System.Windows.Forms.Form.

       01 button1 type System.Windows.Forms.Button.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 tBox1 type System.Windows.Forms.TextBox.
       01 richTextBox1 type System.Windows.Forms.RichTextBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.Help)
       set button1 to new System.Windows.Forms.Button
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set tBox1 to new System.Windows.Forms.TextBox
       set richTextBox1 to new System.Windows.Forms.RichTextBox
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(285 375)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(75 23)
       set button1::TabIndex to 0
       set button1::Text to "OK"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::button1_Click))
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(12 12)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(159 37)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 2
       set pictureBox1::TabStop to False
      *> 
      *> tBox1
      *> 
       set tBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBox1::Font to new System.Drawing.Font("Microsoft Sans Serif" 9.75 type System.Drawing.FontStyle::Bold type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set tBox1::Location to new System.Drawing.Point(64 62)
       set tBox1::Name to "tBox1"
       set tBox1::Size to new System.Drawing.Size(538 19)
       set tBox1::TabIndex to 3
       set tBox1::Text to "Help for Current Screen Use"
      *> 
      *> richTextBox1
      *> 
       set richTextBox1::Location to new System.Drawing.Point(63 97)
       set richTextBox1::Name to "richTextBox1"
       set richTextBox1::ReadOnly to True
       set richTextBox1::ShowSelectionMargin to True
       set richTextBox1::Size to new System.Drawing.Size(538 185)
       set richTextBox1::TabIndex to 4
       set richTextBox1::Text to "There is no Help Available for this form" & x"0A" & x"0A" & "New paragraph."
       set richTextBox1::WordWrap to False
      *> 
      *> Help
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Window
       set self::ClientSize to new System.Drawing.Size(644 410)
       invoke self::Controls::Add(richTextBox1)
       invoke self::Controls::Add(tBox1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(button1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "Help"
       set self::Text to "Help"
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
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

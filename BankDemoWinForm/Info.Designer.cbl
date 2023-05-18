       class-id BankDemoWinForm.Info
                 is partial inherits type System.Windows.Forms.Form.

       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 button1 type System.Windows.Forms.Button.
       01 textBox1 type System.Windows.Forms.TextBox.
       01 richTextBox1 type System.Windows.Forms.RichTextBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.Info)
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set button1 to new System.Windows.Forms.Button
       set textBox1 to new System.Windows.Forms.TextBox
       set richTextBox1 to new System.Windows.Forms.RichTextBox
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(12 12)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(159 37)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 3
       set pictureBox1::TabStop to False
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(295 435)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(75 23)
       set button1::TabIndex to 4
       set button1::Text to "OK"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::button1_Click))
      *> 
      *> textBox1
      *> 
       set textBox1::BackColor to type System.Drawing.SystemColors::Window
       set textBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox1::Font to new System.Drawing.Font("Microsoft Sans Serif" 24 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox1::Location to new System.Drawing.Point(12 65)
       set textBox1::Name to "textBox1"
       set textBox1::ReadOnly to True
       set textBox1::Size to new System.Drawing.Size(667 46)
       set textBox1::TabIndex to 5
       set textBox1::Text to "Micro Focus Visual COBOL™"
      *> 
      *> richTextBox1
      *> 
       set richTextBox1::Location to new System.Drawing.Point(12 115)
       set richTextBox1::Name to "richTextBox1"
       set richTextBox1::ReadOnly to True
       set richTextBox1::Size to new System.Drawing.Size(667 302)
       set richTextBox1::TabIndex to 6
       set richTextBox1::Text to resources::GetString("richTextBox1.Text")
      *> 
      *> Info
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Window
       set self::ClientSize to new System.Drawing.Size(691 476)
       invoke self::Controls::Add(richTextBox1)
       invoke self::Controls::Add(textBox1)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(pictureBox1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "Info"
       set self::Text to "Info"
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

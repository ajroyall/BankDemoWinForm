       class-id BankDemoWinForm.B60new
                 is partial inherits type System.Windows.Forms.Form.

       01 textBox3 type System.Windows.Forms.TextBox.
       01 buttonUpdate type System.Windows.Forms.Button.
       01 USERNM type System.Windows.Forms.TextBox.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 tBox-ADDR1 type System.Windows.Forms.TextBox.
       01 tBox-ADDR2 type System.Windows.Forms.TextBox.
       01 tBox-STATE type System.Windows.Forms.TextBox.
       01 tBox-CNTRY type System.Windows.Forms.TextBox.
       01 tBox-PSTCDE type System.Windows.Forms.TextBox.
       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label5 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 label4 type System.Windows.Forms.Label.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 tBox-TELNO type System.Windows.Forms.TextBox.
       01 label6 type System.Windows.Forms.Label.
       01 tBox-EMAIL type System.Windows.Forms.TextBox.
       01 label7 type System.Windows.Forms.Label.
       01 cBox-SEND-MAIL type System.Windows.Forms.CheckBox.
       01 cBox-SEND-EMAIL type System.Windows.Forms.CheckBox.
       01 groupBox2 type System.Windows.Forms.GroupBox.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 editDetailsToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 toolStripSeparator1 type System.Windows.Forms.ToolStripSeparator.
       01 helpToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B60new)
       set textBox3 to new System.Windows.Forms.TextBox
       set buttonUpdate to new System.Windows.Forms.Button
       set USERNM to new System.Windows.Forms.TextBox
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set editDetailsToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set toolStripSeparator1 to new System.Windows.Forms.ToolStripSeparator
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set tBox-ADDR1 to new System.Windows.Forms.TextBox
       set tBox-ADDR2 to new System.Windows.Forms.TextBox
       set tBox-STATE to new System.Windows.Forms.TextBox
       set tBox-CNTRY to new System.Windows.Forms.TextBox
       set tBox-PSTCDE to new System.Windows.Forms.TextBox
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label5 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set label4 to new System.Windows.Forms.Label
       set groupBox1 to new System.Windows.Forms.GroupBox
       set tBox-TELNO to new System.Windows.Forms.TextBox
       set label6 to new System.Windows.Forms.Label
       set tBox-EMAIL to new System.Windows.Forms.TextBox
       set label7 to new System.Windows.Forms.Label
       set cBox-SEND-MAIL to new System.Windows.Forms.CheckBox
       set cBox-SEND-EMAIL to new System.Windows.Forms.CheckBox
       set groupBox2 to new System.Windows.Forms.GroupBox
       set ERRMSG to new System.Windows.Forms.TextBox
       invoke menuStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke statusStrip1::SuspendLayout
       invoke groupBox1::SuspendLayout
       invoke groupBox2::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> textBox3
      *> 
       set textBox3::BackColor to type System.Drawing.Color::DarkSeaGreen
       set textBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox3::Location to new System.Drawing.Point(12 31)
       set textBox3::Name to "textBox3"
       set textBox3::ReadOnly to True
       set textBox3::Size to new System.Drawing.Size(241 23)
       set textBox3::TabIndex to 45
       set textBox3::TabStop to False
       set textBox3::Text to "Contact Details"
      *> 
      *> buttonUpdate
      *> 
       set buttonUpdate::Location to new System.Drawing.Point(12 489)
       set buttonUpdate::Name to "buttonUpdate"
       set buttonUpdate::Size to new System.Drawing.Size(88 34)
       set buttonUpdate::TabIndex to 43
       set buttonUpdate::Text to "Save"
       set buttonUpdate::UseVisualStyleBackColor to True
       invoke buttonUpdate::add_Click(new System.EventHandler(self::buttonUpdate_Click))
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.Color::DarkSeaGreen
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::FixedSingle
       set USERNM::Location to new System.Drawing.Point(12 60)
       set USERNM::MaxLength to 25
       set USERNM::Name to "USERNM"
       set USERNM::Size to new System.Drawing.Size(221 22)
       set USERNM::TabIndex to 40
      *> 
      *> fileToolStripMenuItem
      *> 
       invoke fileToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(editDetailsToolStripMenuItem1 toolStripSeparator1 exitToolStripMenuItem helpToolStripMenuItem1))
       set fileToolStripMenuItem::Name to "fileToolStripMenuItem"
       set fileToolStripMenuItem::Size to new System.Drawing.Size(38 24)
       set fileToolStripMenuItem::Text to "....."
      *> 
      *> editDetailsToolStripMenuItem1
      *> 
       set editDetailsToolStripMenuItem1::Name to "editDetailsToolStripMenuItem1"
       set editDetailsToolStripMenuItem1::Size to new System.Drawing.Size(168 26)
       set editDetailsToolStripMenuItem1::Text to "Edit Details"
       invoke editDetailsToolStripMenuItem1::add_Click(new System.EventHandler(self::editDetailsToolStripMenuItem_Click))
      *> 
      *> toolStripSeparator1
      *> 
       set toolStripSeparator1::Name to "toolStripSeparator1"
       set toolStripSeparator1::Size to new System.Drawing.Size(165 6)
      *> 
      *> exitToolStripMenuItem
      *> 
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(168 26)
       set exitToolStripMenuItem::Text to "Back"
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> helpToolStripMenuItem1
      *> 
       set helpToolStripMenuItem1::Name to "helpToolStripMenuItem1"
       set helpToolStripMenuItem1::Size to new System.Drawing.Size(168 26)
       set helpToolStripMenuItem1::Text to "Help"
       invoke helpToolStripMenuItem1::add_Click(new System.EventHandler(self::moreInformationToolStripMenuIte_Click))
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::BackColor to type System.Drawing.Color::Coral
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(491 28)
       set menuStrip1::TabIndex to 39
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(394 489)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 50
       set pictureBox1::TabStop to False
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 549)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(491 26)
       set statusStrip1::TabIndex to 49
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> tBox-ADDR1
      *> 
       set tBox-ADDR1::Location to new System.Drawing.Point(125 30)
       set tBox-ADDR1::MaxLength to 25
       set tBox-ADDR1::Name to "tBox-ADDR1"
       set tBox-ADDR1::Size to new System.Drawing.Size(189 22)
       set tBox-ADDR1::TabIndex to 2
      *> 
      *> tBox-ADDR2
      *> 
       set tBox-ADDR2::Location to new System.Drawing.Point(125 65)
       set tBox-ADDR2::MaxLength to 25
       set tBox-ADDR2::Name to "tBox-ADDR2"
       set tBox-ADDR2::Size to new System.Drawing.Size(189 22)
       set tBox-ADDR2::TabIndex to 3
      *> 
      *> tBox-STATE
      *> 
       set tBox-STATE::Location to new System.Drawing.Point(125 99)
       set tBox-STATE::MaxLength to 2
       set tBox-STATE::Name to "tBox-STATE"
       set tBox-STATE::Size to new System.Drawing.Size(189 22)
       set tBox-STATE::TabIndex to 4
      *> 
      *> tBox-CNTRY
      *> 
       set tBox-CNTRY::Location to new System.Drawing.Point(125 133)
       set tBox-CNTRY::MaxLength to 6
       set tBox-CNTRY::Name to "tBox-CNTRY"
       set tBox-CNTRY::Size to new System.Drawing.Size(189 22)
       set tBox-CNTRY::TabIndex to 5
      *> 
      *> tBox-PSTCDE
      *> 
       set tBox-PSTCDE::Location to new System.Drawing.Point(125 168)
       set tBox-PSTCDE::MaxLength to 6
       set tBox-PSTCDE::Name to "tBox-PSTCDE"
       set tBox-PSTCDE::Size to new System.Drawing.Size(189 22)
       set tBox-PSTCDE::TabIndex to 6
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(49 33)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(68 16)
       set label1::TabIndex to 25
       set label1::Text to "Address 1"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(49 68)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(68 16)
       set label2::TabIndex to 26
       set label2::Text to "Address 2"
      *> 
      *> label5
      *> 
       set label5::AutoSize to True
       set label5::Location to new System.Drawing.Point(27 171)
       set label5::Name to "label5"
       set label5::Size to new System.Drawing.Size(93 16)
       set label5::TabIndex to 29
       set label5::Text to "Zip/Post Code"
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(33 102)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(83 16)
       set label3::TabIndex to 27
       set label3::Text to "State/County"
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Location to new System.Drawing.Point(60 136)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(52 16)
       set label4::TabIndex to 28
       set label4::Text to "Country"
      *> 
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(label4)
       invoke groupBox1::Controls::Add(label3)
       invoke groupBox1::Controls::Add(label5)
       invoke groupBox1::Controls::Add(label2)
       invoke groupBox1::Controls::Add(label1)
       invoke groupBox1::Controls::Add(tBox-PSTCDE)
       invoke groupBox1::Controls::Add(tBox-CNTRY)
       invoke groupBox1::Controls::Add(tBox-STATE)
       invoke groupBox1::Controls::Add(tBox-ADDR2)
       invoke groupBox1::Controls::Add(tBox-ADDR1)
       set groupBox1::Location to new System.Drawing.Point(11 104)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(475 206)
       set groupBox1::TabIndex to 46
       set groupBox1::TabStop to False
       set groupBox1::Text to "Postal Details"
      *> 
      *> tBox-TELNO
      *> 
       set tBox-TELNO::Location to new System.Drawing.Point(125 32)
       set tBox-TELNO::MaxLength to 12
       set tBox-TELNO::Name to "tBox-TELNO"
       set tBox-TELNO::Size to new System.Drawing.Size(342 22)
       set tBox-TELNO::TabIndex to 7
      *> 
      *> label6
      *> 
       set label6::AutoSize to True
       set label6::Location to new System.Drawing.Point(42 32)
       set label6::Name to "label6"
       set label6::Size to new System.Drawing.Size(73 16)
       set label6::TabIndex to 30
       set label6::Text to "Telephone"
      *> 
      *> tBox-EMAIL
      *> 
       set tBox-EMAIL::Location to new System.Drawing.Point(125 66)
       set tBox-EMAIL::MaxLength to 30
       set tBox-EMAIL::Name to "tBox-EMAIL"
       set tBox-EMAIL::Size to new System.Drawing.Size(342 22)
       set tBox-EMAIL::TabIndex to 8
      *> 
      *> label7
      *> 
       set label7::AutoSize to True
       set label7::Location to new System.Drawing.Point(70 69)
       set label7::Name to "label7"
       set label7::Size to new System.Drawing.Size(41 16)
       set label7::TabIndex to 31
       set label7::Text to "Email"
      *> 
      *> cBox-SEND-MAIL
      *> 
       set cBox-SEND-MAIL::AutoSize to True
       set cBox-SEND-MAIL::Location to new System.Drawing.Point(29 117)
       set cBox-SEND-MAIL::Name to "cBox-SEND-MAIL"
       set cBox-SEND-MAIL::Size to new System.Drawing.Size(130 20)
       set cBox-SEND-MAIL::TabIndex to 9
       set cBox-SEND-MAIL::Text to "Send Postal Mail"
       set cBox-SEND-MAIL::UseVisualStyleBackColor to True
      *> 
      *> cBox-SEND-EMAIL
      *> 
       set cBox-SEND-EMAIL::AutoSize to True
       set cBox-SEND-EMAIL::Location to new System.Drawing.Point(165 117)
       set cBox-SEND-EMAIL::Name to "cBox-SEND-EMAIL"
       set cBox-SEND-EMAIL::Size to new System.Drawing.Size(98 20)
       set cBox-SEND-EMAIL::TabIndex to 10
       set cBox-SEND-EMAIL::Text to "Send Email"
       set cBox-SEND-EMAIL::UseVisualStyleBackColor to True
      *> 
      *> groupBox2
      *> 
       invoke groupBox2::Controls::Add(cBox-SEND-EMAIL)
       invoke groupBox2::Controls::Add(cBox-SEND-MAIL)
       invoke groupBox2::Controls::Add(label7)
       invoke groupBox2::Controls::Add(tBox-EMAIL)
       invoke groupBox2::Controls::Add(label6)
       invoke groupBox2::Controls::Add(tBox-TELNO)
       set groupBox2::Location to new System.Drawing.Point(12 328)
       set groupBox2::Name to "groupBox2"
       set groupBox2::Size to new System.Drawing.Size(474 155)
       set groupBox2::TabIndex to 47
       set groupBox2::TabStop to False
       set groupBox2::Text to "Contact Options"
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BackColor to type System.Drawing.Color::DarkSeaGreen
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(12 524)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(467 15)
       set ERRMSG::TabIndex to 48
       set ERRMSG::Visible to False
      *> 
      *> B60new
      *> 
       set self::BackColor to type System.Drawing.Color::DarkSeaGreen
       set self::ClientSize to new System.Drawing.Size(491 575)
       set self::ControlBox to False
       invoke self::Controls::Add(buttonUpdate)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(groupBox2)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(menuStrip1)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(textBox3)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B60new"
       set self::Text to "Micro Focus Visual COBOL"
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke groupBox2::ResumeLayout(False)
       invoke groupBox2::PerformLayout
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

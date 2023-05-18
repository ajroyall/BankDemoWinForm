       class-id BankDemoWinForm.B60
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 contactToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 editDetailsToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuIte type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuI0 type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 button1 type System.Windows.Forms.Button.
       01 USERID type System.Windows.Forms.TextBox.
       01 textBox2 type System.Windows.Forms.TextBox.
       01 textBox3 type System.Windows.Forms.TextBox.
       01 USERNM type System.Windows.Forms.TextBox.
       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 label4 type System.Windows.Forms.Label.
       01 label5 type System.Windows.Forms.Label.
       01 label6 type System.Windows.Forms.Label.
       01 label7 type System.Windows.Forms.Label.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 groupBox2 type System.Windows.Forms.GroupBox.
       01 tBox-ADDR1 type System.Windows.Forms.TextBox.
       01 tBox-ADDR2 type System.Windows.Forms.TextBox.
       01 tBox-STATE type System.Windows.Forms.TextBox.
       01 tBox-CNTRY type System.Windows.Forms.TextBox.
       01 tBox-PSTCDE type System.Windows.Forms.TextBox.
       01 tBox-TELNO type System.Windows.Forms.TextBox.
       01 tBox-EMAIL type System.Windows.Forms.TextBox.
       01 cBox-SEND-EMAIL type System.Windows.Forms.CheckBox.
       01 cBox-SEND-MAIL type System.Windows.Forms.CheckBox.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 buttonUpdate type System.Windows.Forms.Button.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B60)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set contactToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set editDetailsToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuIte to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuI0 to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set button1 to new System.Windows.Forms.Button
       set USERID to new System.Windows.Forms.TextBox
       set textBox2 to new System.Windows.Forms.TextBox
       set textBox3 to new System.Windows.Forms.TextBox
       set USERNM to new System.Windows.Forms.TextBox
       set tBox-ADDR1 to new System.Windows.Forms.TextBox
       set tBox-ADDR2 to new System.Windows.Forms.TextBox
       set tBox-STATE to new System.Windows.Forms.TextBox
       set tBox-CNTRY to new System.Windows.Forms.TextBox
       set tBox-PSTCDE to new System.Windows.Forms.TextBox
       set tBox-TELNO to new System.Windows.Forms.TextBox
       set tBox-EMAIL to new System.Windows.Forms.TextBox
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set label4 to new System.Windows.Forms.Label
       set label5 to new System.Windows.Forms.Label
       set label6 to new System.Windows.Forms.Label
       set label7 to new System.Windows.Forms.Label
       set groupBox1 to new System.Windows.Forms.GroupBox
       set groupBox2 to new System.Windows.Forms.GroupBox
       set cBox-SEND-EMAIL to new System.Windows.Forms.CheckBox
       set cBox-SEND-MAIL to new System.Windows.Forms.CheckBox
       set ERRMSG to new System.Windows.Forms.TextBox
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set buttonUpdate to new System.Windows.Forms.Button
       set pictureBox1 to new System.Windows.Forms.PictureBox
       invoke menuStrip1::SuspendLayout
       invoke groupBox1::SuspendLayout
       invoke groupBox2::SuspendLayout
       invoke statusStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem contactToolStripMenuItem helpToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(952 28)
       set menuStrip1::TabIndex to 1
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> fileToolStripMenuItem
      *> 
       invoke fileToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(exitToolStripMenuItem))
       set fileToolStripMenuItem::Name to "fileToolStripMenuItem"
       set fileToolStripMenuItem::Size to new System.Drawing.Size(46 24)
       set fileToolStripMenuItem::Text to "File"
      *> 
      *> exitToolStripMenuItem
      *> 
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(116 26)
       set exitToolStripMenuItem::Text to "Exit"
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> contactToolStripMenuItem
      *> 
       invoke contactToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(editDetailsToolStripMenuItem))
       set contactToolStripMenuItem::Name to "contactToolStripMenuItem"
       set contactToolStripMenuItem::Size to new System.Drawing.Size(74 24)
       set contactToolStripMenuItem::Text to "Contact"
       set contactToolStripMenuItem::Visible to False
      *> 
      *> editDetailsToolStripMenuItem
      *> 
       set editDetailsToolStripMenuItem::Name to "editDetailsToolStripMenuItem"
       set editDetailsToolStripMenuItem::Size to new System.Drawing.Size(168 26)
       set editDetailsToolStripMenuItem::Text to "Edit Details"
       invoke editDetailsToolStripMenuItem::add_Click(new System.EventHandler(self::editDetailsToolStripMenuItem_Click))
      *> 
      *> helpToolStripMenuItem
      *> 
       invoke helpToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(moreInformationToolStripMenuIte moreInformationToolStripMenuI0 aboutToolStripMenuItem))
       set helpToolStripMenuItem::Name to "helpToolStripMenuItem"
       set helpToolStripMenuItem::Size to new System.Drawing.Size(55 24)
       set helpToolStripMenuItem::Text to "Help"
      *> 
      *> moreInformationToolStripMenuIte
      *> 
       set moreInformationToolStripMenuIte::Name to "moreInformationToolStripMenuIte"
       set moreInformationToolStripMenuIte::Size to new System.Drawing.Size(209 26)
       set moreInformationToolStripMenuIte::Text to "Help"
       invoke moreInformationToolStripMenuIte::add_Click(new System.EventHandler(self::moreInformationToolStripMenuIte_Click))
      *> 
      *> moreInformationToolStripMenuI0
      *> 
       set moreInformationToolStripMenuI0::Name to "moreInformationToolStripMenuI0"
       set moreInformationToolStripMenuI0::Size to new System.Drawing.Size(209 26)
       set moreInformationToolStripMenuI0::Text to "More Information"
       invoke moreInformationToolStripMenuI0::add_Click(new System.EventHandler(self::moreInformationToolStripMenuI0_Click))
      *> 
      *> aboutToolStripMenuItem
      *> 
       set aboutToolStripMenuItem::Name to "aboutToolStripMenuItem"
       set aboutToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set aboutToolStripMenuItem::Text to "About"
       invoke aboutToolStripMenuItem::add_Click(new System.EventHandler(self::aboutToolStripMenuItem_Click))
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(420 48)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(104 34)
       set button1::TabIndex to 11
       set button1::Text to "Find"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::button1_Click))
      *> 
      *> USERID
      *> 
       set USERID::BackColor to type System.Drawing.SystemColors::Info
       set USERID::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERID::Location to new System.Drawing.Point(815 57)
       set USERID::Name to "USERID"
       set USERID::ReadOnly to True
       set USERID::Size to new System.Drawing.Size(68 15)
       set USERID::TabIndex to 12
       set USERID::TabStop to False
       set USERID::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> textBox2
      *> 
       set textBox2::BackColor to type System.Drawing.SystemColors::Control
       set textBox2::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox2::Font to new System.Drawing.Font("Microsoft Sans Serif" 8.25)
       set textBox2::Location to new System.Drawing.Point(671 56)
       set textBox2::Name to "textBox2"
       set textBox2::ReadOnly to True
       set textBox2::Size to new System.Drawing.Size(129 16)
       set textBox2::TabIndex to 11
       set textBox2::TabStop to False
       set textBox2::Text to "Account ID"
       set textBox2::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> textBox3
      *> 
       set textBox3::BackColor to type System.Drawing.SystemColors::Control
       set textBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox3::Location to new System.Drawing.Point(12 31)
       set textBox3::Name to "textBox3"
       set textBox3::ReadOnly to True
       set textBox3::Size to new System.Drawing.Size(241 23)
       set textBox3::TabIndex to 14
       set textBox3::TabStop to False
       set textBox3::Text to "Contact Details"
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.SystemColors::Window
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::FixedSingle
       set USERNM::Location to new System.Drawing.Point(12 60)
       set USERNM::MaxLength to 25
       set USERNM::Name to "USERNM"
       set USERNM::Size to new System.Drawing.Size(221 22)
       set USERNM::TabIndex to 1
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
      *> tBox-TELNO
      *> 
       set tBox-TELNO::Location to new System.Drawing.Point(125 32)
       set tBox-TELNO::MaxLength to 12
       set tBox-TELNO::Name to "tBox-TELNO"
       set tBox-TELNO::Size to new System.Drawing.Size(120 22)
       set tBox-TELNO::TabIndex to 7
      *> 
      *> tBox-EMAIL
      *> 
       set tBox-EMAIL::Location to new System.Drawing.Point(125 66)
       set tBox-EMAIL::MaxLength to 30
       set tBox-EMAIL::Name to "tBox-EMAIL"
       set tBox-EMAIL::Size to new System.Drawing.Size(120 22)
       set tBox-EMAIL::TabIndex to 8
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
      *> label5
      *> 
       set label5::AutoSize to True
       set label5::Location to new System.Drawing.Point(27 171)
       set label5::Name to "label5"
       set label5::Size to new System.Drawing.Size(93 16)
       set label5::TabIndex to 29
       set label5::Text to "Zip/Post Code"
      *> 
      *> label6
      *> 
       set label6::AutoSize to True
       set label6::Location to new System.Drawing.Point(54 35)
       set label6::Name to "label6"
       set label6::Size to new System.Drawing.Size(73 16)
       set label6::TabIndex to 30
       set label6::Text to "Telephone"
      *> 
      *> label7
      *> 
       set label7::AutoSize to True
       set label7::Location to new System.Drawing.Point(80 69)
       set label7::Name to "label7"
       set label7::Size to new System.Drawing.Size(41 16)
       set label7::TabIndex to 31
       set label7::Text to "Email"
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
       set groupBox1::TabIndex to 34
       set groupBox1::TabStop to False
       set groupBox1::Text to "Postal Details"
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
       set groupBox2::Size to new System.Drawing.Size(285 155)
       set groupBox2::TabIndex to 35
       set groupBox2::TabStop to False
       set groupBox2::Text to "Contact Options"
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
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(12 524)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 36
       set ERRMSG::Visible to False
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 536)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(952 26)
       set statusStrip1::TabIndex to 37
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> buttonUpdate
      *> 
       set buttonUpdate::Location to new System.Drawing.Point(530 48)
       set buttonUpdate::Name to "buttonUpdate"
       set buttonUpdate::Size to new System.Drawing.Size(156 34)
       set buttonUpdate::TabIndex to 12
       set buttonUpdate::Text to "Update Details"
       set buttonUpdate::UseVisualStyleBackColor to True
       invoke buttonUpdate::add_Click(new System.EventHandler(self::buttonUpdate_Click))
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(860 0)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 38
       set pictureBox1::TabStop to False
      *> 
      *> B60
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Control
       set self::ClientSize to new System.Drawing.Size(952 562)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(buttonUpdate)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(groupBox2)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(textBox3)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(USERID)
       invoke self::Controls::Add(textBox2)
       invoke self::Controls::Add(menuStrip1)
       invoke self::Controls::Add(statusStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B60"
       set self::Text to "opentext™ - Bank Demo"
       invoke self::add_Load(new System.EventHandler(self::B60_Load))
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke groupBox2::ResumeLayout(False)
       invoke groupBox2::PerformLayout
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
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

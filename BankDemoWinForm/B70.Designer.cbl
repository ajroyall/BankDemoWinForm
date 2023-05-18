       class-id BankDemoWinForm.B70
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuIte type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuI0 type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 label4 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label1 type System.Windows.Forms.Label.
       01 textBox6 type System.Windows.Forms.TextBox.
       01 tBoxPaymt type System.Windows.Forms.TextBox.
       01 tBoxTerm type System.Windows.Forms.TextBox.
       01 tBoxRate type System.Windows.Forms.TextBox.
       01 tBoxAmount type System.Windows.Forms.TextBox.
       01 rtBoxInfo type System.Windows.Forms.RichTextBox.
       01 ButtonCalculate type System.Windows.Forms.Button.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B70)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuIte to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuI0 to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set groupBox1 to new System.Windows.Forms.GroupBox
       set tBoxPaymt to new System.Windows.Forms.TextBox
       set tBoxTerm to new System.Windows.Forms.TextBox
       set tBoxRate to new System.Windows.Forms.TextBox
       set tBoxAmount to new System.Windows.Forms.TextBox
       set label4 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label1 to new System.Windows.Forms.Label
       set rtBoxInfo to new System.Windows.Forms.RichTextBox
       set textBox6 to new System.Windows.Forms.TextBox
       set ButtonCalculate to new System.Windows.Forms.Button
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set ERRMSG to new System.Windows.Forms.TextBox
       set pictureBox1 to new System.Windows.Forms.PictureBox
       invoke menuStrip1::SuspendLayout
       invoke groupBox1::SuspendLayout
       invoke statusStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem helpToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(931 28)
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
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(tBoxPaymt)
       invoke groupBox1::Controls::Add(tBoxTerm)
       invoke groupBox1::Controls::Add(tBoxRate)
       invoke groupBox1::Controls::Add(tBoxAmount)
       invoke groupBox1::Controls::Add(label4)
       invoke groupBox1::Controls::Add(label3)
       invoke groupBox1::Controls::Add(label2)
       invoke groupBox1::Controls::Add(label1)
       set groupBox1::Location to new System.Drawing.Point(31 67)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(494 218)
       set groupBox1::TabIndex to 5
       set groupBox1::TabStop to False
       set groupBox1::Text to "Loan Quotation"
      *> 
      *> tBoxPaymt
      *> 
       set tBoxPaymt::Location to new System.Drawing.Point(164 148)
       set tBoxPaymt::MaxLength to 9
       set tBoxPaymt::Name to "tBoxPaymt"
       set tBoxPaymt::Size to new System.Drawing.Size(234 22)
       set tBoxPaymt::TabIndex to 4
      *> 
      *> tBoxTerm
      *> 
       set tBoxTerm::Location to new System.Drawing.Point(164 110)
       set tBoxTerm::MaxLength to 4
       set tBoxTerm::Name to "tBoxTerm"
       set tBoxTerm::Size to new System.Drawing.Size(234 22)
       set tBoxTerm::TabIndex to 3
      *> 
      *> tBoxRate
      *> 
       set tBoxRate::Location to new System.Drawing.Point(164 71)
       set tBoxRate::MaxLength to 7
       set tBoxRate::Name to "tBoxRate"
       set tBoxRate::Size to new System.Drawing.Size(234 22)
       set tBoxRate::TabIndex to 2
      *> 
      *> tBoxAmount
      *> 
       set tBoxAmount::Location to new System.Drawing.Point(164 30)
       set tBoxAmount::MaxLength to 7
       set tBoxAmount::Name to "tBoxAmount"
       set tBoxAmount::Size to new System.Drawing.Size(234 22)
       set tBoxAmount::TabIndex to 1
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Location to new System.Drawing.Point(24 155)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(126 16)
       set label4::TabIndex to 3
       set label4::Text to "Monthly Repayment"
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(24 117)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(93 16)
       set label3::TabIndex to 2
       set label3::Text to "Term (Months)"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(24 78)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(97 16)
       set label2::TabIndex to 1
       set label2::Text to "Interest Rate %"
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(24 37)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(111 16)
       set label1::TabIndex to 0
       set label1::Text to "Amount to Borrow"
      *> 
      *> rtBoxInfo
      *> 
       set rtBoxInfo::BackColor to type System.Drawing.SystemColors::ControlDark
       set rtBoxInfo::Location to new System.Drawing.Point(31 312)
       set rtBoxInfo::Name to "rtBoxInfo"
       set rtBoxInfo::ReadOnly to True
       set rtBoxInfo::Size to new System.Drawing.Size(494 188)
       set rtBoxInfo::TabIndex to 6
       set rtBoxInfo::TabStop to False
       set rtBoxInfo::Text to resources::GetString("rtBoxInfo.Text")
      *> 
      *> textBox6
      *> 
       set textBox6::BackColor to type System.Drawing.SystemColors::AppWorkspace
       set textBox6::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox6::Enabled to False
       set textBox6::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox6::ForeColor to type System.Drawing.SystemColors::Desktop
       set textBox6::Location to new System.Drawing.Point(4 31)
       set textBox6::Name to "textBox6"
       set textBox6::ReadOnly to True
       set textBox6::Size to new System.Drawing.Size(241 23)
       set textBox6::TabIndex to 15
       set textBox6::Text to "Loan Quotation Calculator"
      *> 
      *> ButtonCalculate
      *> 
       set ButtonCalculate::Location to new System.Drawing.Point(547 93)
       set ButtonCalculate::Name to "ButtonCalculate"
       set ButtonCalculate::Size to new System.Drawing.Size(261 45)
       set ButtonCalculate::TabIndex to 16
       set ButtonCalculate::Text to "CALCULATE"
       set ButtonCalculate::UseVisualStyleBackColor to True
       invoke ButtonCalculate::add_Click(new System.EventHandler(self::ButtonCalculate_Click))
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 527)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(931 26)
       set statusStrip1::TabIndex to 17
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(12 515)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 37
       set ERRMSG::Visible to False
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(839 0)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 38
       set pictureBox1::TabStop to False
      *> 
      *> B70
      *> 
       set self::BackColor to type System.Drawing.SystemColors::AppWorkspace
       set self::ClientSize to new System.Drawing.Size(931 553)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(ButtonCalculate)
       invoke self::Controls::Add(textBox6)
       invoke self::Controls::Add(rtBoxInfo)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B70"
       set self::Text to "opentext™ - Bank Demo"
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
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

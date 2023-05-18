       class-id BankDemoWinForm.B50new
                 is partial inherits type System.Windows.Forms.Form.

       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 lBoxFrom type System.Windows.Forms.ListBox.
       01 tBoxAmount type System.Windows.Forms.TextBox.
       01 label1 type System.Windows.Forms.Label.
       01 buttonTransfer type System.Windows.Forms.Button.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 textBox2 type System.Windows.Forms.TextBox.
       01 USERNM type System.Windows.Forms.TextBox.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 lBoxTo type System.Windows.Forms.ListBox.
       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 toolStripSeparator1 type System.Windows.Forms.ToolStripSeparator.
       01 helpToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 groupBox1 type System.Windows.Forms.GroupBox.
       01 groupBox2 type System.Windows.Forms.GroupBox.
       01 dateTimePicker1 type System.Windows.Forms.DateTimePicker.
       01 label3 type System.Windows.Forms.Label.
       01 tbToAccNo type System.Windows.Forms.TextBox.
       01 groupBox3 type System.Windows.Forms.GroupBox.
       01 tbFromAccNo type System.Windows.Forms.TextBox.
       01 label2 type System.Windows.Forms.Label.
       01 tbFromBalance type System.Windows.Forms.TextBox.
       01 tbToBalance type System.Windows.Forms.TextBox.
       01 label4 type System.Windows.Forms.Label.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B50new)
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set lBoxFrom to new System.Windows.Forms.ListBox
       set tBoxAmount to new System.Windows.Forms.TextBox
       set label1 to new System.Windows.Forms.Label
       set buttonTransfer to new System.Windows.Forms.Button
       set ERRMSG to new System.Windows.Forms.TextBox
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set textBox2 to new System.Windows.Forms.TextBox
       set USERNM to new System.Windows.Forms.TextBox
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set toolStripSeparator1 to new System.Windows.Forms.ToolStripSeparator
       set helpToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set lBoxTo to new System.Windows.Forms.ListBox
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set groupBox1 to new System.Windows.Forms.GroupBox
       set tbToBalance to new System.Windows.Forms.TextBox
       set label4 to new System.Windows.Forms.Label
       set tbToAccNo to new System.Windows.Forms.TextBox
       set groupBox2 to new System.Windows.Forms.GroupBox
       set dateTimePicker1 to new System.Windows.Forms.DateTimePicker
       set label3 to new System.Windows.Forms.Label
       set groupBox3 to new System.Windows.Forms.GroupBox
       set tbFromBalance to new System.Windows.Forms.TextBox
       set label2 to new System.Windows.Forms.Label
       set tbFromAccNo to new System.Windows.Forms.TextBox
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke statusStrip1::SuspendLayout
       invoke menuStrip1::SuspendLayout
       invoke groupBox1::SuspendLayout
       invoke groupBox2::SuspendLayout
       invoke groupBox3::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(313 468)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 49
       set pictureBox1::TabStop to False
      *> 
      *> lBoxFrom
      *> 
       set lBoxFrom::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set lBoxFrom::FormattingEnabled to True
       set lBoxFrom::ItemHeight to 18
       set lBoxFrom::Location to new System.Drawing.Point(9 38)
       set lBoxFrom::Name to "lBoxFrom"
       set lBoxFrom::Size to new System.Drawing.Size(146 22)
       set lBoxFrom::TabIndex to 47
       invoke lBoxFrom::add_Click(new System.EventHandler(self::selectFrom_Click))
      *> 
      *> tBoxAmount
      *> 
       set tBoxAmount::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set tBoxAmount::Location to new System.Drawing.Point(6 44)
       set tBoxAmount::MaxLength to 9
       set tBoxAmount::Name to "tBoxAmount"
       set tBoxAmount::Size to new System.Drawing.Size(93 24)
       set tBoxAmount::TabIndex to 46
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set label1::Location to new System.Drawing.Point(6 25)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(59 18)
       set label1::TabIndex to 43
       set label1::Text to "Amount"
      *> 
      *> buttonTransfer
      *> 
       set buttonTransfer::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set buttonTransfer::Location to new System.Drawing.Point(9 461)
       set buttonTransfer::Name to "buttonTransfer"
       set buttonTransfer::Size to new System.Drawing.Size(167 35)
       set buttonTransfer::TabIndex to 42
       set buttonTransfer::Text to "Confirm"
       set buttonTransfer::UseVisualStyleBackColor to True
       invoke buttonTransfer::add_Click(new System.EventHandler(self::buttonTransfer_Click))
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(0 555)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 41
       set ERRMSG::Visible to False
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
       set statusStrip1::Location to new System.Drawing.Point(0 499)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(606 26)
       set statusStrip1::TabIndex to 40
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> textBox2
      *> 
       set textBox2::BackColor to type System.Drawing.SystemColors::Control
       set textBox2::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox2::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox2::Location to new System.Drawing.Point(5 31)
       set textBox2::Name to "textBox2"
       set textBox2::ReadOnly to True
       set textBox2::Size to new System.Drawing.Size(241 23)
       set textBox2::TabIndex to 38
       set textBox2::TabStop to False
       set textBox2::Text to "Move Money"
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.SystemColors::Control
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERNM::Location to new System.Drawing.Point(5 71)
       set USERNM::Name to "USERNM"
       set USERNM::ReadOnly to True
       set USERNM::Size to new System.Drawing.Size(221 15)
       set USERNM::TabIndex to 36
       set USERNM::TabStop to False
      *> 
      *> exitToolStripMenuItem
      *> 
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(124 26)
       set exitToolStripMenuItem::Text to "Back"
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> fileToolStripMenuItem
      *> 
       invoke fileToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(exitToolStripMenuItem toolStripSeparator1 helpToolStripMenuItem1))
       set fileToolStripMenuItem::Name to "fileToolStripMenuItem"
       set fileToolStripMenuItem::Size to new System.Drawing.Size(38 24)
       set fileToolStripMenuItem::Text to "....."
      *> 
      *> toolStripSeparator1
      *> 
       set toolStripSeparator1::Name to "toolStripSeparator1"
       set toolStripSeparator1::Size to new System.Drawing.Size(121 6)
      *> 
      *> helpToolStripMenuItem1
      *> 
       set helpToolStripMenuItem1::Name to "helpToolStripMenuItem1"
       set helpToolStripMenuItem1::Size to new System.Drawing.Size(124 26)
       set helpToolStripMenuItem1::Text to "Help"
       invoke helpToolStripMenuItem1::add_Click(new System.EventHandler(self::moreInformationToolStripMenuIte_Click))
      *> 
      *> lBoxTo
      *> 
       set lBoxTo::Font to new System.Drawing.Font("Microsoft Sans Serif" 9 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set lBoxTo::FormattingEnabled to True
       set lBoxTo::ItemHeight to 18
       set lBoxTo::Location to new System.Drawing.Point(10 29)
       set lBoxTo::Name to "lBoxTo"
       set lBoxTo::Size to new System.Drawing.Size(136 22)
       set lBoxTo::TabIndex to 48
       invoke lBoxTo::add_SelectedIndexChanged(new System.EventHandler(self::selectTo_Click))
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::BackColor to type System.Drawing.Color::Coral
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(606 28)
       set menuStrip1::TabIndex to 34
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> groupBox1
      *> 
       invoke groupBox1::Controls::Add(tbToBalance)
       invoke groupBox1::Controls::Add(label4)
       invoke groupBox1::Controls::Add(tbToAccNo)
       invoke groupBox1::Controls::Add(lBoxTo)
       set groupBox1::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Bold type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set groupBox1::Location to new System.Drawing.Point(9 187)
       set groupBox1::Name to "groupBox1"
       set groupBox1::Size to new System.Drawing.Size(396 93)
       set groupBox1::TabIndex to 50
       set groupBox1::TabStop to False
       set groupBox1::Text to "To"
      *> 
      *> tbToBalance
      *> 
       set tbToBalance::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set tbToBalance::Location to new System.Drawing.Point(233 47)
       set tbToBalance::MaxLength to 15
       set tbToBalance::Name to "tbToBalance"
       set tbToBalance::ReadOnly to True
       set tbToBalance::Size to new System.Drawing.Size(141 24)
       set tbToBalance::TabIndex to 54
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set label4::Location to new System.Drawing.Point(313 26)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(61 18)
       set label4::TabIndex to 53
       set label4::Text to "Balance"
      *> 
      *> tbToAccNo
      *> 
       set tbToAccNo::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set tbToAccNo::Location to new System.Drawing.Point(6 53)
       set tbToAccNo::Name to "tbToAccNo"
       set tbToAccNo::ReadOnly to True
       set tbToAccNo::Size to new System.Drawing.Size(111 24)
       set tbToAccNo::TabIndex to 52
      *> 
      *> groupBox2
      *> 
       invoke groupBox2::Controls::Add(dateTimePicker1)
       invoke groupBox2::Controls::Add(label3)
       invoke groupBox2::Controls::Add(label1)
       invoke groupBox2::Controls::Add(tBoxAmount)
       set groupBox2::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Bold)
       set groupBox2::Location to new System.Drawing.Point(9 308)
       set groupBox2::Name to "groupBox2"
       set groupBox2::Size to new System.Drawing.Size(395 136)
       set groupBox2::TabIndex to 51
       set groupBox2::TabStop to False
       set groupBox2::Text to "Details"
      *> 
      *> dateTimePicker1
      *> 
       set dateTimePicker1::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set dateTimePicker1::Location to new System.Drawing.Point(5 105)
       set dateTimePicker1::MaxDate to new System.DateTime(2023 5 17 0 0 0 0)
       set dateTimePicker1::MinDate to new System.DateTime(2023 5 17 0 0 0 0)
       set dateTimePicker1::Name to "dateTimePicker1"
       set dateTimePicker1::Size to new System.Drawing.Size(200 24)
       set dateTimePicker1::TabIndex to 48
       set dateTimePicker1::TabStop to False
       set dateTimePicker1::Value to new System.DateTime(2023 5 17 0 0 0 0)
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set label3::Location to new System.Drawing.Point(6 85)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(39 18)
       set label3::TabIndex to 47
       set label3::Text to "Date"
      *> 
      *> groupBox3
      *> 
       invoke groupBox3::Controls::Add(tbFromBalance)
       invoke groupBox3::Controls::Add(label2)
       invoke groupBox3::Controls::Add(tbFromAccNo)
       invoke groupBox3::Controls::Add(lBoxFrom)
       set groupBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Bold type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set groupBox3::Location to new System.Drawing.Point(9 71)
       set groupBox3::Name to "groupBox3"
       set groupBox3::Size to new System.Drawing.Size(396 93)
       set groupBox3::TabIndex to 51
       set groupBox3::TabStop to False
       set groupBox3::Text to "From"
      *> 
      *> tbFromBalance
      *> 
       set tbFromBalance::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set tbFromBalance::Location to new System.Drawing.Point(242 63)
       set tbFromBalance::MaxLength to 15
       set tbFromBalance::Name to "tbFromBalance"
       set tbFromBalance::ReadOnly to True
       set tbFromBalance::Size to new System.Drawing.Size(141 24)
       set tbFromBalance::TabIndex to 50
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set label2::Location to new System.Drawing.Point(322 42)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(61 18)
       set label2::TabIndex to 49
       set label2::Text to "Balance"
      *> 
      *> tbFromAccNo
      *> 
       set tbFromAccNo::Font to new System.Drawing.Font("Microsoft Sans Serif" 9)
       set tbFromAccNo::Location to new System.Drawing.Point(8 63)
       set tbFromAccNo::Name to "tbFromAccNo"
       set tbFromAccNo::ReadOnly to True
       set tbFromAccNo::Size to new System.Drawing.Size(111 24)
       set tbFromAccNo::TabIndex to 48
      *> 
      *> B50new
      *> 
       set self::ClientSize to new System.Drawing.Size(606 525)
       set self::ControlBox to False
       invoke self::Controls::Add(groupBox3)
       invoke self::Controls::Add(groupBox2)
       invoke self::Controls::Add(groupBox1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(buttonTransfer)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(textBox2)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B50new"
       set self::Text to "Micro Focus Visual COBOL"
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke groupBox1::ResumeLayout(False)
       invoke groupBox1::PerformLayout
       invoke groupBox2::ResumeLayout(False)
       invoke groupBox2::PerformLayout
       invoke groupBox3::ResumeLayout(False)
       invoke groupBox3::PerformLayout
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

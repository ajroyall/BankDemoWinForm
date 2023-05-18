       class-id BankDemoWinForm.B40
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuIte type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuI0 type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 textBox2 type System.Windows.Forms.TextBox.
       01 textBox3 type System.Windows.Forms.TextBox.
       01 USERNM type System.Windows.Forms.TextBox.
       01 USERID type System.Windows.Forms.TextBox.
       01 listView1 type System.Windows.Forms.ListView.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 colDate type System.Windows.Forms.ColumnHeader.
       01 colTime type System.Windows.Forms.ColumnHeader.
       01 colAmount type System.Windows.Forms.ColumnHeader.
       01 colDesc type System.Windows.Forms.ColumnHeader.
       01 label2 type System.Windows.Forms.Label.
       01 tBoxAcctDesc type System.Windows.Forms.TextBox.
       01 iBoxAccNo type System.Windows.Forms.ListBox.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 button1 type System.Windows.Forms.Button.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B40)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuIte to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuI0 to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set textBox2 to new System.Windows.Forms.TextBox
       set textBox3 to new System.Windows.Forms.TextBox
       set USERNM to new System.Windows.Forms.TextBox
       set USERID to new System.Windows.Forms.TextBox
       set listView1 to new System.Windows.Forms.ListView
       set colDate to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set colTime to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set colAmount to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set colDesc to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set label2 to new System.Windows.Forms.Label
       set tBoxAcctDesc to new System.Windows.Forms.TextBox
       set iBoxAccNo to new System.Windows.Forms.ListBox
       set ERRMSG to new System.Windows.Forms.TextBox
       set button1 to new System.Windows.Forms.Button
       set pictureBox1 to new System.Windows.Forms.PictureBox
       invoke menuStrip1::SuspendLayout
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
       set menuStrip1::Size to new System.Drawing.Size(903 28)
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
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click_1))
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
       invoke moreInformationToolStripMenuIte::add_Click(new System.EventHandler(self::moreInformationToolStripMenuIte_Click_1))
      *> 
      *> moreInformationToolStripMenuI0
      *> 
       set moreInformationToolStripMenuI0::Name to "moreInformationToolStripMenuI0"
       set moreInformationToolStripMenuI0::Size to new System.Drawing.Size(209 26)
       set moreInformationToolStripMenuI0::Text to "More Information"
       invoke moreInformationToolStripMenuI0::add_Click(new System.EventHandler(self::moreInformationToolStripMenuI0_Click_1))
      *> 
      *> aboutToolStripMenuItem
      *> 
       set aboutToolStripMenuItem::Name to "aboutToolStripMenuItem"
       set aboutToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set aboutToolStripMenuItem::Text to "About"
       invoke aboutToolStripMenuItem::add_Click(new System.EventHandler(self::aboutToolStripMenuItem_Click_1))
      *> 
      *> textBox2
      *> 
       set textBox2::BackColor to type System.Drawing.SystemColors::Control
       set textBox2::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox2::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox2::Location to new System.Drawing.Point(15 26)
       set textBox2::Name to "textBox2"
       set textBox2::ReadOnly to True
       set textBox2::Size to new System.Drawing.Size(241 23)
       set textBox2::TabIndex to 5
       set textBox2::TabStop to False
       set textBox2::Text to "Account Transactions"
      *> 
      *> textBox3
      *> 
       set textBox3::BackColor to type System.Drawing.SystemColors::Control
       set textBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 8.25)
       set textBox3::Location to new System.Drawing.Point(693 81)
       set textBox3::Name to "textBox3"
       set textBox3::ReadOnly to True
       set textBox3::Size to new System.Drawing.Size(129 16)
       set textBox3::TabIndex to 16
       set textBox3::TabStop to False
       set textBox3::Text to "Account ID"
       set textBox3::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.SystemColors::Control
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERNM::Location to new System.Drawing.Point(12 51)
       set USERNM::Name to "USERNM"
       set USERNM::ReadOnly to True
       set USERNM::Size to new System.Drawing.Size(221 15)
       set USERNM::TabIndex to 15
       set USERNM::TabStop to False
      *> 
      *> USERID
      *> 
       set USERID::BackColor to type System.Drawing.SystemColors::Info
       set USERID::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERID::CausesValidation to False
       set USERID::Location to new System.Drawing.Point(828 82)
       set USERID::Name to "USERID"
       set USERID::ReadOnly to True
       set USERID::Size to new System.Drawing.Size(52 15)
       set USERID::TabIndex to 14
       set USERID::TabStop to False
       set USERID::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> listView1
      *> 
       set listView1::AllowDrop to True
       invoke listView1::Columns::AddRange(table of type System.Windows.Forms.ColumnHeader(colDate colTime colAmount colDesc))
       set listView1::HideSelection to False
       set listView1::Location to new System.Drawing.Point(15 115)
       set listView1::Name to "listView1"
       set listView1::Size to new System.Drawing.Size(807 335)
       set listView1::TabIndex to 17
       set listView1::UseCompatibleStateImageBehavior to False
       set listView1::View to type System.Windows.Forms.View::Details
      *> 
      *> colDate
      *> 
       set colDate::Text to "Date"
       set colDate::Width to 106
      *> 
      *> colTime
      *> 
       set colTime::Text to "Time"
       set colTime::Width to 103
      *> 
      *> colAmount
      *> 
       set colAmount::Text to "Amount"
       set colAmount::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set colAmount::Width to 167
      *> 
      *> colDesc
      *> 
       set colDesc::Text to "Description"
       set colDesc::Width to 376
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 508)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(903 26)
       set statusStrip1::TabIndex to 18
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(12 77)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(106 16)
       set label2::TabIndex to 21
       set label2::Text to "Account Number"
      *> 
      *> tBoxAcctDesc
      *> 
       set tBoxAcctDesc::BackColor to type System.Drawing.SystemColors::Info
       set tBoxAcctDesc::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBoxAcctDesc::Location to new System.Drawing.Point(248 78)
       set tBoxAcctDesc::Name to "tBoxAcctDesc"
       set tBoxAcctDesc::ReadOnly to True
       set tBoxAcctDesc::Size to new System.Drawing.Size(221 15)
       set tBoxAcctDesc::TabIndex to 23
       set tBoxAcctDesc::TabStop to False
      *> 
      *> iBoxAccNo
      *> 
       set iBoxAccNo::FormattingEnabled to True
       set iBoxAccNo::ItemHeight to 16
       set iBoxAccNo::Location to new System.Drawing.Point(150 77)
       set iBoxAccNo::Name to "iBoxAccNo"
       set iBoxAccNo::Size to new System.Drawing.Size(92 20)
       set iBoxAccNo::TabIndex to 24
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(15 496)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 25
       set ERRMSG::Visible to False
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(526 65)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(194 41)
       set button1::TabIndex to 26
       set button1::Text to "View Transactions"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::button1_Click_1))
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(811 0)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 27
       set pictureBox1::TabStop to False
      *> 
      *> B40
      *> 
       set self::ClientSize to new System.Drawing.Size(903 534)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(iBoxAccNo)
       invoke self::Controls::Add(tBoxAcctDesc)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(listView1)
       invoke self::Controls::Add(textBox3)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(USERID)
       invoke self::Controls::Add(textBox2)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B40"
       set self::Text to "opentext™ - Bank Demo"
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
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

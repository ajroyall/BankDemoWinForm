       class-id BankDemoWinForm.B50
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuIte type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuI0 type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 textBox3 type System.Windows.Forms.TextBox.
       01 USERNM type System.Windows.Forms.TextBox.
       01 USERID type System.Windows.Forms.TextBox.
       01 textBox2 type System.Windows.Forms.TextBox.
       01 listView1 type System.Windows.Forms.ListView.
       01 ACC type System.Windows.Forms.ColumnHeader.
       01 DSC type System.Windows.Forms.ColumnHeader.
       01 BAL type System.Windows.Forms.ColumnHeader.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 buttonTransfer type System.Windows.Forms.Button.
       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 tBoxAmount type System.Windows.Forms.TextBox.
       01 lBoxFrom type System.Windows.Forms.ListBox.
       01 lBoxTo type System.Windows.Forms.ListBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B50)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuIte to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuI0 to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set textBox3 to new System.Windows.Forms.TextBox
       set USERNM to new System.Windows.Forms.TextBox
       set USERID to new System.Windows.Forms.TextBox
       set textBox2 to new System.Windows.Forms.TextBox
       set listView1 to new System.Windows.Forms.ListView
       set ACC to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set DSC to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set BAL to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set ERRMSG to new System.Windows.Forms.TextBox
       set buttonTransfer to new System.Windows.Forms.Button
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set tBoxAmount to new System.Windows.Forms.TextBox
       set lBoxFrom to new System.Windows.Forms.ListBox
       set lBoxTo to new System.Windows.Forms.ListBox
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
       set menuStrip1::Size to new System.Drawing.Size(908 28)
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
      *> textBox3
      *> 
       set textBox3::BackColor to type System.Drawing.SystemColors::Control
       set textBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 8.25)
       set textBox3::Location to new System.Drawing.Point(659 119)
       set textBox3::Name to "textBox3"
       set textBox3::ReadOnly to True
       set textBox3::Size to new System.Drawing.Size(129 16)
       set textBox3::TabIndex to 19
       set textBox3::TabStop to False
       set textBox3::Text to "Account ID"
       set textBox3::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.SystemColors::Control
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERNM::Location to new System.Drawing.Point(17 58)
       set USERNM::Name to "USERNM"
       set USERNM::ReadOnly to True
       set USERNM::Size to new System.Drawing.Size(221 15)
       set USERNM::TabIndex to 18
       set USERNM::TabStop to False
      *> 
      *> USERID
      *> 
       set USERID::BackColor to type System.Drawing.SystemColors::Info
       set USERID::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERID::CausesValidation to False
       set USERID::Location to new System.Drawing.Point(816 120)
       set USERID::Name to "USERID"
       set USERID::ReadOnly to True
       set USERID::Size to new System.Drawing.Size(52 15)
       set USERID::TabIndex to 17
       set USERID::TabStop to False
       set USERID::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> textBox2
      *> 
       set textBox2::BackColor to type System.Drawing.SystemColors::Control
       set textBox2::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox2::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox2::Location to new System.Drawing.Point(12 26)
       set textBox2::Name to "textBox2"
       set textBox2::ReadOnly to True
       set textBox2::Size to new System.Drawing.Size(241 23)
       set textBox2::TabIndex to 20
       set textBox2::TabStop to False
       set textBox2::Text to "Account Transfer Funds"
      *> 
      *> listView1
      *> 
       set listView1::AllowDrop to True
       invoke listView1::Columns::AddRange(table of type System.Windows.Forms.ColumnHeader(ACC DSC BAL))
       set listView1::HideSelection to False
       set listView1::Location to new System.Drawing.Point(12 191)
       set listView1::Name to "listView1"
       set listView1::Size to new System.Drawing.Size(807 298)
       set listView1::TabIndex to 21
       set listView1::UseCompatibleStateImageBehavior to False
       set listView1::View to type System.Windows.Forms.View::Details
      *> 
      *> ACC
      *> 
       set ACC::Text to "Account No."
       set ACC::Width to 145
      *> 
      *> DSC
      *> 
       set DSC::Text to "Account Type"
       set DSC::Width to 219
      *> 
      *> BAL
      *> 
       set BAL::Text to "Current Balance"
       set BAL::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set BAL::Width to 219
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 554)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(908 26)
       set statusStrip1::TabIndex to 22
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
       set ERRMSG::Location to new System.Drawing.Point(12 542)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 23
       set ERRMSG::Visible to False
      *> 
      *> buttonTransfer
      *> 
       set buttonTransfer::Location to new System.Drawing.Point(382 105)
       set buttonTransfer::Name to "buttonTransfer"
       set buttonTransfer::Size to new System.Drawing.Size(229 46)
       set buttonTransfer::TabIndex to 24
       set buttonTransfer::Text to "Transfer Funds"
       set buttonTransfer::UseVisualStyleBackColor to True
       invoke buttonTransfer::add_Click(new System.EventHandler(self::buttonTransfer_Click))
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(20 105)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(52 16)
       set label1::TabIndex to 25
       set label1::Text to "Amount"
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Location to new System.Drawing.Point(122 105)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(89 16)
       set label2::TabIndex to 26
       set label2::Text to "From Account"
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Location to new System.Drawing.Point(225 105)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(75 16)
       set label3::TabIndex to 27
       set label3::Text to "To Account"
      *> 
      *> tBoxAmount
      *> 
       set tBoxAmount::Location to new System.Drawing.Point(20 122)
       set tBoxAmount::MaxLength to 9
       set tBoxAmount::Name to "tBoxAmount"
       set tBoxAmount::Size to new System.Drawing.Size(93 22)
       set tBoxAmount::TabIndex to 28
      *> 
      *> lBoxFrom
      *> 
       set lBoxFrom::FormattingEnabled to True
       set lBoxFrom::ItemHeight to 16
       set lBoxFrom::Location to new System.Drawing.Point(122 125)
       set lBoxFrom::Name to "lBoxFrom"
       set lBoxFrom::Size to new System.Drawing.Size(89 20)
       set lBoxFrom::TabIndex to 31
      *> 
      *> lBoxTo
      *> 
       set lBoxTo::FormattingEnabled to True
       set lBoxTo::ItemHeight to 16
       set lBoxTo::Location to new System.Drawing.Point(225 125)
       set lBoxTo::Name to "lBoxTo"
       set lBoxTo::Size to new System.Drawing.Size(89 20)
       set lBoxTo::TabIndex to 32
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(816 0)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 33
       set pictureBox1::TabStop to False
      *> 
      *> B50
      *> 
       set self::ClientSize to new System.Drawing.Size(908 580)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(lBoxTo)
       invoke self::Controls::Add(lBoxFrom)
       invoke self::Controls::Add(tBoxAmount)
       invoke self::Controls::Add(label3)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(label1)
       invoke self::Controls::Add(buttonTransfer)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(listView1)
       invoke self::Controls::Add(textBox2)
       invoke self::Controls::Add(textBox3)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(USERID)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B50"
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

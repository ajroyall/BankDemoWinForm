       class-id BankDemoWinForm.B30
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuIte type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuI0 type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 textBox1 type System.Windows.Forms.TextBox.
       01 USERID type System.Windows.Forms.TextBox.
       01 USERNM type System.Windows.Forms.TextBox.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 listView1 type System.Windows.Forms.ListView.
       01 ACC type System.Windows.Forms.ColumnHeader.
       01 DSC type System.Windows.Forms.ColumnHeader.
       01 BAL type System.Windows.Forms.ColumnHeader.
       01 SRV type System.Windows.Forms.ColumnHeader.
       01 DTE type System.Windows.Forms.ColumnHeader.
       01 TXN type System.Windows.Forms.ColumnHeader.
       01 button1 type System.Windows.Forms.Button.
       01 SRVMSG type System.Windows.Forms.TextBox.
       01 label1 type System.Windows.Forms.Label.
       01 textBox3 type System.Windows.Forms.TextBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B30)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuIte to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuI0 to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set textBox1 to new System.Windows.Forms.TextBox
       set USERID to new System.Windows.Forms.TextBox
       set USERNM to new System.Windows.Forms.TextBox
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set ERRMSG to new System.Windows.Forms.TextBox
       set listView1 to new System.Windows.Forms.ListView
       set ACC to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set DSC to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set BAL to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set SRV to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set DTE to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set TXN to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set button1 to new System.Windows.Forms.Button
       set SRVMSG to new System.Windows.Forms.TextBox
       set label1 to new System.Windows.Forms.Label
       set textBox3 to new System.Windows.Forms.TextBox
       invoke menuStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke statusStrip1::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem helpToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(912 28)
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
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(820 0)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 2
       set pictureBox1::TabStop to False
      *> 
      *> textBox1
      *> 
       set textBox1::BackColor to type System.Drawing.SystemColors::Control
       set textBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox1::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox1::Location to new System.Drawing.Point(12 26)
       set textBox1::Name to "textBox1"
       set textBox1::ReadOnly to True
       set textBox1::Size to new System.Drawing.Size(241 23)
       set textBox1::TabIndex to 99
       set textBox1::TabStop to False
       set textBox1::Text to "Account Balances"
      *> 
      *> USERID
      *> 
       set USERID::BackColor to type System.Drawing.SystemColors::Info
       set USERID::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERID::CausesValidation to False
       set USERID::Location to new System.Drawing.Point(530 59)
       set USERID::Name to "USERID"
       set USERID::ReadOnly to True
       set USERID::Size to new System.Drawing.Size(52 15)
       set USERID::TabIndex to 5
       set USERID::TabStop to False
       set USERID::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> USERNM
      *> 
       set USERNM::BackColor to type System.Drawing.SystemColors::Info
       set USERNM::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set USERNM::Location to new System.Drawing.Point(17 59)
       set USERNM::Name to "USERNM"
       set USERNM::ReadOnly to True
       set USERNM::Size to new System.Drawing.Size(221 15)
       set USERNM::TabIndex to 6
       set USERNM::TabStop to False
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 491)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(912 26)
       set statusStrip1::TabIndex to 7
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
       set ERRMSG::Location to new System.Drawing.Point(12 479)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 8
       set ERRMSG::Visible to False
      *> 
      *> listView1
      *> 
       set listView1::AllowDrop to True
       invoke listView1::Columns::AddRange(table of type System.Windows.Forms.ColumnHeader(ACC DSC BAL SRV DTE TXN))
       set listView1::HideSelection to False
       set listView1::Location to new System.Drawing.Point(17 102)
       set listView1::Name to "listView1"
       set listView1::Size to new System.Drawing.Size(807 298)
       set listView1::TabIndex to 9
       set listView1::UseCompatibleStateImageBehavior to False
       set listView1::View to type System.Windows.Forms.View::Details
      *> 
      *> ACC
      *> 
       set ACC::Text to "Account No."
       set ACC::Width to 81
      *> 
      *> DSC
      *> 
       set DSC::Text to "Account Type"
       set DSC::Width to 127
      *> 
      *> BAL
      *> 
       set BAL::Text to "Current Balance"
       set BAL::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set BAL::Width to 126
      *> 
      *> SRV
      *> 
       set SRV::Text to "Service Charge"
       set SRV::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set SRV::Width to 119
      *> 
      *> DTE
      *> 
       set DTE::Text to "Last Statement"
       set DTE::TextAlign to type System.Windows.Forms.HorizontalAlignment::Center
       set DTE::Width to 122
      *> 
      *> TXN
      *> 
       set TXN::Text to "Transactions"
       set TXN::TextAlign to type System.Windows.Forms.HorizontalAlignment::Center
       set TXN::Width to 81
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(286 47)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(103 37)
       set button1::TabIndex to 10
       set button1::Text to "Find"
       set button1::UseVisualStyleBackColor to True
       set button1::Visible to False
       invoke button1::add_Click(new System.EventHandler(self::button1_Click))
      *> 
      *> SRVMSG
      *> 
       set SRVMSG::Enabled to False
       set SRVMSG::Location to new System.Drawing.Point(17 437)
       set SRVMSG::Name to "SRVMSG"
       set SRVMSG::ReadOnly to True
       set SRVMSG::Size to new System.Drawing.Size(807 22)
       set SRVMSG::TabIndex to 11
       set SRVMSG::TabStop to False
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(17 418)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(120 16)
       set label1::TabIndex to 12
       set label1::Text to "Service Messages"
      *> 
      *> textBox3
      *> 
       set textBox3::BackColor to type System.Drawing.SystemColors::Control
       set textBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox3::Font to new System.Drawing.Font("Microsoft Sans Serif" 8.25)
       set textBox3::Location to new System.Drawing.Point(395 58)
       set textBox3::Name to "textBox3"
       set textBox3::ReadOnly to True
       set textBox3::Size to new System.Drawing.Size(129 16)
       set textBox3::TabIndex to 13
       set textBox3::TabStop to False
       set textBox3::Text to "Account ID"
       set textBox3::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
      *> 
      *> B30
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Control
       set self::ClientSize to new System.Drawing.Size(912 517)
       invoke self::Controls::Add(textBox3)
       invoke self::Controls::Add(label1)
       invoke self::Controls::Add(SRVMSG)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(listView1)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(USERNM)
       invoke self::Controls::Add(USERID)
       invoke self::Controls::Add(textBox1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B30"
       set self::Text to "opentext™ - Bank Demo"
       invoke self::add_Load(new System.EventHandler(self::WinListView_Load))
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
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

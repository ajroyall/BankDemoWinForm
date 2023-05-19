       class-id BankDemoWinForm.B30new
                 is partial inherits type System.Windows.Forms.Form.

       01 SRVMSG type System.Windows.Forms.TextBox.
       01 BAL type System.Windows.Forms.ColumnHeader.
       01 DSC type System.Windows.Forms.ColumnHeader.
       01 label1 type System.Windows.Forms.Label.
       01 listView1 type System.Windows.Forms.ListView.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 textBox1 type System.Windows.Forms.TextBox.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 button1 type System.Windows.Forms.Button.
       01 logOffToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 toolStripSeparator1 type System.Windows.Forms.ToolStripSeparator.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B30new)
       set SRVMSG to new System.Windows.Forms.TextBox
       set BAL to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set DSC to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set label1 to new System.Windows.Forms.Label
       set listView1 to new System.Windows.Forms.ListView
       set ERRMSG to new System.Windows.Forms.TextBox
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set textBox1 to new System.Windows.Forms.TextBox
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set logOffToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set button1 to new System.Windows.Forms.Button
       set toolStripSeparator1 to new System.Windows.Forms.ToolStripSeparator
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke statusStrip1::SuspendLayout
       invoke menuStrip1::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> SRVMSG
      *> 
       set SRVMSG::Enabled to False
       set SRVMSG::Location to new System.Drawing.Point(11 472)
       set SRVMSG::Multiline to True
       set SRVMSG::Name to "SRVMSG"
       set SRVMSG::ReadOnly to True
       set SRVMSG::ScrollBars to type System.Windows.Forms.ScrollBars::Vertical
       set SRVMSG::Size to new System.Drawing.Size(323 22)
       set SRVMSG::TabIndex to 108
       set SRVMSG::TabStop to False
      *> 
      *> BAL
      *> 
       set BAL::Text to ""
       set BAL::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set BAL::Width to 126
      *> 
      *> DSC
      *> 
       set DSC::Text to ""
       set DSC::Width to 127
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Location to new System.Drawing.Point(11 453)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(120 16)
       set label1::TabIndex to 109
       set label1::Text to "Service Messages"
      *> 
      *> listView1
      *> 
       set listView1::AllowDrop to True
       invoke listView1::Columns::AddRange(table of type System.Windows.Forms.ColumnHeader(DSC BAL))
       set listView1::HeaderStyle to type System.Windows.Forms.ColumnHeaderStyle::None
       set listView1::HideSelection to False
       set listView1::Location to new System.Drawing.Point(11 102)
       set listView1::MultiSelect to False
       set listView1::Name to "listView1"
       set listView1::Size to new System.Drawing.Size(323 298)
       set listView1::TabIndex to 106
       set listView1::UseCompatibleStateImageBehavior to False
       set listView1::View to type System.Windows.Forms.View::Details
       invoke listView1::add_Click(new System.EventHandler(self::select_Click))
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(14 479)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(320 15)
       set ERRMSG::TabIndex to 105
       set ERRMSG::Visible to False
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> textBox1
      *> 
       set textBox1::BackColor to type System.Drawing.SystemColors::Control
       set textBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox1::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox1::Location to new System.Drawing.Point(14 34)
       set textBox1::Name to "textBox1"
       set textBox1::ReadOnly to True
       set textBox1::Size to new System.Drawing.Size(241 23)
       set textBox1::TabIndex to 111
       set textBox1::TabStop to False
       set textBox1::Text to "Balances"
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(242 523)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 101
       set pictureBox1::TabStop to False
      *> 
      *> exitToolStripMenuItem
      *> 
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(224 26)
       set exitToolStripMenuItem::Text to "Back"
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> fileToolStripMenuItem
      *> 
       invoke fileToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(exitToolStripMenuItem logOffToolStripMenuItem toolStripSeparator1 helpToolStripMenuItem1))
       set fileToolStripMenuItem::Name to "fileToolStripMenuItem"
       set fileToolStripMenuItem::Size to new System.Drawing.Size(38 24)
       set fileToolStripMenuItem::Text to "....."
      *> 
      *> logOffToolStripMenuItem
      *> 
       set logOffToolStripMenuItem::Name to "logOffToolStripMenuItem"
       set logOffToolStripMenuItem::Size to new System.Drawing.Size(224 26)
       set logOffToolStripMenuItem::Text to "Log Off"
       invoke logOffToolStripMenuItem::add_Click(new System.EventHandler(self::LogOffMenuItem_Click))
      *> 
      *> helpToolStripMenuItem1
      *> 
       set helpToolStripMenuItem1::Name to "helpToolStripMenuItem1"
       set helpToolStripMenuItem1::Size to new System.Drawing.Size(224 26)
       set helpToolStripMenuItem1::Text to "Help"
       invoke helpToolStripMenuItem1::add_Click(new System.EventHandler(self::helpMenuStrip_click))
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 554)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(349 26)
       set statusStrip1::TabIndex to 104
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::BackColor to type System.Drawing.Color::Coral
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(349 28)
       set menuStrip1::TabIndex to 100
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(11 73)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(75 23)
       set button1::TabIndex to 112
       set button1::Text to "Refresh"
       set button1::UseVisualStyleBackColor to True
       invoke button1::add_Click(new System.EventHandler(self::Refresh_Click))
      *> 
      *> toolStripSeparator1
      *> 
       set toolStripSeparator1::Name to "toolStripSeparator1"
       set toolStripSeparator1::Size to new System.Drawing.Size(221 6)
      *> 
      *> B30new
      *> 
       set self::ClientSize to new System.Drawing.Size(349 580)
       set self::ControlBox to False
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(SRVMSG)
       invoke self::Controls::Add(label1)
       invoke self::Controls::Add(listView1)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(textBox1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B30new"
       set self::Text to "Micro Focus Visual COBOL"
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
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

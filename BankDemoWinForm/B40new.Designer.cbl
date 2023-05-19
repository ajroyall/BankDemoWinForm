       class-id BankDemoWinForm.B40new
                 is partial inherits type System.Windows.Forms.Form.

       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 ERRMSG type System.Windows.Forms.TextBox.
       01 tBoxAcctDesc type System.Windows.Forms.TextBox.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 button1 type System.Windows.Forms.Button.
       01 listView1 type System.Windows.Forms.ListView.
       01 tbAccNo type System.Windows.Forms.TextBox.
       01 pictureBox2 type System.Windows.Forms.PictureBox.
       01 tbBalance type System.Windows.Forms.TextBox.
       01 dataLine type System.Windows.Forms.ColumnHeader.
       01 dataAMT type System.Windows.Forms.ColumnHeader.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B40new)
       set ERRMSG to new System.Windows.Forms.TextBox
       set tBoxAcctDesc to new System.Windows.Forms.TextBox
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set dataLine to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set button1 to new System.Windows.Forms.Button
       set listView1 to new System.Windows.Forms.ListView
       set dataAMT to new System.Windows.Forms.ColumnHeader as type System.Windows.Forms.ColumnHeader
       set tbAccNo to new System.Windows.Forms.TextBox
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set pictureBox2 to new System.Windows.Forms.PictureBox
       set tbBalance to new System.Windows.Forms.TextBox
       invoke statusStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke pictureBox2 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> ERRMSG
      *> 
       set ERRMSG::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set ERRMSG::Enabled to False
       set ERRMSG::Location to new System.Drawing.Point(10 508)
       set ERRMSG::Name to "ERRMSG"
       set ERRMSG::ReadOnly to True
       set ERRMSG::Size to new System.Drawing.Size(674 15)
       set ERRMSG::TabIndex to 38
       set ERRMSG::Visible to False
      *> 
      *> tBoxAcctDesc
      *> 
       set tBoxAcctDesc::BackColor to type System.Drawing.SystemColors::ButtonFace
       set tBoxAcctDesc::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBoxAcctDesc::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Bold type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set tBoxAcctDesc::Location to new System.Drawing.Point(64 31)
       set tBoxAcctDesc::Name to "tBoxAcctDesc"
       set tBoxAcctDesc::ReadOnly to True
       set tBoxAcctDesc::Size to new System.Drawing.Size(221 23)
       set tBoxAcctDesc::TabIndex to 36
       set tBoxAcctDesc::TabStop to False
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
       set statusStrip1::Location to new System.Drawing.Point(0 530)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(508 26)
       set statusStrip1::TabIndex to 34
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> dataLine
      *> 
       set dataLine::Text to "Date"
       set dataLine::Width to 250
      *> 
      *> button1
      *> 
       set button1::Location to new System.Drawing.Point(305 35)
       set button1::Name to "button1"
       set button1::Size to new System.Drawing.Size(81 23)
       set button1::TabIndex to 39
       set button1::Text to "Refresh"
       set button1::UseVisualStyleBackColor to True
      *> 
      *> listView1
      *> 
       set listView1::AllowDrop to True
       invoke listView1::Columns::AddRange(table of type System.Windows.Forms.ColumnHeader(dataLine dataAMT))
       set listView1::HeaderStyle to type System.Windows.Forms.ColumnHeaderStyle::None
       set listView1::HideSelection to False
       set listView1::Location to new System.Drawing.Point(10 127)
       set listView1::Name to "listView1"
       set listView1::Size to new System.Drawing.Size(485 335)
       set listView1::TabIndex to 33
       set listView1::UseCompatibleStateImageBehavior to False
       set listView1::View to type System.Windows.Forms.View::Details
      *> 
      *> dataAMT
      *> 
       set dataAMT::Text to "Amount"
       set dataAMT::TextAlign to type System.Windows.Forms.HorizontalAlignment::Right
       set dataAMT::Width to 150
      *> 
      *> tbAccNo
      *> 
       set tbAccNo::BackColor to type System.Drawing.SystemColors::ButtonFace
       set tbAccNo::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tbAccNo::Font to new System.Drawing.Font("Microsoft Sans Serif" 9 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set tbAccNo::Location to new System.Drawing.Point(64 73)
       set tbAccNo::Name to "tbAccNo"
       set tbAccNo::Size to new System.Drawing.Size(148 17)
       set tbAccNo::TabIndex to 41
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(403 495)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(92 28)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 40
       set pictureBox1::TabStop to False
      *> 
      *> pictureBox2
      *> 
       set pictureBox2::BackgroundImageLayout to type System.Windows.Forms.ImageLayout::Stretch
       set pictureBox2::Image to type BankDemoWinForm.Properties.Resources::Back
       set pictureBox2::Location to new System.Drawing.Point(11 29)
       set pictureBox2::Name to "pictureBox2"
       set pictureBox2::Size to new System.Drawing.Size(32 25)
       set pictureBox2::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::StretchImage
       set pictureBox2::TabIndex to 42
       set pictureBox2::TabStop to False
       invoke pictureBox2::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> tbBalance
      *> 
       set tbBalance::BackColor to type System.Drawing.SystemColors::ButtonFace
       set tbBalance::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tbBalance::Font to new System.Drawing.Font("Microsoft Sans Serif" 9 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set tbBalance::Location to new System.Drawing.Point(305 73)
       set tbBalance::Name to "tbBalance"
       set tbBalance::Size to new System.Drawing.Size(148 17)
       set tbBalance::TabIndex to 43
      *> 
      *> B40new
      *> 
       set self::BackColor to type System.Drawing.SystemColors::ButtonFace
       set self::ClientSize to new System.Drawing.Size(508 556)
       set self::ControlBox to False
       invoke self::Controls::Add(tbBalance)
       invoke self::Controls::Add(pictureBox2)
       invoke self::Controls::Add(tbAccNo)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(ERRMSG)
       invoke self::Controls::Add(tBoxAcctDesc)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(button1)
       invoke self::Controls::Add(listView1)
       set self::HelpButton to True
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::Name to "B40new"
       set self::Text to "Micro Focus Visual COBOL"
       invoke statusStrip1::ResumeLayout(False)
       invoke statusStrip1::PerformLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke pictureBox2 as type System.ComponentModel.ISupportInitialize::EndInit
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

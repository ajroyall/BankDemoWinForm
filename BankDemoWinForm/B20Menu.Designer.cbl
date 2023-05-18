       class-id BankDemoWinForm.B20Menu
                 is partial inherits type System.Windows.Forms.Form.

       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 fileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 tBox1 type System.Windows.Forms.TextBox.
       01 tBox2 type System.Windows.Forms.TextBox.
       01 tBox3 type System.Windows.Forms.TextBox.
       01 label1 type System.Windows.Forms.Label.
       01 label2 type System.Windows.Forms.Label.
       01 label3 type System.Windows.Forms.Label.
       01 tBox4 type System.Windows.Forms.TextBox.
       01 label4 type System.Windows.Forms.Label.
       01 label5 type System.Windows.Forms.Label.
       01 toolStripStatusLabel1 type System.Windows.Forms.ToolStripStatusLabel.
       01 balancesToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 moveMoneyToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 toolStripSeparator1 type System.Windows.Forms.ToolStripSeparator.
       01 loanQuoteToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 toolStripSeparator2 type System.Windows.Forms.ToolStripSeparator.
       01 profileToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 toolStripSeparator3 type System.Windows.Forms.ToolStripSeparator.
       01 helpToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 moreInformationToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 components type System.ComponentModel.IContainer.

      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.B20Menu)
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set fileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set balancesToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set moveMoneyToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set toolStripSeparator1 to new System.Windows.Forms.ToolStripSeparator
       set loanQuoteToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set toolStripSeparator2 to new System.Windows.Forms.ToolStripSeparator
       set profileToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set toolStripSeparator3 to new System.Windows.Forms.ToolStripSeparator
       set helpToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set moreInformationToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set pictureBox1 to new System.Windows.Forms.PictureBox
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set toolStripStatusLabel1 to new System.Windows.Forms.ToolStripStatusLabel
       set tBox1 to new System.Windows.Forms.TextBox
       set tBox2 to new System.Windows.Forms.TextBox
       set tBox3 to new System.Windows.Forms.TextBox
       set label1 to new System.Windows.Forms.Label
       set label2 to new System.Windows.Forms.Label
       set label3 to new System.Windows.Forms.Label
       set tBox4 to new System.Windows.Forms.TextBox
       set label4 to new System.Windows.Forms.Label
       set label5 to new System.Windows.Forms.Label
       invoke menuStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke statusStrip1::SuspendLayout
       invoke self::SuspendLayout
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::BackColor to type System.Drawing.Color::Coral
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(fileToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(884 28)
       set menuStrip1::TabIndex to 0
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> fileToolStripMenuItem
      *> 
       invoke fileToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(balancesToolStripMenuItem moveMoneyToolStripMenuItem toolStripSeparator1 loanQuoteToolStripMenuItem toolStripSeparator2
           profileToolStripMenuItem exitToolStripMenuItem toolStripSeparator3 helpToolStripMenuItem1 moreInformationToolStripMenuItem aboutToolStripMenuItem1))
       set fileToolStripMenuItem::Name to "fileToolStripMenuItem"
       set fileToolStripMenuItem::Size to new System.Drawing.Size(38 24)
       set fileToolStripMenuItem::Text to "....."
      *> 
      *> balancesToolStripMenuItem
      *> 
       set balancesToolStripMenuItem::Name to "balancesToolStripMenuItem"
       set balancesToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set balancesToolStripMenuItem::Text to "Balances"
       invoke balancesToolStripMenuItem::add_Click(new System.EventHandler(self::balanceToolStripMenuItem_Click))
      *> 
      *> moveMoneyToolStripMenuItem
      *> 
       set moveMoneyToolStripMenuItem::Name to "moveMoneyToolStripMenuItem"
       set moveMoneyToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set moveMoneyToolStripMenuItem::Text to "Move Money"
       invoke moveMoneyToolStripMenuItem::add_Click(new System.EventHandler(self::transferFundsToolStripMenuItem_Click))
      *> 
      *> toolStripSeparator1
      *> 
       set toolStripSeparator1::Name to "toolStripSeparator1"
       set toolStripSeparator1::Size to new System.Drawing.Size(206 6)
      *> 
      *> loanQuoteToolStripMenuItem
      *> 
       set loanQuoteToolStripMenuItem::Name to "loanQuoteToolStripMenuItem"
       set loanQuoteToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set loanQuoteToolStripMenuItem::Text to "Loan Quote"
       invoke loanQuoteToolStripMenuItem::add_Click(new System.EventHandler(self::quoteToolStripMenuItem_Click))
      *> 
      *> toolStripSeparator2
      *> 
       set toolStripSeparator2::Name to "toolStripSeparator2"
       set toolStripSeparator2::Size to new System.Drawing.Size(206 6)
      *> 
      *> profileToolStripMenuItem
      *> 
       set profileToolStripMenuItem::Name to "profileToolStripMenuItem"
       set profileToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set profileToolStripMenuItem::Text to "Profile"
       invoke profileToolStripMenuItem::add_Click(new System.EventHandler(self::viewDetailsToolStripMenuItem_Click))
      *> 
      *> exitToolStripMenuItem
      *> 
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set exitToolStripMenuItem::Text to "Log Off"
       invoke exitToolStripMenuItem::add_Click(new System.EventHandler(self::exitToolStripMenuItem_Click))
      *> 
      *> toolStripSeparator3
      *> 
       set toolStripSeparator3::Name to "toolStripSeparator3"
       set toolStripSeparator3::Size to new System.Drawing.Size(206 6)
      *> 
      *> helpToolStripMenuItem1
      *> 
       set helpToolStripMenuItem1::Name to "helpToolStripMenuItem1"
       set helpToolStripMenuItem1::Size to new System.Drawing.Size(209 26)
       set helpToolStripMenuItem1::Text to "Help"
       invoke helpToolStripMenuItem1::add_Click(new System.EventHandler(self::moreInformationToolStripMenuIte_Click))
      *> 
      *> moreInformationToolStripMenuItem
      *> 
       set moreInformationToolStripMenuItem::Name to "moreInformationToolStripMenuItem"
       set moreInformationToolStripMenuItem::Size to new System.Drawing.Size(209 26)
       set moreInformationToolStripMenuItem::Text to "More Information"
       invoke moreInformationToolStripMenuItem::add_Click(new System.EventHandler(self::moreInformationToolStripMenuI0_Click))
      *> 
      *> aboutToolStripMenuItem1
      *> 
       set aboutToolStripMenuItem1::Name to "aboutToolStripMenuItem1"
       set aboutToolStripMenuItem1::Size to new System.Drawing.Size(209 26)
       set aboutToolStripMenuItem1::Text to "About"
       invoke aboutToolStripMenuItem1::add_Click(new System.EventHandler(self::aboutToolStripMenuItem_Click))
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackColor to type System.Drawing.SystemColors::Window
       set pictureBox1::BackgroundImageLayout to type System.Windows.Forms.ImageLayout::Stretch
       set pictureBox1::Cursor to type System.Windows.Forms.Cursors::Arrow
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(21 41)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(300 150)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::Zoom
       set pictureBox1::TabIndex to 1
       set pictureBox1::TabStop to False
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke statusStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(toolStripStatusLabel1))
       set statusStrip1::Location to new System.Drawing.Point(0 377)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(884 26)
       set statusStrip1::TabIndex to 2
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> toolStripStatusLabel1
      *> 
       set toolStripStatusLabel1::Name to "toolStripStatusLabel1"
       set toolStripStatusLabel1::Size to new System.Drawing.Size(50 20)
       set toolStripStatusLabel1::Text to "Ready"
      *> 
      *> tBox1
      *> 
       set tBox1::BackColor to type System.Drawing.SystemColors::Info
       set tBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBox1::Location to new System.Drawing.Point(258 212)
       set tBox1::Name to "tBox1"
       set tBox1::ReadOnly to True
       set tBox1::Size to new System.Drawing.Size(189 23)
       set tBox1::TabIndex to 3
       set tBox1::TabStop to False
      *> 
      *> tBox2
      *> 
       set tBox2::BackColor to type System.Drawing.SystemColors::Info
       set tBox2::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBox2::Location to new System.Drawing.Point(258 250)
       set tBox2::Name to "tBox2"
       set tBox2::ReadOnly to True
       set tBox2::Size to new System.Drawing.Size(189 23)
       set tBox2::TabIndex to 4
       set tBox2::TabStop to False
      *> 
      *> tBox3
      *> 
       set tBox3::BackColor to type System.Drawing.SystemColors::Info
       set tBox3::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBox3::Location to new System.Drawing.Point(258 287)
       set tBox3::Name to "tBox3"
       set tBox3::Size to new System.Drawing.Size(189 23)
       set tBox3::TabIndex to 5
       set tBox3::TabStop to False
      *> 
      *> label1
      *> 
       set label1::AutoSize to True
       set label1::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set label1::Location to new System.Drawing.Point(23 210)
       set label1::Name to "label1"
       set label1::Size to new System.Drawing.Size(64 25)
       set label1::TabIndex to 6
       set label1::Text to "label1"
       set label1::TextAlign to type System.Drawing.ContentAlignment::BottomRight
      *> 
      *> label2
      *> 
       set label2::AutoSize to True
       set label2::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set label2::Location to new System.Drawing.Point(23 248)
       set label2::Name to "label2"
       set label2::Size to new System.Drawing.Size(64 25)
       set label2::TabIndex to 7
       set label2::Text to "label2"
       set label2::TextAlign to type System.Drawing.ContentAlignment::BottomRight
      *> 
      *> label3
      *> 
       set label3::AutoSize to True
       set label3::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set label3::Location to new System.Drawing.Point(23 285)
       set label3::Name to "label3"
       set label3::Size to new System.Drawing.Size(64 25)
       set label3::TabIndex to 8
       set label3::Text to "label3"
       set label3::TextAlign to type System.Drawing.ContentAlignment::BottomRight
      *> 
      *> tBox4
      *> 
       set tBox4::BackColor to type System.Drawing.SystemColors::Info
       set tBox4::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set tBox4::Location to new System.Drawing.Point(258 324)
       set tBox4::Name to "tBox4"
       set tBox4::ReadOnly to True
       set tBox4::Size to new System.Drawing.Size(189 23)
       set tBox4::TabIndex to 9
       set tBox4::TabStop to False
      *> 
      *> label4
      *> 
       set label4::AutoSize to True
       set label4::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set label4::Location to new System.Drawing.Point(23 322)
       set label4::Name to "label4"
       set label4::Size to new System.Drawing.Size(64 25)
       set label4::TabIndex to 10
       set label4::Text to "label4"
       set label4::TextAlign to type System.Drawing.ContentAlignment::BottomRight
      *> 
      *> label5
      *> 
       set label5::AutoSize to True
       set label5::Font to new System.Drawing.Font("Microsoft Sans Serif" 24 type System.Drawing.FontStyle::Bold type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set label5::ImageAlign to type System.Drawing.ContentAlignment::TopLeft
       set label5::Location to new System.Drawing.Point(327 93)
       set label5::Name to "label5"
       set label5::Size to new System.Drawing.Size(558 46)
       set label5::TabIndex to 11
       set label5::Text to "Micro Focus Visual COBOL™"
       invoke label5::add_Click(new System.EventHandler(self::label5_Click))
      *> 
      *> B20Menu
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Window
       set self::ClientSize to new System.Drawing.Size(884 403)
       invoke self::Controls::Add(label5)
       invoke self::Controls::Add(label4)
       invoke self::Controls::Add(tBox4)
       invoke self::Controls::Add(label3)
       invoke self::Controls::Add(label2)
       invoke self::Controls::Add(label1)
       invoke self::Controls::Add(tBox3)
       invoke self::Controls::Add(tBox2)
       invoke self::Controls::Add(tBox1)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(menuStrip1)
       set self::Font to new System.Drawing.Font("Microsoft Sans Serif" 12 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::MainMenuStrip to menuStrip1
       set self::Name to "B20Menu"
       set self::Text to "opentext™ - Bank Demo"
       set self::WindowState to type System.Windows.Forms.FormWindowState::Maximized
       invoke self::add_Load(new System.EventHandler(self::Menu_Load))
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

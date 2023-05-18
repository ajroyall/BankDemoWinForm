       class-id BankDemoWinForm.Demo is partial
                 inherits type System.Windows.Forms.Form.
       
       01 statusStrip1 type System.Windows.Forms.StatusStrip.
       01 textBox1 type System.Windows.Forms.TextBox.
       01 menuStrip1 type System.Windows.Forms.MenuStrip.
       01 exitToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 exitToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 bankDemoToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 bankDemoToolStripMenuItem1 type System.Windows.Forms.ToolStripMenuItem.
       01 insuranceDemoToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 helpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 viewHelpToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 aboutToolStripMenuItem type System.Windows.Forms.ToolStripMenuItem.
       01 pictureBox1 type System.Windows.Forms.PictureBox.
       01 components type System.ComponentModel.IContainer.
      
      *> Required method for Designer support - do not modify
      *> the contents of this method with the code editor.
       method-id InitializeComponent private.
       local-storage section.
       01 resources type System.ComponentModel.ComponentResourceManager.
       procedure division.
       set resources to new System.ComponentModel.ComponentResourceManager(type of BankDemoWinForm.Demo)
       set statusStrip1 to new System.Windows.Forms.StatusStrip
       set textBox1 to new System.Windows.Forms.TextBox
       set menuStrip1 to new System.Windows.Forms.MenuStrip
       set exitToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set exitToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set bankDemoToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set bankDemoToolStripMenuItem1 to new System.Windows.Forms.ToolStripMenuItem
       set insuranceDemoToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set helpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set viewHelpToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set aboutToolStripMenuItem to new System.Windows.Forms.ToolStripMenuItem
       set pictureBox1 to new System.Windows.Forms.PictureBox
       invoke menuStrip1::SuspendLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::BeginInit
       invoke self::SuspendLayout
      *> 
      *> statusStrip1
      *> 
       set statusStrip1::Enabled to False
       set statusStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       set statusStrip1::Location to new System.Drawing.Point(0 394)
       set statusStrip1::Name to "statusStrip1"
       set statusStrip1::Size to new System.Drawing.Size(1177 22)
       set statusStrip1::TabIndex to 0
       set statusStrip1::Text to "statusStrip1"
      *> 
      *> textBox1
      *> 
       set textBox1::BackColor to type System.Drawing.SystemColors::Window
       set textBox1::BorderStyle to type System.Windows.Forms.BorderStyle::None
       set textBox1::Cursor to type System.Windows.Forms.Cursors::Arrow
       set textBox1::Enabled to False
       set textBox1::Font to new System.Drawing.Font("Candara" 19.8 type System.Drawing.FontStyle::Regular type System.Drawing.GraphicsUnit::Point 0 as type System.Byte)
       set textBox1::Location to new System.Drawing.Point(0 274)
       set textBox1::Multiline to True
       set textBox1::Name to "textBox1"
       set textBox1::ReadOnly to True
       set textBox1::Size to new System.Drawing.Size(1107 246)
       set textBox1::TabIndex to 1
       set textBox1::Text to "Welcome to this Demonstration Application for Micro Focus Visual Cobol™. This is a standard Microsoft Windows application built around Windows Forms."
      *> 
      *> menuStrip1
      *> 
       set menuStrip1::ImageScalingSize to new System.Drawing.Size(20 20)
       invoke menuStrip1::Items::AddRange(table of type System.Windows.Forms.ToolStripItem(exitToolStripMenuItem bankDemoToolStripMenuItem helpToolStripMenuItem))
       set menuStrip1::Location to new System.Drawing.Point(0 0)
       set menuStrip1::Name to "menuStrip1"
       set menuStrip1::Size to new System.Drawing.Size(1177 28)
       set menuStrip1::TabIndex to 2
       set menuStrip1::Text to "menuStrip1"
      *> 
      *> exitToolStripMenuItem
      *> 
       invoke exitToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(exitToolStripMenuItem1))
       set exitToolStripMenuItem::Name to "exitToolStripMenuItem"
       set exitToolStripMenuItem::Size to new System.Drawing.Size(46 24)
       set exitToolStripMenuItem::Text to "File"
      *> 
      *> exitToolStripMenuItem1
      *> 
       set exitToolStripMenuItem1::Name to "exitToolStripMenuItem1"
       set exitToolStripMenuItem1::Size to new System.Drawing.Size(116 26)
       set exitToolStripMenuItem1::Text to "Exit"
       invoke exitToolStripMenuItem1::add_Click(new System.EventHandler(self::exitToolStripMenuItem1_Click))
      *> 
      *> bankDemoToolStripMenuItem
      *> 
       invoke bankDemoToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(bankDemoToolStripMenuItem1 insuranceDemoToolStripMenuItem))
       set bankDemoToolStripMenuItem::Name to "bankDemoToolStripMenuItem"
       set bankDemoToolStripMenuItem::Size to new System.Drawing.Size(70 24)
       set bankDemoToolStripMenuItem::Text to "Demos"
      *> 
      *> bankDemoToolStripMenuItem1
      *> 
       set bankDemoToolStripMenuItem1::Name to "bankDemoToolStripMenuItem1"
       set bankDemoToolStripMenuItem1::Size to new System.Drawing.Size(199 26)
       set bankDemoToolStripMenuItem1::Text to "Bank Demo"
       invoke bankDemoToolStripMenuItem1::add_Click(new System.EventHandler(self::bankDemoToolStripMenuItem1_Click))
      *> 
      *> insuranceDemoToolStripMenuItem
      *> 
       set insuranceDemoToolStripMenuItem::Name to "insuranceDemoToolStripMenuItem"
       set insuranceDemoToolStripMenuItem::Size to new System.Drawing.Size(199 26)
       set insuranceDemoToolStripMenuItem::Text to "Insurance Demo"
      *> 
      *> helpToolStripMenuItem
      *> 
       invoke helpToolStripMenuItem::DropDownItems::AddRange(table of type System.Windows.Forms.ToolStripItem(viewHelpToolStripMenuItem aboutToolStripMenuItem))
       set helpToolStripMenuItem::Name to "helpToolStripMenuItem"
       set helpToolStripMenuItem::Size to new System.Drawing.Size(55 24)
       set helpToolStripMenuItem::Text to "Help"
      *> 
      *> viewHelpToolStripMenuItem
      *> 
       set viewHelpToolStripMenuItem::Name to "viewHelpToolStripMenuItem"
       set viewHelpToolStripMenuItem::Size to new System.Drawing.Size(133 26)
       set viewHelpToolStripMenuItem::Text to "Help"
       invoke viewHelpToolStripMenuItem::add_Click(new System.EventHandler(self::viewHelpToolStripMenuItem_Click))
      *> 
      *> aboutToolStripMenuItem
      *> 
       set aboutToolStripMenuItem::Name to "aboutToolStripMenuItem"
       set aboutToolStripMenuItem::Size to new System.Drawing.Size(133 26)
       set aboutToolStripMenuItem::Text to "About"
       invoke aboutToolStripMenuItem::add_Click(new System.EventHandler(self::aboutToolStripMenuItem_Click))
      *> 
      *> pictureBox1
      *> 
       set pictureBox1::BackgroundImageLayout to type System.Windows.Forms.ImageLayout::Center
       set pictureBox1::Image to resources::GetObject("pictureBox1.Image") as type System.Drawing.Image
       set pictureBox1::Location to new System.Drawing.Point(23 49)
       set pictureBox1::Name to "pictureBox1"
       set pictureBox1::Size to new System.Drawing.Size(300 100)
       set pictureBox1::SizeMode to type System.Windows.Forms.PictureBoxSizeMode::StretchImage
       set pictureBox1::TabIndex to 3
       set pictureBox1::TabStop to False
      *> 
      *> Demo
      *> 
       set self::BackColor to type System.Drawing.SystemColors::Window
       set self::ClientSize to new System.Drawing.Size(1177 416)
       invoke self::Controls::Add(pictureBox1)
       invoke self::Controls::Add(textBox1)
       invoke self::Controls::Add(statusStrip1)
       invoke self::Controls::Add(menuStrip1)
       set self::Icon to resources::GetObject("$this.Icon") as type System.Drawing.Icon
       set self::MainMenuStrip to menuStrip1
       set self::Name to "Demo"
       set self::Text to "opentext™ Bank Demo"
       set self::WindowState to type System.Windows.Forms.FormWindowState::Maximized
       invoke menuStrip1::ResumeLayout(False)
       invoke menuStrip1::PerformLayout
       invoke pictureBox1 as type System.ComponentModel.ISupportInitialize::EndInit
       invoke self::ResumeLayout(False)
       invoke self::PerformLayout
       end method.

      *> Clean up any resources being used.      
       method-id Dispose override protected.
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

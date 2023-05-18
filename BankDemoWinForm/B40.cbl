       class-id BankDemoWinForm.B40 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01  currentUser                             pic x(5).
       
      *-- Stored outside the methods to allow exchange between diff methods of 
      *   the form.i.e. Intial retrieve to Transfer.
       COPY CBANKVC3 .
       
       01  Indx                                    pic 99.
       01  Success-MSG.
           05  TXT1                                pic x(08) Value "Success ".
           05  NUM1                                pic zz9   value 0.
           05  TXT2                                pic x(11) Value " Rows Found". 

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

      *=================================================================================== 
       method-id Load.
       linkage section.
       01 inUser       string.
       01 inFunc       pic x(1).
       procedure division using  by value inUser by value inFunc.
           MOVE inUser to currentUser USERID::Text
           invoke self::PopulateList()

           set toolStripStatusLabel1::Text to "Read, select Account to view"
           invoke self::Show()
       end method.

      *=================================================================================== 
       method-id PopulateList final private.
       local-storage section.
      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERID                             PIC X(5).          
       01  BANK-USERNM                             PIC X(25).

       01  BANK-ERRMSG                             PIC x(65).
       01  BANK-SRVMSG                             PIC x(90).
       
       Procedure Division.
       
           Move SPACES to CD03-DATA.
      
           IF USERID::Text = ""
               set USERID::Text     to currentUser.
               
           set BANK-USERID      to USERID::Text .    

           call "BBANK30P" using by value      BANK-USERID
                                 by reference  BANK-USERNM
                                 by reference  CD03-DATA 
                                 by reference  BANK-ERRMSG
                                 by reference  BANK-SRVMSG .
           
           If CD03O-ACC(1) = SPACES and BANK-ERRMSG = SPACES
               Move "No Data Found for this User Reference"  to BANK-ERRMSG
           End-If.
             
           If BANK-USERNM > SPACES
               set USERNM::Text    to BANK-USERNM
           End-If.
             
      *=== Store the Account Codes in the drop down lists
           Move 1      to Indx.
           Perform varying Indx from 1 by 1
             until CD03O-ACC(Indx) = SPACES OR BANK-ERRMSG > SPACES 
               invoke iBoxAccNo::Items::AddRange(CD03O-ACC(Indx))
           End-Perform.

           set ERRMSG::Text                to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG .
            
       end method.

      *=================================================================================== 
       method-id transList final private.
       local-storage section.
       01  listViewItem1                       type System.Windows.Forms.ListViewItem.
       01  bal-list                            decimal.
       01  text-desc                           PIC X(90).

      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERNM                         PIC X(25).
00     COPY CBANKVC5. 

       01  BANK-ERRMSG                         PIC x(65).
       
       Procedure Division.
       
           Move SPACES to CD05-DATA BANK-ERRMSG.
      
           IF USERID::Text = ""
               set USERID::Text     to currentUser.
               
           set CD05I-ID        to USERID::Text.
       
      *===== WILL NEED SOME EXCEPTION HANDLING HERE in case no selection.
           try
               set CD05I-ACC       to iBoxAccNo::SelectedItem
           catch 
               move "Please Select an Account" to BANK-ERRMSG
           end-try.     
       
           Move 1      to Indx.
           PERFORM varying Indx from 1 by 1 
               until CD03O-ACC(Indx) = CD05I-ACC.
               
           If Indx < 99 and BANK-ERRMSG = SPACES    
               string  CD05I-ACC        delimited by size
                       ' - '            delimited by size
                       CD03O-DSC(Indx)  delimited by size
                 into  text-desc
               set tBoxAcctDesc::Text to text-desc
     
               call "BBANK40P" using by reference  CD05-DATA 
                                     by reference  BANK-ERRMSG 
           End-If.
           
           If CD05O-DATE(1) = SPACES and BANK-ERRMSG = SPACES
               Move "No Data Found for this User Reference"  to BANK-ERRMSG
           End-If.
             
           If BANK-ERRMSG > SPACES AND
               type MessageBox::Show (BANK-ERRMSG "ERROR HAS OCCURED" type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) 
                     = type DialogResult::OK
                   move 2 to Indx
            end-if.
  
           Perform until CD05O-DATE(Indx) = SPACES OR BANK-ERRMSG > SPACES 
               set bal-list  to CD05O-AMT-N(Indx)     
               set listViewItem1 to new System.Windows.Forms.ListViewItem(CD05O-DATE(Indx), 10)
               
               invoke listViewItem1::SubItems::Add(CD05O-TIME(Indx))
               invoke listViewItem1::SubItems::Add(type System.Convert::ToString(bal-list))
               invoke listViewItem1::SubItems::Add(CD05O-DESC(Indx))
               invoke listView1::Items::Add(listViewItem1)
               
               Add 1 to Indx
           End-Perform.

           If Indx > 1 and BANK-ERRMSG = SPACES then
               Subtract 1 from Indx
               Move Indx  to  NUM1
               Move Success-MSG  to  BANK-ERRMSG   
           End-if.
            
           set ERRMSG::Text                to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG

       end method.

      *=================================================================================== 
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       
      *>>  Press the EXIT menu option
       method-id exitToolStripMenuItem_Click_1 final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.

      *>>  Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click_1 final private.
       01  helpPanel           type BankDemoWinForm.Help.
       Procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK40")         
       end method.

      *>>  Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click_1 final private.
       01  infoPanel           type BankDemoWinForm.Info.
       Procedure division using by value sender as object e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

      *>>  Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click_1 final private.
       01  aboutPanel           type BankDemoWinForm.About.
       Procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
       
      *======================================================================================

       method-id button1_Click_1 final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke listView1::Items::Clear()  *>> Clear the list View table before re-loading 
           invoke self::transList()  *>> Now process the user selection
       end method.

       end class.

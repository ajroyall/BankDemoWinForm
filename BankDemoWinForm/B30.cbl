       class-id BankDemoWinForm.B30 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01  currentUser     pic x(5).
       
      *>> <summary>
      *>> This is the new method
      *>> </summary>
       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

      *>> Initialize the list view with the information.
       method-id WinListView_Load final private.
       01  listViewItem1         type System.Windows.Forms.ListViewItem.
       procedure division using by value  sender as object e as type System.EventArgs.
           set listViewItem1 to new System.Windows.Forms.ListViewItem
           invoke listView1::Items::Clear()
           invoke self::PopulateList()
  
       end method.
       
       method-id Load.
       linkage section.
       01  inUser       string.
       01  inFunc       pic x(1).
       Procedure division using  by value inUser by value inFunc.
           move inUser to currentUser
           invoke self::Show()
       end method.

      *=================================================================================== 
       method-id PopulateList final private.
       local-storage section.
       01  listViewItem1         type System.Windows.Forms.ListViewItem.
       01  bal-list                 decimal.
       01  srv-list                 decimal.
       01  Indx                          pic 99.
       01  Success-MSG.
           05  TXT1         pic x(08) Value "Success ".
           05  NUM1         pic zz9   value 0.
           05  TXT2         pic x(11) Value " Rows Found". 

      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERID                                PIC X(5).          
       01  BANK-USERNM                                PIC X(25).

       COPY CBANKVC3 .      

       01 BANK-ERRMSG              PIC x(65).
       01 BANK-SRVMSG              PIC x(90).
       
       Procedure Division.
       
           move SPACES to CD03-DATA.
           move 1      to Indx.
      
           If USERID::Text = ""
               set USERID::Text     to currentUser .
               
           set BANK-USERID      to USERID::Text     
           set BANK-ERRMSG      to "NO CALL to Module" 
           

           call "BBANK30P" using by value      BANK-USERID
                                 by reference  BANK-USERNM
                                 by reference  CD03-DATA 
                                 by reference  BANK-ERRMSG
                                 by reference  BANK-SRVMSG 
           
           If CD03O-ACC(1) = SPACES AND CD03O-DSC(1) > SPACES
               string "DB Call Error - "   delimited by size
                      CD03O-DSC(1)         delimited by size
                 into BANK-ERRMSG
           end-If
           
           If BANK-SRVMSG > SPACES  *>> Can use a '.' or End-if to close 'If'
               set SRVMSG::Text     to BANK-SRVMSG . 

           If CD03O-ACC(1) = SPACES and BANK-ERRMSG = SPACES
               move "No Data Found for this User Reference"  to BANK-ERRMSG
               set ERRMSG::Text     to BANK-ERRMSG
           end-If
             
           If BANK-USERNM > SPACES  
               set USERNM::Text     to BANK-USERNM
           end-If
             
           Perform until CD03O-ACC(Indx) = SPACES or BANK-ERRMSG > SPACES 
               set bal-list  to CD03O-BALN(Indx)     
               set srv-list  to CD03O-SRVN(Indx)     
       
               set listViewItem1 to new System.Windows.Forms.ListViewItem(CD03O-ACC(Indx), 9)
               
               invoke listViewItem1::SubItems::Add(CD03O-DSC(Indx))
               invoke listViewItem1::SubItems::Add(type System.Convert::ToString(bal-list))
               invoke listViewItem1::SubItems::Add(type System.Convert::ToString(srv-list))
               invoke listViewItem1::SubItems::Add(CD03O-DTE(Indx))
               invoke listViewItem1::SubItems::Add(CD03O-TXN(Indx))
               invoke listView1::Items::Add(listViewItem1)
               
               Add 1 to Indx
               
           end-Perform
           If BANK-ERRMSG > SPACES then
               If type MessageBox::Show (BANK-ERRMSG "ERROR HAS OCCURED" type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) 
                     = type DialogResult::OK
                   move 2 to Indx
               end-If
           else
               If Indx > 1 then
                   Subtract 1 from Indx
                   move Indx         to  NUM1
                   move Success-MSG  to  BANK-ERRMSG   
               end-If
           end-If
                       
           set ERRMSG::Text                to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG

       end method.

      *>>  Press the 'FIND' Button
     
       method-id button1_Click final private.
       01 listViewItem1         type System.Windows.Forms.ListViewItem.
       procedure division using by value sender as object e as type System.EventArgs.
           set listViewItem1 to new System.Windows.Forms.ListViewItem
           invoke listView1::Items::Clear()    *>> Clear the listView
           invoke self::PopulateList()         *>> Populate the list View
       
       end method.
       
      *=================================================================================== 
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       
      *>>  Press the EXIT menu option
       method-id exitToolStripMenuItem_Click final private.
         Procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()  *>> Close this FORM, control will return to calling PRGM
       end method.

      *>>  Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click_1 final private.
       01 helpPanel           type BankDemoWinForm.Help.
         Procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK30")         
       end method.

      *>>  Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click_1 final private.
       01 infoPanel           type BankDemoWinForm.Info.
         Procedure division using by value sender as object e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

       *>>  Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click_1 final private.
       01 aboutPanel           type BankDemoWinForm.About.
         Procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
      *
       end class.

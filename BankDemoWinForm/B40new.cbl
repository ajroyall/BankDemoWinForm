       class-id BankDemoWinForm.B40new is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01  currentUser            pic x(5).
       01  selectAcc              pic x(9).

      *-- Stored outside the methods to allow exchange between diff methods of
      *   the form.i.e. Intial retrieve to Transfer.
       COPY CBANKVC3 .

       01  Indx                   pic 99.
       01  Success-MSG.
           05  TXT1               pic x(08) Value "Success ".
           05  NUM1               pic zz9 value 0.
           05  TXT2               pic x(11) Value " Rows Found".

       method-id NEW.
       linkage section.
       01  inUser                 string.
       01  selectedData           string.
       procedure division using by value inUser
                                by value selectedData.
           invoke self::InitializeComponent()
           MOVE inUser to currentUser
           MOVE selectedData to selectAcc
           invoke self::PopulateList()

           invoke listView1::Items::Clear() *>> Clear the list View table before re-loading
           invoke self::transList() *>> Now process the user selection

           set toolStripStatusLabel1::Text to "Use the Back Arrow to return to Balances"
           goback
           .
       end method.

      *===================================================================================
       method-id PopulateList final private.
       local-storage section.
      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERID            PIC X(5).
       01  BANK-USERNM            PIC X(25).

       01  BANK-ERRMSG            PIC x(65).
       01  BANK-SRVMSG            PIC x(90).

       Procedure Division.

           Move SPACES to CD03-DATA

           set BANK-USERID to currentUser

           call "BBANK30P" using by value BANK-USERID
                                 by reference BANK-USERNM
                                 by reference CD03-DATA
                                 by reference BANK-ERRMSG
                                 by reference BANK-SRVMSG

           If CD03O-ACC(1) = SPACES and BANK-ERRMSG = SPACES
               Move "No Data Found for this User Reference" to BANK-ERRMSG
           End-If
           
           set tbAccNo::Text TO selectAcc
           set ERRMSG::Text  to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG

       end method.

      *===================================================================================
       method-id transList final private.
       local-storage section.
       01  listViewItem1          type System.Windows.Forms.ListViewItem.
       01  decValue               decimal.
       01  textDesc.
           05  DSC                 PIC X(30).
           05  FILLER              PIC X(5).
           05  AMT                 PIC X(15).
           05  AMTN redefines AMT  PIC $$$,$$$,$$$.00+.

      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERNM            PIC X(25).
00     COPY CBANKVC5.

       01  BANK-ERRMSG             PIC x(65).
       01  SHOW-DATE               PIC x(10).

       Procedure Division.

           Move SPACES to CD05-DATA SHOW-DATE BANK-ERRMSG
           set CD05I-ID    TO currentUser
           set CD05I-ACC   TO selectACC
           

           Move 1 to Indx
           PERFORM varying Indx from 1 by 1 until CD03O-ACC(Indx) = CD05I-ACC or Indx > 98
           END-PERFORM

           If Indx < 99 and BANK-ERRMSG = SPACES
               set tBoxAcctDesc::Text to CD03O-DSC(Indx)
               set decValue           to CD03O-BALN(Indx)
               set tbBalance::Text    TO decValue::ToString("C", type CultureInfo::CurrentCulture)
               call "BBANK40P" using by reference CD05-DATA
                                     by reference BANK-ERRMSG
           End-If

           If CD05O-DATE(1) = SPACES and BANK-ERRMSG = SPACES
               Move "No Data Found for this User Reference" to BANK-ERRMSG
           End-If

           If BANK-ERRMSG > SPACES AND
               type MessageBox::Show(BANK-ERRMSG "ERROR HAS OCCURED"
               type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) =
               type DialogResult::OK
              move 2 to Indx
           ELSE
               move 1 to Indx
               Perform until CD05O-DATE(Indx) = SPACES
                   IF SHOW-DATE NOT EQUAL CD05O-DATE(Indx)
                       MOVE CD05O-DATE(Indx) to SHOW-DATE
      *            ELSE
      *                MOVE SPACES to CD05O-DATE(Indx)
      *            END-IF
                   set listViewItem1 to new System.Windows.Forms.ListViewItem(CD05O-DATE(Indx), 10)
                   set listViewItem1::ForeColor TO type System.Drawing.SystemColors::Highlight
                   invoke listView1::Items::Add(listViewItem1)
                   END-IF

                   set decValue      to CD05O-AMT-N(Indx)
                   set listViewItem1 to new System.Windows.Forms.ListViewItem(CD05O-DESC(Indx), 9)
                   invoke listViewItem1::SubItems::Add(decValue::ToString("C", type CultureInfo::CurrentCulture))
                   set listViewItem1::BackColor TO type System.Drawing.SystemColors::Info
                   invoke listView1::Items::Add(listViewItem1)

                   Add 1 to Indx
               End-Perform
           end-if

           If Indx > 1 and BANK-ERRMSG = SPACES then
               Subtract 1 from Indx
               Move Indx        to NUM1
               Move Success-MSG to BANK-ERRMSG
           End-if

           set ERRMSG::Text                to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG

       end method.

      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =

      *>> Press the EXIT menu option
       method-id exitToolStripMenuItem_Click_1 final private.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           invoke self::Close()
       end method.

      *>> Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click_1 final private.
       01  helpPanel              type BankDemoWinForm.Help.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK40")
       end method.

      *>> Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click_1 final private.
       01  infoPanel              type BankDemoWinForm.Info.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

      *>> Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click_1 final private.
       01  aboutPanel             type BankDemoWinForm.About.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.

      *======================================================================================

       method-id button1_Click_1 final private.
       procedure division using by value sender as object
                                         e as type System.EventArgs.
           invoke listView1::Items::Clear() *>> Clear the list View table before re-loading
           invoke self::transList() *>> Now process the user selection
       end method.

       end class.

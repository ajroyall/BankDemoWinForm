       class-id BankDemoWinForm.B30new is partial
           inherits type System.Windows.Forms.Form.

       working-storage section.
       01  currentID               PIC x(5).
       01  decValue                DECIMAL.
       01  appID                   PIC X(8) value "BANK30".
       COPY CBANKVC3 .

      *>> <summary>
      *>> This is the new method
      *>> </summary>
       method-id NEW.
       linkage section.
       01  inUser                  string.

       procedure division using by value inUser.
           invoke self::InitializeComponent()
           move inUser to currentID
           invoke SELF::PopulateList()
           goback
           .
       end method.

      *>> Initialize the list view with the information.
       method-id WinListView_Load final private.
       01  listViewItem1          type System.Windows.Forms.ListViewItem.
       procedure division.
           set listViewItem1 to new System.Windows.Forms.ListViewItem
           invoke listView1::Items::Clear()
           invoke self::PopulateList()

       end method.

      *===================================================================================
       method-id PopulateList final private.
       local-storage section.
       01  listViewItem1          type System.Windows.Forms.ListViewItem.
       01  Indx                   pic 99.
       01  Success-MSG.
           05  TXT1               pic x(08) Value "Success ".
           05  NUM1               pic zz9 value 0.
           05  TXT2               pic x(11) Value " Rows Found".

      * Data as used in the Linkage Section of the Called Program
       01  BANK-USERID            PIC X(5).
       01  BANK-USERNM            PIC X(25).
       01  BANK-ERRMSG            PIC x(65).
       01  BANK-SRVMSG            PIC x(90).

       Procedure Division.

           move SPACES to CD03-DATA
           move 1 to Indx

           set BANK-USERID to currentID
           set BANK-ERRMSG to "NO CALL to Module"

           call "BBANK30P" using by value BANK-USERID
                                 by reference BANK-USERNM
                                 by reference CD03-DATA
                                 by reference BANK-ERRMSG
                                 by reference BANK-SRVMSG

           If CD03O-ACC(1) = SPACES AND CD03O-DSC(1) > SPACES
               string "DB Call Error - " delimited by size
                 CD03O-DSC(1) delimited by size
                 into BANK-ERRMSG
           end-If

           If BANK-SRVMSG > SPACES 
               set SRVMSG::Text to BANK-SRVMSG
           end-If
           
           If CD03O-ACC(1) = SPACES and BANK-ERRMSG = SPACES
               move "No accounts found" to BANK-ERRMSG
               set ERRMSG::Text         to BANK-ERRMSG
           end-If


           Perform until CD03O-ACC(Indx) = SPACES or BANK-ERRMSG > SPACES
               move CD03O-BALN(Indx) to decValue
      *        set bal-str to decValue::ToString("C", type CultureInfo::CurrentCulture)

               set listViewItem1 to new System.Windows.Forms.ListViewItem(
                   CD03O-DSC(Indx), 9)
               invoke listView1::Items::Add(listViewItem1)

               set listViewItem1 to new System.Windows.Forms.ListViewItem(
                   CD03O-ACC(Indx), 9)
               invoke listViewItem1::SubItems::Add(decValue::ToString("C", type CultureInfo::CurrentCulture))
               set listViewItem1::BackColor to type System.Drawing.SystemColors::Info
               set listViewItem1::ForeColor to type System.Drawing.SystemColors::Highlight
               invoke listView1::Items::Add(listViewItem1)

               set listViewItem1 to new System.Windows.Forms.ListViewItem(spaces, 9)
               invoke listView1::Items::Add(listViewItem1)

               Add 1 to Indx
           end-Perform

           If BANK-ERRMSG > SPACES then
               If type MessageBox::Show(BANK-ERRMSG "ERROR HAS OCCURED" type
                   MessageBoxButtons::OK type MessageBoxIcon::Exclamation)
                 = type DialogResult::OK
                   move 2 to Indx
               end-If
           else
               If Indx > 1 then
                   Subtract 1 from Indx
                   move Indx        to NUM1
                   move Success-MSG to BANK-ERRMSG
               end-If
           end-If

           set ERRMSG::Text                to BANK-ERRMSG
           set toolStripStatusLabel1::Text to BANK-ERRMSG

       end method.

      *>> Press the 'REFRESH' Button
       method-id Refresh_Click final private.
       01  listViewItem1          type System.Windows.Forms.ListViewItem.
       01  selectedData            STRING.
       procedure division using by value sender as object
                                         e as type System.EventArgs.
           set listViewItem1 to new System.Windows.Forms.ListViewItem
           invoke listView1::Items::Clear() *>> Clear the listView
           invoke self::PopulateList() *>> Populate the list View

       end method.

      *>> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      *>> When a Balance Account line is selected
       method-id select_Click final private.
       01  selectedData            STRING.
       01  Indx                    BINARY-SHORT value 1.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.

           set selectedData to listView1::SelectedItems[0]::Text   *> THIS WORKS!
           Perform varying Indx from 1 by 1
             until CD03O-ACC(Indx) = selectedData or CD03O-DSC(Indx) = selectedData
           end-Perform
           move CD03O-ACC(Indx) to selectedData


           DECLARE newForm = new BankDemoWinForm.B40new(currentID, selectedData)
           set SELF::Visible = FALSE
           invoke newForm::ShowDialog
           set SELF::Visible = TRUE
           invoke SELF::WinListView_Load()

       end method.

      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       COPY "GENERICMENUOPTIONS.CPY".
       end class.

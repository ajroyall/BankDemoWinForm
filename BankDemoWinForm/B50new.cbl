       class-id BankDemoWinForm.B50new is partial
           inherits type System.Windows.Forms.Form.
      
       working-storage section.
       01  currentUser            pic x(5).
       01  disCurrency             DECIMAL.
      *01  strCurrency             STRING.
       01  Indx                   pic 99.

      *-- Stored outside the methods to allow exchange between diff methods of
      *   the form.i.e. Intial retrieve to Transfer.
       COPY CBANKVC3.
       COPY CBANKVC4 .
      
       method-id NEW.
       linkage section.
       01  inUser                 string.

       procedure division using by value inUser.

           invoke self::InitializeComponent()
           invoke SELF::Load(inUser)
           goback

       end method.
      
      *===================================================================================
       method-id Load.
       linkage section.
       01  inUser                 string.

       procedure division using by value inUser.
      
           MOVE inUser to currentUser
           invoke self::PopulateList()
           set toolStripStatusLabel1::Text to "Ready, select Accounts"
      
       end method.
      
      *===================================================================================
       method-id PopulateList final private.
       local-storage section.
      
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
      
           If CD03O-ACC(1) = SPACES
               Move "No Data Found for this User Reference" to BANK-ERRMSG
               set ERRMSG::Text                             to BANK-ERRMSG
           End-If
      
           Move 1 to Indx     *> DO NOT MOVE THIS LINE FROM HERE
      
           IF BANK-ERRMSG > SPACES THEN
               If type MessageBox::Show(BANK-ERRMSG "ERROR HAS OCCURED" type
                   MessageBoxButtons::OK type MessageBoxIcon::Exclamation)
                 = type DialogResult::OK
                   move 2 to Indx
               end-if
           END-IF

           set tbFromAccNo::Text TO ""
           set tbToAccNo::Text TO ""
           set tbFromBalance::Text TO ""
           set tbToBalance::Text TO ""
           set tBoxAmount::Text    to ""
           invoke lBoxFrom::Items::Clear() *>> Clear From Acct list
           invoke lBoxTo::Items::Clear() *>> Clear To Acct list

      
      *> Store the Account Codes in the drop down lists (From Account and To Account)
            Perform until CD03O-ACC(Indx) = SPACES OR BANK-ERRMSG > SPACES
              invoke lBoxFrom::Items::AddRange(CD03O-DSC(Indx))
               invoke lBoxTo::Items::AddRange(CD03O-DSC(Indx))
               Add 1 to Indx
           End-Perform
      
       end method.
      
      *===================================================================================
       method-id transferAmt final private.
       local-storage section.
       01  FROM-ACCID             PIC X(9).
       01  TO-ACCID               PIC X(9).
      
      * Data as used in the Linkage Section of the Called Program
      
       01  BANK-ERRMSG            PIC X(65).
       01  GOOD-ERRMSG            PIC X(65).
      
       Procedure Division.
      
           INITIALIZE CD04-DATA
           MOVE SPACES TO BANK-ERRMSG
      
           try
               set FROM-ACCID to tbFromAccNo::Text
           catch
               move "Please Select a FROM Account" to BANK-ERRMSG
           end-try
           try
               set TO-ACCID to tbToAccNo::Text
           catch
               move "Please Select a TO Account" to BANK-ERRMSG
           end-try

           Perform varying Indx from 1 by 1 until CD03O-ACC(Indx) = SPACES
             or
             (CD04I-FROM-ACC > SPACES AND CD04I-TO-ACC > SPACES)
               IF CD03O-ACC(Indx) = FROM-ACCID THEN
                   MOVE CD03O-ACC(Indx)  TO CD04I-FROM-ACC
                   MOVE CD03O-BALN(Indx) TO CD04I-FROM-OLD-BAL
               end-if
               IF CD03O-ACC(Indx) = TO-ACCID THEN
                   MOVE CD03O-ACC(Indx)  TO CD04I-TO-ACC
                   MOVE CD03O-BALN(Indx) TO CD04I-TO-OLD-BAL
               end-if
           End-Perform

           set CD04I-PERSON-PID to currentUser
           set CD04I-AMT        to tBoxAmount::Text
      
           call "BBANK50P" using by reference CD04-DATA
                                 by reference BANK-ERRMSG
                                 by reference GOOD-ERRMSG
      
           IF BANK-ERRMSG > SPACES
               If type MessageBox::Show(BANK-ERRMSG "ERROR HAS OCCURED"
                   type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) =
                   type DialogResult::OK
                   move 2 to Indx
               end-if
      
               set ERRMSG::Text                to BANK-ERRMSG
               set toolStripStatusLabel1::Text to BANK-ERRMSG
           Else
               If type MessageBox::Show(GOOD-ERRMSG "SUCCESS!"
                   type MessageBoxButtons::OK type MessageBoxIcon::Information) =
                   type DialogResult::OK
                   move 2 to Indx
               end-if

      *        invoke lBoxFrom::Items::Clear() *>> Clear From Acct list
      *        invoke lBoxTo::Items::Clear()   *>> Clear To Acct list
               invoke self::PopulateList()     *>> Refresh List view
      *        set tBoxAmount::Text            to ""
               set ERRMSG::Text                to GOOD-ERRMSG
               set toolStripStatusLabel1::Text to GOOD-ERRMSG

           End-If
       end method.
      
      *===================================================================================
      *= List Box Processing =
      
       method-id selectFrom_Click final private.
       local-storage section.
       01  FROM-DSCID             PIC X(15).
       01  TO-ACCID               PIC X(15).
       01  bal-str                 STRING.
      
      * Data as used in the Linkage Section of the Called Program
      
       01  BANK-ERRMSG            PIC X(65).
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
      
               set FROM-DSCID to lBoxFrom::SelectedItem
               move spaces to CD04I-FROM-ACC bal-str
          
               Perform varying Indx from 1 by 1 until CD03O-ACC(Indx) = SPACES
                 or
                 (CD04I-FROM-ACC > SPACES)
      
                   IF CD03O-DSC(Indx) = FROM-DSCID THEN
                       MOVE CD03O-ACC(Indx)  TO CD04I-FROM-ACC
                       MOVE CD03O-BALN(Indx) TO disCurrency
                   end-if
               End-Perform

           set tbFromAccNo::Text   to CD04I-FROM-ACC
           set tbFromBalance::Text to
               disCurrency::ToString("C", type CultureInfo::CurrentCulture)
      
       end method.
      
       method-id selectTo_Click final private.
       local-storage section.
       01  TO-DSCID               PIC X(15).
       01  bal-str                STRING.
      
      * Data as used in the Linkage Section of the Called Program
      
       01  BANK-ERRMSG            PIC X(65).
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
      
           set TO-DSCID to lBoxTo::SelectedItem
           move spaces    to CD04I-TO-ACC bal-str
      
           Perform varying Indx from 1 by 1 until CD03O-ACC(Indx) = SPACES
             or
             (CD04I-TO-ACC > SPACES)
      
               IF CD03O-DSC(Indx) = TO-DSCID THEN
                   MOVE CD03O-ACC(Indx) TO CD04I-TO-ACC
                   MOVE CD03O-BALN(Indx) TO disCurrency
               end-if
           End-Perform
      
           set tbToAccNo::Text   to CD04I-TO-ACC
           set tbToBalance::Text to
               disCurrency::ToString("C", type CultureInfo::CurrentCulture)
       end method.
      
      *===================================================================================
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
      
      *>> Press the EXIT menu option
       method-id exitToolStripMenuItem_Click final private.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           invoke self::Close()
       end method.
      
      *>> Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click final private.
       01  helpPanel              type BankDemoWinForm.Help.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK50")
       end method.
      
      *>> Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click final private.
       01  infoPanel              type BankDemoWinForm.Info.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.
      
      *>> Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click final private.
       01  aboutPanel             type BankDemoWinForm.About.
       Procedure division using by value sender as object
                                         e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
      
      *======================================================================================
      
       method-id buttonTransfer_Click final private.
       procedure division using by value sender as object
                                         e as type System.EventArgs.
           invoke self::transferAmt()
       end method.
      
      
       end class.

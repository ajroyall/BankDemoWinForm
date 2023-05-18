       class-id BankDemoWinForm.B70 is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.
       01  helpPanel           type BankDemoWinForm.Help.
       01  infoPanel           type BankDemoWinForm.Info.
       01  aboutPanel          type BankDemoWinForm.About.

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id Load.
       linkage section.
       procedure division.
           invoke self::Show()
       end method.

       method-id B70_Load final private.
       procedure division using by value sender as object e as type System.EventArgs.
      *    This area can be used to pre-populate the screen. It will need to be called from
      *    the initialisation part of the Design(code) for the screen
       end method.

       method-id ButtonCalculate_Click final private.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::calculateLoan().
       end method.

      *=================================================================================== 
       method-id calculateLoan final private.
       local-storage section.
       COPY CBANKVC7 .
       
       01  BANK-ERRMSG                             PIC X(65).

       Procedure Division.
           
            SET BANK-SCR70-AMOUNT   TO tBoxAmount::Text .
            SET BANK-SCR70-RATE     TO tBoxRate::Text   .
            SET BANK-SCR70-TERM     TO tBoxTerm::Text   .
            SET BANK-SCR70-PAYMENT  TO tBoxPaymt::Text  .

            MOVE SPACES to BANK-ERRMSG.            

            CALL "BBANK70P" using   by reference    LOAN-ENQUIRY
                                    by reference    BANK-ERRMSG.
                                  
            SET tBoxAmount::Text   TO BANK-SCR70-AMOUNT  .
            SET tBoxRate::Text     TO BANK-SCR70-RATE    . 
            SET tBoxTerm::Text     TO BANK-SCR70-TERM    .
            SET tBoxPaymt::Text    TO BANK-SCR70-PAYMENT .
            SET ERRMSG::Text       TO BANK-ERRMSG        .
            set toolStripStatusLabel1::Text to BANK-ERRMSG .


            IF BANK-ERRMSG > SPACES THEN
               If type MessageBox::Show (BANK-ERRMSG "ERROR HAS OCCURED" type MessageBoxButtons::OK type MessageBoxIcon::Exclamation) 
                     = type DialogResult::OK
                   SET tBoxTerm::Text     TO BANK-SCR70-TERM    
               end-if
            Else
               set toolStripStatusLabel1::Text to 'Calculations completed Successfully'
            END-IF

       end method.

      *=================================================================================== 
      *= Generic Routines used across all menu driven Programs: Help, Info, About & Exit =
       
      *>>  Press the EXIT menu option
       method-id exitToolStripMenuItem_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.

      *>>  Press the HELP menu option
       method-id moreInformationToolStripMenuIte_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           set helpPanel to new BankDemoWinForm.Help
           invoke helpPanel::Load("BANK70")         
       end method.

      *>>  Press the INFO menu option
       method-id moreInformationToolStripMenuI0_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           set infoPanel to new BankDemoWinForm.Info
           invoke infoPanel::ShowDialog(self)
       end method.

      *>>  Press the ABOUT menu option
       method-id aboutToolStripMenuItem_Click final private.
       Procedure division using by value sender as object e as type System.EventArgs.
           set aboutPanel to new BankDemoWinForm.About
           invoke aboutPanel::ShowDialog(self)
       end method.
       
       end class.

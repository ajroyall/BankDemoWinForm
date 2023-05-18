       class-id BankDemoWinForm.About is partial
                 inherits type System.Windows.Forms.Form.

       working-storage section.

       method-id NEW.
       procedure division.
           invoke self::InitializeComponent()
           goback.
       end method.

       method-id button1_Click final private.
       local-storage section.
       procedure division using by value sender as object e as type System.EventArgs.
           invoke self::Close()
       end method.

       method-id richTextBox1_TextChanged final private.
       procedure division using by value sender as object e as type System.EventArgs.
       end method.
       
       end class.

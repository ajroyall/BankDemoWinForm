USE [DBNASE]
GO

INSERT INTO [dbo].[BNKACC]
           ([BAC_PID]
           ,[BAC_ACCNO]
           ,[BAC_ACCTYPE]
           ,[BAC_BALANCE]
           ,[BAC_LAST_STMT_DTE]
           ,[BAC_LAST_STMT_BAL]
           ,[BAC_ATM_ENABLED]
           ,[BAC_ATM_DAY_LIMIT]
           ,[BAC_ATM_DAY_DTE]
           ,[BAC_ATM_DAY_AMT]
           ,[BAC_RP1_DAY]
           ,[BAC_RP1_AMOUNT]
           ,[BAC_RP1_PID]
           ,[BAC_RP1_ACCNO]
           ,[BAC_RP1_LAST_PAY]
           ,[BAC_RP2_DAY]
           ,[BAC_RP2_AMOUNT]
           ,[BAC_RP2_PID]
           ,[BAC_RP2_ACCNO]
           ,[BAC_RP2_LAST_PAY]
           ,[BAC_RP3_DAY]
           ,[BAC_RP3_AMOUNT]
           ,[BAC_RP3_PID]
           ,[BAC_RP3_ACCNO]
           ,[BAC_RP3_LAST_PAY]
           ,[BAC_FILLER])
     VALUES
           (<BAC_PID, char(5),>
           ,<BAC_ACCNO, char(9),>
           ,<BAC_ACCTYPE, char(1),>
           ,<BAC_BALANCE, decimal(9,2),>
           ,<BAC_LAST_STMT_DTE, date,>
           ,<BAC_LAST_STMT_BAL, decimal(9,2),>
           ,<BAC_ATM_ENABLED, char(2),>
           ,<BAC_ATM_DAY_LIMIT, decimal(3,0),>
           ,<BAC_ATM_DAY_DTE, date,>
           ,<BAC_ATM_DAY_AMT, decimal(3,0),>
           ,<BAC_RP1_DAY, char(2),>
           ,<BAC_RP1_AMOUNT, decimal(7,2),>
           ,<BAC_RP1_PID, char(5),>
           ,<BAC_RP1_ACCNO, char(9),>
           ,<BAC_RP1_LAST_PAY, date,>
           ,<BAC_RP2_DAY, char(2),>
           ,<BAC_RP2_AMOUNT, decimal(7,2),>
           ,<BAC_RP2_PID, char(5),>
           ,<BAC_RP2_ACCNO, char(9),>
           ,<BAC_RP2_LAST_PAY, date,>
           ,<BAC_RP3_DAY, char(2),>
           ,<BAC_RP3_AMOUNT, decimal(7,2),>
           ,<BAC_RP3_PID, char(5),>
           ,<BAC_RP3_ACCNO, char(9),>
           ,<BAC_RP3_LAST_PAY, date,>
           ,<BAC_FILLER, char(59),>)
GO


USE [DBNASE]
GO
/****** Object:  Table [dbo].[BNKHELP]    Script Date: 15/05/2023 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNKHELP](
	[BHP_SCRN] [char](6) NOT NULL,
	[BHP_LINE] [char](2) NOT NULL,
	[BHP_TEXT] [char](75) NOT NULL
) ON [PRIMARY]
GO

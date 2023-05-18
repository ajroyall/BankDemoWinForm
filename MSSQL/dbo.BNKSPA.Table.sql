USE [DBNASE]
GO
/****** Object:  Table [dbo].[BNKSPA]    Script Date: 15/05/2023 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNKSPA](
	[BSP_TERM] [char](8) NOT NULL,
	[BSP_SPA_DATA] [varchar](6144) NOT NULL
) ON [PRIMARY]
GO

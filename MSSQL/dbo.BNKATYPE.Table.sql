USE [DBNASE]
GO
/****** Object:  Table [dbo].[BNKATYPE]    Script Date: 15/05/2023 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BNKATYPE](
	[BAT_TYPE] [char](1) NOT NULL,
	[BAT_DESC] [char](15) NOT NULL,
	[BAT_FILLER] [char](84) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BAT_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

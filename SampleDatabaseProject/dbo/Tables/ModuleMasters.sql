﻿CREATE TABLE [dbo].[ModuleMasters](
	[ModuleMasterId] [int] IDENTITY(1,1) NOT NULL,
	[ModuleMasterName] [varchar](100) NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_ModuleMasters] PRIMARY KEY CLUSTERED 
(
	[ModuleMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
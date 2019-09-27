CREATE TABLE [dbo].[ModuleContents](
	[ModuleContentId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationModuleId] [int] NOT NULL,
	[LanguageContentId] [int] NOT NULL,
	[DataActionId] [int] NOT NULL,
	[En] [varchar](max) NULL,
 CONSTRAINT [PK_ModuleProperties] PRIMARY KEY CLUSTERED 
(
	[ModuleContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ModuleContents]  WITH CHECK ADD  CONSTRAINT [FK_ModuleContents_ApplicationModules] FOREIGN KEY([ApplicationModuleId])
REFERENCES [dbo].[ApplicationModules] ([ApplicationModuleId])
GO

ALTER TABLE [dbo].[ModuleContents] CHECK CONSTRAINT [FK_ModuleContents_ApplicationModules]
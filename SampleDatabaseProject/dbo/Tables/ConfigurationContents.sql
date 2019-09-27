CREATE TABLE [dbo].[ConfigurationContents](
	[ConfigurationContentId] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationContentName] [varchar](max) NOT NULL,
	[En] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ConfigurationContents] PRIMARY KEY CLUSTERED 
(
	[ConfigurationContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
CREATE TABLE [dbo].[ApplicationExceptionLogs](
	[ApplicationExceptionLogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ApplicationTimeZoneId] [int] NULL,
	[ApplicationModuleId] [int] NULL,
	[Url] [nvarchar](200) NOT NULL,
	[RequestMethod] [varchar](10) NULL,
	[Message] [varchar](max) NOT NULL,
	[ExceptionType] [varchar](200) NOT NULL,
	[ExceptionSource] [varchar](500) NOT NULL,
	[StackTrace] [varchar](500) NOT NULL,
	[InnerException] [varchar](500) NOT NULL,
	[ExceptionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ApplicationExceptionLog] PRIMARY KEY CLUSTERED 
(
	[ApplicationExceptionLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'set url ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'author', @value=N'varix' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs'
GO
EXEC sys.sp_addextendedproperty @name=N'objective', @value=N'this table does xyz' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs'
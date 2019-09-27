CREATE TABLE [dbo].[RequestLogs](
	[RequestLogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ApplicationModuleId] [int] NULL,
	[RecordId] [varchar](100) NULL,
	[RequestMethod] [varchar](10) NOT NULL,
	[ServiceUri] [varchar](100) NOT NULL,
	[ClientIPAddress] [varchar](50) NULL,
	[BrowserName] [varchar](200) NULL,
	[RequestTime] [datetime] NOT NULL,
	[TotalDuration] [time](7) NOT NULL,
	[Parameters] [nvarchar](max) NOT NULL,
	[ContentLength] [int] NULL,
	[Cookies] [varchar](max) NULL,
	[AuthorizationHeader] [varchar](max) NULL,
	[ResponseStatusCode] [int] NOT NULL,
 CONSTRAINT [PK_RequestLogs] PRIMARY KEY CLUSTERED 
(
	[RequestLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
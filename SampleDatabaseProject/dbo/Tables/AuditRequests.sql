CREATE TABLE [dbo].[AuditRequests](
	[AuditRequestId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ApplicationModuleId] [int] NOT NULL,
	[ApplicationTimeZoneId] [int] NOT NULL,
	[MainRecordId] [varchar](100) NOT NULL,
	[Uri] [varchar](1024) NOT NULL,
	[RequestMethod] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AuditRequests] PRIMARY KEY CLUSTERED 
(
	[AuditRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[AuditRecords](
	[AuditRecordId] [int] IDENTITY(1,1) NOT NULL,
	[AuditRequestId] [int] NULL,
	[EventType] [varchar](9) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[RecordId] [varchar](100) NOT NULL,
	[RecordName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AuditRecords] PRIMARY KEY CLUSTERED 
(
	[AuditRecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditRecords]  WITH CHECK ADD  CONSTRAINT [FK_AuditRecords_AuditRequests] FOREIGN KEY([AuditRequestId])
REFERENCES [dbo].[AuditRequests] ([AuditRequestId])
GO

ALTER TABLE [dbo].[AuditRecords] CHECK CONSTRAINT [FK_AuditRecords_AuditRequests]
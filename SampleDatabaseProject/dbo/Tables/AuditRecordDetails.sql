CREATE TABLE [dbo].[AuditRecordDetails](
	[AuditRecordDetailId] [int] IDENTITY(1,1) NOT NULL,
	[AuditRecordId] [int] NOT NULL,
	[ColumnName] [varchar](50) NOT NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[ReferenceTableName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AuditRecordDetails] PRIMARY KEY CLUSTERED 
(
	[AuditRecordDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuditRecordDetails]  WITH CHECK ADD  CONSTRAINT [FK_AuditRecordDetails_AuditRecords] FOREIGN KEY([AuditRecordId])
REFERENCES [dbo].[AuditRecords] ([AuditRecordId])
GO

ALTER TABLE [dbo].[AuditRecordDetails] CHECK CONSTRAINT [FK_AuditRecordDetails_AuditRecords]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Details' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AuditRecordDetails', @level2type=N'COLUMN',@level2name=N'AuditRecordDetailId'
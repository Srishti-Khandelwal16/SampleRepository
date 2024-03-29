CREATE ROLE [db_executor]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec spLanguageContent 2,1

CREATE PROCEDURE [dbo].[spLanguageContent](@ApplicationModuleId int, @DataActionId int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 declare @LanguageContentId int
	 declare @languageContentKeyId int
 
	select @LanguageContentId = LanguageContentId from ModuleContents where ApplicationModuleId=@ApplicationModuleId and DataActionId=@DataActionId
	
	select @languageContentKeyId=LanguageContentKeyId from LanguageContents where LanguageContentId=@LanguageContentId  
	
	select AO.ApplicationObjectName as [KEY], LK.KeyName,LC.En
	 
	 from ApplicationObjects AO 
	  inner join LanguageContents LC on AO.ApplicationObjectId = LC.LanguageContentId
	  inner join LanguageContentKeys LK on LK.LanguageContentKeyId = @languageContentKeyId for json auto									         
												
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec SpPermissions 1

CREATE PROCEDURE  [dbo].[spPermissions](@UserId int) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	 SET NOCOUNT ON;

	  Declare @RoleId int = 0;
	  Declare @ApplicationModuleId  int = 0;
	   
    -- Insert statements for procedure here
	SELECT @RoleId=RoleId from UserRoles where UserId=@UserId 

	select ApplicationModuleId,CanView,CanAdd,CanEdit,CanDelete from RolePermissions where RoleId=@RoleId for json path
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'set url ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'author', @value=N'varix' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs'
GO
EXEC sys.sp_addextendedproperty @name=N'objective', @value=N'this table does xyz' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationExceptionLogs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Parent Application Module' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationModules', @level2type=N'COLUMN',@level2name=N'ParentApplicationModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Main Primary Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationObjects', @level2type=N'COLUMN',@level2name=N'ApplicationObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Application Objects is used Application wide' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ApplicationObjects'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Record Details' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AuditRecordDetails', @level2type=N'COLUMN',@level2name=N'AuditRecordDetailId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is Only Used for Server Message Or Server side keys operations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LanguageContents', @level2type=N'COLUMN',@level2name=N'ContentTypeId'
GO

USE [master]
GO
ALTER DATABASE [ArchitectureV3] SET  READ_WRITE 
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
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
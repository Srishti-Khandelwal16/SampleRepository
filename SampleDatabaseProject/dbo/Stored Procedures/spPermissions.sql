-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

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
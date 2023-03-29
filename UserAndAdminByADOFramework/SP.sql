USE [RKSAHU_UserDB]
GO

/****** Object:  StoredProcedure [dbo].[SP_UsesAddAdminByADOFramework]    Script Date: 29-03-2023 13:05:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_UsesAddAdminByADOFramework](
@UsrID VARCHAR(50)=null,
@Name varchar(50)=null,
@DateOfBirth varchar(50)=null,
@City varchar(30)=null,
@CompanyName varchar(50)=null,
@Experience varchar(50)=null,
@ProgrammingSkills varchar(50)=null,
@UserPassword varchar(50)=null,
@StatementType NVARCHAR(20) = ''
)
AS
  BEGIN
      IF @StatementType = 'Insert'
        BEGIN
            INSERT INTO TB_UsesAddAdminByADOFramework VALUES(@UsrID,@Name,@DateOfBirth,@City,@CompanyName,@Experience,@ProgrammingSkills,@UsrID)
        END
      ELSE IF @StatementType = 'select'
        BEGIN
            select * from TB_UsesAddAdminByADOFramework where UsrID=@UsrID
        END
		ELSE IF @StatementType = 'selectall'
        BEGIN
            select * from TB_UsesAddAdminByADOFramework 
        END
	
      IF @StatementType = 'Update'
        BEGIN
            UPDATE TB_UsesAddAdminByADOFramework 
            SET    Name=@Name,DateOfBirth=@DateOfBirth,City=@City,CompanyName=@CompanyName,Experience=@Experience,ProgrammingSkills=@ProgrammingSkills
            WHERE  UsrID=@UsrID
        END
      ELSE IF @StatementType = 'Delete'
        BEGIN
            DELETE FROM TB_UsesAddAdminByADOFramework 
            WHERE UsrID=@UsrID
        END
		ELSE IF @StatementType = 'login'
        BEGIN
            select * from TB_UsesAddAdminByADOFramework where UsrID=@UsrID and UserPassword=@UserPassword
        END
  END
GO



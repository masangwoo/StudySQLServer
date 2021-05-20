CREATE PROC usp_users
AS 
	SELECT userID, name, birthYear,addr FROM userTbl;
GO

EXEC usp_users;

CREATE VIEW v_users
AS
 SELECT userID, name, birthYear,addr FROM userTbl;
GO

 SELECT *FROM v_users



 CREATE PROC usp_users2
	@userBirthYear INT,
	@userHeight INT
 AS 
	SELECT userID, name, birthYear, height mDate FROM userTBL
	WHERE birthYear>=@userBirthYear
	AND height>=@userHeight;
 GO

 EXEC usp_users2 1970, 178

 --프로시저나 함수 코딩때는
 -- CREATE OR ALTER PROC(FUNC) : 생산과 수정을 동시에

 CREATE PROC usp_users3
	@lastName NVARCHAR(2),
	@OutCount INT OUTPUT--Return과 같다
AS

	 SELECT COUNT(*) FROM userTbl
	 WHERE name LIKE @lastName + '%'
GO


 SELECT COUNT(*) FROM userTbl 
 WHERE name LIKE '김'+'%'
DECLARE @myValue INT;
EXEC usp_users3 '김', @myValue OUTPUT;
PRINT CONCAT('김씨 성을 가진 사용자 수는 ',@myValue);
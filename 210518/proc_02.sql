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

 --���ν����� �Լ� �ڵ�����
 -- CREATE OR ALTER PROC(FUNC) : ����� ������ ���ÿ�

 CREATE PROC usp_users3
	@lastName NVARCHAR(2),
	@OutCount INT OUTPUT--Return�� ����
AS

	 SELECT COUNT(*) FROM userTbl
	 WHERE name LIKE @lastName + '%'
GO


 SELECT COUNT(*) FROM userTbl 
 WHERE name LIKE '��'+'%'
DECLARE @myValue INT;
EXEC usp_users3 '��', @myValue OUTPUT;
PRINT CONCAT('�达 ���� ���� ����� ���� ',@myValue);
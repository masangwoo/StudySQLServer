CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE())-@bYear
	RETURN(@age)
END

GO

CREATE OR ALTER FUNCTION ufn_getINCH(@height INT)
RETURNS INT
AS
BEGIN
	DECLARE @height1 INT
	SET @height1 = @height*0.39
	RETURN(@height1)
END

GO

SELECT userID, name
, dbo.ufn_getzodiac(birthYear) AS '��'
, birthYear, dbo.ufn_getAge(birthYear) AS '����'
,addr,height, dbo.ufn_getINCH(height) AS 'Ű(��ġ)'
FROM userTbl;
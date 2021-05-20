CREATE OR ALTER FUNCTION ufn_getUsers(@height INT)
	RETURNS TABLE
AS
	RETURN
	(
		SELECT * FROM userTBL
		WHERE height>@height
	)
GO

SELECT * FROM dbo.ufn_getUsers(180)

CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE  @bYear INT
	DECLARE @zodiac NVARCHAR(3)--¶ìÀÌ¸§ º¯¼ö
	SELECT birthYear FROM userTbl
	WHERE name = @userName;

	SET @zodiac = 
		CASE
			WHEN(@bYear%12=0) THEN '¿ø¼þÀÌ¶ì'
			WHEN(@bYear%12=1) THEN '´ß¶ì'
			WHEN(@bYear%12=2) THEN '°³¶ì'
			WHEN(@bYear%12=3) THEN 'µÅÁö¶ì'
			WHEN(@bYear%12=4) THEN 'Áã¶ì'
			WHEN(@bYear%12=5) THEN '¼Ò¶ì'
			WHEN(@bYear%12=6) THEN 'È£¶ûÀÌ¶ì'
			WHEN(@bYear%12=7) THEN 'Åä³¢¶ì'
			WHEN(@bYear%12=8) THEN '¿ë¶ì'
			WHEN(@bYear%12=9) THEN '¹ì¶ì'
			WHEN(@bYear%12=10) THEN '¸»¶ì'
			ELSE '¾ç¶ì'
		END;

				PRINT CONCAT(@userName, '(',@bYear,')', 'ÀÇ ¶ì´Â', @zodiac, 'ÀÔ´Ï´Ù.');
GO

				EXEC usp_zodiac '¼º½Ã°æ';

				SELECT * FROM userTbl

				EXEC sp_databases;
				EXEC sp_tables 'userTBL', 'dbo'
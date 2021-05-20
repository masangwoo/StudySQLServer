CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
RETURNS NVARCHAR(10)
AS
BEGIN
	DECLARE @result NVARCHAR

	SET @result = 
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
		RETURN(@result);
END

GO
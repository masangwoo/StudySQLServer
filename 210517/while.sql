--1부터 100까지의 수를 반복하면서 7의 배수는 합산하지 않고 나머지만 합산하라
DECLARE @i INT, @hap BIGINT

SET @i = 0
SET @hap = 0

WHILE(@i<=100)
BEGIN
	IF(@i % 7 =0)
		BEGIN
			PRINT CONCAT('7의 배수 : ',@i)
			SET @i = @i+1
			CONTINUE --빠져나감
		END

	SET @hap = @hap+@i
	IF(@hap>1000)	break
	SET @i=@i+1; --@i++와 같은 구문
END

PRINT CONCAT('1~100까지의 합은 ', @hap)
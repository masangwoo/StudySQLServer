--SQL Programming
DECLARE @var1 INT --��������
SET @var1 = 69  

IF (@var1 < 170)
BEGIN
PRINT '���ذ��� �۽��ϴ�'
END

ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1;
END
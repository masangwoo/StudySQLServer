--������ �ݾ� ���� �ֿ��/���/�Ϲݰ����� �з��ϴ� ������ �ۼ��϶�
WITH cte_custlevel([����ھ��̵�], [ȸ����], [�ѱ��űݾ�],[�����])
AS
(SELECT u.userID AS [����� ���̵�]
	 , u.name AS [ȸ����]
	,
		SUM(b.price*b.amount) AS '�ѱ��űݾ�'
	
	,CASE
		WHEN(SUM(b.price*b.amount)>=1500) THEN '�ֿ����'
		WHEN(SUM(b.price*b.amount)>=1000) THEN '�����'
		WHEN(SUM(b.price*b.amount)>=1) THEN '�Ϲݰ�'
		ELSE '���ɰ�'
	END AS '�����'
	FROM userTbl AS u
	LEFT OUTER JOIN buyTbl AS b
	ON u.userID=b.userID
	GROUP BY u.userID, u.name
	)

	--#,# or C4 : ȭ��
	SELECT [����ھ��̵�], [ȸ����]
		, FORMAT([�ѱ��űݾ�], 'C4') AS '�ѱ��űݾ�'
		,[�����]
	FROM cte_custlevel
	ORDER BY [�ѱ��űݾ�] DESC;
--GROUP BY ROLUP
WITH cte_summary(GRP, SUMM, DIV)
AS
(
	SELECT groupName AS GRP
		  ,SUM(price*amount) AS SUMM
		  ,GROUPING_ID(groupName) AS DIV
	From buyTbl
	GROUP BY ROLLUP (groupName)
)

	--SELECT * FROM cte_summary;
/*	SELECT grp AS [��ǰ�׷�]
		  ,summ AS [�׷캰 ���űݾ�]
		  ,div
	FROM cte_summary;*/

	SELECT

		IIF(idv=0, grp, '���հ�') AS[��ǰ�׷�2]
		,CASE div
		 WHEN 0 THEN grp
		 WHEN 1 THEN '���հ�'END AS [��ǰ�׷�]
		,summ AS [�׷캰 ���űݾ�]
		,div
		FROM cte_summary;
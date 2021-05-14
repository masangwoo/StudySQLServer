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
/*	SELECT grp AS [상품그룹]
		  ,summ AS [그룹별 구매금액]
		  ,div
	FROM cte_summary;*/

	SELECT

		IIF(idv=0, grp, '총합계') AS[상품그룹2]
		,CASE div
		 WHEN 0 THEN grp
		 WHEN 1 THEN '총합계'END AS [상품그룹]
		,summ AS [그룹별 구매금액]
		,div
		FROM cte_summary;
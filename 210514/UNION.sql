--테이블 합치기
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

--데이터 타입이 일치해야 UNION 가능
SELECT CAST(ID AS varchar), StdID FROM reginfoTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

--UNION은 중복 가능
SELECT StdName, Region FROM stdTbl
UNION ALL
SELECT StdName,Region FROM stdTbl;

--except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL; 

--뒤의 테이블 기준 만족하는 데이터만 추려내는 것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL; 
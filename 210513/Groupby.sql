--GROUP BY 
--groupby에 들어간 필드명은 select에 반드시 들어가야한다
--아이디별로 물건 얼마치 샀는지 조회
SELECT userID, SUM (amount ) AS '총 구매 개수'
FROM buyTbl
GROUP BY userID;


--우리 쇼핑몰에서 가장 돈 많이 쓴 사람을 ID별로 조회하고
--그 금액을 같이 출력하라
SELECT userID, SUM (amount*price ) AS'총 구매 금액'
FROM buyTbl
group by userID
ORDER BY SUM(amount*price) DESC;

SELECT SUM (amount*price ) AS'총 구매 금액'
FROM buyTbl;

--평균구매금액
SELECT AVG(price) AS [평균구매금액] FROM buyTbl;

--사용자테이블에서 키가 가장 큰 사람과 가장 작은 사람 조회
SELECT  * FROM userTbl
ORDER BY height DESC;

SELECT  * FROM userTbl
WHERE height=166 OR height=186;

SELECT  * FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   or height = (SELECT MIN(height) FROM userTbl);

   SELECT  name, height FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   or height = (SELECT MIN(height) FROM userTbl);

SELECT  name as '이름', height as '키' FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   or height = (SELECT MIN(height) FROM userTbl);

--GROUP BY/HAVING
SELECT userID as '사용자아이디'
     , SUM(price * amount) AS[총 구매금액]
  FROM buyTbl
 -- WHERE SUM(price * amount) >=1000 // 절대 불가
  GROUP BY userID
  HAVING SUM(price*amount)>=1000
  ORDER BY SUM(price*amount);


  SELECT userID
		, groupName
        , SUM(price * amount) AS[총 구매금액]
  FROM buyTbl
  GROUP BY userID, groupName

  --xhdrP
  --제품 그룹별로 사용자가 얼만큼 구매햇는지
  SELECT groupName
	     , userID
         , SUM(price * amount) AS[총 구매금액]
  FROM buyTbl
  GROUP BY userID, groupName;

 SELECT groupName
      , userID
      , SUM(price * amount) AS[총 구매금액]
  FROM buyTbl
  GROUP BY RollUP(userID, groupName);

 SELECT groupName
      , userID
      , SUM(price * amount) AS[총 구매금액]
  FROM buyTbl
  GROUP BY Cube (groupName,userID);

   SELECT groupName
      , SUM(price * amount) AS[총 구매금액]
	  , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
  GROUP BY RollUP(groupName);
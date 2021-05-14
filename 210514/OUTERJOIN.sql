--외부조인
--우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원 조회
SELECT u.userID, u.name
	 , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 ,b.prodName
FROM userTbl AS u
LEFT OUTER JOIN buyTbl AS b
	ON u.userID=b.userID
	WHERE b.prodName IS NULL
	ORDER BY u.userID;

SELECT u.userID, u.name
	 , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 ,b.prodName
FROM userTbl AS u
RIght OUTER JOIN buyTbl AS b
	ON u.userID=b.userID
	WHERE b.prodName IS NULL
	ORDER BY u.userID;

	--동아리 / 학생 / 가입정보 테이블
	--OUTER JOIN
SELECT s.StdID, s.StdName, s.Region
      ,c.ClubName, c.ClubRoom
	  ,r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID=r.StdID
  LEFT OUTER JOIN clubTbl AS c
     ON c.ClubName = r.ClubName


SELECT s.StdID, s.StdName, s.Region
      ,c.ClubName, c.ClubRoom
	  ,r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID=r.StdID
  RIGHT OUTER JOIN clubTbl AS c
     ON c.ClubName = r.ClubName
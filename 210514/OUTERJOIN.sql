--�ܺ�����
--�츮 ���θ����� ������ �ѹ��� �������� ���� ȸ�� ��ȸ
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

	--���Ƹ� / �л� / �������� ���̺�
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
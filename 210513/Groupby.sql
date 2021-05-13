--GROUP BY 
--groupby�� �� �ʵ���� select�� �ݵ�� �����Ѵ�
--���̵𺰷� ���� ��ġ ����� ��ȸ
SELECT userID, SUM (amount ) AS '�� ���� ����'
FROM buyTbl
GROUP BY userID;


--�츮 ���θ����� ���� �� ���� �� ����� ID���� ��ȸ�ϰ�
--�� �ݾ��� ���� ����϶�
SELECT userID, SUM (amount*price ) AS'�� ���� �ݾ�'
FROM buyTbl
group by userID
ORDER BY SUM(amount*price) DESC;

SELECT SUM (amount*price ) AS'�� ���� �ݾ�'
FROM buyTbl;

--��ձ��űݾ�
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

--��������̺��� Ű�� ���� ū ����� ���� ���� ��� ��ȸ
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

SELECT  name as '�̸�', height as 'Ű' FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   or height = (SELECT MIN(height) FROM userTbl);

--GROUP BY/HAVING
SELECT userID as '����ھ��̵�'
     , SUM(price * amount) AS[�� ���űݾ�]
  FROM buyTbl
 -- WHERE SUM(price * amount) >=1000 // ���� �Ұ�
  GROUP BY userID
  HAVING SUM(price*amount)>=1000
  ORDER BY SUM(price*amount);


  SELECT userID
		, groupName
        , SUM(price * amount) AS[�� ���űݾ�]
  FROM buyTbl
  GROUP BY userID, groupName

  --xhdrP
  --��ǰ �׷캰�� ����ڰ� ��ŭ �����޴���
  SELECT groupName
	     , userID
         , SUM(price * amount) AS[�� ���űݾ�]
  FROM buyTbl
  GROUP BY userID, groupName;

 SELECT groupName
      , userID
      , SUM(price * amount) AS[�� ���űݾ�]
  FROM buyTbl
  GROUP BY RollUP(userID, groupName);

 SELECT groupName
      , userID
      , SUM(price * amount) AS[�� ���űݾ�]
  FROM buyTbl
  GROUP BY Cube (groupName,userID);

   SELECT groupName
      , SUM(price * amount) AS[�� ���űݾ�]
	  , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
  GROUP BY RollUP(groupName);
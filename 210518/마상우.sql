--1������
SELECT LOWER(m.Email) AS email, m.Mobile as 'mobile', m.Names as'names', m.Addr as 'addr'
FROM membertbl AS m
ORDER BY m.Names DESC

--2������
SELECT b.Names AS 'names', b.Author AS 'author', b.ReleaseDate AS 'releaseDate', b.Price AS 'price'
FROM bookstbl AS b

--3������
SELECT b.Idx
	 , CONCAT('���� : ', b.Names) as 'Names'
     , CONCAT('����>', b.Author) as 'Author'
	 , FORMAT([ReleaseDate], 'yyyy�� MM�� dd��') AS '������'
	 , b.ISBN
	 , FORMAT([Price], '#,# ��') AS '����'
FROM bookstbl AS b
ORDER BY b.idx DESC

--4������
SELECT m.Names, m.Levels, m.Addr 
     , r.rentalDate
FROM membertbl AS m
	LEFT OUTER JOIN rentaltbl AS r
	ON m.Idx=r.memberIdx
	WHERE rentalDate IS NULL

--5������

SELECT d.Names AS names, FORMAT(sum(b.Price), '#,# ��') AS '���հ�ݾ�'
FROM divtbl AS d 
LEFT OUTER JOIN bookstbl AS b
ON b.Division=d.Division
GROUP BY ROLLUP (d.Names)
HAVING SUM(b.Price)>0




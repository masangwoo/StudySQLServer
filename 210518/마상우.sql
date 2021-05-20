--1번문제
SELECT LOWER(m.Email) AS email, m.Mobile as 'mobile', m.Names as'names', m.Addr as 'addr'
FROM membertbl AS m
ORDER BY m.Names DESC

--2번문제
SELECT b.Names AS 'names', b.Author AS 'author', b.ReleaseDate AS 'releaseDate', b.Price AS 'price'
FROM bookstbl AS b

--3번문제
SELECT b.Idx
	 , CONCAT('제목 : ', b.Names) as 'Names'
     , CONCAT('저자>', b.Author) as 'Author'
	 , FORMAT([ReleaseDate], 'yyyy년 MM월 dd일') AS '출판일'
	 , b.ISBN
	 , FORMAT([Price], '#,# 원') AS '가격'
FROM bookstbl AS b
ORDER BY b.idx DESC

--4번문제
SELECT m.Names, m.Levels, m.Addr 
     , r.rentalDate
FROM membertbl AS m
	LEFT OUTER JOIN rentaltbl AS r
	ON m.Idx=r.memberIdx
	WHERE rentalDate IS NULL

--5번문제

SELECT d.Names AS names, FORMAT(sum(b.Price), '#,# 원') AS '총합계금액'
FROM divtbl AS d 
LEFT OUTER JOIN bookstbl AS b
ON b.Division=d.Division
GROUP BY ROLLUP (d.Names)
HAVING SUM(b.Price)>0




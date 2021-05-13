--데이터 조회
select * from userTbl;

--데이터 조회 필터링
select * from userTbl
where userID = 'BBK';

SELECT * FROM userTbl
WHERE name = '조용필';

SELECT * FROM userTbl
WHERE name like '김%';

SELECT * FROM userTbl
WHERE name like '%용%';

select count(userID) from userTbl;

SELECT * FROM userTbl
WHERE height>180 and birthYear>1970;
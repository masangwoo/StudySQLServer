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

--출생년도 순으로 정렬(오름차순)
SELECT * FROM userTbl
ORDER BY birthYear asc;

--SELECT INTO
--userTbl_NEW 테이블이 생성(PK정보는 미생성)->백업용
SELECT * INTO userTbl_new from userTbl;

SELECT * FROM userTbl_new;

SELECT userID, name, addr INTO userTbl_backup from userTbl;

SELECT userID, name, addr INTO userTbl_backup2 from userTbl
WHERE addr='서울';

SELECT * FROM userTbl_backup;

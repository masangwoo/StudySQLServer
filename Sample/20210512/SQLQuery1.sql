use sqlDB;
go

select * from userTbl
where userID = 'KKH';

--사용자 테이블에서 출생년도가 1970~1980, 키가 180이상인 사람을 조회
select * from userTbl
where birthYear > 1970 and birthYear<1980 
and height>180;

--사용자 테이블에서 출생년도가 1970이후이거나, 키가 182이상인 사람을 조회
select * from userTbl
where birthYear > 1970 or height>182;

select * from userTbl
where birthYear between 1970 and 1980
and height>=180;

--사용자 중 경남, 전남, 경북인 사람
select  name, userID, addr from userTbl
where addr='경남' or addr='전남' or addr='경북 ';

select  name, userID, addr from userTbl
where addr in ('경남' , '전남' , '경북 ');

--Like절 : 문자열에서 속하는 문자열이 있는(contain)
select name, height, addr from userTbl
where name like '김%';

select name, height, addr from userTbl
where name like '_비킴';--언더바 갯수가 맞아야 함

select name, height, addr from userTbl
where name like '%용%';

--SubQuery
select * from userTbl
where height>=175;

--김경호보다 키가 큰 사람들을 조회하고싶다
select * from userTbl
where height > (select height from userTbl where name='김경호');

--경남에 사는 사람들보다 키가 큰 사람들 조회
select * from userTbl
where height > any (select height from userTbl where addr='경남');

-- [(=any)==in] : 서브쿼리에서 나온 결과와 일치하는 결과만 조회
select * from userTbl
where height in (select height from userTbl where addr='경남');

--orderby
select * from userTbl
order by userID desc;

--키로 정렬후, 같은 키가 있으면 이름으로 오름차순
select * from userTbl
order by height desc, name asc;

--userTbl에 몇개의 데이터(레코드)가 있는지 확인
select count(*) from userTbl;
select count(*) from buyTbl;

--Distinct(중복제거)
select distinct addr from userTbl;

--TOP
use AdventureWorksLT2019;
go

select top 10 * from SalesLT.Customer;

select top (1) percent * 
from SalesLT.Customer
where title = 'Ms.'
order by customerID desc;

--10% 샘플링 결과 조회(쓸일없음)
select *from SalesLT.Customer
tablesample (5 percent);

--
select * from SalesLT.Customer
order by FirstName
offset 5 row--5개 건너뛰기
fetch next 3 rows only;--프로시저나 함수 등에서 쓰임->건너뛰고 3개만 출력
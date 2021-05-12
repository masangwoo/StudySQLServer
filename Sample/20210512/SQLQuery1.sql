use sqlDB;
go

select * from userTbl
where userID = 'KKH';

--사용자 테이블에서 출생년도가 1970~1980, 키가 180이상인 사람을 조회
select * from userTbl
where birthYear > 1970 and birthYear<1980 
and height>180;
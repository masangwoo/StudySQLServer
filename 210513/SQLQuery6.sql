insert into testTbl values('홍길동','서울');
insert into testtbl (userName, addr) values('설현','서울');
insert into testtbl (userName) values('아이유');
insert into testtbl (addr, userName) values('세종','김형욱');

SELECT * FROM testTBL;

delete from testtbl;

INSERT INTO userTbl(userID,name,birthYear,addr)
VALUES('IU', '아이유', 1993,'서울');

SELECT * FROM userTbl WHERE userID='IU';

INSERT INTO userTbl (userID,name,birthYear,addr,height)
VALUES('JJH', '주지훈', 1982, '신안', 187);

SELECT * FROM userTbl;
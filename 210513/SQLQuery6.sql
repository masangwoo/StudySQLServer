insert into testTbl values('ȫ�浿','����');
insert into testtbl (userName, addr) values('����','����');
insert into testtbl (userName) values('������');
insert into testtbl (addr, userName) values('����','������');

SELECT * FROM testTBL;

delete from testtbl;

INSERT INTO userTbl(userID,name,birthYear,addr)
VALUES('IU', '������', 1993,'����');

SELECT * FROM userTbl WHERE userID='IU';

INSERT INTO userTbl (userID,name,birthYear,addr,height)
VALUES('JJH', '������', 1982, '�ž�', 187);

SELECT * FROM userTbl;
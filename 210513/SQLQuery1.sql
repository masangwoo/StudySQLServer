--������ ��ȸ
select * from userTbl;

--������ ��ȸ ���͸�
select * from userTbl
where userID = 'BBK';

SELECT * FROM userTbl
WHERE name = '������';

SELECT * FROM userTbl
WHERE name like '��%';

SELECT * FROM userTbl
WHERE name like '%��%';

select count(userID) from userTbl;

SELECT * FROM userTbl
WHERE height>180 and birthYear>1970;
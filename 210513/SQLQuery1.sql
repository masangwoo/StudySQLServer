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

--����⵵ ������ ����(��������)
SELECT * FROM userTbl
ORDER BY birthYear asc;

--SELECT INTO
--userTbl_NEW ���̺��� ����(PK������ �̻���)->�����
SELECT * INTO userTbl_new from userTbl;

SELECT * FROM userTbl_new;

SELECT userID, name, addr INTO userTbl_backup from userTbl;

SELECT userID, name, addr INTO userTbl_backup2 from userTbl
WHERE addr='����';

SELECT * FROM userTbl_backup;

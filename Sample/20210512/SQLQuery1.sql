use sqlDB;
go

select * from userTbl
where userID = 'KKH';

--����� ���̺��� ����⵵�� 1970~1980, Ű�� 180�̻��� ����� ��ȸ
select * from userTbl
where birthYear > 1970 and birthYear<1980 
and height>180;
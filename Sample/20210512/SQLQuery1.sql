use sqlDB;
go

select * from userTbl
where userID = 'KKH';

--����� ���̺��� ����⵵�� 1970~1980, Ű�� 180�̻��� ����� ��ȸ
select * from userTbl
where birthYear > 1970 and birthYear<1980 
and height>180;

--����� ���̺��� ����⵵�� 1970�����̰ų�, Ű�� 182�̻��� ����� ��ȸ
select * from userTbl
where birthYear > 1970 or height>182;

select * from userTbl
where birthYear between 1970 and 1980
and height>=180;

--����� �� �泲, ����, ����� ���
select  name, userID, addr from userTbl
where addr='�泲' or addr='����' or addr='��� ';

select  name, userID, addr from userTbl
where addr in ('�泲' , '����' , '��� ');

--Like�� : ���ڿ����� ���ϴ� ���ڿ��� �ִ�(contain)
select name, height, addr from userTbl
where name like '��%';

select name, height, addr from userTbl
where name like '_��Ŵ';--����� ������ �¾ƾ� ��

select name, height, addr from userTbl
where name like '%��%';

--SubQuery
select * from userTbl
where height>=175;

--���ȣ���� Ű�� ū ������� ��ȸ�ϰ�ʹ�
select * from userTbl
where height > (select height from userTbl where name='���ȣ');

--�泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
select * from userTbl
where height > any (select height from userTbl where addr='�泲');

-- [(=any)==in] : ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
select * from userTbl
where height in (select height from userTbl where addr='�泲');

--orderby
select * from userTbl
order by userID desc;

--Ű�� ������, ���� Ű�� ������ �̸����� ��������
select * from userTbl
order by height desc, name asc;

--userTbl�� ��� ������(���ڵ�)�� �ִ��� Ȯ��
select count(*) from userTbl;
select count(*) from buyTbl;

--Distinct(�ߺ�����)
select distinct addr from userTbl;

--TOP
use AdventureWorksLT2019;
go

select top 10 * from SalesLT.Customer;

select top (1) percent * 
from SalesLT.Customer
where title = 'Ms.'
order by customerID desc;

--10% ���ø� ��� ��ȸ(���Ͼ���)
select *from SalesLT.Customer
tablesample (5 percent);

--
select * from SalesLT.Customer
order by FirstName
offset 5 row--5�� �ǳʶٱ�
fetch next 3 rows only;--���ν����� �Լ� ��� ����->�ǳʶٰ� 3���� ���
USE tempdb;
GO
CREATE DATABASE sqlDB;
GO

USE sqlDB;
CREATE TABLE userTbl -- ȸ�� ���̺�
(	userID CHAR(8) NOT NULL PRIMARY KEY, -- ����ھ��̵�
	name NVARCHAR(10) NOT NULL, -- �̸�
	birthYear INT NOT NULL, -- ����⵵
	addr NCHAR(2) NOT NULL, -- ����(���,����,�泲 ������ 2���ڸ��Է�)
	mobile1 CHAR(3), -- �޴����� ����(011, 016, 017, 018, 019, 010 ��)
	mobile2 CHAR(8), -- �޴����� ������ ��ȭ��ȣ(����������)
	height SMALLINT, -- Ű
	mDate DATE -- ȸ�� ������
);
GO
CREATE TABLE buyTbl -- ȸ�� ���� ���̺�
( num INT IDENTITY NOT NULL PRIMARY KEY, -- ����(PK)
userID CHAR(8) NOT NULL --���̵�(FK)
FOREIGN KEY REFERENCES userTbl(userID),
prodName NCHAR(6) NOT NULL, -- ��ǰ��
groupName NCHAR(4) , -- �з�
price INT NOT NULL, -- �ܰ�
amount SMALLINT NOT NULL -- ����
);
GO

INSERT INTO userTbl VALUES('LSG', '�̽±�', 1987, '����', '011', '1111111', 182, '2008-8-8');
INSERT INTO userTbl VALUES('KBS', '�����', 1979, '�泲', '011', '2222222', 173, '2012-4-4');
INSERT INTO userTbl VALUES('KKH', '���ȣ', 1971, '����', '019', '3333333', 177, '2007-7-7');
INSERT INTO userTbl VALUES('JYP', '������', 1950, '���', '011', '4444444', 166, '2009-4-4');
INSERT INTO userTbl VALUES('SSK', '���ð�', 1979, '����', NULL , NULL , 186, '2013-12-12');
INSERT INTO userTbl VALUES('LJB', '�����', 1963, '����', '016', '6666666', 182, '2009-9-9');
INSERT INTO userTbl VALUES('YJS', '������', 1969, '�泲', NULL , NULL , 170, '2005-5-5');
INSERT INTO userTbl VALUES('EJW', '������', 1972, '���', '011', '8888888', 174, '2014-3-3');
INSERT INTO userTbl VALUES('JKW', '������', 1965, '���', '018', '9999999', 172, '2010-10-10');
INSERT INTO userTbl VALUES('BBK', '�ٺ�Ŵ', 1973, '����', '010', '0000000', 176, '2013-5-5');
GO
INSERT INTO buyTbl VALUES('KBS', '�ȭ', NULL , 30, 2);
INSERT INTO buyTbl VALUES('KBS', '��Ʈ��', '����', 1000, 1);
INSERT INTO buyTbl VALUES('JYP', '�����', '����', 200, 1);
INSERT INTO buyTbl VALUES('BBK', '�����', '����', 200, 5);
INSERT INTO buyTbl VALUES('KBS', 'û����', '�Ƿ�', 50, 3);
INSERT INTO buyTbl VALUES('BBK', '�޸�', '����', 80, 10);
INSERT INTO buyTbl VALUES('SSK', 'å' , '����', 15, 5);
INSERT INTO buyTbl VALUES('EJW', 'å' , '����', 15, 2);
INSERT INTO buyTbl VALUES('EJW', 'û����', '�Ƿ�', 50, 1);
INSERT INTO buyTbl VALUES('BBK', '�ȭ', NULL , 30, 2);
INSERT INTO buyTbl VALUES('EJW', 'å' , '����', 15, 1);
INSERT INTO buyTbl VALUES('BBK', '�ȭ', NULL , 30, 2);
GO

SELECT * FROM userTbl;
SELECT * FROM buyTbl;

USE tempdb;
BACKUP DATABASE sqlDB TO DISK = 'C:\SQL\sqlDB2016.bak' WITH INIT ;
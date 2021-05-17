USE sampleDB
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
)

--DDLl buyTBL���̺� ����
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL FOREIGN KEY REFERENCES userTBL(userId), --�ܷ�Ű, relational!
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
GO

--DDL �Ѱ� �̻� �÷� PK�� ���� ���̺� ����


--userTBL�� email(����ũ ��������) �߰�
--buyTBL ������ �� ����, userTBL ������ �� ����
--userTBL(email)
ALTER TABLE userTBL
ADD email VARCHAR(50) NOT NULL UNIQUE

--CHEKC
ALTER TABLE userTBL
ADD CONSTRAINT CK_birthYear
CHECK(birthYear>=1900 AND birthYear<=YEAR(GETDATE()));
--2021����\

SELECT * FROM sampledb.dbo.userTBL;
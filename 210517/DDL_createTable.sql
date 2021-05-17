USE sampleDB
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
)

--DDLl buyTBL테이블 생성
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL FOREIGN KEY REFERENCES userTBL(userId), --외래키, relational!
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
GO

--DDL 한개 이상 컬럼 PK로 지정 테이블 생성


--userTBL에 email(유니크 제약조건) 추가
--buyTBL 데이터 다 삭제, userTBL 데이터 다 삭제
--userTBL(email)
ALTER TABLE userTBL
ADD email VARCHAR(50) NOT NULL UNIQUE

--CHEKC
ALTER TABLE userTBL
ADD CONSTRAINT CK_birthYear
CHECK(birthYear>=1900 AND birthYear<=YEAR(GETDATE()));
--2021까지\

SELECT * FROM sampledb.dbo.userTBL;
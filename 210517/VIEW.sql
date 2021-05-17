--VIEW
USE sampleDB;
Go

CREATE VIEW v_userTBL
AS 
	SELECT userID, name, addr FROM userTBL;
GO

CREATE VIEW v_userbuyINFO
AS

	SELECT u.userID,u.name, b.prodName, b.price 
	FROM userTbl as u
	INNER JOIN buyTBL as b
	ON u.userID = b.userID;
GO

SELECT * FROM v_userbuyINFO
ORDER BY price DESC;

DROP VIEW v_userTBL

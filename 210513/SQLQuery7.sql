--UPDATE
--WHERE절을 빼먹지말자
--트랜잭션 시작
BEGIN TRAN;--TRANSACTION

UPDATE testTBL
   SET userName='성명건'
 WHERE Id=37;

 UPDATE testTBL
   SET userName='성명건'
	   ,addr='부산'
 WHERE Id=47;

SELECT * FROM testtbl;

COMMIT;
ROLLBACK;
--데이터를 전부 삭제하고 1부터 다시 시작
--
TRUNCATE TABLE testtbl;
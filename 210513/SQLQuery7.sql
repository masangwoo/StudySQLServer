--UPDATE
--WHERE���� ����������
--Ʈ����� ����
BEGIN TRAN;--TRANSACTION

UPDATE testTBL
   SET userName='�����'
 WHERE Id=37;

 UPDATE testTBL
   SET userName='�����'
	   ,addr='�λ�'
 WHERE Id=47;

SELECT * FROM testtbl;

COMMIT;
ROLLBACK;
--�����͸� ���� �����ϰ� 1���� �ٽ� ����
--
TRUNCATE TABLE testtbl;
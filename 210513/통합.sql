--����
BEGIN TRAN;

--
SELECT * FROM testtbl;

--������ �Է�
INSERT INTO testtbl VALUES('�ֿ��','ĳ����');

--������ ����
UPDATE testtbl
   SET userName = '������'
     , addr = '����'
	 WHERE Id = 48;

	 --������ ����
	 DELETE FROM testtbl WHERE userName = '�����';

	 SELECT * FROM testtbl;

COMMIT;
ROLLBACK;
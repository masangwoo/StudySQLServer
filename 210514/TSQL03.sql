--���ڿ��Լ�
SELECT ASCII('z'), CHAR(47);--���� ��
SELECT UNICODE('z'), NCHAR(44032);


--���ڿ� ����
SELECT CONCAT('SQL', 'SERVER',2019) AS [name];--���� ��
SELECT 'SQL' +'server'+CAST(2019 AS varCHAR);

--�ܾ������ġ
SELECT CHARINDEX ('world','Hello world!');
--C#, java, python ���ڿ� 0���� ����
--DB 1���� ����

--LEFT,RIGHT,SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR,4);

SELECT SUBSTRING('���ѹα�����!',5,2);

SELECT LEN('Hello World');

--������ �ҹ���/�빮��
SELECT LOWER('hELLO World!') , UPPER('hELLO World!');
--CD1001, CD2005, cd2005
SELECT UPPER('cd2005');

--������ֱ�
SELECT '           SQL', LTRIM('           SQL');--��
SELECT '        SQL           ', RTRIM('         SQL           ');--��
SELECT '        SQL           ', TRIM('         SQL           ');--��

--Replace ���� �ֻ�
SELECT REPLACE('SQL server 2019', 'server', '����');

--STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(),'yyyy-MM-dd hh:mm:ss');--�ѱ���
SELECT FORMAT(GETDATE(),'dd/MM/yyyy hh:mm:ss');--�̱���
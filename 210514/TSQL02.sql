--�ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4,3)) FROM buyTbl;

SELECT AVG(CONVERT (float, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);--���� �߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT);--����ȯ ���ϸ� NULL�� ��ü ������ ����

--HEIGHT SMALLINT -->VARCHAR, CHAR ����ȯ
SELECT name, CAST(height AS varchar) +' cm' FROM userTbl
WHERE height is NOT NULL;--NULL���� = �� ��X//is(����)//is not(�����ʴ�)

SELECT PARSE ('2021�� 5�� 14�� 10�� 27��' AS datetime);
SELECT PARSE ('2021-5-14 10:27' AS datetime);
--YYYY-MM-DD HH:min:s

SELECT GETDATE();--INSERT ���� �����Ͻú��� ���� ���� ���

SELECT @@SERVERNAME;

--��¥ �� �ð��Լ�
SELECT YEAR(GETDATE()) AS'���� ����';
SELECT MONTH(GETDATE()) AS'���� ��';
SELECT DAY(GETDATE()) AS'���� ��';

--��ġ�Լ�
SELECT ABS(-100);--���밪
SELECT ROUND(3.141592,2);--�ݿø�
SELECT FLOOR(RAND()*100);--����+����
SELECT RAND();

--���Լ�
SELECT IIF(100>200,'��','����');--�߿�
--DB��ȸ
exec sp_helpdb;

--���̺� ���� ��ȸ
exec sp_tables @table_type="'table'";

--�÷� ��ȸ
exec sp_columns @table_name='buyTb1', @table_owner = 'dbo';



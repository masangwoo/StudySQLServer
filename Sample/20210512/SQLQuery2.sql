--DB조회
exec sp_helpdb;

--테이블 정보 조회
exec sp_tables @table_type="'table'";

--컬럼 조회
exec sp_columns @table_name='buyTb1', @table_owner = 'dbo';



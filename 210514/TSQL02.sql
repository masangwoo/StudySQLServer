--시스템함수(SQL서버가 기본으로 제공해주는 함수들)
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(4,3)) FROM buyTbl;

SELECT AVG(CONVERT (float, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);--예외 발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT);--값변환 못하면 NULL값 대체 정상적 수행

--HEIGHT SMALLINT -->VARCHAR, CHAR 형변환
SELECT name, CAST(height AS varchar) +' cm' FROM userTbl
WHERE height is NOT NULL;--NULL값은 = 로 비교X//is(같다)//is not(같지않다)

SELECT PARSE ('2021년 5월 14일 10시 27분' AS datetime);
SELECT PARSE ('2021-5-14 10:27' AS datetime);
--YYYY-MM-DD HH:min:s

SELECT GETDATE();--INSERT 현재 연월일시분초 제일 많이 사용

SELECT @@SERVERNAME;

--날짜 및 시간함수
SELECT YEAR(GETDATE()) AS'현재 연도';
SELECT MONTH(GETDATE()) AS'현재 월';
SELECT DAY(GETDATE()) AS'현재 일';

--수치함수
SELECT ABS(-100);--절대값
SELECT ROUND(3.141592,2);--반올림
SELECT FLOOR(RAND()*100);--램덤+내림
SELECT RAND();

--논리함수
SELECT IIF(100>200,'참','거짓');--중요
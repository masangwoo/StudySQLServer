--통합
BEGIN TRAN;

--
SELECT * FROM testtbl;

--데이터 입력
INSERT INTO testtbl VALUES('최우식','캐나다');

--데이터 수정
UPDATE testtbl
   SET userName = '이지은'
     , addr = '서울'
	 WHERE Id = 48;

	 --데이터 삭제
	 DELETE FROM testtbl WHERE userName = '성명건';

	 SELECT * FROM testtbl;

COMMIT;
ROLLBACK;
-- ASC : 오름차순
-- DESC : 내림차순
-- 나이 순으로 10개만 출력
SELECT * FROM users ORDER BY age DESC LIMIT 10 ; 

-- 나이순 성 순으로 10개만
-- 먼저 준 순서(나이)부터 전체 테이블을 정렬한다.
-- 그리고 성순서대로 정렬해서 뱉는다. 
SELECT * FROM users ORDER BY age,last_name ASC LIMIT 10;

-- 성순 나이순으로 10개만 
SELECT * FROM users ORDER BY last_name,age ASC LIMIT 10;

SELECT last_name,first_name FROM users ORDER BY balance DESC LIMIT 10;
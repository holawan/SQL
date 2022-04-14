-- SQLite
-- 전체 데이터 수 조회
SELECT COUNT(*) FROM users_user;

-- 나이가 30인 사람의 이름
SELECT first_name FROM users_user WHERE age=30 ;

--나이가 30이상인 사람의 수
SELECT COUNT(*) FROM users_user WHERE age>=30 ;

--나이가 20이하인 사람의 수

SELECT COUNT(*) FROM users_user WHERE age<=20;

--나이가 30이면서 성이 김씨인 사람의 인원수

select COUNT(*) FROM users_user WHERE age=30 AND last_name='김';

--나이가 3-이거나 성이 김씨인 사람
select * FROM users_user WHERE age=30 OR last_name='김';
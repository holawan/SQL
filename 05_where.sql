CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT  NOT NULL,
  age INTEGER  NOT NULL,
  country TEXT  NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER  NOT NULL
);

-- 30세 이상 모두 조회하기
SELECT * FROM users WHERE age >= 30;

-- 30세 이상의 사람들 이름을 조회하기
SELECT first_name FROM users WHERE age>=30;


-- 30세 이상 김씨 조회하기
SELECT age, first_name FROM users 
WHERE age>=30 AND last_name = '김' ; 

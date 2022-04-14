--유저의 평균 나이
SELECT AVG(age) FROM users_user;

-- 유저 중 김씨의 평균 나이 
SELECT AVG(age) FROM users_user WHERE last_name='김';

--강원도에 사는 사람의 평균 계좌 잔고
SELECT AVG(balance) FROM users_user WHERE country ='강원도';

--계좌 잔액 중 가장 높은 값
SELECT MAX(balance) FROM users_user ;

--계좌 잔액 총액 
SELECT SUM(balance) FROM users_user;
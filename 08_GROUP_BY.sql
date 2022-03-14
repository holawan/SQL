-- 성별로 몇명 있는지 세기
SELECT last_name,first_name, COUNT(*) FROM users 
GROUP BY last_name;

-- 칼럼 이름을 명확하게 바꿔주기
SELECT last_name, COUNT(*) AS name_count FROM users
GROUP BY last_name;


-- 20대만 검색
SELECT * FROM users WHERE age LIKE '2_';


-- 02로 시작하는 번호 찾기
-- but 023 이런 지역번호가 있을 수 있기 때문에,
-- '02-'로 시작하는 지역번호를 찾아야 합리적!
SELECT * FROM users WHERE phone LIKE '02-%';

-- 이름이 준으로 끝나는 사람
SELECT * FROM users WHERE first_name LIKE '%준';

-- 전화번호 가운데가 5114인사람 
SELECT * FROM users WHERE phone LIKE '%-5114-%';
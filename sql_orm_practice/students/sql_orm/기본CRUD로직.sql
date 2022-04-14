-- SQLite
-- 모든 user 레코드 조회
SELECT * FROM users_user;

-- user 레코드 생성

INSERT INTO users_user (first_name, last_name, age, country, phone,balance) VALUES ('동완','김',26,'대전','010-4650-9260',10);

-- 필수인자 빼고 생성해보기
INSERT INTO users_user (first_name, last_name, age, country, phone) VALUES ('늘','하',22,'전주','010-0000-0000');


--102번 id의 전체 레코드 조회

SELECT * FROM users_user WHERE id=102;

--user레코드 수정 102번 글의 first_name을 '철수'로

UPDATE users_user SET first_name='철수' WHERE rowid=102;
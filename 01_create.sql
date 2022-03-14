-- SQLite
INSERT INTO classmates (name,
age) VALUES ('홍길동', 23);



INSERT INTO classmates VALUES ('홍길동', 30, '서울');

SELECT * FROM classmates;

select rowid, *FROM
classmates;

DROP TABLE classmates;

CREATE TABLE classmates (
-- PK 작성시에는 무조건 integer로 해야함 . 
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL, 
  adress TEXT NOT NULL
);

INSERT INTO classmates (
name,age,adress)
values ('홍길동', 30, '서울');

DROP TABLE classmates;

CREATE TABLE classmates (
  name TEXT NOT NULL,
  age INT NOT NULL, 
  address TEXT NOT NULL
);


INSERT INTO classmates 
VALUES 
('홍길동',30,'서울'),
('김철수', 30, '대전'),
('이싸피', 26, '광주'),
('박삼성', 29, '구미'),
('최전자', 28, '부산');


SELECT rowid, name FROM
classmates;


SELECT rowid, name FROM
 classmates LIMIT 1;


 SELECT rowid, name FROM
 classmates LIMIT 1 OFFSET 2;

 SELECT rowid,name FROM classmates 
 WHERE address = '서울' ;

 select DISTINCT age from classmates ;
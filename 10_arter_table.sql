CREATE TABLE articles (
  title TEXT NOT NULL,
  contnet TEXT NOT NULL
);

INSERT INTO articles
VALUES('1번제목','1번내용');


-- 테이블 이름 변경 
ALTER TABLE articles RENAME TO news;

-- 새로운 컬럼 추가

ALTER TABLE news
ADD COLUMN created_at TEXT NOT NULL;  


-- 1. NOT NULL 설정 없이 추가하기
ALTER TABLE news
ADD COLUMN created_at TEXT;

INSERT INTO news 
VALUES ('제목','내용',datetime('now'));


-- 2. 기본값(DERALUT) 설정하기 

ALTER TABLE news ADD COLUMN subtitle created_at TEXT
DEFAULT '소제목';


-- 이름 바꾸기

ALTER TABLE news
RENAME COLUMN title TO maintitle;

-- 컬럼 삭제

ALTER TABLE news
DROP COLUMN subtitle;
--지역별 인원수

SELECT country, COUNT(country) AS count FROM users_user GROUP BY country;
-- insert into users (email, firstname, surname) values ('sam@hotmail.com', 'sam', 'smith');
/*
count email domain
https://stackoverflow.com/questions/51401563/how-to-get-string-after-special-character-in-sql
*/
SELECT
	substring_index(email, '@', -1) email_provider,
	COUNT(*) as total

FROM users
GROUP BY email_provider
ORDER BY total desc



-- select 
-- -- substr(email,5,2)
-- email,
-- substr(email,-8)
-- from users
-- -- where email like '%@bing%'
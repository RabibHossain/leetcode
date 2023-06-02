# Question Link: https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.cinema (id int, movie varchar(255), description varchar(255), rating float(2, 1));
-- Truncate table leetcode.cinema;
-- insert into leetcode.cinema (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
-- insert into leetcode.cinema (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
-- insert into leetcode.cinema (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
-- insert into leetcode.cinema (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
-- insert into leetcode.cinema (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');

SELECT 
    *
FROM
    cinema
WHERE
    MOD(id, 2) <> 0
        AND description NOT LIKE '%boring%'
ORDER BY rating DESC;
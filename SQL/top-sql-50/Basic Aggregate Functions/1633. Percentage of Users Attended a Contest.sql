# Question Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.users (user_id int, user_name varchar(20));
-- Create table If Not Exists leetcode.register (contest_id int, user_id int);
-- Truncate table leetcode.users;
-- insert into leetcode.users (user_id, user_name) values ('6', 'Alice');
-- insert into leetcode.users (user_id, user_name) values ('2', 'Bob');
-- insert into leetcode.users (user_id, user_name) values ('7', 'Alex');
-- Truncate table leetcode.register;
-- insert into leetcode.register (contest_id, user_id) values ('215', '6');
-- insert into leetcode.register (contest_id, user_id) values ('209', '2');
-- insert into leetcode.register (contest_id, user_id) values ('208', '2');
-- insert into leetcode.register (contest_id, user_id) values ('210', '6');
-- insert into leetcode.register (contest_id, user_id) values ('208', '6');
-- insert into leetcode.register (contest_id, user_id) values ('209', '7');
-- insert into leetcode.register (contest_id, user_id) values ('209', '6');
-- insert into leetcode.register (contest_id, user_id) values ('215', '7');
-- insert into leetcode.register (contest_id, user_id) values ('208', '7');
-- insert into leetcode.register (contest_id, user_id) values ('210', '2');
-- insert into leetcode.register (contest_id, user_id) values ('207', '2');
-- insert into leetcode.register (contest_id, user_id) values ('210', '7');

SELECT 
    reg.contest_id,
    ROUND((COUNT(reg.contest_id)) / (SELECT 
                    COUNT(*)
                FROM
                    users) * 100,
            2) AS percentage
FROM
    register reg
GROUP BY reg.contest_id
ORDER BY percentage DESC , reg.contest_id ASC;

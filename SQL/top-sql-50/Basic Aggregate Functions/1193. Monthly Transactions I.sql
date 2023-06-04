# Question Link: https://leetcode.com/problems/monthly-transactions-i/?envType=study-plan-v2&envId=top-sql-50


-- Create table If Not Exists leetcode.transactions (id int, country varchar(4), state enum('approved', 'declined'), amount int, trans_date date);
-- Truncate table leetcode.transactions;
-- insert into leetcode.transactions (id, country, state, amount, trans_date) values ('121', 'US', 'approved', '1000', '2018-12-18');
-- insert into leetcode.transactions (id, country, state, amount, trans_date) values ('122', 'US', 'declined', '2000', '2018-12-19');
-- insert into leetcode.transactions (id, country, state, amount, trans_date) values ('123', 'US', 'approved', '2000', '2019-01-01');
-- insert into leetcode.transactions (id, country, state, amount, trans_date) values ('124', 'DE', 'approved', '2000', '2019-01-07');

SELECT 
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    COUNT(IF(state = 'approved', 1, NULL)) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
FROM
    leetcode.transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m') , country
ORDER BY country DESC;

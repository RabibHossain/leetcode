# Question Link: https://leetcode.com/problems/queries-quality-and-percentage/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.queries (query_name varchar(30), result varchar(50), position int, rating int);
-- Truncate table leetcode.queries;
-- insert into leetcode.queries (query_name, result, position, rating) values ('Dog', 'Golden Retriever', '1', '5');
-- insert into leetcode.queries (query_name, result, position, rating) values ('Dog', 'German Shepherd', '2', '5');
-- insert into leetcode.queries (query_name, result, position, rating) values ('Dog', 'Mule', '200', '1');
-- insert into leetcode.queries (query_name, result, position, rating) values ('Cat', 'Shirazi', '5', '2');
-- insert into leetcode.queries (query_name, result, position, rating) values ('Cat', 'Siamese', '3', '3');
-- insert into leetcode.queries (query_name, result, position, rating) values ('Cat', 'Sphynx', '7', '4');

SELECT DISTINCT
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(AVG(IF(rating < 3, 1, 0) * 100), 2) AS poor_query_percentage
FROM
    queries
GROUP BY query_name;

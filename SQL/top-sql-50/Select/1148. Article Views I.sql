# Question Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&id=top-sql-50


# Write your MySQL query statement below
SELECT DISTINCT
    (author_id) as id
FROM
    views
WHERE
    author_id = viewer_id
ORDER BY author_id ASC;
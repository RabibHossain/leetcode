# Question Link: https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&id=top-sql-50


# Write your MySQL query statement below

SELECT 
    tweet_id
FROM
    tweets
WHERE
    LENGTH(content) > 15;
# Question Link: https://leetcode.com/problems/find-customer-referee/?envType=study-plan-v2&id=top-sql-50


# Write your MySQL query statement below
SELECT 
name
FROM Customer
WHERE (referee_id IS NULL OR referee_id != 2);
# Question Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    customer_id, COUNT(*) AS count_no_trans
FROM
    visits
WHERE
    visit_id NOT IN (SELECT DISTINCT
            visit_id
        FROM
            transactions)
GROUP BY visits.customer_id;
# Question Link: https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.delivery (delivery_id int, customer_id int, order_date date, customer_pref_delivery_date date);
-- Truncate table leetcode.delivery;
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('1', '1', '2019-08-01', '2019-08-02');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('2', '2', '2019-08-02', '2019-08-02');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('3', '1', '2019-08-11', '2019-08-12');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('4', '3', '2019-08-24', '2019-08-24');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('5', '3', '2019-08-21', '2019-08-22');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('6', '2', '2019-08-11', '2019-08-13');
-- insert into leetcode.delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('7', '4', '2019-08-09', '2019-08-09');

SELECT 
    ROUND(AVG(IF(order_date = customer_pref_delivery_date,
                1,
                0)) * 100,
            2) AS immediate_percentage
FROM
    delivery
WHERE
    (customer_id, order_date) IN (SELECT 
            customer_id, MIN(order_date)
        FROM
            delivery
        GROUP BY customer_id);
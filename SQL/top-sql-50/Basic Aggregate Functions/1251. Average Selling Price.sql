# Question Link: https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.prices (product_id int, start_date date, end_date date, price int);
-- Create table If Not Exists leetcode.unitsSold (product_id int, purchase_date date, units int);
-- Truncate table leetcode.prices;
-- insert into leetcode.prices (product_id, start_date, end_date, price) values ('1', '2019-02-17', '2019-02-28', '5');
-- insert into leetcode.prices (product_id, start_date, end_date, price) values ('1', '2019-03-01', '2019-03-22', '20');
-- insert into leetcode.prices (product_id, start_date, end_date, price) values ('2', '2019-02-01', '2019-02-20', '15');
-- insert into leetcode.prices (product_id, start_date, end_date, price) values ('2', '2019-02-21', '2019-03-31', '30');
-- Truncate table leetcode.unitsSold;
-- insert into leetcode.unitsSold (product_id, purchase_date, units) values ('1', '2019-02-25', '100');
-- insert into leetcode.unitsSold (product_id, purchase_date, units) values ('1', '2019-03-01', '15');
-- insert into leetcode.unitsSold (product_id, purchase_date, units) values ('2', '2019-02-10', '200');
-- insert into leetcode.unitsSold (product_id, purchase_date, units) values ('2', '2019-03-22', '30');


SELECT 
    prices.product_id,
    ROUND(SUM(prices.price * unitssold.units) / SUM(unitssold.units),
            2) AS average_price
FROM
    prices
        LEFT JOIN
    unitssold ON prices.product_id = unitssold.product_id
        AND unitssold.purchase_date BETWEEN prices.start_date AND prices.end_date
GROUP BY prices.product_id
ORDER BY prices.product_id ASC;
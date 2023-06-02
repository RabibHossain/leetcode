# Question Link: https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.employee (empId int, name varchar(255), supervisor int, salary int);
-- Create table If Not Exists leetcode.bonus (empId int, bonus int);
-- -- Truncate table Employee
-- insert into leetcode.employee (empId, name, supervisor, salary) values ('3', 'Brad', 'None', '4000');
-- insert into leetcode.employee (empId, name, supervisor, salary) values ('1', 'John', '3', '1000');
-- insert into leetcode.employee (empId, name, supervisor, salary) values ('2', 'Dan', '3', '2000');
-- insert into leetcode.employee (empId, name, supervisor, salary) values ('4', 'Thomas', '3', '4000');
-- -- Truncate table Bonus
-- insert into leetcode.bonus (empId, bonus) values ('2', '500');
-- insert into leetcode.bonus (empId, bonus) values ('4', '2000');

SELECT 
    name, bonus
FROM
    leetcode.employee
        LEFT JOIN
    leetcode.bonus ON employee.empId = bonus.empId
WHERE
    bonus.bonus < 1000
        OR bonus.bonus IS NULL
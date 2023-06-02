# Question Link: https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.project (project_id int, employee_id int);
-- Create table If Not Exists leetcode.employee (employee_id int, name varchar(10), experience_years int);
-- Truncate table leetcode.project;
-- insert into leetcode.project (project_id, employee_id) values ('1', '1');
-- insert into leetcode.project (project_id, employee_id) values ('1', '2');
-- insert into leetcode.project (project_id, employee_id) values ('1', '3');
-- insert into leetcode.project (project_id, employee_id) values ('2', '1');
-- insert into leetcode.project (project_id, employee_id) values ('2', '4');
-- Truncate table leetcode.employee;
-- insert into leetcode.employee (employee_id, name, experience_years) values ('1', 'Khaled', '3');
-- insert into leetcode.employee (employee_id, name, experience_years) values ('2', 'Ali', '2');
-- insert into leetcode.employee (employee_id, name, experience_years) values ('3', 'John', '1');
-- insert into leetcode.employee (employee_id, name, experience_years) values ('4', 'Doe', '2');


SELECT 
    project.project_id,
    ROUND(SUM(employee.experience_years) / COUNT(project.employee_id),
            2) AS average_years
FROM
    leetcode.project
        LEFT JOIN
    leetcode.employee ON project.employee_id = employee.employee_id
GROUP BY project.project_id;
# Question Link: https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50

-- Create table If Not Exists leetcode.activity (machine_id int, process_id int, activity_type ENUM('start', 'end'), timestamp float);
-- -- Truncate table Activity;
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'start', '0.712');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'end', '1.52');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'start', '3.14');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'end', '4.12');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'start', '0.55');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'end', '1.55');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'start', '0.43');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'end', '1.42');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'start', '4.1');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'end', '4.512');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'start', '2.5');
-- insert into leetcode.activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'end', '5');

SELECT 
    a.machine_id, ROUND(AVG(ac.timestamp - a.timestamp), 3) as processing_time 
FROM
    activity a
        LEFT JOIN
    activity ac ON a.machine_id = ac.machine_id
        AND a.process_id = ac.process_id
        AND a.activity_type = 'start'
        AND ac.activity_type = 'end'
GROUP BY a.machine_id;
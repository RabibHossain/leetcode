# Question Link: https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    weather.Id
FROM
    weather
        JOIN
    weather AS w ON w.recordDate = SUBDATE(weather.recordDate, 1)
WHERE
    weather.temperature > w.temperature;
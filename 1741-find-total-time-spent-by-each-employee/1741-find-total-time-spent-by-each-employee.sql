# Write your MySQL query statement below
SELECT event_day AS day, emp_id, SUM(ABS(in_time-out_time)) AS total_time
FROM Employees
GROUP BY emp_id, day;
SELECT COALESCE(manager.name, Null) AS name
FROM Employee manager
LEFT JOIN Employee employee ON manager.id = employee.managerId
GROUP BY manager.id
HAVING COUNT(employee.id) >= 5;

# coalesce is like a backup plan. if all the options are empty, it will return the given value after the comma, in this case, Null.
/*
APPROACH:
Given a table Employees, asked to display the employees whoes salary is less than 30000 and their manager is left. 
- said that, "If the manager is left, their name will be deleted from Employee table"
- Using Subquery, Select employee_id whoes salary is less than 30000 and filter by  manager_id which is not present in Employee table.
-Order the result set by employee_id
*/

SELECT employee_id 
FROM Employees 
WHERE salary < 30000 AND manager_id NOT IN (SELECT employee_id from Employees)
ORDER BY employee_id

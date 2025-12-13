/**
Problem Description:  
Given two tables
1. `Employees` with columns - `id`, `name `
2. `EmployeeUNI` with columns -  `id`,`unique_id`

- Display `unique_id`  and `name` of each user, if user does not have a uniqueID display `null`

- We need all employees even they don't have unique_id => use LEFT JOIN
- JOIN `Employees.id` with `EmployeeUNI.id`
- SELECT `unique_id ` from  EmployeeUNI and `name` from Employees
- If employee doesnot have unique_id LEFT JOIN would automatically return NULL.
**/

SELECT u.unique_id, e.name
FROM Employees as e
LEFT JOIN EmployeeUNI as u
ON e.id = u.id;

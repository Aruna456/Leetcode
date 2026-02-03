/**
Given Problem: Asked to display the names of the manager who has atleast 5 direct reports (5 direct employees who can report them directly)
- Consider the Employee table as 2, 1. Manager, 2. Employees
- Map Manager with all this direct Employees. 
- Group by manager and count number of employees for each manager
- If the count was >=5, then display manager name.
**/

SELECT manager.name
FROM Employee as manager
JOIN Employee as directReports
ON manager.id=directReports.managerId
GROUP BY manager.id
HAVING COUNT(directReports.id)>=5
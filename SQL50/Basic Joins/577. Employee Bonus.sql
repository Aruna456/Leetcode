/*
APPROACH:
Given 2 tables Employee, Bonus. Asked to display the employees who got bonus < 1000 and never got bonus. 
- How do we know the employee never got bonus, only if his ID is not present on Bonus table
- So, If we join both tables from LEFT, all those unmatched rows will become null. From that we can just select the wanted columns. 
*/

SELECT e.name, b.bonus
FROM Employee as e
LEFT JOIN Bonus as b
ON e.empId=b.empId
WHERE b.bonus<1000 OR b.bonus IS NULL

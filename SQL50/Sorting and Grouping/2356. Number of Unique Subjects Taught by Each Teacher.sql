/**
Given problem: Find number of unique subject that each teacher teach in the university
- speaking of unique we need to find the distinct number of subjects that each teacher teaches. 
- group the rows with teacher_id, then count hte number of unique subjects each group has. 
**/

SELECT teacher_id, COUNT(distinct subject_id) as cnt
FROM Teacher 
GROUP BY teacher_id

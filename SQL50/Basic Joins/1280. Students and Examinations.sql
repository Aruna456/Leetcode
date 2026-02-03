/**
Problem Description: 
Given 3 tables and asked to find how many each student attended each exam.
- To Map each student with all possible subject we do CROSS JOIN between Students and Subjects (because Examination might not have all the subjects listed to map with students)
- LEFT JOIN both the table with Examination to map how many exams each student attended.
- Group the subjects along with the students and COUNT number of subjects with  student.
**/


SELECT st.student_id, st.student_name, sub.subject_name, COUNT(e.subject_name) as attended_exams
FROM Students st 
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON e.student_id =st.student_id  AND e.subject_name=sub.subject_name
GROUP BY st.student_id, st.student_name ,sub.subject_name
ORDER BY st.student_id, sub.subject_name
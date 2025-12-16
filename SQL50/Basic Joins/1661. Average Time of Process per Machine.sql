/*
APPROACH:
- Given a table Activity,,asked us to display the processing time of each machine. 
- Processing time = AVG(Execution time)/number of processes executed in a machine. 
- In the table, each row has spreaded details meaning 1 machine details where given in 4 rows 
- 1. SELF JOIN the table inorder to differentiate start time and end time by matching its process_id, machine_id and start table with 'start', end table with 'end'
- 2. GROUP the columns with Machine_id
- Apply AVG on timestamp of start and end. 
- ROUND the result with 3 decimal.
*/


SELECT start.machine_id,ROUND(AVG(end.timestamp-start.timestamp),3) as processing_time
FROM Activity as start
JOIN Activity as end
ON start.process_id=end.process_id AND start.machine_id=end.machine_id AND start.activity_type='start' AND end.activity_type='end' 
GROUP BY start.machine_id

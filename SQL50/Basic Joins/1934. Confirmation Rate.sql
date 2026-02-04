/**
Given Problem: 
- Given 2 tables - Signups,Confirmation - Asked to find the confirmation rate for each user 
- Confirmation rate -> number of messages confirmed/total number of message requested => AVG
- If user hasn't requested any message = 0 (LEFT JOIN)
- Group by User_id and using IF(), assign 1 to column which has confirmed else assign 0
- Apply AVG on Grouped actions column 
- Round the AVG to 2 decimals
**/

SELECT s.user_id,ROUND(AVG(IF(c.action='confirmed',1,0)),2) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id=c.user_id
GROUP BY s.user_id
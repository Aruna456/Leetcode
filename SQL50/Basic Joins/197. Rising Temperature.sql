/*
APPROACH:
- Given a single table called Weather with Dates and the temperature on that date, asked to print the date's ID where today's temp > yesterday's temp.
- we have to compare current row with previous row, For that we just SELF JOIN table as today and yesterday based on their Date difference, which is Today's Date will be "1" date higher than yesterday. 
= DATEDIFF(todayDate,yesterdayDate)=1
- Then filter by comparing Temperature. 
*/

SELECT today.id
FROM Weather as today
JOIN Weather as yesterday
ON DATEDIFF(today.recordDate,yesterday.recordDate)=1
WHERE today.temperature>yesterday.temperature

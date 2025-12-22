/*
APPROACH:

Given a table Cinema, asked to return the movies whoes id is "odd-numbered" and description is "not boring"
Result set should be displayed in DESC order.
*/

SELECT id,movie,description,rating

FROM Cinema

WHERE id%2!=0 AND description!="boring" 

ORDER BY rating DESC;

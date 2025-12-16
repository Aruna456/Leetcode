/*
APPROCH:
- Given Customer table, asked to return the name of the customers who is not refereed by any/has referee_id!=2
- Means, "Filter" the customers whoes referee_id = NULL OR referee_id != 2
*/

SELECT name 
FROM Customer
WHERE referee_id IS NULL OR referee_id!=2;

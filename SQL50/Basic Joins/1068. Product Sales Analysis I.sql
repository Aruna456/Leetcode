/** 
APPROACH:
- Given 2 tables Sales and Products
- Q: Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
- They have mentioned " for each sales_id in sales table", means only if the sale_id has matching row in Products it's name should be displayed.
- User Inner JOIN to DISPLAY ONLY MATCHED ROWS
**/

/** Solution **/

SELECT p.product_name,s.year,s.price 
FROM Sales as s
JOIN Product as p 
ON s.product_id=p.product_id;

/**
Given Problem: 
 - Given Prices and UnitSold table, asked to find the average selling price for each product
 - LEFT JOIN both tables so that we can also list product without any unit sold
 - LEFT JOIN based on product_id and Purchase date to ensure products mapped correctly,instead of getting assigned like 
 each product -> all possible units.
 - GROUP BY product_id. 
 - Find Avg = SUM(units*price)/SUM(units), ROUND 2 decimals
 - They have asked to assign 0 as avg selling price to products with no units sold, use IFNULL to do so. 
**/

SELECT p.product_id, ROUND(IFNULL(SUM(p.price*u.units)/SUM(u.units),0),2) as average_price

FROM Prices p

LEFT JOIN UnitsSold u

ON p.product_id = u.product_id 

AND purchase_date BETWEEN start_date AND end_date

GROUP BY p.product_id

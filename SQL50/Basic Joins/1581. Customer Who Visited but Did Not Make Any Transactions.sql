/**
Approach:
Given Visitors and Transactions, Asked to display the customer_id and no of times customer who visited the bank and made no transaction.
- If a customer didn't made any transaction, definitely there will be no transaction_id present for those customer_id in Transactions table. 
- Therefore, If we use LEFT JOIN, we can identify transaction_id for every ID (Filled with NULL for no_trans).
- To count, use COUNT() to count Visit_id after GROUPING the customers
**/

SELECT v.customer_id, COUNT(v.visit_id) as count_no_trans
FROM Visits as v
LEFT JOIN Transactions as t
ON v.visit_id=t.visit_id
WHERE t.transaction_id  IS NULL
GROUP BY v.customer_id;

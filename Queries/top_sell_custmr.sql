-- Top Selling Customers
SELECT
    distinct sales.customers.custmer_name,
	SUM(sales.transactions.sales_qty) as sale_qty
    
FROM 
	sales.transactions
INNER JOIN sales.customers 
	ON sales.customers.customer_code = sales.transactions.customer_code
GROUP BY 
	sales.customers.custmer_name
ORDER BY 
	sale_qty DESC;


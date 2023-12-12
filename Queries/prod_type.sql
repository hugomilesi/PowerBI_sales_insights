-- Product Types Analysis
SELECT
    Products.product_type,
    SUM(Transactions.sales_qty) AS total_sales_qty,
    SUM(Transactions.sales_amount) AS total_sales_amount
FROM
    Transactions
INNER JOIN
    Products ON Transactions.product_code = Products.product_code
GROUP BY
    Products.product_type;

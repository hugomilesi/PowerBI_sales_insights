-- Temporal Analysis
SELECT
    sales.date.year,
    sales.date.month_name,
    SUM(Transactions.sales_qty) AS total_sales_qty,
    SUM(Transactions.sales_amount) AS total_sales_amount
FROM
    Transactions
INNER JOIN
    sales.date ON Transactions.order_date = sales.date.date
GROUP BY
    sales.date.year, sales.date.month_name
ORDER BY
    sales.date.year, sales.date.month_name;

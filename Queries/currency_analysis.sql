-- Currency Analysis
SELECT
    Transactions.currency,
    SUM(Transactions.sales_qty) AS total_sales_qty,
    SUM(Transactions.sales_amount) AS total_sales_amount
FROM
    Transactions
GROUP BY
    Transactions.currency;

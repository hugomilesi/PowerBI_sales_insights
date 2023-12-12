-- Geographical Analysis
SELECT
    Markets.zone,
    SUM(Transactions.sales_qty) AS total_sales_qty,
    SUM(Transactions.sales_amount) AS total_sales_amount
FROM
    Transactions
INNER JOIN
    Markets ON Transactions.market_code = Markets.markets_code
GROUP BY
    Markets.zone
ORDER BY
    total_sales_amount DESC;

-- Market Analysis
SELECT
    Markets.markets_name,
    Markets.zone,
    SUM(Transactions.sales_amount) AS total_sales
FROM
    Transactions
INNER JOIN
    Markets ON Transactions.market_code = Markets.markets_code
GROUP BY
    Markets.markets_name, Markets.zone
ORDER BY
    total_sales DESC;

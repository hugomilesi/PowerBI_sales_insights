-- Get all transactions from Chennai market
use Sales;
SELECT * FROM
	transactions t
JOIN 
	markets m 
ON 
	t.market_code = m.markets_code
WHERE
	m.markets_name = 'Chennai';





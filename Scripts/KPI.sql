SELECT * FROM walmart;

-- total transaction volume
SELECT 
	count(DISTINCT invoice_id) AS transaction_volume
FROM walmart;
-- rata-rata rating per category
SELECT
	category,
	round(avg(rating::numeric),2) AS avg_rating
FROM walmart
GROUP BY category
ORDER BY avg_rating DESC;

-- cek transaction volume per kota dan persentase nya
SELECT 
	city,
	count(DISTINCT invoice_id) AS transaction_volume
FROM walmart
GROUP BY city
ORDER BY transaction_volume DESC;

SELECT 
	payment_method,
	count(DISTINCT invoice_id) AS volume,
	round(count(DISTINCT invoice_id) * 100.0 /
	sum(count (DISTINCT invoice_id)) OVER() ,2)AS vol_pct
FROM walmart
GROUP BY payment_method
ORDER BY volume DESC;

-- cek transaction volume (percentage) per category
SELECT
	category,
	count(DISTINCT invoice_id) AS transaction_volume,
	round(count(DISTINCT invoice_id) * 100.0 /
	sum(count(DISTINCT invoice_id)) over(),2) AS vol_pct
FROM walmart
GROUP BY category
ORDER BY TRANSACTION_volume DESC;

-- cek revenue, total revenue, profit margin per payment_method
SELECT
	payment_method,
	round(sum(unit_price::NUMERIC * quantity::numeric),0) AS total_revenue,
	round(sum(unit_price::NUMERIC * quantity::NUMERIC * profit_margin::numeric),0) AS net_profit
FROM walmart
GROUP BY payment_method
ORDER BY net_profit DESC;

SELECT
sum(unit_price),
sum(quantity),
round(sum(unit_price::NUMERIC * quantity::NUMERIC * profit_margin::numeric),0) AS net_profit,
round(sum(unit_price::NUMERIC * quantity::numeric),0) AS total_revenue
FROM walmart
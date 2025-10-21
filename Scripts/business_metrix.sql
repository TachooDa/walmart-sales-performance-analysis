-- cari gross merchandising value (GMV)
WITH highest_gmv AS (
	SELECT
		category,
		round(sum(unit_price::NUMERIC * quantity::NUMERIC), 0) AS gmv,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY sum(unit_price::NUMERIC * quantity::NUMERIC) DESC) AS rn
	FROM
		walmart
	GROUP BY
		(1)
)
SELECT 
	category,
	gmv
FROM
	highest_gmv
WHERE
	rn = 1
ORDER BY
	gmv desc;
-- coba cari average order value per branch dan category dan payment method
SELECT 
	payment_method,
	round(sum(unit_price::NUMERIC * quantity::NUMERIC) / 
	count(DISTINCT invoice_id), 0) AS avg_order_value
FROM
	walmart
GROUP BY payment_method;

/* Category */
SELECT 
	category,
	round(sum(unit_price::NUMERIC * quantity::NUMERIC) / 
	count(DISTINCT invoice_id), 0) AS avg_order_value
FROM
	walmart
GROUP BY
	category
ORDER BY
	avg_order_value DESC;

/* Per branch */
SELECT 
	branch,
	round(sum(unit_price::NUMERIC * quantity::NUMERIC) / 
	count(DISTINCT invoice_id), 0) AS avg_order_value
FROM
	walmart
GROUP BY
	branch
ORDER BY
	avg_order_value DESC;
-- coba cek customer lifetime value
WITH customer_ltv AS (
	SELECT
		invoice_id,
		EXTRACT(YEAR FROM min(date)) AS cohort_year,
		round(sum(quantity::NUMERIC * unit_price::NUMERIC * profit_margin::numeric), 0) AS net_profit
	FROM
		walmart
	GROUP BY
		invoice_id
)
SELECT
	cohort_year,
	round(avg(net_profit), 0) avg_cust_ltv
FROM
	customer_ltv
GROUP BY
	cohort_year
ORDER BY
	avg_cust_ltv DESC;
-- coba cari net profit margin 
WITH profit_margin AS (
	SELECT
		category,
		round(sum(unit_price::NUMERIC * quantity::NUMERIC), 0) AS total_revenue,
		round(sum(unit_price::NUMERIC * quantity::NUMERIC * profit_margin::NUMERIC), 0) AS net_profit
	FROM
		walmart
	GROUP BY
		category
)
SELECT
	category,
	total_revenue,
	net_profit,
	round((net_profit / total_revenue)* 100.0, 2) AS net_profit_margin_pct
FROM
	profit_margin
ORDER BY
	net_profit_margin_pct DESC;
-- cek cart abandontment rate
/*“Nilai abandonment rate dihitung berdasarkan asumsi bahwa sekitar 70% 
  keranjang tidak berujung pada transaksi selesai, 
  sebagaimana rata-rata e-commerce industri retail. */
WITH est_cart AS (
	SELECT
		payment_method,
		count(DISTINCT invoice_id) AS complete_purchase
	FROM
		walmart
	GROUP BY
		payment_method
)
SELECT
	payment_method,
	complete_purchase,
	round((complete_purchase / (1-0.7)), 0) AS estimated_carts,
	round((1-(complete_purchase / (complete_purchase / (1-0.7))))* 100.0, 0) AS est_abandonment_rate
FROM
	est_cart
ORDER BY
	estimated_carts DESC;
-- coba cek estimasi buat inventory turnover
WITH inventory_turnover AS (
	SELECT
		category,
		round(sum(unit_price::NUMERIC * quantity::NUMERIC * (1 - profit_margin::NUMERIC)), 0) AS cogs,
		round(avg(quantity::NUMERIC), 0) AS avg_inventory
		-- (estimasi dan asumsi)
	FROM
		walmart
	GROUP BY
		category
)
SELECT 
	category,
	cogs,
	avg_inventory,
	round(cogs / avg_inventory, 0) AS est_inventory_turnover
FROM
	inventory_turnover
ORDER BY
	est_inventory_turnover DESC;

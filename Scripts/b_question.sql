/*
BUSINESS QUSTION AND ANSWER (EDA)
*/
-- Q1. Coba Analisis metode pembayaran  dan penjualan (sales)
SELECT * FROM walmart;
SELECT 
payment_method,
count(*) AS transaction_volume,
sum(quantity) AS total_sales
FROM walmart
GROUP BY payment_method 
ORDER BY transaction_volume  DESC;

-- Q2. Cari Category mana yg menerima avg rating tertinggi per branch dan category
WITH highest_rate AS (
	SELECT
		category ,
		branch,
		round(avg(rating::NUMERIC), 2) AS avg_rating,
		ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY AVG(rating::NUMERIC) DESC
        ) AS rn
	FROM
		walmart
	GROUP BY
		category,
		branch
)
SELECT
    category,
    branch,
    avg_rating
FROM highest_rate
WHERE rn = 1
ORDER BY category;
	
-- Q3. Coba Tentukan hari tersibuk untuk masing-masing branch
SELECT * FROM walmart;
WITH busiest_day AS (
SELECT
	to_char(date,'day') AS day_of_week,
	branch,
	count(*) AS transaction_volume,
	row_number() over(PARTITION BY branch ORDER BY count(*) DESC) AS rn
FROM walmart
GROUP BY (1,2)
)
SELECT 
	*
FROM busiest_day
WHERE rn=1
ORDER BY branch;

-- Q4. Coba Hitung total penjualan dari quantity per payment method
SELECT * FROM walmart;
SELECT
payment_method,
sum(quantity) AS total_sold
FROM walmart
GROUP BY payment_method
ORDER BY total_sold DESC;

-- Q5. Coba Analisis rating distribution (avg, min, max) untuk masing-masing kota per category
SELECT 
    category,
    city,
    ROUND(AVG(rating::numeric), 2) AS avg_rating,
    MIN(rating::numeric) AS min_rating,
    MAX(rating::numeric) AS max_rating
FROM walmart
GROUP BY category, city
ORDER BY category, avg_rating DESC;

-- Q6. Coba hitung total profit dari masing-masing category (highest to lowest)
SELECT * FROM walmart;
SELECT
category,
round(sum(unit_price::numeric * quantity::numeric * profit_margin::numeric),0) AS total_profit
FROM walmart
GROUP BY category
ORDER BY total_profit DESC;

--Q7 Coba tentukan payment method yg paling sering dugnakan di masing-masing branch
SELECT * FROM walmart;
WITH most_used_payment AS (
SELECT
	branch,
		payment_method,
	count(*) AS transaction_volume,
	ROW_NUMBER() over(PARTITION BY branch ORDER BY count(*) desc) AS rn
FROM walmart
GROUP BY (1,2)
)
SELECT
 *
FROM most_used_payment
WHERE rn = 1
ORDER BY branch;

-- Q8 coba analisis sales shift per waktu 
WITH shift_sales AS (
SELECT
	branch,
	CASE 
		WHEN extract(HOUR FROM date) BETWEEN 6 AND 11 THEN 'Morning Sales'
		WHEN EXTRACT(HOUR FROM date) BETWEEN 12 AND 17 THEN 'Afternoon Sales'
		WHEN EXTRACT(HOUR FROM date) BETWEEN 18 AND 22 THEN 'Evening Sales'
		ELSE 'night sales'
	END AS sales_shift,
	count(*) AS transaction_volume
FROM walmart
GROUP BY branch, sales_shift
), ranked_shift AS (
	SELECT 
		*,
		row_number() over(PARTITION BY branch ORDER BY transaction_volume desc) AS  rn
	FROM shift_sales

)
SELECT
	*
FROM ranked_shift
WHERE rn = 1
ORDER BY transaction_volume DESC;

-- Q9 coba identifikasi branch dengan highest decline revenue decrease (yoy)
WITH yoy_sales AS (
SELECT
	branch,
	extract(YEAR FROM date) AS year_sales,
	round(sum(unit_price::numeric * quantity::numeric),0) total_revenue
FROM walmart	
GROUP BY year_sales,branch
)
SELECT 
	branch,
	year_sales,
	total_revenue,
	-- use lag
	lag(total_revenue, 1) over(order BY year_sales) AS prev_year_sales,
	-- find percentage yearly changes
	CASE
		WHEN lag(total_revenue, 1) over(order BY year_sales) IS NOT NULL THEN
		round((total_revenue - lag(total_revenue, 1) over(order BY year_sales)) * 100.0 / lag(total_revenue, 1) over(order BY year_sales),2)
		ELSE null
	END AS yoy_percentage_change,
	-- find yoy revenue decrease
	CASE 
		WHEN (total_revenue - lag(total_revenue, 1) over(order BY year_sales)) < 0 THEN TRUE
		ELSE false
	END AS yoy_revenue_decrease	
FROM yoy_sales
ORDER BY branch ;

-- Q9. Identifikasi branch dengan penurunan revenue (YoY) tertinggi
WITH yoy_sales AS (
    SELECT
        branch,
        EXTRACT(YEAR FROM date) AS year_sales,
        ROUND(SUM(unit_price::NUMERIC * quantity::NUMERIC), 0) AS total_revenue
    FROM walmart
    GROUP BY branch, year_sales
),
yoy_diff AS (
    SELECT
        branch,
        year_sales,
        total_revenue,
        LAG(total_revenue) OVER (
            PARTITION BY branch
            ORDER BY year_sales
        ) AS prev_year_sales
    FROM yoy_sales
)
SELECT
    branch,
    year_sales,
    total_revenue,
    prev_year_sales,
    ROUND(
        (total_revenue - prev_year_sales) * 100.0 / prev_year_sales,
        2
    ) AS yoy_percentage_change,
    CASE
        WHEN total_revenue < prev_year_sales THEN TRUE
        ELSE FALSE
    END AS yoy_revenue_decrease
FROM yoy_diff
WHERE prev_year_sales IS NOT NULL
ORDER BY branch ASC; -- terendah (penurunan paling besar) di atas

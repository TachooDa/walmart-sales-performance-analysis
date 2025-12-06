<p align='center'>
    <img src='wm_images/' alt="Your Project Logo" width="450" height="250"/>
</p>

 <p style='text-align:center; font-weight:bold; font-size:2.0rem;font-family:arial;'> Walmart Branch Performance Report</p>
<hr>
<div style='border: 1px solid #d6d2d2ff; padding:20px; border-radius:10px'>
    <p style='text-align:center; font-size:1.8rem; font-weight:bold; font-family:consolas'>
    Client Background
    </p>
<hr>
    <p style='text-align:justify'>
     <b>Walmart</b> is a U.S.-based retail corporation that operates a chain of hypermarkets, discount, departement stores and grocery to serve consumers across the United States and globally. Established in 1962, the company has grown and expanded in the last few years, it has encounteres increasing competition from e-commerce giants and tradicional retailers as well as unique challenges and opportunities brought on by the covid-19 pandemic.
    <br><br>
    Walmart's book of businnes is approaching 9.600 transaction across 100 branches generating sales revenue exceeding $993,319 base on gross revenue. The available retail data spans various dimensions and metrics, including sales, products category, sales by regions, payment method, and branch rating
    <br><br>
    Reporting to the head of operations, an in-depth analysis was conducted to evaluate Walmart's branch performance over the pas several years (2019-2023). This comprehensive review provides valuable insights that internal cross-functional teams will utilize to stream recommendations focust on the following areas:
    <br>
    <b>NortStar Metrics :</b>
    <ul style='text-align:justify'>
        <li><b>Sales Trends</b> - Focusing on key metrics of sales revenue, number or order placed and average order value(AOV)</li>
        <li><b>Product Performance</b> - Analyzing different category lines, market impact, and branch ratings to inform product strategy</li>
        <li><b>Payment method evaluation</b> - Evaluating the effectiveness of different payment method and providing recommendations to maximizi customer convenience and retention</li>
        <li><b>Regional results</b> - Evaluating regioanl demand and product performance within regions to identify areas for improvement </li>
    </ul>
    </p>
</div>
<br>
<p style='text-align:center; font-size:2.0rem; font-weight:bold;font-color:white; font-family:consolas'>Executive Summary</p>
<hr>
<div style="border: 1px solid #d6d2d2ff; padding:20px; border-radius:10px;">
<img src='wm_images\sales_revenue.png' alt="sales revenue" style="max-width: 100%; height: auto; display: inline-block;"/>
<div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px;">
    <div style='border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
        <p style='font-size:1rem; text-align:justify'>
            1. <b>Revenue Growth and Peak Performance</b>
            <ul style='text-align:justify'>
                <li>Q4 has always been the strongest period, with consistent sales and revenue consistently reaching $40,000, even though Q4 2020 was still affected by the COVID-19 pandemic. </li>
                <li>Q 2021 saw the highest revenue ($46.402 in december 2021), making it the best performing period.</li>
                <li>Each Q4 has reached revenue of up to $40,000, and it also maintained strong sales in the final year, despite a downward trend that started afterward.</li>
            </ul>
            2. <b>Declining Trend in every early Quarter in every year</b>
            <ul style='text-align:justify'>
                <li>Sales anomalies and significant declines always occur in our early quarters (Q1-Q3), especially in (Q2-Q4) with sales revenue of only $2000-$4000 per month during that quarter, marking the month (quarter) with the lowest revenue.</li>
                <li>The Q2-Q3 revenue decline suggest a major downturn, likely caused by external branch condition, reduced consumer demand or internal operational shifts</li>
            </ul>
        </p>
    </div>
    <div style='border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
        <p style='font-size:1rem; text-align:justify'>
            3. <b>Quarterly Insights & Seasonal Trends</b>
            <ul style='text-align:justify'>
                <li>Q4 of each year typically show strong perfromance, likely due to seasonal shopping trends and marketing efforts</li>
                <li>Q1 2023 started bad well ($15.794 in january), but revenue still ups and down through Q1-Q3, but revenue quickly growth in Q4, signaling an overall Peak performance compare to every Q1-Q3 in previous years</li>
            </ul>
            4. <b>Key Takeaways & Recommendations</b>
            <ul style='text-align:justify'>
                <li>Investigate the causes of the every Q1-Q3 period decline for every year (e.g.,market changes, competition, internal factors)</li>
                <li>Laverage high-performing periods (e.g., Q4 of strong years) to refine marketing and branch sales strategies.</li>
                <li>Reassess businnes strategy for 2024, focusing on pricing, branch promotions and customer engangement to regain momentum</li>
            </ul>
        </p>
    </div>
</div>
</div>
<br>
<p style='text-align:center; font-size:2.0rem; font-weight:bold;font-color:white; font-family:consolas'>Dataset Structure</p>
<hr>
<p>The database structure as seen below consist of one table with a total row count of 9.599 records</p>

| Column Name      | Data Type | Description                            |
| ---------------- | --------- | -------------------------------------- |
| `invoice_id`     | Integer   | Unique identifier for each transaction |
| `branch`         | String    | Branch code where transaction occurred |
| `city`           | String    | City location of the branch            |
| `category`       | String    | Product category                       |
| `unit_price`     | Float     | Price per unit of product              |
| `quantity`       | Float     | Number of units purchased              |
| `date`           | String    | Transaction date                       |
| `time`           | Date      | Transaction time                       |
| `payment_method` | String    | Method of payment used                 |
| `rating`         | Float     | Customer satisfaction rating           |
| `profit_margin`  | Float     | Profit margin percentage               |
| `revenue`        | Float     | Total revenue from transaction         |
| `net_profit`     | Float     | Net profit from transaction            |
| `region`         | String    | Geographic region of branch            |

<br>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .kpi-header {
            text-align: center;
            font-size: 2.0rem;
            font-weight: bold;
            font-family: Consolas, monospace;
            margin-bottom: 20px;
        }
        hr {
            border: 1px solid #d6d2d2;
            margin: 20px 0;
        }
        .kpi-container {
            border: 1px solid #d6d2d2;
            padding: 20px;
            border-radius: 10px;
            background-color: white;
        }
        .kpi-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 15px;
        }
        .kpi-item {
            padding: 15px;
            border: 1px solid #e5e7eb;
            border-radius: 8px;
            background-color: #f9fafb;
        }
        .kpi-label {
            font-size: 0.9rem;
            color: #6b7280;
            margin-bottom: 5px;
        }
        .kpi-value {
            font-size: 1.8rem;
            font-weight: bold;
            color: #111827;
        }
    </style>
</head>
<body>
    <p class="kpi-header">Key Performance Indicators</p>
    <hr>
    <div class="kpi-container">
        <div class="kpi-grid">
            <div class="kpi-item">
                <div class="kpi-label">Analysis Period</div>
                <div class="kpi-value">2019-2023</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Order Period (days)</div>
                <div class="kpi-value">1,825 days</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Orders</div>
                <div class="kpi-value">9,599</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Branches</div>
                <div class="kpi-value">100</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Cities</div>
                <div class="kpi-value">98</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Product Categories</div>
                <div class="kpi-value">6</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Quantity Sold</div>
                <div class="kpi-value">20,468</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Revenue</div>
                <div class="kpi-value">$993,319</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Total Profit</div>
                <div class="kpi-value">$390,733</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Average Branch Rating</div>
                <div class="kpi-value">5.78 / 10</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Branch Rating Range</div>
                <div class="kpi-value">3.0 - 10.0</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Payment Methods</div>
                <div class="kpi-value">3</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Maximum Profit Margin</div>
                <div class="kpi-value">57%</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Average Profit Margin</div>
                <div class="kpi-value">39.3%</div>
            </div>
            <div class="kpi-item">
                <div class="kpi-label">Average Order Value</div>
                <div class="kpi-value">$103.47</div>
            </div>
        </div>
    </div>
</body>
</html>
<br>
<p style='text-align:center; font-size:2.2rem; font-weight:bold;font-color:white; font-family:consolas'>Insight Deep-Dive</p>
<hr>
<p style='text-align:center; font-size:2.2rem; font-weight:bold;font-color:white; font-family:consolas'>Sales Trend</p>
<hr>
<div style="display: grid; grid-template-columns: 1fr; gap: 20px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px">
    <img src="wm_images/sales_rev_2.png" style="width:100%;">
    <img src="wm_images/aov.png" style="width:100%;">
    <img src="wm_images/num_orders.png" style="width:100%;">
 <div style='display:grid; grid-template-columns: 1fr 1fr; gap:20px;'>
 <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
    <p style='font-size:1rem; text-align:justify'>
        <b>Sales Revenue</b><br>
        1. Sharp spike in Q4 2023 - A major sals peaked performanced
        <ul style='text-align:justify'>
            <li>Historically, Q4 (Nov-Dec) has been strongest quarter due to holiday shopping (black friday,cyber monday, christmas sales) and also in 2023 Q4 sales peak performance</li>
            <li>December 2023 sales were UP compared to December in previous years (a 4.05% increase from the previous best December).However, December 2023 ($43,612) was 6.01% below the absolute monthly sales peak ($46,402) reached at the end of 2021 and repeated at the end of 2024.</li>
        </ul>
        2. Post Pandemic Sales Normalization (2020-2022)
        <ul style='text-align:justify'>
            <li>2020 Sales Surge: The Pandemic led to as significant boost in retail sales, with Q2-Q4 2020 seeing a rapid increase (e.g., <b>Q4 2020 was nearly double Q4 2019)</b>.</li>
            <li>2021 Slight Slowdown: Sales remained high but started stabilizing, showing a decline from pandemic peak levels, and also seeing rapid increase at Q4 period</li>
            <li>2022 Major Decline: A inconsistent drop in sales across all quarters suggest a post-pandemic correction, with inflation, lower consumer spending or increased competition.</li>
        </ul>
        3. Declining growth throughout in every quarter (Q1-Q3) period - indicating weak consumer demand
        <ul style='text-align:justify'>
            <li>For each quarter for Q1-Q3 in the period, it was experienced a ups and downward trend.</li>
            <li>Q1: Started fairly strong ($20.170 in jan) and still higher than 2020</li>
            <li>Q2 - Q3: Sales declined sharply (especially from June to July) after the previous Q4 peak, with the steepest drop reaching 42% in 2021, then sales tended to stabilize or decline slowly at a low level until the end of Q3.</li>
            <li>Q4: The most consistent and strongest peak sales period, reaching an all-time high of $46,402 (occurring in 2021 and 2024). This pattern indicates very strong seasonal demand at the end of the year, which can be further optimized through pre-holiday and end-of-year campaign strategies.</li>
        </ul>
    </p>
 </div>
  <div style='border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
  <P style='font-size:1rem; text-align:justify'>
    <b>Average Order Value</b><br>
    1. Sharp AOV surge n 2019, followed by a Decline in 2020-2023
    <ul>
        <li>2019 saw the highest AOV decline, declined at $96 (Nov 2020) compare to $189 (Nov 2019), aligning with pandemic-driven branch retail boom</li>
        <li>Post pandemic correction (2020-2022) led to a steady decline, with AOV in 2022 returning close to 2020 levels (~$96-$101).</li>
    </ul>
    2. 2020-2023 AOV is lower and relatively more volatile compared to previous years
    <ul>
        <li><b>2020-2023 AOV fluctuates significantly between $114 (Apr) and $117 (Jun)</b></li>
        <li>Q4 2022 AOV is significantly lower than Q4 2020 & 2023, meaning holiday spending per order has dropped on 2022</li>
    </ul>
    3. Long-Term AOV decline may indicate price sensitivity
    <ul>
        <li>From a peak of ~ $189 in 2019, AOV steadily dropped to ~$99 in 2023 which is ~47,62% drop</li>
        <li>Over the span of  four years, the change in AOV growth has been relatively constant, indicating minimal changes in category product pricing (as illustrated in Sales Growth vs AOV Growth below)</li>
        <li>AOV in 2020-2023 is likely to be a major factor in decline of sales that year</li>
    </ul><br>
    <b>Order Count</b>
    <ul>
        <li><b>Total Orders dropped by ~39.5%</b>from the peak in December 2021 (451 orders) to the trough in july 2022  (around 120 orders), or from peak to trough in 2022</li>
        <li>The most significant decline in order volume started in early 2022, with the count falling sharply from the peak of 451 orders (December 2021) to a low of approximately 120 orders (around mid-2022) </li>
        <li>The consistent drop in order frequency is the primary driver of the lower sales revenue during the low-demand periods (Q1,Q2 and Q3), overwhelming the impact of minor fluctuations in average order value</li>
    </ul>
  </p>
 </div>
 </div>
</div>
<br><br>
<p style='text-align:center; font-size:1.7rem; font-weight:bold;font-color:white; font-family:consolas'>Sales Growth follows pronounced seasonal fluctuations, primarily driven by Order Volume, while AOV Growth remains relatively low and stable throughout the year. This indicates that the large revenue swings are a factor of how many orders are placed, rather than how much customers spend per transaction.
</p>
<hr>
<img src='wm_images/sales vs aov.png' alt="sales revenue" style="max-width: 100%; height: auto; display: inline-block;"/>
<br><br>
<p style='text-align:center; font-size:2.0rem; font-weight:bold;font-color:white; font-family:consolas'>Product Performance
</p>
<hr>
<p style='text-align:center; font-size:1.7rem; font-weight:bold;font-color:white; font-family:consolas'>Product Sales Surged in 2020 but were not Sustained at High Levels
<img src='wm_images/prod_perform.png' alt="sales revenue" style="max-width: 100%; height: auto; display: inline-block;"/>
</p>
<div style='display: grid; grid-template-columns: 1fr; gap: 10px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
    <div style='display:grid; grid-template-columns: 1fr 1fr 1fr; gap:20px;'>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p>
                <b>The Best And worst</b>
                <ul style='text-align:justify'>
                    <li>The Fashion Accessories category had a consistenly strong sales year over year  totaling $454.531, and it is the highest revenue generating product overall</li>
                    <li>The second and third best perfroming products category in term of sales are the Home and Lifestyle ($453.878 total) and the Electronic Accessories ($41.031 in total)</li>
                    <li>The Sport and Travel ($12.477 total) had extremely low sales compare to other products, with no sales record in multiple months</li>
                </ul>
            </p>
        </div>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p>
                <b>AOV Over Time</b>
                <ul style='text-align:justify'>
                    <li>The AOV peaked in 2019 at $158 and than decline in 2020 ($98) and we have a stabil aov on the next year</li>
                    <li>Home and Lifestyle ($117.649), Fashion accessories ($113.847) and Electronic Accessories ($39.000) are the biggest contributors to AOV </li>
                    <li>Home and Lifestyle,Health and Beauty, Food and beverages and Electronic Accessories have relatively low price points on average. They ara stable but do not significantly impact AOV</li>
                    <li>AOV is trending downward but mainly due to a decline of product sales</li>
                </ul>
            </p>
        </div>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p>
                <b>Heat Map Findings</b>
                <ul style='text-align:justify'>
                    <li>Consistent Q4 spikes, likely due to  black friday, cyber monday and the holiday shooping season for several product</li>
                    <li>Biggest Q4 performer: Fashion Accessories, Home and Lifestyle saw the biggest spikes</li>
                    <li>Sales tend to drop in January and February after the holiday season in Q1</li>
                    <li>Fashion Accessories, Home and Lifestyle also Electronic Accessories maintain consistent deman as sales through Q1-Q3 remain relatively stable but lower than in Q4</li>
                </ul>
            </p>
        </div>
    </div>
</div>

<br>
<div style='display: grid; grid-template-columns: 1fr; gap: 20px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
    <div style='display:grid; grid-template-columns: 1fr 1fr; gap:20px;'>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p style="margin:0 0 10px 0; font-weight:600; font-size:2.0rem;text-align:center">AOV Over time (2019-2023)</p><hr style='border:1px solid #ffff'>
            <img src='wm_images/newplot.png' alt="aov over time" 
                 style="width: 100%; height: auto; border-radius:5px;" />
        </div>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p style="margin:0 0 10px 0; font-weight:600; font-size:2.0rem; text-align:center">
            Product Sales heatmap by Quarter
            </p><hr style='border:1px solid #ffff'>
            <img src='wm_images/heatmap.png' alt="heatmap" 
                 style="max-width: 100%; height: auto; display: inline-block;" />
        </div>
    </div>
</div>
<br>
<p style='text-align:center; font-size:1.7rem; font-weight:bold;font-color:white; font-family:consolas'>
Payment Methods Program Learnings
</p>
<hr>
<div style='display: grid; grid-template-columns: 1fr; gap: 20px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
    <div style='display:grid; grid-template-columns: 1fr 1fr; gap:20px;'>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p style="margin:0 0 10px 0; font-weight:600; font-size:2.0rem;text-align:center">Average Order Value by Paymens Methods</p>
            <img src='wm_images/aov_payment.png' alt="aov over time" 
                 style="width: 100%; height: auto; border-radius:5px;" />
        </div>
        <div style='border:1px solid #d6d2d2ff; padding:10px; border-radius:5px'>
            <p style="margin:0 0 10px 0; font-weight:600; font-size:2.0rem; text-align:center">
            Number of Orders by Payment Methods
            </p>
            <img src='wm_images/orders_pm.png' alt="heatmap" 
                 style="max-width: 100%; height: auto; display: inline-block;" />
        </div>
    </div>
</div><br>
<div style='display: grid; grid-template-columns: 1fr; gap: 20px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
    <ul style='text-align:justify'>
        <li>Digital payment methods (ewallet and credit card) drove a significant growth in order volume between 2019 and 2023.  In 2023, the number of digital orders (Ewallet: 906, Credit Card: 973) outnumbered cash orders (356), indicating a permanent change in client preferences toward cashless payments.</li>
        <li> From 2019 to 2020, Average Order Value (AOV) decreased dramatically for all payment types.  Cash AOV dropped from $153 to $99, while Ewallet declined from $147 to $99, indicating a significant decrease in transaction value at the start of the epidemic period.</li>
        <li>Despite a dip in 2020, AOV for digital payments (ewallet and credit card) continued to recover and stabilize.  In 2023, the AOV for Ewallet and Cash hit its peak ($106), followed by Credit Card ($102), reflecting a resurgence in transaction value aided by cashless payments.</li>
        <li> AOV Cash, which peaked in 2019 ($153), was unable to sustain its dominance.  Since 2022 and 2023, AOV for digital payments (e-wallets and credit cards) has reached or surpassed AOV Cash, indicating that customers who utilize digital payments are now consistently making purchases of the same or higher transaction value.</li>
    </ul>
</div>
<br>
<p style='text-align:center; font-size:1.7rem; font-weight:bold;font-color:white; font-family:consolas'>
Regional Results (2019 vs 2023)
</p>
<hr>
 <img src='wm_images/rev_compare.png' alt="heatmap" style="max-width: 100%; height: auto; display: inline-block;" />
<div style='display: grid; grid-template-columns: 1fr; gap: 20px; border: 1px solid #d6d2d2ff; padding:20px; border-radius:5px'>
    <ul style='text-align:justify;'>
    <p>1. The DFW Metroplex region contributes the most sales revenue for product in each Walmart branch</p>
        <ul>
            <li>An CAGR of 28.35% of total sales per product </li>
            <li>$91.172 in 2023</li>
        </ul>
    <p>2. In contrast Walmart branch sales have underperformed in the far west texas region at texas state<p>
        <ul>
            <li>Far West Texas: Region with the Lowest Sales The Far West Texas region ranks lowest in terms of Sales Revenue.</li>
            <li>Despite starting from a very low base ($395 in 2019), this region showed remarkable growth to $2,088 in 2023</li>
            <li>The average annual sales increase (CAGR) was approximately 51.63%.</li>
        </ul>
    <p>3. Central Texas: Emerging High-Potential Market</p>
        <ul>
            <li>Central Texas demonstrates the strongest combined performance with $52,414 in 2023 revenue and a 29.4% CAGR, the highest growth rate among major revenue-generating regions.</li>
            <li>This region contributes 23% of total revenue while maintaining growth momentum that exceeds even the DFW Metroplex. </li>
            <li>The company should prioritize expansion and marketing investments in Central Texas as it represents the best opportunity for substantial revenue gains with proven market demand and lower concentration risk than continuing to focus solely on DFW.</li>
        </ul>
    <p>4. West and East Texas: Underperforming Regions Requiring Strategic Review</p>
        <ul>
            <li>West Texas and East Texas combine for only 12% of total revenue despite having four years of operation, with West Texas showing the slowest CAGR at 20.6% among all regions. </li>
            <li> Both regions have declining revenue share over the period, suggesting they are not keeping pace with company growth or market opportunities. </li>
            <li>Management should conduct a profitability analysis and competitive assessment to determine if these regions require operational improvements, increased marketing support, or strategic exit to reallocate resources to higher-performing markets.</li>
        </ul>
    </ul>
</div>
<br>
<p style='text-align:left; font-size:3.0rem; font-weight:bold;font-color:white; font-family:consolas;'>
Recommendation
</p>
<hr>
<p style='text-align:left; font-size:1.3rem; font-weight:bold;font-color:white; '>
Based on the uncovered insights, here are actionable items that Walmart Branch can take away from our analysis.
</p>
<div class="section" style='text-align:justify'>
    <h2>Sales Strategy</h2>
    <h3>Maximize Q4 Performance and Reduce Seasonal Volatility</h3>
    <p>Q4 consistently delivers peak revenue with 227% average growth, but Q1-Q3 periods see sharp declines of up to 42%. Launch pre-holiday campaigns in October and extend promotions into January with "New Year" themed sales to maintain momentum. Address off-peak quarters with targeted initiatives like back-to-school events in Q3, summer sales in Q2, and spring campaigns in Q1 to smooth revenue fluctuations throughout the year.</p>
    <h3>Reverse Order Volume Decline</h3>
    <p>Order count dropped 39.5% from 451 orders in December 2021 to 120 orders by mid-2022, making it the primary driver of revenue decline rather than AOV changes. Implement customer reactivation programs targeting lapsed buyers, introduce flash sales and limited-time offers to create urgency, and leverage email marketing with personalized product recommendations to increase transaction frequency across all quarters.</p>
</div>
<div class="section" style='text-align:justify'>
    <h2>Product Strategy</h2>
    <h3>Double Down on Top Three Categories</h3>
    <p>Fashion Accessories ($454,531), Home and Lifestyle ($453,878), and Electronic Accessories ($410,031) generate the majority of revenue. Prioritize these categories with expanded inventory during Q4, prominent store placement, and increased marketing spend. Create cross-category bundles to drive higher transaction values and ensure adequate stock levels from October through December when these categories peak.</p>
    <h3>Address Underperforming Sport and Travel Category</h3>
    <p>With only $12,477 total revenue and multiple months of zero sales, this category requires immediate strategic review. Either reposition the product mix toward higher-demand items and launch targeted seasonal campaigns, or discontinue the category and reallocate resources to proven performers. Make a definitive decision within the next quarter to avoid continued resource drain.</p>
    <h3>Recover Average Order Value</h3>
    <p>AOV declined 47.62% from $189 (2019) to $99 (2023), significantly impacting revenue potential. Implement tiered shipping thresholds that incentivize larger purchases, create product bundles with slight discounts, and focus on upselling higher-margin items within top-performing categories. Target a 15-20% AOV recovery over the next 12 months through these combined strategies.</p>
</div>
<div class="section" style='text-align:justify'>
    <h2>Payment Methods Enhancement</h2>
    <h3>Accelerate Digital Payment Growth</h3>
    <p>Digital payments (Ewallet: 906, Credit Card: 973 orders in 2023) now dominate over cash (356 orders), with digital users showing higher AOV ($106 for Ewallet vs. historical cash peaks). Offer exclusive promotions for digital payment users, ensure seamless checkout experiences across all platforms, and partner with payment providers for co-branded campaigns. While maintaining cash infrastructure for remaining customers, actively incentivize digital adoption through rewards and early sale access.</p>
</div>
<div class="section" style='text-align:justify'>
    <h2>Regional Strategy</h2>
    <h3>Protect DFW Metroplex Leadership While Reducing Concentration Risk</h3>
    <p>DFW Metroplex generates 40% of revenue ($91,127) with 28.35% CAGR, creating significant concentration risk. Maintain market leadership through competitive intelligence and customer retention programs while simultaneously investing aggressively in other high-performing regions to reduce dependency on a single market.</p>
    <h3>Aggressively Expand Central Texas Operations</h3>
    <p>Central Texas shows the strongest combined performance with 29.4% CAGR and $52,414 revenue, representing the best growth opportunity. Increase marketing budget by 30%, accelerate new store openings in high-potential cities, and use this region as a testing ground for new initiatives before company-wide rollout.</p>
    <h3>Strategic Decision Required for West and East Texas</h3>
    <p>These regions combine for only 12% of revenue with declining market share and West Texas showing the slowest 20.6% CAGR. Conduct a 90-day profitability analysis to determine whether to implement improvement interventions or strategically exit these markets. If maintaining presence, implement localized product assortments and community-focused campaigns; if unprofitable, reallocate resources to Central Texas and Greater Houston.</p>
    <h3>Evaluate Far West Texas ROI</h3>
    <p>Despite 51.63% CAGR, this region contributes less than 1% of revenue ($2,088). Calculate true ROI including all operational costs and compare against opportunity costs of investing in higher-revenue regions. Unless serving a strategic test market purpose, consider consolidation to maximize resource efficiency.</p>
</div>
<hr>

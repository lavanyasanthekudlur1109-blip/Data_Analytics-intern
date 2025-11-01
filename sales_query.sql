select * from sales.online_sales_sample;

#Use EXTRACT(MONTH FROM order_date) for month
select 
	order_date, 
    month(str_to_date(order_date, '%d-%m-%Y')) as month 
from 
	sales.online_sales_sample;

#GROUP BY year/month.
select 
	count(distinct order_id) as total_orders, 
    month(str_to_date(order_date, '%d-%m-%y')) as month,
    year(str_to_date(order_date, '%d-%m-%y')) as year
from 
	sales.online_sales_sample
group by
	month(str_to_date(order_date, '%d-%m-%y')),
    year(str_to_date(order_date, '%d-%m-%y'));

#Use SUM() for revenue.
select 
	month(str_to_date(order_date, '%d-%m-%y')) as month,
    round(sum(amount),2) as total_revenue
from
	sales.online_sales_sample
group by
	month(str_to_date(order_date, '%d-%m-%y'))
order by 
	month;
					
#COUNT(DISTINCT order_id) for volume.
select
	COUNT(DISTINCT order_id) AS total_orders
from
	sales.online_sales_sample;

#Limit results for specific time periods.
SELECT
  YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) AS year,
  MONTH(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM
  sales.online_sales_sample
WHERE
  STR_TO_DATE(order_date, '%d-%m-%Y') IS NOT NULL
  AND YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')) = 2024
GROUP BY
  YEAR(STR_TO_DATE(order_date, '%d-%m-%Y')),
  MONTH(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY
  year,
  month;
-- Total Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;

-- Top Products
SELECT product, SUM(sales) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

-- Monthly Sales
SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month,
       SUM(sales) AS total_sales
FROM clean_sales
GROUP BY year, month;

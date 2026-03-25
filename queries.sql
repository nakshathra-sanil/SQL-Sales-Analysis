-- Total Sales
SELECT SUM(Sales) AS total_sales FROM superstore_data;

-- Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY Category
ORDER BY total_sales DESC;

-- Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY Region
ORDER BY total_sales DESC;

-- Top Customers
SELECT `Customer Name`, SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 5;

-- Sales by Year
SELECT YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS year,
       SUM(Sales) AS total_sales
FROM superstore_data
GROUP BY year
ORDER BY year;

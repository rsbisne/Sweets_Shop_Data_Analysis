-- QUESTION (1) Which Region sold most products in the first Quarter?
-- ANSWER {North Region}

SELECT Region, count(Product) FROM sales_data
GROUP BY Region
ORDER BY  count(Product) DESC;

-- QUESTION (2) Which Product has the highest sales in first Quarter?
-- ANSWER {Snacks}

SELECT Product, count(Product) FROM sales_data
GROUP BY Product
order by  count(Product) DESC;

-- QUESTION (3) Which Region generated the Highest Profit?
-- ANSWER {East}

SELECT Region, sum(Profit) FROM sales_data
GROUP BY Region
ORDER BY sum(Profit) DESC;

-- QUESTION (4) Which Product generated the Highest Profit?
-- ANSWER {Meals}

SELECT Product, sum(Profit) FROM sales_data
GROUP BY Product
ORDER BY sum(Profit) DESC;

-- QUESTION (5) List the top 3 Products in each region?
-- North:	GulabJamun	8	Snacks	7	Chocolates	7
-- South:	Chocolates	6	Soanpapdi	6	GulabJamun	6
-- East:	Snacks	10	Dhokla	6	Soft Drinks	6
-- West:	Soanpapdi	8	KajuKatli	6	Meals	6}

(SELECT Region, Product, count(*) AS Product_Count
  FROM sales_data
  WHERE Region = 'North'
  GROUP BY Product
  ORDER BY Product_Count DESC
  LIMIT 3)
UNION ALL
(SELECT Region, Product, count(*) AS Product_Count
  FROM sales_data
  WHERE Region = 'South'
  GROUP BY Product
  ORDER BY Product_Count DESC
  LIMIT 3)
UNION ALL
(SELECT Region, Product, count(*) AS Product_Count
  FROM sales_data
  WHERE Region = 'East'
  GROUP BY Product
  ORDER BY Product_Count DESC
  LIMIT 3)
UNION ALL
(SELECT Region, Product, count(*) AS Product_Count
  FROM sales_data
  WHERE Region = 'West'
  GROUP BY Product
  ORDER BY Product_Count DESC
  LIMIT 3);
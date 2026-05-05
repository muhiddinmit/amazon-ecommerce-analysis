SELECT * FROM amazon_orders 
LIMIT 10;

DESCRIBE amazon_orders ;

SELECT 
    SUM(CASE WHEN final_price IS NULL THEN 1 ELSE 0 END) AS missing_price,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM amazon_orders;


SELECT SUM(final_price ) AS total_revenue ,
        AVG(final_price) AS avg_order_value
FROM amazon_orders ;
    

SELECT category, SUM(final_price) AS revenue , COUNT(*) AS total_orders FROM amazon_orders
GROUP BY category
ORDER BY revenue DESC ;


SELECT 
      brand,
      SUM(final_price) as revenue 
FROM amazon_orders
GROUP BY brand
ORDER BY revenue DESC
LIMIT 10 ;

SELECT 
     is_returned,
     COUNT(*) AS total_orders
FROM amazon_orders
GROUP BY is_returned;


SELECT 
     delivery_status,
     COUNT(*) AS total_orders 
FROM amazon_orders
GROUP BY delivery_status ;

SELECT 
      category,
      AVG(rating)  AS avg_rating,
      SUM(final_price) AS revenue
FROM amazon_orders
GROUP BY category
ORDER BY revenue DESC;


SELECT 
      DATE_FORMAT(purchase_date, '%Y-%m') as month,
      SUM(final_price) as revenue
FROM amazon_orders
GROUP BY month
ORDER BY month;



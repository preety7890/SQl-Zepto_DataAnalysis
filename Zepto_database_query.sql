
 -- 1 find the top 10 best-value product based on the discount percentage
SELECT 
    name, discountPercent
FROM
    Zepto.zepto_detail
ORDER BY discountPercent DESC
LIMIT 10;
 
 -- 2 what are the product with high MRP but out of stock
SELECT 
    name, mrp
FROM
    Zepto.zepto_detail
WHERE
    outOfStock = 'TRUE'
ORDER BY mrp DESC;

-- 3 Calculate estimated revenue for each category

SELECT 
    Category, SUM(mrp * quantity) AS estimated_revenue
FROM
    Zepto.zepto_detail
GROUP BY Category;

-- 4 find all product where MRP is greater than 500 and discount is less than 10%
SELECT 
    name, mrp, discountPercent
FROM
    Zepto.zepto_detail
WHERE
    mrp > 500 AND discountPercent < 10;
    
-- 5 identify the top 5 categories offering the highest average discount percentage
SELECT 
    Category, AVG(discountPercent) AS avg_discount
FROM
    Zepto.zepto_detail
GROUP BY Category
ORDER BY AVG(discountPercent) DESC
LIMIT 5;

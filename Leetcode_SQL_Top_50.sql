-- 1757. Recyclable and Low Fat Products
SELECT
    product_id
FROM
    products
WHERE
    low_fats = "Y"
    AND recyclable = "Y";
-- 584. Find Customer Referee
SELECT
    name
FROM
    customer
WHERE
    referee_id != 2
    OR referee_id IS NULL;
-- 595. Big Countries
SELECT
    name,
    population,
    area
FROM
    world
WHERE
    area >= 3000000
    OR population >= 25000000;
-- 1148. Article Views I
SELECT
    DISTINCT author_id AS id
FROM
    views
WHERE
    author_id = viewer_id
ORDER BY
    author_id ASC;
-- 1683. Invalid Tweets
SELECT
    tweet_id
FROM
    Tweets
WHERE
    LENGTH(content) > 15;
-- 1378. Replace Employee ID With The Unique Identifier
SELECT
    unique_id,
    name
FROM
    employees
    LEFT JOIN EmployeeUNI ON EmployeeUNI.id = Employees.id;
-- 1068. Product Sales Analysis I
SELECT
    product_name,
    year,
    price
FROM
    sales
    INNER JOIN product ON sales.product_id = product.product_id;
-- 1581. Customer Who Visited but Did Not Make Any Transactions
SELECT
    customer_id,
    v.count(visit_id)
FROM
    visits v
    LEFT JOIN transactions ON v.visit_id = transactions.visit_id;
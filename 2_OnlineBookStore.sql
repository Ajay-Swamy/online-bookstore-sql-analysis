-- 1) Retrieve the total number of books sold for each genre:
SELECT 
    b.Genre,
    sum(o.quantity) AS Total_No_of_Books
FROM
    orders o
    INNER JOIN
    Books b
    ON o.book_id=b.book_id
GROUP BY
    b.Genre;


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT 
    AVG(price) as Average_price_of_fantasy
FROM
    books
WHERE
    genre='Fantasy';


-- 3) List customers who have placed at least 2 orders:
SELECT
    c.name,c.Customer_ID,count(o.Order_ID) AS Order_Count
FROM
    customers c
    INNER JOIN
    orders o
    ON c.customer_id=o.customer_id
GROUP BY
    c.customer_id,c.name
having
    count(order_id)>=2

-- 4) Find the most frequently ordered book:

SELECT
    b.title,
    b.Book_ID,
    count(o.Order_ID) as Book_order_count
FROM
    Books b
    INNER JOIN
    Orders o
    ON b.Book_ID=o.Book_ID
GROUP BY
    b.Book_ID
ORDER BY
    Book_order_count DESC 
LIMIT 1;

/*
SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;
*/


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :

SELECT 
    Book_ID,
    Title,
    price
FROM 
    Books
WHERE 
    Genre='Fantasy'
ORDER BY
    price DESC
LIMIT 3;


-- 6) Retrieve the total quantity of books sold by each author:
SELECT
    b.Author,
    sum(o.Quantity) as Total_quantity
FROM
    books b 
    INNER JOIN
    Orders o
    ON
    b.Book_ID=o.Book_ID
GROUP BY
    Author


-- 7) List the cities where customers who spent over $30 are located:
SELECT
    DISTINCT c.city ,
    Total_Amount
FROM
    Customers c
    INNER JOIN
    Orders o
    ON
    c.Customer_ID=o.Customer_ID
WHERE 
    o.Total_Amount>30;


-- 8) Find the customer who spent the most on orders:
SELECT 
    c.customer_id,
    c.name, 
    SUM(o.total_amount) AS Total_Spent
FROM 
    orders o
JOIN 
    customers c 
    ON 
    o.customer_id=c.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    Total_spent Desc 
    LIMIT 1;


--9) Calculate the stock remaining after fulfilling all orders:

SELECT 
    b.book_id, 
    b.title, 
    b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity,  
	b.stock- COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM 
    books b
    LEFT JOIN 
    orders o 
    ON b.book_id=o.book_id
GROUP BY 
    b.book_id 
ORDER BY 
    b.book_id;
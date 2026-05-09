--1) Retrieve all books in the "Fiction" genre:
SELECT 
    Book_ID ,Title,genre
FROM
    Books
WHERE
    Genre='Fiction';

--2)Find books published after the year 1950:
SELECT 
    Book_ID,
    Title
FROM 
    Books
WHERE
    Published_Year>1950;

-- 3) List all customers from the Canada:
SELECT *
FROM
    customers
WHERE
    country='Canada';

-- 4) Show orders placed in November 2023:
SELECT * 
FROM
    orders
WHERE
    Order_Date BETWEEN'2023-11-1' AND'2023-11-30' ;

-- 5) Retrieve the total stock of books available:
SELECT SUM(Stock) AS Total_stock FROM books

-- 6) Find the details of the most expensive book:
SELECT * 
FROM
    Books 
ORDER BY 
    Price DESC
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT c.* 
FROM 
    customers c 
    INNER JOIN 
    orders o 
    ON c.customer_id=o.customer_id
WHERE o.quantity>1


-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT *
FROM
    Orders
WHERE
    Total_Amount>20
ORDER BY 
    total_amount;

-- 9) List all genres available in the Books table:
SELECT DISTINCT(Genre) FROM Books;

-- 10) Find the book with the lowest stock:
select * FROM Books
ORDER BY
    Stock ASC
LIMIT 1;


-- 11) Calculate the total revenue generated from all orders:
SELECT SUM(total_amount) As Revenue 
FROM Orders;
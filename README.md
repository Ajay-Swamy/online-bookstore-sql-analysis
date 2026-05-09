# Online Book Store SQL Analysis

## Project Overview
This project explores an Online Book Store database using SQL to analyze book inventory, customer purchasing behavior, sales trends, and revenue performance. The project was developed using PostgreSQL and focuses on solving real-world business problems through analytical SQL queries.

The analysis includes:
- Inventory analysis
- Customer behavior analysis
- Revenue analysis
- Genre-based sales analysis
- Order trend exploration

This project demonstrates practical SQL skills including:
- Filtering
- Joins
- Aggregations
- Grouping
- Sorting
- Business-oriented analytical querying

---

# Database Schema

The project consists of the following relational tables:

- **Books**
- **Customers**
- **Orders**

These tables are connected using primary and foreign key relationships to simulate a real-world online bookstore database.

---

# SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- LIMIT
- GROUP BY
- SUM
- COUNT
- AVG
- INNER JOIN
- LEFT JOIN
- HAVING
- Aggregation Functions
- Date Filtering
- Business Analytics Queries

---

# Project Questions & Analysis

---

## 1. Retrieve all books in the Fiction genre

### Business Objective
Analyze books belonging to a specific category for inventory and customer preference analysis.

### Query
```sql
-- Question 1: Retrieve all books in the Fiction genre

SELECT *
FROM Books
WHERE Genre = 'Fiction';
```

### Insights
- Fiction books form an important category in the bookstore inventory.
- Genre-based filtering helps understand product categorization and customer interests.

---

## 2. Find books published after 1950

### Business Objective
Identify modern books published after a specific year.

### Query
```sql
-- Question 2: Find books published after 1950

SELECT *
FROM Books
WHERE Published_Year > 1950;
```

### Insights
- Publication year analysis helps distinguish modern and classic books.
- Useful for inventory trend analysis and recommendation systems.

---

## 3. Retrieve customers from Canada

### Business Objective
Analyze customers based on geographical location.

### Query
```sql
-- Question 3: Retrieve customers from Canada

SELECT *
FROM Customers
WHERE Country = 'Canada';
```

### Insights
- Customer location analysis supports regional marketing strategies.
- Helps identify customer distribution across countries.

---

## 4. Find orders placed in 2023

### Business Objective
Track yearly order activity and sales performance.

### Query
```sql
-- Question 4: Find orders placed in 2023

SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2023-01-01' AND '2023-12-31';
```

### Insights
- Time-based analysis helps monitor yearly business activity.
- Useful for identifying sales trends and seasonal behavior.

---

## 5. Calculate total stock available

### Business Objective
Analyze total inventory available in the bookstore.

### Query
```sql
-- Question 5: Calculate total stock available

SELECT
    SUM(Stock) AS Total_Stock
FROM Books;
```

### Insights
- Inventory tracking is essential for stock management.
- Helps evaluate overall product availability.

---

## 6. Find the most expensive book

### Business Objective
Identify premium-priced products in the bookstore.

### Query
```sql
-- Question 6: Find the most expensive book

SELECT *
FROM Books
ORDER BY Price DESC
LIMIT 1;
```

### Insights
- Price analysis helps understand premium inventory.
- Useful for pricing and profitability analysis.

---

## 7. Find customers who ordered more than one quantity

### Business Objective
Identify customers making bulk purchases.

### Query
```sql
-- Question 7: Find customers who ordered more than one quantity

SELECT
    Orders.Order_ID,
    Customers.Name,
    Orders.Quantity
FROM Orders
JOIN Customers
    ON Orders.Customer_ID = Customers.Customer_ID
WHERE Orders.Quantity > 1;
```

### Insights
- Bulk purchases may indicate highly engaged customers.
- Useful for customer segmentation and loyalty analysis.

---

## 8. Calculate total revenue generated

### Business Objective
Measure overall business revenue performance.

### Query
```sql
-- Question 8: Calculate total revenue generated

SELECT
    SUM(Total_Amount) AS Total_Revenue
FROM Orders;
```

### Insights
- Revenue analysis is a key business metric.
- Helps evaluate bookstore financial performance.

---

## 9. Find total books sold by genre

### Business Objective
Analyze genre-wise sales performance.

### Query
```sql
-- Question 9: Find total books sold by genre

SELECT
    Books.Genre,
    SUM(Orders.Quantity) AS Total_Books_Sold
FROM Orders
JOIN Books
    ON Orders.Book_ID = Books.Book_ID
GROUP BY Books.Genre;
```

### Insights
- Helps identify the most popular book genres.
- Useful for inventory planning and marketing strategies.

---

## 10. Find total amount spent by each customer

### Business Objective
Identify high-value customers based on spending behavior.

### Query
```sql
-- Question 10: Find total amount spent by each customer

SELECT
    Customers.Name,
    SUM(Orders.Total_Amount) AS Total_Spent
FROM Orders
JOIN Customers
    ON Orders.Customer_ID = Customers.Customer_ID
GROUP BY Customers.Name
ORDER BY Total_Spent DESC;
```

### Insights
- Helps identify top-spending customers.
- Useful for loyalty programs and personalized marketing.

---

## 11. Find the most frequently ordered book

### Business Objective
Identify the bookstore’s best-selling book.

### Query
```sql
-- Question 11: Find the most frequently ordered book

SELECT
    Books.Title,
    SUM(Orders.Quantity) AS Total_Ordered
FROM Orders
JOIN Books
    ON Orders.Book_ID = Books.Book_ID
GROUP BY Books.Title
ORDER BY Total_Ordered DESC
LIMIT 1;
```

### Insights
- Best-selling books can guide restocking decisions.
- Useful for sales trend analysis and recommendation systems.

---

# Overall Project Outcomes

- Performed SQL-based exploratory analysis on bookstore datasets.
- Applied business-oriented analytical thinking using SQL.
- Strengthened practical SQL skills through real-world queries.
- Demonstrated how relational databases can generate actionable business insights.

---

# Technologies Used

- PostgreSQL
- SQL
- Relational Database Querying
- Data Analysis
- Business Analytics

---

# Author

Ajay Swamy

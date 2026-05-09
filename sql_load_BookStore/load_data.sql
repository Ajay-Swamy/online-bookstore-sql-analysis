-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'c:\csv_files\online_bookstore_csv_files\Books.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'c:\csv_files\online_bookstore_csv_files\Customers.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'c:\csv_files\online_bookstore_csv_files\Orders.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
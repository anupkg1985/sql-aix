-- Create the database
CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;

-- Create the Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each product',
    product_name VARCHAR(100) NOT NULL COMMENT 'Name of the product',
    description TEXT COMMENT 'Description of the product',
    price DECIMAL(10, 2) NOT NULL COMMENT 'Price of the product'
);

-- Create the Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each customer',
    first_name VARCHAR(50) NOT NULL COMMENT 'First name of the customer',
    last_name VARCHAR(50) NOT NULL COMMENT 'Last name of the customer',
    city VARCHAR(50) COMMENT 'City where the customer resides',
    state VARCHAR(50) COMMENT 'State where the customer resides'
);

-- Create the Sales table
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'Unique identifier for each sale',
    customer_id INT COMMENT 'Identifier for the customer making the purchase',
    product_id INT COMMENT 'Identifier for the product being purchased',
    sale_date DATE COMMENT 'Date of the sale',
    price DECIMAL(10, 2) COMMENT 'Sale price of the product',
    quantity INT COMMENT 'Quantity of the product sold',
    discount DECIMAL(5, 2) COMMENT 'Discount applied to the sale',
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Insert sample data into Product table
INSERT INTO Product (product_name, description, price) VALUES
('Smartphone', 'Latest model smartphone', 699.99),
('Laptop', 'High performance laptop', 999.99),
('Tablet', '10-inch screen tablet', 399.99),
('Smartwatch', 'Water-resistant smartwatch', 199.99),
('Headphones', 'Noise-cancelling headphones', 149.99),
('Bluetooth Speaker', 'Portable Bluetooth speaker', 89.99),
('Camera', 'Digital SLR camera', 499.99),
('Monitor', '27-inch 4K monitor', 299.99),
('Keyboard', 'Mechanical keyboard', 79.99),
('Mouse', 'Wireless mouse', 49.99);

-- Insert sample data into Customer table
INSERT INTO Customer (first_name, last_name, city, state) VALUES
('John', 'Doe', 'Los Angeles', 'CA'),
('Jane', 'Smith', 'San Francisco', 'CA'),
('Michael', 'Johnson', 'Dallas', 'TX'),
('Emily', 'Davis', 'Austin', 'TX'),
('Chris', 'Brown', 'Minneapolis', 'MN'),
('Sarah', 'Wilson', 'Saint Paul', 'MN'),
('David', 'Martinez', 'Charlotte', 'NC'),
('Laura', 'Garcia', 'Raleigh', 'NC'),
('James', 'Anderson', 'Las Vegas', 'NV'),
('Emma', 'Thomas', 'Reno', 'NV');

-- Insert sample data into Sales table
INSERT INTO Sales (customer_id, product_id, sale_date, price, quantity, discount) VALUES
(1, 1, '2024-01-15', 699.99, 1, 0.00),
(2, 2, '2024-01-20', 999.99, 1, 50.00),
(3, 5, '2024-01-25', 399.99, 2, 20.00),
(4, 4, '2024-01-30', 199.99, 1, 10.00),
(5, 5, '2024-01-31', 149.99, 1, 5.00),
(6, 6, '2024-02-10', 89.99, 1, 0.00),
(7, 7, '2024-02-15', 499.99, 1, 25.00),
(8, 8, '2024-02-20', 299.99, 1, 15.00),
(9, 9, '2024-02-25', 79.99, 2, 5.00),
(10, 4, '2024-02-28', 49.99, 1, 0.00),
(1, 2, '2024-03-05', 999.99, 1, 50.00),
(2, 3, '2024-03-10', 399.99, 1, 20.00),
(3, 4, '2024-03-15', 199.99, 1, 10.00),
(4, 5, '2024-03-20', 149.99, 1, 5.00),
(5, 6, '2024-03-25', 89.99, 1, 0.00),
(6, 7, '2024-04-05', 499.99, 1, 25.00),
(7, 8, '2024-04-10', 299.99, 1, 15.00),
(8, 9, '2024-04-15', 79.99, 2, 5.00),
(9, 10, '2024-04-20', 49.99, 1, 0.00),
(10, 1, '2024-04-25', 699.99, 1, 0.00),
(1, 3, '2024-05-05', 399.99, 1, 20.00),
(2, 4, '2024-05-10', 199.99, 1, 10.00),
(3, 5, '2024-05-15', 149.99, 1, 5.00),
(4, 6, '2024-05-20', 89.99, 1, 0.00),
(5, 7, '2024-05-25', 499.99, 1, 25.00),
(6, 5, '2024-06-05', 299.99, 1, 15.00),
(7, 9, '2024-06-10', 79.99, 2, 5.00),
(8, 10, '2024-06-15', 49.99, 1, 0.00),
(9, 1, '2024-06-20', 699.99, 1, 0.00),
(10, 2, '2024-06-25', 999.99, 1, 50.00),
(1, 4, '2024-07-05', 199.99, 1, 10.00),
(2, 5, '2024-07-10', 149.99, 1, 5.00),
(3, 6, '2024-07-15', 89.99, 1, 0.00),
(4, 7, '2024-07-20', 499.99, 1, 25.00),
(5, 8, '2024-07-25', 299.99, 1, 15.00);
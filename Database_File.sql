---------------------------
-- PRODUCTS TABLE
---------------------------

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1,  'White Sandwich Bread Loaf',    'Bread',        3.49),
(2,  'Whole Grain Bread Loaf',       'Bread',        3.99),
(3,  'Hot Dog Buns 8 Pack',          'Buns Rolls',   2.99),
(4,  'Hamburger Buns 8 Pack',        'Buns Rolls',   3.29),
(5,  'Flour Tortillas 10 Count',     'Tortillas',    2.79),
(6,  'Plain Mini Bagels 12 Count',   'Bagels',       3.59),
(7,  'Cinnamon Swirl Bread',         'Sweet Goods',  3.99),
(8,  'Chocolate Cupcakes 6 Pack',    'Sweet Goods',  4.49),
(9,  'English Muffins 6 Count',      'Breakfast',    3.19),
(10, 'Brioche Slider Buns 12 Pack',  'Buns Rolls',   4.99);



---------------------------
-- STORES TABLE
---------------------------

CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO stores (store_id, store_name, location) VALUES
(1,  'Walmart Supercenter Bentonville',   'Bentonville AR'),
(2,  'Kroger Market Dallas',             'Dallas TX'),
(3,  'Target Store Chicago',             'Chicago IL'),
(4,  'Costco Wholesale Phoenix',         'Phoenix AZ'),
(5,  'Publix Store Orlando',             'Orlando FL'),
(6,  'Walmart Supercenter Houston',      'Houston TX'),
(7,  'Kroger Marketplace Atlanta',       'Atlanta GA'),
(8,  'Target Store Minneapolis',         'Minneapolis MN'),
(9,  'Sam''s Club Bentonville',          'Bentonville AR'),
(10, 'HEB Plus San Antonio',             'San Antonio TX'),
(11, 'Meijer Supercenter Detroit',       'Detroit MI'),
(12, 'Albertsons Boise',                 'Boise ID'),
(13, 'Safeway Seattle',                  'Seattle WA'),
(14, 'Food Lion Charlotte',              'Charlotte NC'),
(15, 'Walmart Neighborhood Market Miami','Miami FL');



---------------------------
-- TRANSACTIONS TABLE
---------------------------

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    store_id INT,
    quantity INT,
    transaction_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

INSERT INTO transactions VALUES 
(1, 127, 8, 4, 4, '2025-03-31'),
(2, 105, 3, 4, 5, '2024-11-12'),
(3, 116, 2, 2, 3, '2025-05-01'),
(4, 120, 8, 1, 1, '2024-11-02'),
(5, 105, 5, 2, 1, '2025-03-17'),
(6, 110, 7, 3, 5, '2025-01-04'),
(7, 110, 7, 6, 5, '2025-01-01'),
(8, 126, 7, 5, 2, '2025-06-08'),
(9, 123, 1, 3, 2, '2024-10-08'),
(10,124, 2, 7, 5, '2024-08-27'),
(11,102, 1, 3, 2, '2024-08-11'),
(12,108, 5, 1, 4, '2025-05-26'),
(13,104, 3, 8, 4, '2025-05-04'),
(14,120, 1, 4, 5, '2024-07-17'),
(15,121, 6, 5, 5, '2025-05-19'),
(16,118, 6, 2, 4, '2024-11-29'),
(17,109, 8, 9, 5, '2024-07-10'),
(18,103, 1, 4, 3, '2024-09-05'),
(19,116, 8, 4, 4, '2024-07-14'),
(20,130, 5,10, 2, '2024-07-30'),
(21,105, 1, 3, 5, '2024-10-02'),
(22,107, 9,11, 4, '2024-11-16'),
(23,122, 9, 4, 2, '2025-04-30'),
(24,125, 1,12, 1, '2024-07-14'),
(25,116, 8, 4, 5, '2024-12-13'),
(26,126, 6, 2, 2, '2024-09-21'),
(27,127, 8, 1, 1, '2024-10-10'),
(28,101, 7,13, 3, '2024-11-15'),
(29,119, 9,14, 2, '2025-06-03'),
(30,116, 8, 4, 5, '2025-03-16'),
(31,131, 3, 6, 3, '2025-02-10'),
(32,132, 4, 7, 2, '2025-01-22'),
(33,133, 2, 8, 4, '2025-03-05'),
(34,134,10, 9, 2, '2025-04-11'),
(35,135, 6,10, 3, '2025-05-09'),
(36,112, 5,11, 1, '2024-12-05'),
(37,114, 4,12, 2, '2025-02-18'),
(38,115, 2,13, 4, '2025-03-27'),
(39,117, 7,14, 3, '2025-06-01'),
(40,118, 9,15, 5, '2025-05-20'),
(41,129, 1, 2, 3, '2025-01-14'),
(42,140, 3, 1, 2, '2024-12-19'),
(43,142, 4, 5, 3, '2025-03-22'),
(44,143, 6, 6, 4, '2025-04-02'),
(45,144, 8, 7, 2, '2024-09-28'),
(46,145,10, 8, 5, '2025-02-03'),
(47,146, 9, 4, 1, '2024-07-21'),
(48,147, 7, 3, 4, '2025-03-11'),
(49,148, 2, 9, 3, '2025-05-12'),
(50,149, 1,10, 2, '2024-08-14'),
(51,150, 5,11, 4, '2025-06-09'),
(52,151, 4,12, 3, '2024-10-29'),
(53,152, 8,13, 2, '2024-11-07'),
(54,153, 6,14, 5, '2025-01-17'),
(55,154, 3,15, 1, '2024-12-22'),
(56,155,10, 2, 4, '2025-02-09'),
(57,156, 7, 5, 3, '2025-03-19'),
(58,157, 2, 6, 2, '2025-04-27'),
(59,158, 9, 8, 5, '2024-09-03'),
(60,159, 5, 1, 3, '2025-06-15');


select * from products
select * from stores
select * from transactions
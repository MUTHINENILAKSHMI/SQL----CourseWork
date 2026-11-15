create database flip;
use flip;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CreatedAt DATE,
    
    IsAvailable BOOLEAN
);

-- =========================================
-- 2. INSERT 20 PRODUCTS
-- =========================================y

INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);

-- 2. select functions 
-- * retrive data from table

select * from products;
select productname,stock,price from products;

-- where function between and  

select * from  products where stock<10;
select * from products where category='Electronics';
select price as cost from products;
select stock as fewitemsleft from products where stock<10;
select * from products where stock between 20 and 50;
select price from products where price between 5000 and 10000;

-- like function: 

select * from products where category like '%e';
select * from products where category like 'e%';
select * from products where category like '%s%';
select * from products where category like '_e%';
select * from products where category like '%s%';

-- not in ,in


select * from products where category not in ('Accessories','Electronics' );
select * from products where category in ('Accessories','Electronics' );


-- order by distncit and limit


select * from products order by price;
select * from products order by price desc;
select * from products order by stock;
select * from products order by stock desc;
select * from products order by productname;
select * from products order by createdat;
select distinct category from products;
select distinct productname from products;
select distinct price from products;
select *  from products order by price desc limit 5;

-- Aggeration 


select max(price) as highest_product from products;
select min(price) as loweest_product from products;
select sum(price) as total_product from products;
select avg(price) as avg_product from products;
select count(price) as count_product from products;

-- Group by and having


select category, max(price) from products group by category;
select category, min(price) from products group by category;
select category, sum(price) from products group by category;
select category, avg(price) from products group by category;
select category, count(price) from products group by category;

-- having: filters from group
select category, max(price) from products group by category
having max(price)>1000;
select category, min(price) from products group by category
having min(price)<1000;
select category, sum(price) from products group by category
having sum(price)>1000;
select category, avg(price) from products group by category
having avg(price)>100000;
select category, count(price) from products group by category
having count(price)=10;



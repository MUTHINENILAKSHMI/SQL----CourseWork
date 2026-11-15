/*
SQL Joins – Theory Notes
1. What is a JOIN?
A JOIN is used to combine data from two or more tables based on a related column between them.

2. Types of Joins

1. INNER JOIN
Returns only matching records from both tables.
Matching is based on a common condition between the tables.
2. EQUI JOIN

Combines tables using the equality operator (=).

The join condition checks whether the values in related columns are equal.

3. NON-EQUI JOIN

Combines tables using comparison operators such as <, >, <=, >=, or BETWEEN.

The join condition does not relay  only on equality.

4. OUTER JOIN

LEFT JOIN: Returns all records from the left table and matching records from the right table. Unmatched right-side values appear as NULL.

RIGHT JOIN: Returns all records from the right table and matching records from the left table. Unmatched left-side values appear as NULL.

FULL OUTER JOIN: Returns all records from both tables, including matching and non-matching records. Missing values appear as NULL.

5. SELF JOIN

Joins a table with itself.

Used when comparing or relating records within the same table.

For example, finding employees and their managers from one employee table.

6. NATURAL JOIN

Automatically joins two tables using columns that have the same name and compatible data types.

It matches records based on all common column names.

It avoids explicitly specifying the join condition.

Important points to remember
INNER JOIN: Only matching records.

EQUI JOIN: Uses the = operator.

NON-EQUI JOIN: Uses comparison operators other than equality.

LEFT JOIN: All left-table records.

RIGHT JOIN: All right-table records.

FULL OUTER JOIN: All records from both tables.

SELF JOIN: A table joined with itself.

NATURAL JOIN: Automatically matches common column names.

Cross join : cartesion join
Note: EQUI JOIN and NON-EQUI JOIN describe join conditions, while INNER and OUTER JOIN describe which records are returned. A FULL OUTER JOIN does not necessarily use UNION; it is a separate join operation.

*/
-- database creation
create database join_practice;
use join_practice;

-- create table users
create table user(
user_id int primary key auto_increment,
username varchar(50),
city varchar(50)
);
-- create table posts
create table posts(
post_id int primary key auto_increment,
user_id int,
caption varchar(255), foreign key(user_id) references user(user_id)
);

INSERT INTO user (username, city)
VALUES
('lakshmi', 'Hyderabad'),
('priya', 'Chennai'),
('amit_raj', 'Bengaluru'),
('sneha', 'Mumbai'),
('vikas_dev', 'Pune'),
('anjali', 'Delhi'),
('kiran_07', 'Vijayawada'),
('neha', 'Kolkata'),
('arjun', 'Kochi'),
('divya', 'Visakhapatnam');

INSERT INTO posts (user_id, caption)
VALUES
(1, 'Enjoying my day'),
(2, 'Beautiful morning'),
(1, 'Learning SQL'),
(6, 'Weekend vibes'),
(5, 'Travel memories'),
(7, 'Keep smiling'),
(7, 'Working hard'),
(5, 'Nature lover'),
(1, 'Coding time'),
(2, 'Life is beautiful');
select * from posts;
select * from user;



 
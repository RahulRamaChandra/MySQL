create database join_sql

use join_sql

show tables

create table customers
(
customerid int not null,
customername varchar(100),
contactname varchar(100),
address varchar(100),
city varchar(100),
postalcode varchar(10),
country varchar(20),
PRIMARY KEY (customerid)
)

drop table orders

create table orders
(
OrderID int,
CustomerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
PRIMARY KEY (Orderid)
)

INSERT into customers values (1, 'Satyajit','Satyajit', 'Hong Kong', 'Hong Kong', '000000', 'Hong Kong SAR');
INSERT into customers values (2, 'Shalini','Shalini', 'Bangalore', 'Bangalore', '000000', 'India');
INSERT into customers values (3, 'Rupa','Rupa', 'Bangalore', 'Bangalore', '000000', 'India');
INSERT into customers values (4, 'Shuvrajit','Shuvrajit', 'Bangalore', 'Bangalore', '000000', 'India');
INSERT into customers values (5, 'Priya','Priya', 'Bangalore', 'Bangalore', '000000', 'India');
INSERT into customers values (6, 'Ramesh','Ramesh', 'Bangalore', 'Bangalore', '000000', 'India');
INSERT into customers values (7, 'Suresh','Suresh', 'Delhi', 'Delhi', '000000', 'India');
INSERT into customers values (8, 'Sid','Sid', 'Mumbai', 'Mumbai', '000000', 'India');
INSERT into customers values (9, 'Navya','Satyajit', 'Mumbai', 'Mumbai', '000000', 'India');
INSERT into customers values (10, 'Naina','Naina', 'Pune', 'Pune', '000000', 'India');

select * from customers

INSERT INTO orders VALUES (901, 1, 1, sysdate(), 92801);
INSERT INTO orders VALUES (902, 1, 1, sysdate()-10, 92801);
INSERT INTO orders VALUES (903, 4, 4, sysdate()-20, 92801);
INSERT INTO orders VALUES (904, 5, 5, sysdate()-30, 92801);
INSERT INTO orders VALUES (905, 6, 6, sysdate()-40, 92801);
INSERT INTO orders VALUES (906, 11, 11, sysdate()-50, 92801);

select * from orders;

select * from customers c LEFT JOIN orders o ON c.CustomerID = o.CustomerID;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c LEFT JOIN orders o 
ON c.customerID = o.customerID;

select o.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c RIGHT JOIN orders o
ON c.customerid = o.customerid;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c INNER JOIN orders o ON c.customerid = o.customerid;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c , orders o WHERE c.customerid = o.customerid;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c 
LEFT OUTER JOIN orders o ON c.customerid = o.customerid;
UNION
select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c 
RIGHT OUTER JOIN orders o ON c.customerid = o.customerid;

select c.customerid, c.customername, c.country, o.orderid, o.orderdate from customers c 
CROSS JOIN orders o ON c.customerid = o.customerid;
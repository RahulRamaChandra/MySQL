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

create table orders
(
OrderID int,
CudtomerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
PRIMARY KEY (orderid)
)
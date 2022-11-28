use intro_sql

show tables

create table employees
(
emp_name varchar(50),
emp_id int not null,
manager_name varchar(50),
division int,
PRIMARY KEY (emp_id)
)

drop table myemployees_ts0211

create table emp_new
(
firstname varchar(20),
last_name varchar(20),
title varchar(5),
age int,
salary int
);

show tables

select * from emp_new

alter table
emp_new
add gender
varchar(1)

alter table
emp_new
drop column 
random;

drop table emp_new;

create database random_new

show databases;

drop database random_new;
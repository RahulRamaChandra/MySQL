create database Intro_SQL

use Intro_SQL

drop table Students

create table Students
(
student_id int,
student_name varchar(50),
age int,
gender varchar(1),
location varchar(100)
)

select * from Students

INSERT into Students values (1,'Satyajit', 31, 'M', 'Hong Kong')

INSERT into Students values (2,null, 31, 'M', 'India')



drop table dep


create table dep
(
depid int not null,
depname varchar(25),
depadd varchar(100),
PRIMARY KEY (depid)
)

Insert into  dep values(null, null, null)

select * from dep

create table emp
(
empid int,
empname varchar(50),
depadd varchar(255),
depid int,
PRIMARY KEY (empid),
FOREIGN KEY (depid) REFERENCES dep(depid)
)

select * from emp

show tables


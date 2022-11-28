use intro_sql

show tables;

create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
primary key (id)
)

select * from emp_info;

insert into emp_info values('John','Jones',99980,45,'Payson','Arizona');
insert into emp_info values('Mary','Jones',99982,25,'Payson','Arizona');
insert into emp_info values('Eric','Edwards',88232,32,'Phoenix','Arizona');
insert into emp_info values('Mary ann','Edwards',88233,32,'Phoenix','Arizona');
insert into emp_info values('Ginger','Howell',98002,42,'Cottonwood','Arizona');

select * from emp_info;

select first_name, last_name from emp_info;

select first_name as firstname, last_name as lastname from emp_info;

select count(*) from emp_info;

select count(id) from emp_info;

select count(*) as Record_Count from emp_info;

select * from emp_info where age > 30;

select * from emp_info where age > 30 and age < 45;

select * from emp_info where first_name like 'E%';

select * from emp_info where last_name like 'e%';

select * from emp_info where last_name like '%s';

select * from emp_info where age in (32,42);

select * from emp_info where last_name like '%e%';

select * from emp_info where first_name = 'Mary';

select * from emp_info;

select * from emp_info where last_name = 'Edwards' and id = 88233;

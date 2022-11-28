use intro_sql;

drop table emp_info 

create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
PRIMARY KEY(id)
)

INSERT into emp_info values('John','Jones',99980,45,'Payson','Arizona');
insert into emp_info values('Mary','Jones',99982,25,'Payson','Arizona');
insert into emp_info values('Eric','Edwards',88232,32,'Phoenix','Arizona');
insert into emp_info values('Mary ann','Edwards',88233,32,'Phoenix','Arizona');
insert into emp_info values('Ginger','Howell',98002,42,'Cottonwood','Arizona');

select * from emp_info

insert into emp_info values('Rahul','Chandran',92701,30,'UK','UK')

select * from emp_info where first_name = 'Rahul'

create table emp_exercise
(
emp_name varchar(50),
designation varchar(50),
age int,
salary float
)

INSERT into emp_exercise values ('Jonie Weber', 'Secretary',  28, 19500.00);
INSERT into emp_exercise values ('Potsy Weber', 'Programmer',  32, 45300.00);
INSERT into emp_exercise values ('Dirk Smith', 'Programmer II',  45, 75020.00);

select * from emp_exercise

INSERT into emp_exercise values ('Sattyajit Patnaik', 'IT Support',  31, 29500.00);
INSERT into emp_exercise values ('Namrata Nayak', 'Programmer',  27, 65300.00);
INSERT into emp_exercise values ('Ravi Kishan', 'Data Scientist',  21, 15020.00);
INSERT into emp_exercise values ('Soniya Mukherjee', 'Data Analyst',  29, 29500.00);
INSERT into emp_exercise values ('Shalini Gupta', 'Analyst II',  32, 45300.00);

select * from emp_exercise

select * from emp_exercise where salary > 30000;

select emp_name from emp_exercise where age < 30;

select emp_name, salary, designation from emp_exercise where designation like '%Programmer%';

select * from emp_exercise where emp_name like '%ebe%';

select * from emp_exercise where emp_name like 'Potsy%';

select * from emp_exercise where age > 80;

select * from emp_exercise where emp_name like '%ith';

select * from emp_exercise;

SET SQL_SAFE_UPDATES = 0;

UPDATE emp_exercise set designation = 'Sr Programmer' where emp_name = 'Potsy Weber';

select * from emp_exercise where emp_name = 'Potsy Weber';

update emp_exercise set designation = 'Senior Data Analyst', age = 30 where emp_name = 'Soniya Mukherjee';

select * from emp_exercise where emp_name = 'Soniya Mukherjee';

update emp_exercise set last_name = 'Weber williams' where emp_name like 'Jonie%';

update emp_exercise set age = age + 1 where emp_name = 'Dirk Smith';

select * from emp_exercise where emp_name = 'Dirk Smith';

update emp_exercise set designation = 'Administrative Assisstant' where designation like '%secretary%';

select * from emp_exercise;

select * from emp_exercise where designation like '%Administrative Assisstant%';

select * from emp_exercise

update emp_exercise set salary = salary + 3500 where salary < 30000;

update emp_exercise set designation = 'Programmer III' where designation like '%Programmer II%'; 

select * from emp_exercise where designation like '%Programmer III%';

select * from emp_exercise;

delete from emp_exercise where designation = 'IT Support';

delete from emp_exercise;
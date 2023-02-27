use sakila;

delimiter $$
create procedure customer()
begin
	select 
		first_name,
        email,
        address_id
	from 
		customer
	order by first_name;
end$$
delimiter ;

call customer();

drop procedure customer;

drop procedure [if exist] customer;

use sakila;

delimiter //

create procedure getactive(
	in active varchar(25)
)
begin
	select * 
    from customer
    where active = active;
end //

delimiter ;

call getactive(1);

delimiter //

create procedure my_sqrt(input_number int, out out_number float)
begin
	set out_number = sqrt(input_number);
end //
delimiter ;

# print the output
call my_sqrt(4, @out_number);
select @out_number;

use sakila;

delimiter //

create procedure setcounter(
		inout counter int,
        in inc int
)
begin 
	set counter = counter + inc;
end //
delimiter ;

#print the output
set @counter = 1;
call setcounter(@counter, 1);
call setcounter(@counter, 3);
select @counter;

delimiter //
create procedure user_variables()
begin
set @x = 15;
set @y = 10;
select @x, @y, @x - @y;
end //



call user_variables();

# Conditional Statement

use testdb;

create procedure student_ifthen(IN s_subject varchar(15), out s_course varchar(15))
begin
declare sub varchar(10);
select subject from student where s_subject = subject;
if sub = 'computer' then
set s_course = 'B.Tech';
end if;
end //

show tables;
select * from student;
alter table studesubject varchar(25);


call student_ifthen('computer', @s_course);
select @s_course;
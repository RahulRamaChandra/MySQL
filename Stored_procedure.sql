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

    
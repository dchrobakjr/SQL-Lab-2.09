# Lab 2.09
use sakila;


create table		
	rentals_august
like
	sakila.rental;

create table
	rentals_july
like
	sakila.rental;
    

insert into rentals_august
select
	*
from
	sakila.rental
where
	date_format(rental_date, "%M") = "July";
    
  insert into rentals_august
select
	*
from
	sakila.rental
where
	date_format(rental_date, "%M") = "August";
    
    
select
	count(*) as count_august, customer_id
from 
	rentals_august
group by 
	customer_id
order by 
	customer_id;
    

select
	count(*) as count_july, customer_id
from 
	rentals_july
group by 
	customer_id
order by 
	customer_id;


    

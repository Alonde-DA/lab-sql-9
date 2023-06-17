-- Create a table rentals_may to store the data from rental table with information for the month of May.

create table rentals_may (rental_id varchar(50), rental_date date);

-- -- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

insert into rentals_may (rental_date, rental_id)
select rental_date, rental_id
from rental
where month(rental_date) = 5;

-- Create a table rentals_june to store the data from rental table with information for the month of June.

create table rentals_june (rental_date DATE, rental_id varchar(50));

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

insert into rentals_june (rental_date, rental_id)
select rental_date, rental_id
from rental
where month(rental_date) = 6;

-- Check the number of rentals for each customer for May.

select count(rental_id)
from rentals_may 
where month(rental_date) = 5;

-- Check the number of rentals for each customer for June.

select count(rental_id)
from rentals_june
where month(rental_date) = 6;

-- Write a function that checks if customer borrowed more or less films in the month of June as compared to May
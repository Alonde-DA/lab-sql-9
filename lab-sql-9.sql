-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
create table rentals_may 
 as
   (
	 select * 
	 from sakila.rental
	 where Month(rental_date)=5
   );
   
-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

create table rentals_june 
  as
   (
	 select * from sakila.rental 
	 where Month(rental_date)=6
   );

-- Check the number of rentals for each customer for May.

select customer_id, count(rental_id) as may_rentals
from rentals_may 
group by customer_id;

-- Check the number of rentals for each customer for June.

select customer_id, count(rental_id) as june_rentals
from rentals_june
Group by customer_id;


-- Write a function that checks if customer borrowed more or less films in the month of June as compared to May
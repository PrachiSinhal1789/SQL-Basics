use sakila;
select * from payment;
select distinct staff_id from payment;
select sum(amount) from payment;
select staff_id, sum(amount) from payment group by staff_id;
select staff_id, amount from payment group by staff_id;

#write a query to find total no. of transactions made by each staff_id
select count(payment_id) from payment;
select staff_id, count(payment_id) from payment group by staff_id;

#write a query to find the top five customers from payment table based on the amount that they have spent
select * from payment;
select customer_id, sum(amount) from payment group by customer_id;
select customer_id, sum(amount) from payment group by customer_id order by sum(amount) desc limit 5;

#write a query to find customers from payment table who had spent more than 200$
select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 200;
select customer_id, staff_id, sum(amount) from payment group by customer_id, staff_id having sum(amount) > 50;
select staff_id,customer_id, sum(amount) from payment group by staff_id,customer_id having sum(amount) > 50;

#Operators
#Between and in operator
select * from payment;
select * from payment where amount > 1 and amount < 3;
select * from payment where amount between 1 and 2;

select * from customer;
select * from customer where first_name = 'Mary';

select * from customer order by customer_id desc limit 5;

# extract all the information of the customers whose first name is john,jake,julie
select * from customer where first_name = 'john' or first_name = 'jake' or first_name = 'julie';
select * from customer where first_name in ('john','jake','julie');

select * from (select * from payment where amount between 1 and 2) as a where amount<2;
select count(*) from (select * from payment where amount between 1 and 2) as a where amount between 1 and 2;

select count(*) from payment where amount between 1 and 2;


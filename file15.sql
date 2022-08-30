use sakila;
select * from payment;

#write a query to find top 5 customers
select customer_id,sum(amount) from payment group by customer_id order by sum(amount) desc limit 5;

#JOINS
#getting complete details of these 5 customers from payment and customer table
select p.customer_id, sum(p.amount) as total, c.first_name, c.last_name, c.email 
from 
payment as p left join customer as c
on 
p.customer_id=c.customer_id
group by p.customer_id order by total desc limit 5;

select p.customer_id, sum(amount) as total, first_name, last_name, email 
from 
payment as p left join customer as c
on 
p.customer_id=c.customer_id
group by customer_id order by total desc limit 5;

#Timestamps and extracts
select * from payment;
select extract(year from payment_date) from payment;
select extract(year from payment_date) as year from payment;
select extract(month from payment_date) as month from payment;

select current_date();
select current_timestamp(); 
select current_time();

select datediff(payment_date,last_update) as diff_days from payment;
select datediff(last_update,payment_date) as diff_days from payment;

#math functions(sum,min,max,avg,round)
select sum(amount) from payment;
select max(amount) from payment;
select min(amount) from payment;
select avg(amount) from payment;
select round(avg(amount),2) from payment;

#Like
select first_name,last_name from customer where first_name='ELIZBETH'; # no o/p as spelling of name is wrong

select first_name,last_name from customer where first_name like 'eliz%';

select * from customer where first_name like 'h%';
select * from customer where first_name like 'h%' and last_name like '%s';
select * from customer where first_name like '%h';
select * from customer where first_name like '%z%';

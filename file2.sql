use sakila;

#Basic syntax for select statement
select * from actor;
select first_name from actor;
select first_name,last_name from actor;

#Distinct: Gives unique names
select * from film;
select distinct release_year from film;
select distinct release_year,rental_rate from film;

#count: counts how many records are present in a table or in a specific column
select count(*) from film; 
select count(*) from payment;
select * from payment;
select count(payment_id) from payment;
select count(distinct rental_rate) from film;
select distinct amount from payment;
select count(distinct amount) from payment;

# where Clause
select * from customer;
select count(*) from customer;
select * from customer where first_name = 'jared';
select * from film;
select distinct(rental_rate) from film;
select * from film where rental_rate > 4;
select * from film where rental_rate > 4 and replacement_cost > 19;
select count(*) from film;
select * from film limit 5;
select * from film order by film_id desc limit 5;
select * from film where rating = 'R';
select * from film where rating != 'R';

# Count no. of movies that are rated R from the film table
select count(*) from film where rating = 'R';

# Order by
select * from customer;
select * from customer order by first_name;
select * from customer order by store_id;
select * from customer order by first_name, store_id;
select * from customer order by store_id, first_name desc;
select * from customer order by store_id desc, first_name desc;

# relational databases
# DDL,DML,view definition,TCL
# Clauses select,from,where,group by,having,order by,limit
# Operators
# Joins:primary and foreign keys concept, performing joins on different tables
# Union: Vertical join of 2 tables
# String operations
# Sub querying
# Time functions
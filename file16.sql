use sakila;
select * from customer;
select first_name, length(first_name) as length from customer;
select upper(first_name) from customer;
select concat(first_name,last_name) as full_name from customer;
select concat(first_name,' ',last_name) as full_name from customer;

#first_name should be like Mary smith
select substr(first_name,1) from customer;
select substr(first_name,1,1) from customer;
select substr(first_name,2) from customer;
select lower(substr(first_name,2)) from customer;

select concat(substr(first_name,1,1),lower(substr(first_name,2)), ' ' , lower(last_name)) as full_name from customer; 

select *,concat(first_name,'.',last_name,'@gmail.com') as gmail from customer;

# sub query
select * from film;
select avg(rental_rate) from film;
select title, rental_rate, avg(rental_rate) as mean from film group by title,rental_rate having rental_rate > mean ;

select title, rental_rate from film where rental_rate > (select avg(rental_rate) from film);
select title, rental_rate from film where rental_rate > 2.98;

select * from rental;
select * from inventory;
select * from rental where return_date between '2005-05-29' and '2005=05-30';
select i.film_id from rental as r inner join inventory as i on r.inventory_id=i.inventory_id where return_date between '2005-05-29' and '2005=05-30';

SELECT 
    film_id, title
FROM
    film
WHERE
    film_id IN (SELECT 
            i.film_id
        FROM
            rental AS r
                INNER JOIN
            inventory AS i ON r.inventory_id = i.inventory_id
        WHERE
            return_date BETWEEN '2005-05-29' AND '2005=05-30');
            
select * from customer;
create view customer_info1 as select * from customer where first_name like 'm%';
select * from customer_info1;
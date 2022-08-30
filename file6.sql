use sakila;

# case statements

select * from customer;
SELECT 
    customer_id,
    CASE
        WHEN (customer_id <= 100) THEN 'premium'
        WHEN (customer_id BETWEEN 100 AND 200) THEN 'plus'
        ELSE 'normal'
    END AS customer_class
FROM
    customer;

delimiter //
SELECT 
    customer_id,
    if (customer_id <= 100) THEN 'premium'
	elseif (customer_id BETWEEN 100 AND 200) THEN 'plus'
	ELSE 'normal'
    end if 
     FROM
    customer //
    delimiter ;

    
    
SELECT 
    customer_id,
    CASE
        WHEN (customer_id = 2) THEN 'winner'
        WHEN (customer_id = 5) THEN 'second place'
        ELSE 'normal'
    END AS position
FROM
    customer;

SELECT 
    customer_id,
    CASE customer_id
        WHEN 2 THEN 'winner'
        WHEN 5 THEN 'second place'
        ELSE 'normal'
    END AS position
FROM
    customer;
    
    
# self join

select * from film;
select f1.title, f2.title, f1.length from film as f1 inner join film as f2 on f1.film_id=f2.film_id and f1.length=f2.length order by f1.length;

select f1.title, f2.title, f1.length from film as f1 inner join film as f2 on f1.film_id!=f2.film_id and f1.length=f2.length order by f1.length;
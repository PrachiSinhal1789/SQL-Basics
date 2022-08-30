use sakila;
select * from film;
select * from film_category;
select * from city;
select * from actor;
select * from address;
select * from city where city_id=300;
select * from address as a left join city as c on a.city_id=c.city_id;
select * from address as a left join city as c on c.city_id=a.city_id left join country as co on co.country_id=c.country_id;
SELECT 
    a.address,
    a.district,
    a.city_id,
    c.city,
    c.country_id,
    co.country
FROM
    address AS a
        LEFT JOIN
    city AS c ON c.city_id = a.city_id
        LEFT JOIN
    country AS co ON co.country_id = c.country_id;
    
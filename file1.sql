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
    
select * from actor_info;

delimiter //

create procedure selectallpayment()
begin
select * from payment;
end//

delimiter ;

call selectallpayment();

use customers;
select * from student;

start transaction;
insert into student(id,name,age,marks) values(1,'prachi',28,50);
insert into student(id,name,age,marks) values(2,'prachi',28,60);
commit;


create index ix_cust_stud on student(marks);
alter table student drop index ix_cust_stud;
create clustered index ix_cust_studs on student(age);

set sql_safe_updates=0;
start transaction;
delete from student where id=2;

rollback;
commit;
use sales;

show index from student;
describe student;
select * from student;
select actor_id from actor
union
select last_update,city_id from address;

select * from person;
create table trigger_table(message varchar(25));
delimiter $
create trigger new_trigger before insert on person for each row begin insert into trigger_table values('added');
end $
delimiter ;

insert into person values(4,'e',7);
select * from trigger_table;


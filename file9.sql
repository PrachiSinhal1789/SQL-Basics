# window functions
use sakila;
select * from payment;
select *,max(amount) as maximum from payment;
select *,max(amount) as maximum from payment group by customer_id;
select *,
max(amount) over() as maximum
from payment;
select *,
max(amount) over(partition by customer_id) as maximum
from payment;

# fetch max & min amt spent by each customer in payment table
select *,max(amount) as measure from payment group by customer_id
union
select *,min(amount) as measure from payment group by customer_id order by customer_id;

select *,
row_number() over() as rn
from payment; 

select *,
row_number() over(partition by customer_id) as rn
from payment; 

# rank 
select *,
rank() over(order by amount desc) as rnk
from payment; 

select *,
rank() over(partition by customer_id order by amount desc) as rnk
from payment; 

#dense rank
select *,
dense_rank() over(order by amount desc) as d_rnk
from payment; 

select *,
dense_rank() over(partition by customer_id order by amount desc) as d_rnk
from payment; 

# fetch max & min amt spent by each customer in payment table
select * from(
select *,
rank() over(partition by customer_id order by amount desc) as rnk
from payment) as r_max
where r_max.rnk = 1
union
select * from(
select *,
rank() over(partition by customer_id order by amount) as rnk
from payment) as r_min
where r_min.rnk = 1 ;

select * from(
select *,
rank() over(partition by customer_id order by amount desc) as rnk
from payment) as r_max
where r_max.rnk = 1
union
select * from(
select *,
rank() over(partition by customer_id order by amount) as rnk
from payment) as r_min
where r_min.rnk = 1 ;

select * from(
select *,
row_number() over(partition by customer_id order by amount desc) as rnk
from payment) as r_max
where r_max.rnk = 1
union
select * from(
select *,
row_number() over(partition by customer_id order by amount) as rnk
from payment) as r_min
where r_min.rnk = 1 
order by customer_id ;

use customers;
select * from student;

create table trigger_test(message varchar(100));
delimiter $$
create 
trigger my_trigger 
before insert on student for each row begin 
insert into trigger_test values('added new student');
end$$

select * from trigger_test;
insert into student values(1,'b',2,2);

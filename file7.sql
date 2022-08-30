# syntax for creating a database or schema
create database sales;

# for using a particular database/schema
use sales;

# syntax for creating a table
create table sales_data1(purchase_no int primary key, customer_id int, date_of_purchase date, item varchar(20));

# checking for table output
select * from sales_data;
select customer_id,item from sales_data;

# adding a column to your existing table
alter table sales_data add column company_id int ;

#dropping a column from existing table
alter table sales_data drop column company_id;

#renaming table
rename table sales_data to salesdata;
alter table salesdata add column `company id` int ;
select * from salesdata;
select purchase_no,`company id` from salesdata;

# drop(DDL):to remove a table completely from a database use 'drop', drop table tablename

# truncate(DDL): it helps in removing the data present in the table, truncate table tablename

# truncating the table
truncate table salesdata;

# delete (DML): it helps in removing the data present in the table, it is same as truncate but the only difference is  with delete we can remove 
# records based on a condition

# DML :data manipulation language
# syntax for inserting records into table

insert into sales_data1(purchase_no, customer_id, date_of_purchase, item) values(1, 1, '2022-06-01', 'A1');
insert into sales_data1(purchase_no, customer_id, date_of_purchase, item) values(2, 2, '2022-06-01', 'A2');
insert into sales_data1(purchase_no, customer_id, date_of_purchase, item) values(3, 1, '2022-06-01', 'A2');
insert into sales_data1(purchase_no, customer_id, date_of_purchase, item) values(4, 3, "2022-06-02", "A3");
insert into sales_data1(purchase_no, customer_id, date_of_purchase, item) values(5, 1, '2022-06-01', 'A1');


select * from sales_data1;
rollback;
 
# deleting a record from table
delete from sales_data1 where purchase_no=3;
set sql_safe_updates=0;

# updating data values
update salesdata set customer_id=2 where purchase_no=4;
update salesdata set purchase_no=5 where item='A3';

delete from sales_data1 where purchase_no=5;
commit;

rollback;

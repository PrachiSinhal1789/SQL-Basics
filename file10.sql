create database customers;
use customers;
create table customer_info(id integer,first_name varchar(10),last_name varchar(10));
insert into customer_info values(1,'Prachi','Sinhal'),(2,'Barnika','Saha');
select * from customer_info;

show databases;
show tables;
drop table customer_info;

create table customer_newinfo(id integer auto_increment,first_name varchar(25) ,last_name varchar(25) ,
salary int,primary key(id));
select * from customer_newinfo;
insert into customer_newinfo(first_name,last_name,salary) values ('prachi','sinhal',50),('palak','sinhal',100);
insert into customer_newinfo(first_name,last_name,salary) values ('pooja','sinhal',null),('puja','sinhal',null);
insert into customer_newinfo(first_name,last_name,salary) values ('poja','sinhal',null),('pujaa','sinhal',not null);
select * from customer_newinfo where salary is null;
select * from customer_newinfo where salary is not null;

update customer_newinfo set salary=100 where id between 2 and 3; 
update customer_newinfo set salary=50 where id>4 and id<6;

delete from customer_newinfo where id>=7;

alter table customer_newinfo add email varchar(25);
select * from customer_newinfo;
insert into customer_newinfo(email) values('prachi@gmail.com');
update customer_newinfo set email='sinhal@yahoo.com' where id=2;

alter table customer_newinfo add dob date;
alter table customer_newinfo modify dob year;

desc customer_newinfo;

alter table customer_newinfo drop dob;

create table student(id int not null,name char(10) not null,age int);
desc student;

alter table student add marks int;
select * from student;

alter table student modify marks float not null;

create table person(id float,name char(10),age int not null,unique(id));
select * from person;
insert into person values(1,'a',1),(2,'b',2);

alter table person add unique(name);
desc person;
insert into person values(3.1,'c',2);
insert into person values(3.11,'d',2);

create table person_new(id int not null,first_name char not null,last_name char not null,age int,salary float);
alter table person_new
add constraint uc_person unique(salary,last_name);
drop table person_new; 

desc person_new;
insert into person_new values(2,'p','s',25,50),(3,'p','s',25,51);

alter table person_new
drop index uc_person;

alter table person_new
add constraint pk primary key(id,first_name);

select * from person_new;





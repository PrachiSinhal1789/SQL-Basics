use customers;
create table person_info(id int auto_increment,first_name char(25),salary int,primary key (id));
create table department(id int,department char(25),city char(25) default 'bangalore');
insert into person_info values(1,'a',100),(2,'b',200),(3,'c',300);

desc person_info;
desc department;
insert into department(id,department) values(1,'finance'); 
insert into department(id,department) values(2,'hr'),(3,'admin');
insert into department(id,department) values(4,'hr'),(5,'security');
insert into person_info(id) values(6),(7);
insert into department(id,department) values(6,'hr'),(7,'security');
alter table person_info add last_name char(25) default 'z';
insert into person_info values(4,'d',400,'l'),(5,'e',500,'m');

select * from person_info;
select * from department;
alter table department add p float(3,2);
insert into department(id,department,p) values(6,'IT',4.55);
alter table department drop p;

select p.*,d.department from person_info as p inner join department as d on p.id=d.id; 
select p.*,d.department from person_info as p inner join department as d using(id);

select p.*,d.department from person_info as p left join department as d using(id);

select p.*,d.department from person_info as p right join department as d using(id);

select p.*,d.department from person_info as p left join department as d using(id)
union
select p.*,d.department from person_info as p right join department as d using(id);

select p.*,d.department from person_info as p cross join department as d; 

alter table department add constraint fk foreign key(id) references person_info(id);
desc table department;
alter table department drop constraint fk;

alter table department add foreign key(id) references person_info(id);

create database customer;
use customer;
create table customer_info(
id integer auto_increment,
first_name varchar(25),
last_name varchar(25),
salary integer,
primary key (id)
);
show tables;
select * from customer_info;
insert into customer_info (first_name, last_name, salary)
values
('john','daniel',50000),
('kris','naik',60000),
('darius','bengali',70000),
('chandan','kumar',40000),
('ankit','sharma',null);

select * from customer_info;

select *from customer_info where salary is null;

select *from customer_info where salary is not null;

update customer_info set salary=50000 where id= 5;

select * from customer_info;

delete from customer_info where id=5;

select * from customer_info;

alter table customer_info add email varchar(25);

desc customer_info;

alter table customer_info drop column email;

desc customer_info;

alter table customer_info add dob date;

desc customer_info;

alter table customer_info modify dob year;

select * from customer_info;

update customer_info set dob=1981 where id=1;
update customer_info set dob=1971 where id=2;
update customer_info set dob=1985 where id=3;
update customer_info set dob=1989 where id=4;

select * from customer_info;

alter table customer_info rename to emp_info;

show tables;

select * from emp_info;

#truncate table customer_info;
#select * from customer_info;
#drop database customer;
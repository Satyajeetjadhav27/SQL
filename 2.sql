show databases;
use photo_Store;
show tables;
create table customer(
id int not null auto_increment,
customer_name varchar(25) not null,
email varchar(50) not null default 'no email provided',
amount int,
primary key(id)
);

show tables;

desc customer;

insert into customer(customer_name, amount)
values
('job',30);

select * from customer;

-- drop table customer;

INSERT INTO customer(customer_name, email, amount)
VALUES ('hitesh', 'hitesh@lco.dev', 35),
('George', 'geo@lco.dev', 45),
('hitesh', 'hitesh@gmail.com', 88),
('lina', 'lina@gmail.com', 78),
('Jimmy', 'jimmy@yahoo.co.in', 54),
('lina', 'lina@yahoo.co.in', 35),
('hitesh', 'hitesh@yahoo.co.in', 56);

select * from customer;

select customer_name from customer;

select email from customer;

select amount from customer;
select amount as purchases from customer;

select * FROM customer;

select * from customer where customer_name = 'jimmy';
SET SQL_SAFE_UPDATES = 0;
update customer set email ='jimmy@yahoo.com' where customer_name="jimmy";

select * from customer;

select * from customer where customer_name= 'lina' and amount= 35;

update customer set amount= 39 where customer_name= 'lina' and amount= 35;

select * from customer;

select * from customer where customer_name= 'lina';

update customer set email= 'lina@gmail.com' where customer_name= 'lina';

select * from customer where customer_name= 'george';

delete from customer where customer_name = 'george';

select * from customer;

select * from customer where customer_name = 'hitesh';

delete from customer where customer_name = 'hitesh';

select * FROM customer;

select * from customer where customer_name = 'lina';

delete from customer where customer_name= 'lina';

select * from customer;


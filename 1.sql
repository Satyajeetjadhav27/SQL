-- show the databases
show databases;
-- shows selected databases
select database();
/*
creating a database
syntax- create database databse_name
*/
create database photo_store;
-- using a database
use photo_store;
select database();
-- CREATE TABLE table_name(column_name datatype(length))
create table cameras(
model_name varchar(25),
quantity int
);

-- describe the data
desc cameras;

-- drop table table_name
drop table cameras;

show tables;

create table Canon_cameras(
model_name varchar(30),
quantity int
);

desc canon_cameras;

insert into canon_cameras(model_name, quantity) 
values
('70D',12),
('80D',19),
('EOS-R',25),
('EOS-R5',80),
('EOS-R6',50);

desc canon_cameras;

select model_name from canon_cameras;

select quantity from canon_cameras where model_name ='80D';

select model_name,quantity from canon_cameras where quantity >= 50;


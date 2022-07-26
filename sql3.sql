show databases;
use customer;
show tables;
select * from student;
desc student;
create index ind_city on student(age);
alter table student drop index ind_city;

use customer;
drop table student;
create table student(
id integer auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age integer,
primary key (id)
);

insert into student values
(1,'john','daniel',23),
(2,'kris','naik',30),
(3,'darius','bengali',27),
(4,'chandan','kumar',42),
(5,'ankit','sharma',23);

select * from student;

create table clg_dept(
id int auto_increment,
dept_name varchar(25) not null,
foreign key(id) references student(id)
);

insert into clg_dept(id,dept_name) values (1,'CSE'),(2,'ME'),(3,'IT'),(4,'ECE');

select * from clg_dept;

drop table clg_dept;

create view stud_info1 as select first_name, last_name, age from student inner join clg_dept on clg_dept.id=student.id;

select * from stud_info1;

insert into student values(6,'ramesh','singh',28);

select * from student;

select * from clg_dept;
-- inner join
select student.first_name, student.last_name, student.age, clg_dept.dept_name from student inner join clg_dept on student.id=clg_dept.id;

-- left join
select student.first_name, student.last_name, student.age, clg_dept.dept_name from student left join clg_dept on student.id=clg_dept.id;

-- right join
select student.first_name, student.last_name, student.age, clg_dept.dept_name from student right join clg_dept on student.id=clg_dept.id;

-- full join
select student.first_name, student.last_name, student.age, clg_dept.dept_name from student left join clg_dept on student.id=clg_dept.id
union
select student.first_name, student.last_name, student.age, clg_dept.dept_name from student right join clg_dept on student.id=clg_dept.id;

select student.id ,student.first_name, student.last_name, student.age, clg_dept.dept_name from student cross join clg_dept;

select student.id ,student.first_name, student.last_name, student.age, clg_dept.dept_name from student natural join clg_dept;
 
call get_stud_info(23);
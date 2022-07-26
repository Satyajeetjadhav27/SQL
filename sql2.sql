show databases;
use customer;
create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int);

desc student;

alter table student modify age int not null;

desc student;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
salary int not null,
unique(id)
);

insert into person values(1,'krish3','naik3',33);

select * from person;

alter table person add unique(first_name);

alter table person add constraint uc_person unique(age, first_name);

desc person;

alter table person drop index uc_person;

desc person;

alter table person add constraint satya1 unique(age,id);

desc person;

alter table person drop index satya;

alter table person drop index satya1;

desc person;

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk primary key(id,last_name)
);

desc person1;

alter table person1 drop primary key;

desc person1;

alter table person1 add primary key(id);
alter table person1 drop primary key;
desc person1;

alter table person1 add constraint pri primary key(last_name, age);

desc person1;

alter table person1 drop primary key;

desc person1;

select id, first_name from student;

desc person;

drop table person;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id),
constraint fk foreign key(id) references person(id)
);

desc department;
drop table department;
drop table person;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
salary int not null,
unique(id),
check(salary<5000)
);

insert into person(id,first_name,last_name,age,salary) values(3,'krish2','naik2',33,22500);

select * from person;

drop table person;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city varchar(25) default 'pune'
);

desc person;

alter table person alter city drop default;

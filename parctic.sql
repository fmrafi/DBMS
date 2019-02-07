create database assingenment
create table department(
dept_name varchar(50),
building varchar(50),
budget numeric(12,2),
primary key(dept_name)
)
create table course(
course_id varchar(7),
title varchar(50),
dept_name varchar(50),
cridet numeric(2,0),
primary key(course_id),
foreign key(dept_name) references department)
create table instruction(
ID varchar(5),
name varchar(20) not null,
dept_name varchar(50),
salary numeric(8,2),
primary key(ID),
foreign key(dept_name) references department)
create table section(
course_id varchar(7),
sec_id varchar(8),
semester varchar(6),
year numeric(4,0),
building varchar(15),
room_number varchar(7),
time_slot_id varchar(4),
primary key(course_id,sec_id,semester,year),
foreign key(course_id) references course)
create table teaches(
ID varchar(5),
course_id varchar(7),
sec_id varchar(8),
semester varchar(6),
year numeric(4,0),
primary key(ID,course_id,sec_id,semester,year),
foreign key(course_id,sec_id,semester,year) references section,
foreign key(ID) references instruction)

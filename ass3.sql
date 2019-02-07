create database ass3
create table takes(
ID int,
course_id varchar(20),
sec_id varchar(20),
semester int,
year int,
grade float,
primary key(ID,course_id,sec_id,semester,year)
)
create table student(
ID int,
name varchar(20),
dept_name varchar(20),
tot_cred varchar(9),
primary key(dept_name),
foreign key(ID) references takes)
create table teaches(
ID int,
course_id varchar(20),
sec_id varchar(20),
semester int,
year int,
primary key(ID,course_id,sec_id,semester,year)
)
create table instruction(
ID int,
name varchar(20),
dept_name varchar(20),
salary float,
primary key(dept_name),
foreign key(ID) references teaches)
create table time_slot(
time_slot_id varchar(5),
day varchar(20),
start_time time,
end_time time,
primary key(time_slot_id)
)
create table section(
course_id varchar(20),
sec_id varchar(20),
semester int,
year int,
building varchar(20),
room_no varchar(9),
time_slot_id varchar(5),
primary key(course_id,building,room_no),
foreign key(course_id,sec_id,semester,year) references takes,
foreign key(course_id,sec_id,semester,year) references teaches,
foreign key(time_slot_id) references time_slot)
create table prereq(
course_id varchar(20),
prereq_id varchar(20),
primary key(course_id)
)
create table course(
course_id varchar(20),
title varchar(9),
dept_name varchar(20),
credits float,
primary key(dept_name),
foreign key(course_id) references section,
foreign key(course_id) references prereq)
create table classroom(
building varchar(20),
room_no varchar(9),
capacity float,
foreign key(building,room_no) references section)
create table advisor(
s_id varchar(20),
i_id varchar(20),
primary key(s_id)
)
create table department(
dept_name varchar(20),
building varchar(20),
budget float,
foreign key(dept_name) references course,
foreign key(dept_name) references instruction,
foreign key(dept_name) references student)




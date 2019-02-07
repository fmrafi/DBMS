create database home 
create table dept(
did int primary key,
dname varchar(50) not null,
location varchar(50)
 )

create table teacher(
tid int primary key,
tname varchar(50) not null,
coursecode varchar(50) not null,
deptid int foreign key references dept(did) 
)
create table stu(
sid int primary key,
sname varchar(50) not null,
semester int not null,
teacherid  int foreign key references teacher(tid),
deptid int foreign key references dept(did)
)
insert into dept values(4,'PHY','kazla')
insert into teacher values(2237,4,'rasel','PHY-111')
insert into stu values(101,'monir',7,2232,1)
create database joint
create table teacher
(tid int identity(1,1) primary key(tid),
firstname varchar(50) not null,
lastname varchar(50) not null,
dept varchar(50) not null,
age int not null,
salary float
)
insert into teacher(firstname,lastname,dept,age,salary) values('Ashraful','Islam','CSE',24,32000.00)
create table student
(sid int identity(1,1) primary key(sid),
name varchar(50) not null,
dept varchar(50) not null,
semester int not null,
coursecode varchar(50) not null,
age int not null,
credittaken int not null,
teacherid int foreign key references teacher(tid)
)
insert into student(name,dept,semester,coursecode,age,credittaken,teacherid) values('Rony','EEE',6,'EEE-212',21,4,3)
select firstname,teacher.dept,name, coursecode, salary
        from teacher inner join student  
        on teacher.tid = student.teacherid where salary>31000;

		select student.name,teacher.firstname,student.age,student.dept from teacher inner join 
		student on teacher.tid=student.teacherid where student.age>15 group by student.name,teacher.firstname,
		student.age,student.dept; 

		select teacher.firstname,count(student.sid),sum(student.credittaken),teacher.dept from teacher inner join student on teacher.tid=student.teacherid where student.credittaken!=0 group by teacher.dept,teacher.firstname
		select max(credittaken),min(credittaken),student.dept from  student  group by student.dept
		select top 100 [tid],[sid] from teacher inner join student on teacher.tid=student.teacherid where (tid %2!=0) and (sid % 2!=0)
		select max(salary) as  totalsalary,dept from teacher where dept like 'C%' group by teacher.dept  
		delete  from student where age<22
		select max(salary),dept from teacher group by dept

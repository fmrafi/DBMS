create database rafi
create table teacher(
tid int identity(1,1) primary key(tid),
firstname varchar(50) not null,
lastname varchar(50) not null,
dept varchar(50) not null,
age int not null,
salary int
)

insert into teacher(firstname,lastname,dept,age,salary) values('Arifa','Ferdoushi','ECE',30,50000)
create table student
(id int identity(1,1) primary key(id),
name varchar(50) not null,
dept varchar(50) not null,
semester int not null,
coursecode varchar(50) not null,
age int not null,
credittaken int not null,
teacherid int foreign key references teacher(tid) 
)
insert into student(name,dept,semester,coursecode,age,credittaken,teacherid) values('Mamun','CSE',7,'ECE-316',24,4,null)
select firstname,lastname,teacher.dept,name,salary,semester, coursecode,credittaken
        from teacher inner join student  
        on teacher.tid = student.teacherid
		select count(teacher.dept)
        from teacher inner join student  
        on teacher.tid = student.teacherid where teacher.dept='CSE' and teacher.dept='EEE'
		update  teacher set tid=1 
		select firstname,lastname,teacher.dept,salary,coursecode,credittaken from teacher inner join student 
		on teacher.tid=student.teacherid where salary between 30000 and 40000 
		select firstname,teacher.dept,salary,semester, coursecode,credittaken
        from student right join teacher  
        on teacher.tid = student.teacherid
		delete from student where name='Arko' and semester=6
		select max(salary) as  totalsalary,count(teacher.dept),student.coursecode
		 from teacher inner join student on teacher.tid=student.teacherid  group by student.coursecode having student.coursecode=31
		delete from teacher where firstname='Faruk'
		select teacher.firstname,teacher.lastname,teacher.dept,teacher.salary,student.credittaken,student.semester from teacher inner join
		student on teacher.tid=student.teacherid order by semester asc
		select teacher.firstname,teacher.lastname,student.semester,teacher.dept,teacher.salary,student.credittaken from teacher inner join
		student on teacher.tid=student.teacherid order by semester desc
		select count(student.id),teacher.firstname,student.dept from teacher inner join 
		student on teacher.tid=student.teacherid where firstname=credittaken group by student.dept,teacher.firstname
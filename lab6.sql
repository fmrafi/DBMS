create database lab6
create table department(
deptid int primary key(deptid),
deptname varchar(50) not null,
location varchar(50)
)

insert into department values(4,'Admin','Nator')



create table employee(
id int primary key(id),
name varchar(50) not null,
salary int,
gender varchar(50) not null,
departmentid int foreign key references department(deptid)
) 
insert into employee values(11,'Gail',40000,'Male',3)
select * from vwEmployeeSalaryDetails
alter view vwEmployeeSalaryDetails
 as select deptname,count(salary) as couter,avg(salary) as avarager,sum(salary)as totalsalary from department inner join employee on department.deptid=employee.departmentid group by deptname
 create view vwEmployeeDetails as
 select name,deptname,gender from department inner join employee on department.deptid=employee.departmentid where salary between 5000 and 50000 
 select * from vwEmployeeDetails
 update vwEmployeeDetails  set name='Hello' from employee  inner join department on department.deptid=employee.departmentid
 select * from vwEmployeeDetails
 create view spEmployeeSalaryDetails as
 select avg(id) as avgsalary from employee where id<(select avg(id)from employee)
 select * from spEmployeeSalaryDetails
 alter view spEmployeeSalaryDetails as 
 select name,salary,deptname,gender from employee inner join department on department.deptid=employee.departmentid
 select * from spEmployeeSalaryDetails
 create view vwEmployeeDeptDetails as 
 select id,name,salary,deptname from employee inner join department on department.deptid=employee.departmentid
 insert into vwEmployeeDeptDetails values(4,'rafi',500,'BBA')

  update employee


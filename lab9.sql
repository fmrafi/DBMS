create function fnEmployee1(@start int, @end int)
returns int
as 
begin
declare @res int
set @res=1
while(@start<=@end)
begin
set @res=@res*@start
set @start=@start+1
end
return @res
end
select dbo.fnEmployee1(1,10)

create function spEmployeeSalaryDetalis(@gen varchar(50),@deptid int)
returns table
as 
return (select (upper(FirstName)+' '+lower(LastName)) as Fullname,salary,DeptName,Gender from Employee join Department on Department.DeptID=Employee.DeptID 
where salary between 27000 and 30000 and Gender=@gen and Employee.DeptID=@deptid)
select * from dbo.spEmployeeSalaryDetalis('Female',1)



create function VUMAX1(@max float)
returns float
as
begin
declare @S float,@maxsalary float
set @maxsalary=(select max(salary) from Employee)*@max
return @maxsalary
end
select [dbo].[VUMAX1](1000)

create function fnemployee2(@location varchar(50))
returns table
as
return(select ID,FirstName,DeptName,Location from Department join Employee on Department.DeptID=Employee.DeptID
where Location=@location);
select * from fnemployee2('Rajshahi')



create trigger tgEmployee1
on employee1
for insert
as
begin
declare @id int
select @id=ID from inserted

insert into Employee values('is added at '+ 	cast(Getdate() as varchar(20))  )
end
insert into Employee values(8,'Farhan','Masud','Male','2017-04-11',5000,3)


create  trigger ss1 on employee 
 for insert as
 begin
 declare @id int
 select @id=ID from deleted
 insert into  emp1 values
  ('new employee id ='+ cast(@id as varchar(50)) +'is added' + cast(getdate() as varchar(20)))
  end

delete from Employee where ID=2


create view vuEmployeeDeptDetails
as

select ID,FirstName,Salary,DeptName 
from Employee join Department
on
Department.DeptID=Employee.DeptID


insert into vuEmployeeDeptDetails values
(8,'Sagor',30000,'CSE')


Create trigger tgEmployeer
on vuEmployeeDeptDetails
Instead of insert
as
begin
select * from inserted
select * from deleted
End

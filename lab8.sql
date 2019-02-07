select * from Department
select * from Employee
alter proc fnEmployee
@start int ,@end int
as
begin
declare @s int
set @s=1
while(@start<=@end)
begin
print @start
set @s=@s*@start
set @start=@start+1
print @s
end
end
exec fnEmployee 1,10
create table tbSummary(
id int primary key,
name varchar(50) not null,
dept varchar(50)
)
alter proc fnEmployee3
@n varchar(50),@d varchar(50)
as
begin
declare @i int
set @i=1
while (@i<=100000)
begin
insert into tbSummary values(@n,@d)
end
end
exec fnEmployee3 'Rafi','CSE'
select * from tbSummary
create proc spEmployeeSalaryDetails
@Gender varchar(50),@DeptID int,@show varchar(50) output
as 
begin
select (FirstName+''+LastName) as FullName,salary,DeptName,Gender from Employee join Department on
Department.DeptID=Employee.DeptID where salary between 27000 and 30000 and DeptID=DeptID
end
declare @i varchar(50)
exec spEmployeeSalaryDetails 'Male',1,@i out
print @i
select FirstName,rank()over(partition DeptName order by JoiningDate 
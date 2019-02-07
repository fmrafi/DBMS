create table location(
IName varchar(50) primary key(IName),
city varchar(50)  ,
owner varchar(50) not null,
sizeSF int
)
insert into location values('Windsor Castle','Windsor','Queen',40000)
select * from location
create table crimee(
id int identity(1,1) primary key(id),
location varchar(50) foreign key references location(IName),
time date not null,
type varchar(50) not null,
victime varchar(50)
)
insert into crimee values('Big Ben','11:15:00','theft','Alice')
select * from crimee

 select id,type,IName,victime,owner,sizeSF
from crimee inner join location
on crimee.location=location.IName where type like '%ft'
alter table location add mid int

select * from location
update location set owner=case when location.owner='Public' then 'Queen' else 'Public' end
from location inner join crimee 
on location.IName=crimee.location 
where victime='Alice'
delete from crimee where type= 'murder'



create table product(
productId int primary key,
productname varchar(50),
price int
)
insert into product values (4,'sp4',22000)
create table customer(
customerId int primary key,
customername varchar(50)
)
insert into customer values (13,'sajid')

create table reseller1 (
resellerId int primary key,
resellername varchar(50),
commissionrate int
)

insert into reseller1 values (24,'sakib',20)

create table commission(
commissionId int primary key,
customerId int foreign key references customer(customerId),
productId int  foreign key references product(productId),
resellerId int foreign key references reseller1(resellerId),
commissionAmaunt int
)

insert into commission values (34,12,3,24,35)

create table purchase(
purchaseId int primary key,
customerId int foreign key references customer(customerId),
productId int  foreign key references product(productId),
purchasedate date,
quantity int,
chargeamaunt int,
paidamaunt int
)

insert into purchase values (44,12,3,'6-04-2016',4,290,260)
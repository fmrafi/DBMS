create database arif3
create table Product(
Productid int primary key,
ProductName varchar(50) not null,
price int
)
insert into Product values (1,'mobile',12000)
insert into Product values(2,'bag',600)
insert into Product values(3,'laptop',54000)
insert into Product values (4,'choklet',2)
create table Reseller(
ResellerId int primary key,
ResellerName varchar(50) not null,
commisionRate int
)
insert into Reseller values (1,'Arif',400)
insert into Reseller values (1,'hasan',600)
insert into Reseller values (1,'tony',700)
create table customer(
customerID int primary key,
customerName varchar(50) not null
)
insert into customer values (1,'iftear')
insert into customer values (2,'wahid')
insert into customer values (3,'romjan')
create table Commision(
commissionid int primary key,
CustomerID int foreign key references customer(customerID),
Productid int foreign key references Product(Productid),
ResellerId int foreign key references Reseller(ResellerId),
commisionAmount int
)
create table purchase(
purchaseid int primary key,
customerID int foreign key references customer(customerID),
Productid int foreign key references Product(Productid),
purchasedate date,
Quantity int,
chargeAmount int,
paidAmount int
)

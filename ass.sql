create table product(
productID int primary key,
productName varchar(50),
price float
)
insert into product values(1,'rafi',100.00)
create table customer(
customerID int primary key,
customerName varchar(50)
)
insert into customer values(2,'masud')
create table resaller(
resallerID int primary key,
resallerName varchar(50),
commisionRate float
)
insert into resaller values(3,'farhan',200.00)
create table purchase(
purchaseID int primary key,
customerID int foreign key references customer(customerID),
productID int foreign key references product(productID),
purchaseDate date,
Quantity int,
chargeAmount float,
paidAmount float
)
insert into purchase values(1,2,3,'3-28-2017',4,223.23,225.32)
create table commision(
commisionD int primary key,
customerID int foreign key references customer(customerID),
productID int foreign key references product(productID),
resallerID int foreign key references resaller(resallerID),
commisionAmount float
)
insert into commision values(4,3,2,1,400.00)

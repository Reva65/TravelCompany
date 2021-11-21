create database RevaTravel

use RevaTravel	
create table Orders (
		OrderID int not null,
		clientID int not null,
		ClientName nvarchar(40) not null,
		orderSum int not null,
		orderDate date not null,
		salesManager nvarchar(40) not null,
		additionalService nvarchar(40)
		
		constraint orderID primary key (orderID)
		);
		 

create table additionalServices (
		serviceID int, 
		serviceName nvarchar(40),
		servicePrice money, 
		serviceProvider nvarchar (40),
		
		constraint serviceID primary key (serviceID)
);
create table Clients (
		clientID int,
		clientName nvarchar(40),
		clientBirthdate date, 
		passportNumber nvarchar(40),
		clientAddress nvarchar(40),
		CphoneNumber nvarchar(13)
		
		constraint clientID primary key (clientID)

);

create table Employees (
		employeeID int not null,
		employeeName nvarchar(40) not null,
		EphoneNumber nvarchar(13) not null,
		employeePosition nvarchar(40) not null,
		wageperOrder money,
		employeeAddress nvarchar(40) not null,

		constraint employeeID primary key (employeeID)

);

create table Billing (
		orderID int not null,
		paymentStatus nvarchar(40) not null,
		paymentDate date not null,
		notes nvarchar(40),

		constraint PK_billingOrderID primary key (orderID)


);

create table Vouchers (
		voucherID int not null,
		tourID int not null, 
		peopleAmount int not null,
		comingDate date not null,
		leavingDate date not null

		constraint PK_vouchedID primary key (voucherID)


		)

create table Tours (
		tourID int not null, 
		Country nvarchar(40) not null,  
		City nvarchar(40) not null, 
		Hotel nvarchar(40) not null, 

		constraint PK_tourID primary key (tourID)

)

create table Cities (
		countryID int not null, 
		cityID int not null, 
		cityName nvarchar(40) not null, 

		constraint PK_cityID primary key (cityID)

);
create table Countries (
		countryID int not null, 
		countryName nvarchar(40) not null, 
		visaNecessity nvarchar(40) not null, 
		notes nvarchar(40) not null, 

		constraint PK_countryID primary key (countryID)

);

create table Transporters (
		transporterID int not null, 
		transporterName nvarchar not null, 
		fee money not null

		constraint PK_transporterID primary key (transporterID)

)
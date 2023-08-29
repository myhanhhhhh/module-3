create database booking_villa;
use booking_villa;

CREATE TABLE roles (
    id_role INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50)
);

create table account(
account_id int primary key auto_increment,
account_username varchar(100) unique,
account_password varchar(100),
id_role int,
foreign key  (id_role) references roles(id_role)
);

create table type_customers(
    type_customer_id int primary key auto_increment,
    type_customer_name varchar(100)
);

create table customers (
    customer_id int primary key auto_increment,
    customer_name varchar(100),
    customer_gender bit(1),
    customer_birthday date,
    customer_phone varchar(20),
    customer_email varchar(45),
    customer_address varchar(255),
    account_id int unique,
    type_customer_id int,
    is_delete bit(1) default 0,
    foreign key (account_id) references account(account_id),
    foreign key (type_customer_id) references type_customers(type_customer_id)
);

create table bookings (
    booking_id int primary key,
    customer_id int,
    booking_date date,
    quantity int,
    foreign key  (customer_id) references customers(customer_id)
);

create table  services (
    service_id int primary key auto_increment,
    service_name varchar(45),
    area int,
    price double,
    max_capacity int,
    room_standard varchar(45),
    other_facilities varchar(45),
    number_of_rooms int,
    complementary_services text,
    booking_id int,
    foreign key  (booking_id) references bookings(booking_id)
);

create table image_details(
image_id int primary key auto_increment,
service_id int,
image_detail_link varchar(50),
foreign key  (service_id) references services(service_id)
);




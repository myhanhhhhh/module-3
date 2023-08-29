create database ss11;
use ss11;

create table products(
id int primary key auto_increment,
name varchar(50),
price double,
description varchar(250),
company varchar(50)
);

insert into products(name, price, description, company )
values
("iphone 11", 1000000, "binh thuong", "apple"),
("iphone 11", 1000000, "dep", "apple"),
("samsung", 800000, "binh thuong", "samsung")
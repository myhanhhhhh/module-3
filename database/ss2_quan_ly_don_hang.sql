create database ss2_quan_li_don_hang;
use ss2_quan_li_don_hang;

create table customers(
id_customer int primary key auto_increment,
name_customer varchar(50),
age_customer int
);

create table orders(
id_order int primary key auto_increment,
id_customer int,
foreign key (id_customer) references customers(id_customer),
date_order date,
total_price_order double
);

create table products(
id_product int primary key auto_increment,
name_product varchar(50),
price_product double
);

create table order_detail(
id_order int,
id_product int,
primary key (id_order,id_product),
foreign key(id_order) references orders(id_order),
foreign key(id_product) references products(id_product),
quantity_order int
);
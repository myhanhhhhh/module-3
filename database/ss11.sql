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
("samsung", 800000, "binh thuong", "samsung");

update products set  name = "note 9" ,price = "3000000" , description = "dien thoai thong minh" , company = "samsung"
where id = 2; 

alter table products 
add is_delete bit(1) default 0;
set sql_safe_updates = 0;
update products 
set is_delete = 1 where id =2;
set sql_safe_updates = 1;
select *from products
where is_delete = 0;

select * from product where name = "iphone";
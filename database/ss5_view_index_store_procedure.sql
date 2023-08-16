create database ss5;

use ss5;

create table products (
id int auto_increment primary key,
product_code varchar(45),
product_name varchar(100),
product_price double,
product_amount int,
product_description varchar(100),
product_status varchar(100)
);

insert into products (product_code, product_name, product_price, product_amount, product_description, product_status)
value 	("p-01","iphone", 100, 1, "Dien thoai thong minh", "13 pro"),
		("p-02","iphone", 100, 3, "Dien thoai thong minh", "14 pro"),
		("p-03","samsung", 100, 4, "Dien thoai khong thong minh", "A50S"),
		("p-04","samsung", 100, 5, "Dien thoai khong thong minh", "A50"),
		("p-05","samsung", 500, 5, "Dien thoai khong thong minh", "A50");
        
 -- buoc 3         
create unique index product_code_idx on products(product_code);
explain select * 
from products
where product_code = "p-05";

create index product_name_price_idx on products(product_name,product_price);
explain select * 
from products 
where product_name = "iphone" and product_price = 100 ;

-- buoc 4
create view products_view as 
select product_code, product_name, product_price,product_status  
from products;

select * 
from products_view;

create or replace view products_view as
select product_code, product_name, product_price 
from products;

drop view products_view;

-- buoc 5
DELIMITER //
create procedure get_info_product()
begin
select*
from products;
end //
DELIMITER ;
call get_info_product();

DELIMITER //
create procedure add_new_product(in 
id int, 
product_code varchar(45),
product_name varchar(100),
product_price double,
product_amount int,
product_description varchar(100),
product_status varchar(100) )
begin
insert into products
value (id, product_code, product_name, product_price, product_amount, product_description, product_status);
end //
DELIMITER ;
call add_new_product(6, "p-06","iphone", 100, 1, "Dien thoai thong minh", "11 pro");

DELIMITER //
create procedure edit_info_product(in id_edit int, new_name varchar(100))
begin
update products 
set product_name = new_name
where id = id_edit;
end //
DELIMITER ;
call edit_info_product(6, "iphone edition limited");

DELIMITER //
create procedure delete_product(in id_delete int)
begin
delete from products
where id = id_delete;
end //
DELIMITER ;
call delete_product(6);
create database ss12;
use ss12;

create table users(
id int (3) auto_increment primary key,
name varchar(100) not null ,
email varchar(100) not null,
country varchar(50)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Sang','sangphan@che.uk','da nang');


update users set  name = "Hậu" ,email = "hau@gmail.com" , country = "da nang"
where id = 2; 

alter table users
add is_delete bit(1) default 0;
set sql_safe_updates = 0;
update users
set is_delete = 1 where id =2;
set sql_safe_updates = 1;
select *from users
where is_delete = 0;

select * from users where country = "Viet Nam";

select * from users order by name



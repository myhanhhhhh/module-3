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

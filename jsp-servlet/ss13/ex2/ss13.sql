create database ss13;
use ss13;

create table users(
id int (3) auto_increment primary key,
name varchar(100) not null ,
email varchar(100) not null,
country varchar(50)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
insert into users(name, email, country) values('Sang','sangphan@che.uk','da nang');

DELIMITER //
create procedure get_info_user()
begin
select*
from users;
end //
DELIMITER ;
call get_info_user();

DELIMITER //
create procedure edit_info_user(in id_edit int, new_name varchar(100))
begin
update users 
set name = new_name
where id = id_edit;
end //
DELIMITER ;
call edit_info_user(1, "Sang");

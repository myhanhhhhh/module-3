create database student_management;
use student_management;
create table student(
id_student int primary key auto_increment,
name_student varchar(50),
age_student int
);
insert into student(name_student, age_student)
values
("Hanh", 23),
("Lien", 24);
select * from student;
delete from student
where id_student = 1;

set sql_safe_updates = 0;
update name_student set name_student = "Sang" 
where name_student = "Hanh";
set sql_safe_updates = 1;

create table class(
id_class int primary key auto_increment,
name_class varchar(50)
);

create table teacher(
id_teacher int primary key auto_increment,
name_teacher varchar(50),
age_teacher int,
country varchar(50)
);
insert into teacher(name_teacher, age_teacher, country)
values
("Viet", 30, "Da Nang"),
("Thang", 30, "Da Nang"),
("Chanh", 30, "Da Nang");
select * from teacher;
delete from teacher
where id_teacher = 1;




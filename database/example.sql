create database student_management;
use student_management;

create table address(
id_address int primary key auto_increment,
ten_dia_chi varchar(45)
);

create table student(
id_student int primary key auto_increment,
name_student varchar(50),
age_student int,
country varchar(50),
ma_dia_chi int,
foreign key(ma_dia_chi) references address(id_adress)
);

insert into student(name_student, age_student)
values
("Hanh", 23),
("Lien", 24);

select * from student;
delete from student
where id_student = 1;

update student set name_student = "Sang" 
where id_student = 2;

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
("Hai", 25, "Da Nang"),
("Cong", 30, "Da Nang"),
("Chanh", 30, "Da Nang");
select * from teacher;
delete from teacher
where id_teacher = 1;




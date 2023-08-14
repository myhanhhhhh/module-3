create  database student_management;
use student_management;

create table classroom(
    class_id  int not null auto_increment primary key,
    class_name varchar(50) not null,
    start_date datetime    not null,
    class_status bit
);

create table  students(
    students_id int not null auto_increment primary key,
    students_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    student_status bit,
    class_id int not null,
    foreign key (class_id) references classroom (class_id)
);
create table subjects (
    sub_id int not null auto_increment primary key,
    sub_name varchar(30) not null ,
    credit  tinyint not  null default 1 check ( credit >= 1 ),
    sub_status  bit default 1
);

create table mark(
    mark_id int not null auto_increment primary key,
    sub_id int not null,
    students_id int not null,
    mark float default 0 check ( mark between 0 and 100),
    exam_times tinyint default 1,
    unique (sub_id, students_id),
    foreign key (sub_id) references subjects (sub_id),
    foreign key (students_id) references students (students_id)
);
insert into class
values (1, 'A1', '2008-12-20', 1);
insert into class
values (2, 'A2', '2008-12-22', 1);
insert into class
values (3, 'B3', current_date, 0);

insert into students (students_name, address, phone, Status, class_id)
values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into students (students_name, address, Status, class_id)
values ('Hoa', 'Hai phong', 1, 1);
insert into students (students_name, address, phone, Status, class_id)
values ('Manh', 'HCM', '0123123123', 0, 2);

insert into subjects
values (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);

insert into mark (sub_id, students_id, mark, exam_times)
values (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       
select *
from students 
where students_name like "H%";
 
select * 
from class 
where month(start_date) = 12;  

select * 
from subjects 
where credit between 3 and 5; 

set sql_safe_updates = 0;
update students
set  class_id = 2
where students_name = "Hung";
set sql_safe_updates = 1;

select  students_name, sub_name, mark
from students
inner join mark on students.students_id = mark.students_id
inner join subjects on mark.sub_id = subjects.sub_id
order by mark desc, students_name asc;
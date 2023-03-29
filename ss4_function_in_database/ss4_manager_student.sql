create database ss4_manager_student;

use ss4_manager_student;

create table classes (
    class_id int not null auto_increment primary key,
    classname varchar(60) not null,
    startdate datetime not null,
    status_class bit
);

insert into classes
values (1, 'A1', '2008-12-20', 1);
insert into classes
values (2, 'A2', '2008-12-22', 1);
insert into classes
values (3, 'B3', current_date, 0);

create table student (
    student_id int not null auto_increment primary key,
    student_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    status_student bit,
    class_id int not null,
    foreign key (class_id) references classes (class_id)
);

insert into student (student_name, address, phone, status_student, class_id)
values ('Hung', 'Ha Noi', '0912113113', 1, 1);
insert into student (student_name, address, status_student, class_id)
values ('Hoa', 'Hai phong', 1, 1);
insert into student (student_name, address, phone, status_student, class_id)
values ('Manh', 'HCM', '0123123123', 0, 2);

create table subjects (
    sub_id int not null auto_increment primary key,
    sub_name varchar(30) not null,
    credit tinyint not null default 1 check ( credit >= 1 ),
    status_subject bit default 1
);

insert into subjects
values (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);

create table mark (
    mark_id int not null auto_increment primary key,
    sub_id int not null,
    student_id int not null,
    marks float default 0 check ( marks between 0 and 100),
    examtimes tinyint default 1,    
    foreign key (sub_id) references subjects (sub_id),
    foreign key (student_id) references student (student_id)
);

insert into mark (sub_id, student_id, marks, examtimes)
values (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
       
-- task1:
select * from subjects 
where credit = (select max(credit) from subjects);

-- task2:
select *, marks as max_point  from subjects 
inner join mark on mark.sub_id = subjects.sub_id
where marks = (select max(marks) from mark);

-- task3:
select *,avg(marks) as average_mark from student 
join mark on student.student_id = mark.student_id
group by mark.student_id
order by marks desc;

use ss1_database_relational;
insert into teacher (name,age,country,email,phone)
value ('Nguyen',11,'USA','nguyen1998@gmail.com','0929862826'),
('Huu',22,'VN','huu1998@gmail.com','0911500914'),
('Huy',33,'UK','huy1998@gmail.com','0835443443');
set sql_safe_updates = 0;
delete from teacher
where id between 11 and 14;
set sql_safe_updates = 1;
set sql_safe_updates = 0;
delete from teacher
where name between 'Huu' and 'Huy';
set sql_safe_updates = 1;
alter table teacher add email varchar(45);
alter table teacher add phone varchar(10);
alter table teacher drop id;

create database casestudy_module3_furama;

use casestudy_module3_furama;

create table location (
id_position int, name_position varchar (45)
);

create table level (
id_level int, name_level varchar (45)
);

create table employee (
id_employee int, name varchar (45), dateofbirth date, 
id_card varchar (45), salary double, numberphone varchar (45),
email varchar (45), address varchar (45), id_position int, 
id_level int, id_department int
);

create table customer (
id_customer int, id_type_customer int, name varchar (45), dateofbirth date, 
gender bit(1), id_card varchar (45), numberphone varchar (45),
email varchar (45), address varchar (45)
);

create table type_customer (
id_type_customer int, name_type_customer varchar (45)
);

create table department (
id_department int, name_department varchar (45)
);

create table contract_detail (
id_contract_detail int, id_contract int, id_service int, amount int
); 

create table contract (
id_contract int, day_begin_contract datetime, day_end_contract datetime, 
deposit double, id_employee int, id_customer int, id_service int 
);

create table type_rent (
id_type_rent int, name_type_rent varchar (45)
);

create table type_service (
id_type_service int, name_type_service varchar (45)
);

create table service (
id_service int, name_service varchar (45), area int, cost_rent double, 
max_people int, id_type_rent int, id_type_service int, standard_room varchar (45),
describe_other varchar (45), area_pool double, amount_floor int
);

create table service_with (
id_service_with int, name_service_with varchar (45), price double, 
unit varchar (45), status varchar (45)
);

create database casestudy_module3_furama;

use casestudy_module3_furama;

create table location (
id_position int primary key, 
name_position varchar (45)
);

create table level_employee (
id_level int primary key, 
name_level varchar (45)
);

create table employee (
    id_employee int primary key,
    name_employee varchar(45),
    dateofbirth date,
    id_card varchar(45),
    salary double,
    numberphone varchar(45),
    email varchar(45),
    address varchar(45),
    id_position int,
    id_level int,
    id_department int,
    foreign key (id_position)
        references location (id_position),
    foreign key (id_level)
        references level_employee (id_level),
    foreign key (id_department)
        references department (id_department)
);

create table customer (
    id_customer int primary key,
    id_type_customer int,
    name_customer varchar(45),
    dateofbirth date,
    gender bit(1),
    id_card varchar(45),
    numberphone varchar(45),
    email varchar(45),
    address varchar(45),
    foreign key (id_type_customer)
        references type_customer (id_type_customer)
);

create table type_customer (
    id_type_customer int primary key,
    name_type_customer varchar(45)
);

create table department (
    id_department int primary key,
    name_department varchar(45)
);

create table contract_detail (
    id_contract_detail int primary key,
    id_contract int,
    id_service_with int,
    amount int,
    foreign key (id_contract) 
		references contract (id_contract),
    foreign key (id_service_with) 
		references service_with(id_service_with)    
); 

create table contract (
    id_contract int primary key,
    day_begin_contract datetime,
    day_end_contract datetime,
    deposit double,
    id_employee int,
    id_customer int,
    id_service int,
    foreign key (id_employee) 
		references employee(id_employee),
    foreign key (id_customer)
		references customer(id_customer),
    foreign key (id_service)
		references service(id_service)
);

create table type_rent (
    id_type_rent int primary key,
    name_type_rent varchar(45)
);

create table type_service (
    id_type_service int primary key,
    name_type_service varchar(45)
);

create table service (
    id_service int primary key,
    name_service varchar(45),
    area int,
    cost_rent double,
    max_people int,
    id_type_rent int,
    id_type_service int,
    standard_room varchar(45),
    describe_other varchar(45),
    area_pool double,
    amount_floor int,
    foreign key (id_type_rent) 
		references type_rent(id_type_rent),
    foreign key (id_type_service) 
		references type_service(id_type_service)
);

create table service_with (
    id_service_with int primary key,
    name_service_with varchar(45),
    price double,
    unit varchar(45),
    status varchar(45)
);

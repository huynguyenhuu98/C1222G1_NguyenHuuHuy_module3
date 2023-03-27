create database manager_sell;

use manager_sell;

create table customer (
customer_id int primary key,
customer_name varchar (45),
customer_age int
);

create table order_sell (
order_id int primary key,
customer_id int,
order_date date,
order_total_price double,
foreign key (customer_id) references customer (customer_id) 
);

create table product (
product_id int primary key,
product_name varchar (45),
product_price double
);

create table order_detail (
order_id int,
product_id int,
primary key (order_id, p_id), 
foreign key (order_id) references order_sell (order_id),
foreign key (product_id) references product (product_id),
order_quantity varchar (45)
);


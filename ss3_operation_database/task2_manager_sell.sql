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
primary key (order_id, product_id), 
foreign key (order_id) references order_sell (order_id),
foreign key (product_id) references product (product_id),
order_quantity varchar (45)
);

insert into customer (customer_id, customer_name, customer_age) 
value (1, 'Minh Quan', 10),
	(2, 'Ngoc Oanh', 20),
    (3, 'Hong Ha', 50);

insert into order_sell (order_id, customer_id, order_date, order_total_price)
value (1, 1, '2006-03-21', Null),
	(2, 2, '2006-03-23', Null),
    (3, 1, '2006-03-16', Null);
    
insert into product (product_id, product_name, product_price)   
value (1, 'May Giat', 3),
	(2, 'Tu Lanh', 5), 
    (3, 'Dieu Hoa', 7),
    (4, 'Quat', 1),
    (5, 'Bep Dien', 2);
    
insert into order_detail (order_id, product_id, order_quantity)
value (1, 1, 3),
	(1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);    

-- 1:
select order_id, order_date, order_total_price from order_sell;

-- 2:
select customer.customer_name from customer
inner join order_sell on customer.customer_id = order_sell.customer_id
group by customer.customer_id;
select product.product_name from product
inner join order_detail on product.product_id = order_detail.product_id
group by product.product_id;

-- 3:
select customer.customer_name from customer
left join order_sell on order_sell.customer_id = customer.customer_id
where customer.customer_id not in (select order_sell.customer_id from order_sell);

-- 4:
select o.order_id, o.order_date, sum(p.product_price * od.order_quantity) as order_total_price
from order_sell o
inner join order_detail od on o.order_id = od.order_id
inner join product p on od.product_id = p.product_id
group by o.order_id;



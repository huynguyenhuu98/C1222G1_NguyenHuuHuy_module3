create database ss5_view_index_store_procedure;

use ss5_view_index_store_procedure;

create table products (
id int primary key,
product_code int,
product_name varchar (45),
product_price double,
product_amount int,
product_description varchar (45),
product_status int
);

insert into products (id, product_code, product_name, product_price, product_amount, product_description, product_status)
value (1, 101, 'candy', 10000, 10, 'sugar', 0),
	(2, 102, 'cake', 20000, 5, 'sweet', 1),
    (3, 103, 'chocolate', 30000, 6, 'bitter', 1),
    (4, 104, 'milk', 15000, 3, 'tasty', 2),
    (5, 105, 'cocacola', 15000, 9, 'gas', 0);
select*from products;  

-- Bước 3:
explain select*from products
where product_name = 'candy';
-- trước khi index: rows: 5; type: all
create unique index index_product_code on products (product_code);
create index index_name_price on products (product_name, product_price);  
-- sau khi index: rows: 1; type: ref

-- Bước 4:
create view v_products ( product_code, product_name, product_price, product_status) as
select product_code, product_name, product_price, product_status from products;
select * from v_products
order by product_code;

update v_products set product_name = 'beer'
where product_name = 'cake';

delete from v_products 
where product_name = 'candy';

-- Bước 5:

delimiter //
create procedure display_products (in name varchar(45))
begin
	select * from products 
    where products.product_name = product_name;
end //
delimiter ;    
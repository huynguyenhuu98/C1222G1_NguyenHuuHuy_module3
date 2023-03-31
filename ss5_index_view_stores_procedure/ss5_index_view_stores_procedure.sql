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
	-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view v_products ( product_code, product_name, product_price, product_status) as
select product_code, product_name, product_price, product_status from products;
select * from v_products
order by product_code;
	-- Tiến hành sửa đổi view
update v_products set product_name = 'beer'
where product_name = 'cake';
	-- Tiến hành xoá view
delete from v_products 
where product_name = 'candy';

-- Bước 5:
	-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure display_products ()
begin
	select * from products; 
end //
delimiter ;  
	-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure add_products (in id int, product_code int, product_name varchar (45),
				 product_price double, product_amount int, product_description varchar (45), product_status int)
begin
	insert into products (id, product_code, product_name, product_price, product_amount, product_description, product_status)
    values (6, 106, 'wine', 50000, 5, 'alcohol', 1);
	select * from products;
end //
delimiter ; 
	-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure edit_products (in id int, product_name varchar (45), product_price double)
begin
	update products set product_name = 'water', product_price = '18000' where id = 4;
	select * from products;
end //
delimiter ; 
	-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_products (in id int)
begin
	delete from products where id = 3;
	select * from products;
end //
delimiter ; 
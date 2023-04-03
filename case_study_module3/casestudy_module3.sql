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

insert into location (id_position, name_position)
values (1,'Quản Lý'), (2,'Nhân Viên');
select * from location;


insert into level_employee (id_level,name_level)
values (1,'Trung Cấp'),(2,'Cao Đẳng'),(3,'Đại Học'),(4,'Sau Đại Học');
select * from level_employee;

insert into department(id_department,name_department)
values (1,'Sale-Marketing'),(2,'Hành chính'),(3,'Phục vụ'),(4,'Quản lý');
select * from department;

insert into employee (id_employee, name_employee, dateofbirth, id_card, salary, numberphone, email, address, id_position, id_level, id_department)
values 	(1,'Nguyễn Văn An', '1970-11-07', '456231786', 10000000, '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1),
		(2,'Lê Văn Bình', '1997-04-09', '654231234', 7000000, '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
		(3,'Hồ Thị Yến', '1995-12-12', '999231723', 14000000, '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2),
		(4,'Võ Công Toản', '1980-04-04', '123231365',	17000000, '0374443232',	'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4,	4),
		(5,'Nguyễn Bỉnh Phát', '1999-12-09', '454363232',	6000000, '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng',	2, 1, 1),
		(6,'Khúc Nguyễn An Nghi',	'2000-11-08', '964542311', 7000000,	'0978653213', 'annghi20@gmail.com',	'294 Nguyễn Tất Thành, Đà Nẵng', 2,	2, 3),
		(7,'Nguyễn Hữu Hà',	'1993-01-01', '534323231', 8000000,	'0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3,	2),
		(8,'Nguyễn Hà Đông', '1989-09-03', '234414123',	9000000, '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
		(9,'Tòng Hoang', '1982-09-03', '256781231',	6000000, '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 4, 4),
		(10,'Nguyễn Công Đạo', '1994-01-08', '755434343', 8000000, '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', 2, 3, 2);
select * from employee;

insert into type_customer(id_type_customer,name_type_customer)
values (1,'Diamond'),(2,'Platinium'),(3,'Gold'),(4,'Silver'),(5,'Member');
select * from type_customer;    

insert into customer (id_customer, name_customer, dateofbirth, gender, id_card, numberphone, email, address,id_type_customer)
values (1,'Nguyễn Thị Hào', '1970-11-07', 0, '643431213',	'0945423362', 'thihao07@gmail.com',	'23 Nguyễn Hoàng, Đà Nẵng', 5),
	   (2,'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị',3),
	   (3,'Trương Đình Nghệ', '1990-02-27', 1,	'488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh',1),
	   (4,'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com',	'K453/12 Lê Lợi, Đà Nẵng',1),
       (5,'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com',	'224 Lý Thái Tổ, Gia Lai',4),
       (6,'Tôn Nữ Mộc Châu', '2005-12-06',	0, '732434215',	'0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng',4),
       (7,'Nguyễn Mỹ Kim',	'1984-04-08', 0, '856453123', '0912345698',	'kimcuong84@gmail.com',	'K123/45 Lê Lợi, Hồ Chí Minh',1),
       (8,'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com',	'55 Nguyễn Văn Linh, Kon Tum',3),
       (9,'Trần Đại Danh',	'1994-07-01', 1, '432341235', '0643343433',	'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi',1),
       (10,'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng',2);
select * from customer;

insert into type_rent (id_type_rent, name_type_rent)
values (1,"year"),(2,"month"),(3,"day"),(4,"hour");
select * from type_rent;

insert into type_service (id_type_service, name_type_service)
values (1,"Villa"),(2,"House"),(3,"Room");
select * from type_service;

insert into service (id_service, name_service, area, cost_rent, max_people, standard_room, describe_other, area_pool, amount_floor, id_type_rent, id_type_service)
values 	(1,'Villa Beach Front', 25000, 10000000, 10 , 'vip', 'Có hồ bơi', 500, 4, 3, 1),
		(2,'House Princess 01', 14000, 5000000, 7, 'vip', 'Có thêm bếp nướng', null, 3, 2, 2),
		(3,'Room Twin 01', 5000, 1000000, 2, 'normal', 'Có tivi', null, null, 4, 3),
		(4,'Villa No Beach Front', 22000, 9000000, 8,'normal', 'Có hồ bơi', 300, 3, 3, 1),
		(5,'House Princess 02',	10000, 4000000,	5, 'normal', 'Có thêm bếp nướng',	null, 2, 3, 2),
		(6,'Room Twin 02', 3000, 900000, 2, 'normal',	'Có tivi', null, null, 4, 3);
select * from service;

insert into service_with(id_service_with, name_service_with, price, unit, status)
values 	(1,'Karaoke', 10000, 'giờ',	'tiện nghi, hiện tại'),
		(2,'Thuê xe máy', 10000, 'chiếc', 'hỏng 1 xe'),
		(3,'Thuê xe đạp', 20000, 'chiếc', 'tốt'),
		(4,'Buffet buổi sáng', 15000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
		(5,'Buffet buổi trưa', 90000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
		(6,'Buffet buổi tối', 16000, 'suất', 'đầy đủ đồ ăn, tráng miệng');
select * from service_with;

insert into contract (id_contract, day_begin_contract, day_end_contract, deposit, id_employee, id_customer, id_service)  
values 	(1,'2020-12-08', '2020-12-08', 0, 3, 1,3),
		(2,'2020-07-14', '2020-07-21', 200000, 7, 3, 1),
		(3,'2021-03-15', '2021-03-17', 50000, 3, 4, 2),
		(4,'2021-01-14', '2021-01-18', 100000, 7, 5, 5),
		(5,'2021-07-14', '2021-07-15', 0, 7, 2, 6),
		(6,'2021-06-01', '2021-06-03', 0, 7, 7, 6),
		(7,'2021-09-02', '2021-09-05', 100000, 7, 4, 4),
		(8,'2021-06-17', '2021-06-18', 150000, 3, 4, 1),
		(9,'2020-11-19', '2020-11-19', 0, 3, 4, 3),
		(10,'2021-04-12', '2021-04-14', 0, 10, 3, 5),
		(11,'2021-04-25', '2021-04-25', 0, 2, 2, 1),
		(12,'2021-05-25', '2021-05-27', 0, 7, 10, 1);
select * from contract;

insert into contract_detail (id_contract_detail, amount, id_contract, id_service_with)
values 	(1,5,2,4),
		(2,8,2,5),
        (3,15,2,6),
        (4,1,3,1),
        (5,11,3,2),
        (6,1,1,3),
        (7,2,1,2),
        (8,2,12,2);
select * from contract_detail;

-- Task 2: Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong 
-- các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * from employee where (name_employee like '%h%' or name_employee like '%t%' or name_employee like '%k%') and char_length(name_employee) <= 15;

-- Task 3: Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select *,(year(curdate()) - year(dateofbirth)) from customer 
where (year(curdate()) - year(dateofbirth)) < 50 and (year(curdate()) - year(dateofbirth)) > 18 
and address like '%Đà Nẵng' or address like '%Quảng Trị';

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của 
-- khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select customer.id_customer, name_customer, name_type_customer, count(contract.id_customer) from customer 
inner join type_customer 
on customer.id_type_customer = type_customer.id_type_customer 
inner join contract 
on customer.id_customer = contract.id_customer
where type_customer.name_type_customer = 'Diamond'
group by customer.id_customer
order by count(contract.id_customer);

-- 5. Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, 
-- hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select customer.id_customer, name_customer, type_customer.name_type_customer, contract.id_contract, service.name_service, 
contract.day_begin_contract, contract.day_end_contract, service.cost_rent + ifnull((contract_detail.amount * service_with.price),0) as total
from type_customer
join customer on customer.id_type_customer = type_customer.id_type_customer
join contract on customer.id_customer = contract.id_customer 
join service on contract.id_service = service.id_service
left join contract_detail on  contract_detail.id_contract = contract.id_contract
left join service_with on service_with.id_service_with = contract_detail.id_service_with
group by contract.id_contract
order by customer.id_customer;

-- Task 6: Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ 
-- chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
 select service.id_service, service.name_service, service.area, service.cost_rent, type_service.name_type_service 
 from type_service
 join service on service.id_type_service = type_service.id_type_service
 join contract on contract.id_service = service.id_service
 where type_service.name_type_service not in (select name_type_service where quarter(day_begin_contract) = 1 and year(day_begin_contract) = 2021)
 group by id_service;
 
 -- Task 7: Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả 
 -- các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
 select service.id_service, service.name_service, service.area,service.max_people, service.cost_rent, type_service.name_type_service 
 from type_service
 join service on service.id_type_service = type_service.id_type_service
 join contract on contract.id_service = service.id_service
 where year(day_begin_contract) = 2020 and type_service.name_type_service not in (select name_type_service where year(day_begin_contract) = 2021)
 group by id_service;
 -- Task 8: Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
 select customer.name_customer from customer
 group by customer.name_customer;
 
 select customer.name_customer from customer
 union
 select customer.name_customer from customer;
 
 select distinct customer.name_customer from customer;
 
 -- Task 9: Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng. 
 select month(day_begin_contract), count(contract.id_contract) from contract
 where year(day_begin_contract) = 2021
 group by month(day_begin_contract)
 order by month(day_begin_contract);
 
 -- Task 10: Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. Kết quả hiển thị bao gồm ma_hop_dong, 
 -- ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select contract.id_contract, contract.day_begin_contract, contract.day_end_contract, contract.deposit, ifnull(sum(contract_detail.amount),0) as amount_service 
from contract
left join contract_detail on contract_detail.id_contract = contract.id_contract
group by id_contract;

-- Task 11: Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có 
-- dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select service_with.id_service_with, service_with.name_service_with from service_with 
join contract_detail on contract_detail.id_service_with = service_with.id_service_with
join contract on contract.id_contract = contract_detail.id_contract
join customer on customer.id_customer = contract.id_customer
join type_customer on type_customer.id_type_customer = customer.id_type_customer
where type_customer.name_type_customer = 'Diamond' and (customer.address like '% Vinh' or customer.address like '% Quảng Ngãi');

-- Task 12: Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, 
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng 
-- được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select contract.id_contract, employee.name_employee, customer.name_customer, customer.numberphone, service.name_service,
sum(contract_detail.amount), contract.deposit from contract_detail
join contract on contract.id_contract = contract_detail.id_contract
join employee on employee.id_employee = contract.id_employee
join customer on customer.id_customer = contract.id_customer
join service on service.id_service = contract.id_service
where quarter(day_begin_contract) = 4 and year(day_begin_contract) = 2020 and
service.name_service not in (select service.name_service where quarter(day_begin_contract) in (1,2) 
and year(day_begin_contract) = 2021)
group by contract.id_contract;

-- Task 13: Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select service_with.id_service_with, service_with.name_service_with, sum(contract_detail.amount) from service_with
join contract_detail on contract_detail.id_service_with = service_with.id_service_with
group by name_service_with
having sum(contract_detail.amount) = (select sum(contract_detail.amount) from contract_detail 
group by id_service_with order by sum(contract_detail.amount) desc limit 1); 

-- 14: Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm 
-- ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
select contract.id_contract, type_service.name_type_service, service_with.name_service_with,
count(service_with.id_service_with) from service_with
join contract_detail on contract_detail.id_service_with = service_with.id_service_with
join contract on contract.id_contract = contract_detail.id_contract
join service on service.id_service = contract.id_service
join type_service on type_service.id_type_service = service.id_type_service
group by service_with.id_service_with
having count(service_with.id_service_with) = 1
order by id_contract;

-- 15: Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, 
-- ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select employee.id_employee, employee.name_employee, level_employee.name_level, department.name_department, 
employee.numberphone, employee.address, count(contract.id_employee) as contract_2020_2021
from employee
join level_employee on level_employee.id_level = employee.id_level
join department on department.id_department = employee.id_department
join contract on contract.id_employee = employee.id_employee
where year(day_begin_contract) in (2020,2021)
group by id_employee
having contract_2020_2021 <= 3;

-- 16: Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
set sql_safe_updates = 0;
delete from employee where employee.id_employee not in (select id_employee from contract where year(day_begin_contract) between 2019 and 2021);
set sql_safe_updates = 1;
select * from employee; 
 
-- 17: Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
update customer set id_type_customer = 1 where id_customer = (select id_customer from (select customer.id_customer, 
sum(ifnull(sv.cost_rent,0) + ifnull(ctd.amount,0) * ifnull(svw.price,0)) as total from customer c	 
    left join contract ct on ct.id_customer = c.id_customer
    left join service sv on sv.id_service = ct.id_service
    left join contract_detail ctd on ctd.id_contract = ct.id_contract
    left join service_with svw on ctd.id_service_with = svw.id_service_with
    left join type_customer tc on tc.id_type_customer = c.id_type_customer
    where year(ct.day_begin_contract) = 2021 and tc.name_type_customer = 'Platinium'
    group by id_customer  
    having total > 10000000) as result
    );
select * from customer;

-- 18: Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
set sql_safe_updates = 0;
delete from customer where id_customer in (select id_customer from contract where year(day_begin_contract) = 2020
);
set sql_safe_updates = 1;
select * from customer;

create view v_customer (id_customer, name_customer, )

-- 19: Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
set sql_safe_updates = 0;
update service_with set price = price * 2 where id_service_with in(
select * from (select service_with.id_service_with
		from service_with
        join contract_detail on service_with.id_service_with = contract_detail.id_service_with
        join contract on contract.id_contract = contract_detail.id_contract
        where year(contract.day_begin_contract) = 2020
        group by id_service_with
        having sum(contract_detail.amount) > 10) as result
);
set sql_safe_updates = 1;
select * from service_with;

-- 20: Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select customer.id_customer , customer.name_customer as name_cus_eml, customer.email, customer.numberphone, customer.dateofbirth, customer.address from customer
union all
select employee.id_employee, employee.name_employee, employee.email, employee.numberphone, employee.dateofbirth, employee.address from employee;
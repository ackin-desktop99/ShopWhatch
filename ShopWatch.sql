use master
go
create database ShopWatch
go
use ShopWatch
go

create table login(
	username nvarchar(20) primary key not null,
	pass nvarchar(20),
	state bit
)
go

create table category(
	id int identity(1,1) primary key,
	name nvarchar(20),
	country nvarchar(255)
)
go

create table contact(
	id int identity(1,1) primary key,
	address nvarchar(50),
	sdt varchar(20),
	email varchar(30)
)
go

create table watch(
	id int identity(1,1) primary key,
	name nvarchar(30),
	categoryid int,
	soluong int,
	gia int,
	giamgia int,
	anh nvarchar(100),
	state bit,
	baohanh nvarchar(255),
	kieumay nvarchar(40),
	gioitinh nvarchar(20),
	kichco nvarchar(30),
	doday nvarchar(30),
	chatlieuvo nvarchar(30),
	chatlieuday nvarchar(30),
	chatlieukinh nvarchar(30),
	chucnang nvarchar(100),
	dochiunuoc nvarchar(30),
	mota nvarchar(400)
)
go

create table orders(
	id int identity(1,1) primary key,
	ngay date,
	state bit,
	tenkh nvarchar(30),
	sdtkh nvarchar(30),
	diachikh nvarchar(100)
)
go
create table orderdetail(
	orderid int,
	productid int,
	gia int,
	soluong int
)
go
insert into login values('abd','123',1)
insert into login values('abc','123456',0)
go
insert into contact values(N'số 218 Lê Duẩn-Hà Nội','097 559 2299',N'hotroshopwatch@gmail.com')
go

insert into category values('SEIKO',N'Nhật Bản')
insert into category values('CASIO',N'Nhật Bản')
insert into category values('ORIENT',N'Đức')
insert into category values('BENTLEY',N'Đức')
insert into category values('OP',N'Thụy Sĩ')
insert into category values('CITYZEN',N'Đức')
go
insert into watch values(
	N'Seiko SNKN96J1',	--name nvarchar(30),
	1,	--categoryid int,
	10,	--soluong int,
	5700000,	--gia int,
	26,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'Bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'42mm',	--kichco nvarchar(30),
	N'12mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Hardlex Crystal',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'50M',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
-- them moi 
insert into watch values(
	N'Seiko SNKL64K1',	--name nvarchar(30),
	1,	--categoryid int,
	20,	--soluong int,
	4500000,	--gia int,
	33,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'Bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'37mm',	--kichco nvarchar(30),
	N'10.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Hardlex Crystal',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Seiko SNKK94K1',	--name nvarchar(30),
	1,	--categoryid int,
	30,	--soluong int,
	4700000,	--gia int,
	37,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'Bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'38mm',	--kichco nvarchar(30),
	N'10.3mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Hardlex Crystal',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'50M',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'CASIO MTP-VT01L-7B2UDF',	--name nvarchar(30),
	2,	--categoryid int,
	10,	--soluong int,
	987000,	--gia int,
	12,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí, 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'8.2mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'kính chịu lực',	--chatlieukinh nvarchar(30),
	N'12 giờ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'CASIO MTP-VT01GL-5BUDF',	--name nvarchar(30),
	2,	--categoryid int,
	10,	--soluong int,
	1058000,	--gia int,
	20,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí, 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'8.2mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'kính chịu lực',	--chatlieukinh nvarchar(30),
	N'12 giờ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'CASIO MTP-VT01D-7BUDF',	--name nvarchar(30),
	2,	--categoryid int,
	20,	--soluong int,
	1058000,	--gia int,
	21,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí, 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'8.2mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'kính chịu lực',	--chatlieukinh nvarchar(30),
	N'12 giờ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Orient RA-AA0B01G19B',	--name nvarchar(30),
	3,	--categoryid int,
	20,	--soluong int,
	6800000,	--gia int,
	30,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí + 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41.7mm',	--kichco nvarchar(30),
	N'12.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'kính chịu lực',	--chatlieukinh nvarchar(30),
	N'22 Chân kính, Cal.F6922, 21,600 nhịp/giờ, Lên cót tay - Dừng kim dây khi chỉnh giờ',	--chucnang nvarchar(100),
	N'5ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Orient Star RE-AT0002E00B',	--name nvarchar(30),
	3,	--categoryid int,
	30,	--soluong int,
	13500000,	--gia int,
	35,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'39.2mm',	--kichco nvarchar(30),
	N'12.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'22 Chân kính, Cal.F6922, 21,600 nhịp/giờ, Lên cót tay - Dừng kim dây khi chỉnh giờ',	--chucnang nvarchar(100),
	N'10ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Orient RA-AK0303L10B',	--name nvarchar(30),
	3,	--categoryid int,
	40,	--soluong int,
	10200000,	--gia int,
	50,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí - 5 năm hậu mãi ',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41mm',	--kichco nvarchar(30),
	N'13mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'22 Jewels, Cal.F6B24, 21,600 vibrations/hour, Hand Winding, Hacking stop',	--chucnang nvarchar(100),
	N'5ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'BENTLEY BL1869-101MWWB DMS-GL',	--name nvarchar(30),
	4,	--categoryid int,
	40,	--soluong int,
	3650000,	--gia int,
	10,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí + 5 năm hậu mãi ',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'11.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'BENTLEY BL1869-101MKNN DMK-GL',	--name nvarchar(30),
	4,	--categoryid int,
	40,	--soluong int,
	3885000,	--gia int,
	5,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí + 5 năm hậu mãi ',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'11.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'BENTLEY BL1865-30MWWB MS-GL',	--name nvarchar(30),
	4,	--categoryid int,
	40,	--soluong int,
	3590000,	--gia int,
	5,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí + 5 năm hậu mãi ',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'11.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'3ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'OLYM PIANUS OP990-163AMSK-V',	--name nvarchar(30),
	5,	--categoryid int,
	40,	--soluong int,
	5300000,	--gia int,
	15,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Quartz(Pin)',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'11.5mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày, thứ',	--chucnang nvarchar(100),
	N'5ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'OLYM PIANUS OP99141-71AGS-GL-D',	--name nvarchar(30),
	5,	--categoryid int,
	30,	--soluong int,
	7400000,	--gia int,
	32,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41mm',	--kichco nvarchar(30),
	N'',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'Open Heart',	--chucnang nvarchar(100),
	N'5ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'OLYM PIANUS OP99141-7AGS-X-GL',	--name nvarchar(30),
	5,	--categoryid int,
	20,	--soluong int,
	7400000,	--gia int,
	23,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'bảo hành 5 năm',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41mm',	--kichco nvarchar(30),
	N'',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'dây da',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'Open Heart',	--chucnang nvarchar(100),
	N'5ATM',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Citizen NP1014-51E',	--name nvarchar(30),
	6,	--categoryid int,
	20,	--soluong int,
	11800000,	--gia int,
	40,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí - 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Automatic',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41mm',	--kichco nvarchar(30),
	N'12mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Kính Sapphire',	--chatlieukinh nvarchar(30),
	N'24H',	--chucnang nvarchar(100),
	N'100M',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Citizen AW1570-52L',	--name nvarchar(30),
	6,	--categoryid int,
	20,	--soluong int,
	5100000,	--gia int,
	20,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí - 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Eco-Driver',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'41mm',	--kichco nvarchar(30),
	N'12mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Hardlex Crystal',	--chatlieukinh nvarchar(30),
	N'12 giờ, lịch ngày',	--chucnang nvarchar(100),
	N'100M',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
insert into watch values(
	N'Citizen AT2390-74L',	--name nvarchar(30),
	6,	--categoryid int,
	20,	--soluong int,
	6700000,	--gia int,
	45,	--giamgia int,
	'',	--anh nvarchar(100),
	1,	--state bit,
	N'1 năm miễn phí - 5 năm hậu mãi',	--baohanh nvarchar(255),
	N'Eco-Driver',	--kieumay nvarchar(40),
	N'Nam',	--gioitinh nvarchar(20),
	N'40mm',	--kichco nvarchar(30),
	N'11mm',	--doday nvarchar(30),
	N'Thép không gỉ 316L',	--chatlieuvo nvarchar(30),
	N'thép không gỉ 316L',	--chatlieuday nvarchar(30),
	N'Hardlex Crystal',	--chatlieukinh nvarchar(30),
	N'',	--chucnang nvarchar(100),
	N'100M',	--dochiunuoc nvarchar(30),
	N''	--mota nvarchar(400)
)
go
-- them moi
insert into orders values('02/10/1999',1,'do duc chien','0337915529','an hoa-kim son')
insert into orders values('3/05/1999',1,'tran huu duy','0337915529','an hoa-kim son')
insert into orders values('2/12/1999',1,'dao vu cuong','0337915529','an hoa-kim son')
go
insert into orderdetail values(1,1,400000,2)
insert into orderdetail values(1,2,400000,2)
insert into orderdetail values(2,1,400000,2)
insert into orderdetail values(2,2,400000,2)
insert into orderdetail values(1,3,400000,2)
insert into orderdetail values(3,1,400000,2)
insert into orderdetail values(3,2,400000,2)
select * from watch
select * from orders
select * from orderdetail
select * from category

select * from contact

select watch.id, watch.name,gia,giamgia,round(gia-gia*giamgia/100,-5)as'gia2'
from watch inner join category on watch.categoryid=category.id
where categoryid=1

select *
from watch inner join category on watch.categoryid=category.id
where watch.id=1





create database labour_management;
use labour_management;
create table labour(
labour_id int primary key
auto_increment,
labour_name varchar(100),
village varchar(100),
mobile varchar(15)
);
describe labour;
create table work_records(
work_id int primary key
auto_increment,
labour_id int,
work_date date,
work_type varchar(100),
work_days varchar(100),
wage Decimal(10,2),
payment_status varchar(20),
foreign key (labour_id)
References labour(labour_id)
);
show tables;
insert into labour (labour_name, village, mobile)
values 
('Gayabai', 'Wadgaon', '9876556322'),
('Shantabai', 'Manjari','2567391235'),
('Sharipa Shaikh', 'Wadgaon','1192345678'),
('Chandrakala Bai', 'Wadgaon','1234567890'),
('Sunita', 'Wadgaon','9876543211');

select * from labour;
insert into work_records
(labour_id , work_date , work_type ,work_days, wage , payment_status)
values
(1,'2026-05-10','Kanda nivdani',4,1200,'Paid'),
(2,'2026-05-13','Khurpani',2,600,'Pending'),
(3,'2026-05-10','Kanda nivdani',4,1200,'Paid'),
(4,'2026-05-10','Kanda nivdani',4,1200,'Pending'),
(5,'2026-05-10','Kanda nivdani',4,1200,'Paid');
select * from work_records;
select labour.labour_name,
work_records.work_type,
work_records.work_days,
work_records.wage,
work_records.payment_status
from labour
join work_records
on labour.labour_id =
work_records.labour_id;
select labour_id,
sum(wage) as total_wage
from work_records
group by labour_id;
select * from work_records where payment_status = 'Pending';

update work_records
set payment_status='Paid1200-600=600' where work_id =9;

select * from labour;
select * from work_records;

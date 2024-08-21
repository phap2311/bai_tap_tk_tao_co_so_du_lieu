-- bài tập 3: account_bank
-- mối quan hệ account - customer là 1-1
drop database if exists account_bank;
create database if not exists account_bank;
use account_bank;

create table customer(
id int primary key auto_increment,
balance varchar(50)
);
create table accounts(
id int primary key auto_increment,
name varchar(50),
id_customer int unique,
foreign key (id_customer) references customer(id)
);
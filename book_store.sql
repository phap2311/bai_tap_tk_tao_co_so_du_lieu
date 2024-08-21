-- bài 1: book_store
-- mối quan hệ: tác giả - sách là 1-n
-- mối quan hệ: nhân viên - sách là n-n
drop database if exists book_stores;
create database if not exists book_stores;
use book_stores;
create table author(
id int primary key auto_increment,
name varchar(50)
);
create table book (
id int primary key auto_increment,
name varchar(50),
price double,
id_author int,
foreign key (id_author) references author(id)
);
create table employee(
id int primary key auto_increment,
name varchar(50),
address varchar(50)
);
create table book_employee(
id_book int,
id_employee int,
foreign key (id_book) references book(id),
foreign key (id_employee) references employee(id),
primary key (id_book, id_employee)
);


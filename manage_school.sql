drop database if exists manage_school;
create database if not exists manage_school;
use manage_school;
create table teacher(
id int primary key auto_increment,
name varchar(50)
);
create table student(
id int primary key auto_increment,
id_teacher int,
name varchar(50),
foreign key (id_teacher) references teacher(id)
);
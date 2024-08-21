-- bài tập 2: contacts
-- mối quan hệ: people - number_phone là 1 - n
-- mối quan hệ: people - email là 1 - n
drop database if exists contacts_phone;
create database if not exists contacts_phone;
use contacts_phone;
create table phone(
id int primary key auto_increment,
number_phone varchar(50)
);
create table email(
id int primary key auto_increment,
name_email varchar(50)
);
create table contacts(
id int primary key auto_increment,
name varchar(50),
id_phone int,
id_email int,
foreign key (id_phone) references phone(id),
foreign key (id_email) references email(id)
);